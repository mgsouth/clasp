(in-package #:cc-valvec)

;;;; The code in this file is supposed to perform a transform on functions
;;;; with a &rest parameter such that no list actually needs to be consed.
;;;; Essentially, if a &rest parameter is only used in certain limited ways,
;;;; such as the last argument to APPLY, or for iteration, it can be
;;;; represented more cheaply as a simple "vector" of values.
;;;; Currently, the only use allowed in this transformation is as the
;;;; argument to VALUES-LIST. Since we transform (apply x y z) into
;;;; (multiple-value-call x (values y) (values-list z)), this covers the
;;;; common use of &rest parameters for APPLY.
;;;; In the future, the following operations should be available:

;;; nth -> (valvec-nth n valvec)
;;; (setf nth) -> (setf (valvec-nth n valvec) value)
;;; nthcdr -> (valvec-nthcdr n valvec)
;;; endp -> (valvec-endp valvec)
;;; last -> (valvec-last valvec n)
;;; butlast -> (valvec-butlast valvec n)
;;; values-list -> (valvec-values-list valvec) ; done

(defparameter *valvecable* '(values-list))

(defun valvecablep (fname) (member fname *valvecable*))

(defgeneric datum-ok-p (datum)
  (:method ((datum bir:datum)) nil))

(defgeneric use-ok-p (user datum)
  (:method ((user bir:instruction) (datum bir:datum)) nil)
  (:method ((user null) (datum bir:datum)) t))

(defmethod datum-ok-p ((datum bir:ssa))
  (use-ok-p (bir:use datum) datum))

(defmethod datum-ok-p ((datum bir:variable))
  ;; TODO: loosen
  (and (bir:immutablep datum)
       (let* ((def (bir:binder datum))
              (fun (bir:function def)))
         (set:doset (reader (bir:readers datum) t)
           (unless (and (eq (bir:function reader) fun)
                        (use-ok-p reader datum))
             (return nil))))))

(defmethod use-ok-p ((inst bir:writevar) (datum bir:datum))
  (datum-ok-p (bir:output inst)))

(defmethod use-ok-p ((inst bir:readvar) (datum bir:datum))
  (datum-ok-p (bir:output inst)))

(defmethod use-ok-p ((inst bir:fixed-to-multiple) (datum bir:datum))
  (and (= (length (bir:inputs inst)) 1)
       (datum-ok-p (bir:output inst))))

(defmethod use-ok-p ((inst bir:thei) (datum bir:datum))
  (datum-ok-p (bir:output inst)))

(defmethod use-ok-p ((inst bir:call) (datum bir:datum))
  (let ((name
          ;; KLUDGE
          (first (attributes:identities (bir:attributes inst))))
        (args (rest (bir:inputs inst)))
        (out (bir:output inst)))
    (declare (ignorable out))
    (case name
      #+(or)
      ((nth) (and (= (length args) 2)
                  (eq datum (second args))))
      #+(or)
      ((nthcdr) (and (= (length args) 2)
                     (eq datum (second args))
                     (datum-ok-p out)))
      #+(or)
      ((endp) (and (= (length args) 1)
                   (eq datum (first args))))
      #+(or)
      ((last) (and (= (length args) 2)
                   (eq datum (first args))
                   (datum-ok-p out)))
      #+(or)
      ((butlast) (and (= (length args) 2)
                      (eq datum (first args))
                      (datum-ok-p out)))
      ((cl:values-list) (and (= (length args) 1)
                             (eq datum (first args))))
      (otherwise nil))))

(defgeneric rewrite-use (use))

(defmethod rewrite-use ((use bir:writevar))
  (let ((var (bir:output use)))
    (assert (bir:immutablep var))
    (set:mapset nil #'rewrite-use (bir:readers var))))

(defmethod rewrite-use ((use bir:readvar))
  (rewrite-use (bir:use (bir:output use))))

(defmethod rewrite-use ((use bir:fixed-to-multiple))
  (let ((input (first (bir:inputs use)))
        (out (bir:output use)))
    (setf (bir:inputs use) nil)
    (bir:replace-uses input out)
    (bir:delete-instruction use)
    (rewrite-use (bir:use input))))

(defmethod rewrite-use ((use bir:thei))
  (let ((input (bir:input use)))
    (bir:delete-thei use)
    (rewrite-use (bir:use input))))

(defmethod rewrite-use ((use bir:call))
  (let ((name
          (first (attributes:identities (bir:attributes use)))))
    (ecase name
      ((cl:values-list)
       #+(or)
       (change-class use 'values-list
                     :inputs (rest (bir:inputs use)))))))

(defun maybe-transform (argument)
  (check-type argument bir:argument)
  (cond ((bir:unused-p argument)) ; don't bother
        ((datum-ok-p argument)
         #+(or)
         (change-class argument 'cc-bmir:argument :rtype :valvec)
         (rewrite-use (bir:use argument))
         t)
        (t nil)))

(defun maybe-transform-function (function)
  (let* ((llrest (member '&rest (bir:lambda-list function)))
         (rest (second llrest)))
    (cond ((and rest (maybe-transform rest))
           (setf (first llrest) 'core:&va-rest)
           t)
          (t nil))))

(defun maybe-transform-module (module)
  (set:mapset nil #'maybe-transform-function (bir:functions module)))