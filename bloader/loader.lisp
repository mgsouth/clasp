(eval-when (:execute)
  (setq *load-print* t)
  (setq *load-verbose* t))
(load "src/lisp/kernel/tag/start.lisp")
(load "src/lisp/kernel/lsp/prologue.lisp")
(load "src/lisp/kernel/tag/min-start.lisp")
(load "src/lisp/kernel/init.lisp")
(load "src/lisp/kernel/tag/after-init.lisp")
(load "src/lisp/kernel/cmp/runtime-info.lisp")
(load "src/lisp/kernel/lsp/sharpmacros.lisp")
(load "src/lisp/kernel/cmp/jit-setup.lisp")
(load "src/lisp/kernel/clsymbols.lisp")
(load "src/lisp/kernel/lsp/packages.lisp")
(load "src/lisp/kernel/lsp/foundation.lisp")
(load "src/lisp/kernel/lsp/export.lisp")
(load "src/lisp/kernel/lsp/defmacro.lisp")
(load "src/lisp/kernel/lsp/helpfile.lisp")
(load "src/lisp/kernel/lsp/evalmacros.lisp")
(load "src/lisp/kernel/lsp/claspmacros.lisp")
(load "src/lisp/kernel/lsp/source-transformations.lisp")
(load "src/lisp/kernel/lsp/arraylib.lisp")
(load "src/lisp/kernel/lsp/setf.lisp")
(load "src/lisp/kernel/lsp/listlib.lisp")
(load "src/lisp/kernel/lsp/mislib.lisp")
(load "src/lisp/kernel/lsp/defstruct.lisp")
(load "src/lisp/kernel/lsp/predlib.lisp")
(load "src/lisp/kernel/lsp/cdr-5.lisp")
(load "src/lisp/kernel/lsp/cmuutil.lisp")
(load "src/lisp/kernel/lsp/seqmacros.lisp")
(load "src/lisp/kernel/lsp/seq.lisp")
(load "src/lisp/kernel/lsp/seqlib.lisp")
(load "src/lisp/kernel/lsp/iolib.lisp")
(load "src/lisp/kernel/lsp/trace.lisp")
(load "src/lisp/kernel/lsp/debug.lisp")
(load "src/lisp/kernel/cmp/cmpexports.lisp")
(load "src/lisp/kernel/cmp/cmpsetup.lisp")
(load "src/lisp/kernel/cmp/cmpglobals.lisp")
(load "src/lisp/kernel/cmp/cmputil.lisp")
(load "src/lisp/kernel/cmp/cmpintrinsics.lisp")
(load "src/lisp/kernel/cmp/primitives.lisp")
(load "src/lisp/kernel/cmp/cmpir.lisp")
(load "src/lisp/kernel/cmp/cmpeh.lisp")
(load "src/lisp/kernel/cmp/debuginfo.lisp")
(load "src/lisp/kernel/cmp/codegen-vars.lisp")
(load "src/lisp/kernel/cmp/arguments.lisp")
(load "src/lisp/kernel/cmp/cmplambda.lisp")
(load "src/lisp/kernel/cmp/cmprunall.lisp")
(load "src/lisp/kernel/cmp/cmpliteral.lisp")
(load "src/lisp/kernel/cmp/typeq.lisp")
(load "src/lisp/kernel/cmp/codegen-special-form.lisp")
(load "src/lisp/kernel/cmp/codegen.lisp")
(load "src/lisp/kernel/cmp/compile.lisp")
(load "src/lisp/kernel/cmp/codegen-toplevel.lisp")
(load "src/lisp/kernel/cmp/compile-file.lisp")
(load "src/lisp/kernel/cmp/external-clang.lisp")
(load "src/lisp/kernel/cmp/cmpname.lisp")
(load "src/lisp/kernel/cmp/cmpbundle.lisp")
;;;(load "src/lisp/kernel/cmp/cmprepl.lisp")
(load "src/lisp/kernel/cmp/bytecode-compile.lisp")   ;; bytecode-compile
(load "src/lisp/kernel/cmp/cmprepl-bytecode.lisp")   ;; modified cmprepl
(load "src/lisp/kernel/cmp/bytecode-compile.lisp")   ;; bytecode-compile again
(load "src/lisp/kernel/tag/min-pre-epilogue.lisp")
(load "src/lisp/kernel/lsp/epilogue-aclasp.lisp")
(load "src/lisp/kernel/tag/min-end.lisp")
(format t "Loaded aclasp~%")

(setq *features* (remove :clasp-min *features*))

(load "SYS:SRC;LISP;KERNEL;TAG;START.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;PROLOGUE.LISP")
;;;(load "SYS:SRC;LISP;KERNEL;LSP;DIRECT-CALLS.LISP")
;;;(load "SYS:GENERATED;CL-WRAPPERS.LISP")
(load "SYS:SRC;LISP;KERNEL;TAG;MIN-START.LISP")
(load "SYS:SRC;LISP;KERNEL;INIT.LISP")
(load "SYS:SRC;LISP;KERNEL;TAG;AFTER-INIT.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;RUNTIME-INFO.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;SHARPMACROS.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;JIT-SETUP.LISP")
(load "SYS:SRC;LISP;KERNEL;CLSYMBOLS.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;PACKAGES.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;FOUNDATION.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;EXPORT.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;DEFMACRO.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;HELPFILE.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;EVALMACROS.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;CLASPMACROS.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;SOURCE-TRANSFORMATIONS.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;ARRAYLIB.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;SETF.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;LISTLIB.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;MISLIB.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;DEFSTRUCT.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;PREDLIB.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;CDR-5.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;CMUUTIL.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;SEQMACROS.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;SEQ.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;SEQLIB.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;IOLIB.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;TRACE.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;DEBUG.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPEXPORTS.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPSETUP.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPGLOBALS.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPUTIL.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPINTRINSICS.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;PRIMITIVES.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPIR.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPEH.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;DEBUGINFO.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CODEGEN-VARS.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;ARGUMENTS.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPLAMBDA.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPRUNALL.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPLITERAL.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;TYPEQ.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CODEGEN-SPECIAL-FORM.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CODEGEN.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;COMPILE.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CODEGEN-TOPLEVEL.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;COMPILE-FILE.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;EXTERNAL-CLANG.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPNAME.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPBUNDLE.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPREPL.LISP")
(load "SYS:SRC;LISP;KERNEL;TAG;MIN-PRE-EPILOGUE.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;EPILOGUE-ACLASP.LISP")
(load "SYS:SRC;LISP;KERNEL;TAG;MIN-END.LISP")
(load "SYS:SRC;LISP;KERNEL;TAG;BCLASP-START.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;CMPWALK.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;ASSERT.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;NUMLIB.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;DESCRIBE.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;MODULE.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;LOOP2.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;DISASSEMBLE.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;OPT;OPT.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;OPT;OPT-CHARACTER.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;OPT;OPT-NUMBER.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;OPT;OPT-TYPE.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;OPT;OPT-CONTROL.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;OPT;OPT-SEQUENCE.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;OPT;OPT-CONS.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;OPT;OPT-ARRAY.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;OPT;OPT-OBJECT.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;OPT;OPT-CONDITION.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;OPT;OPT-PRINT.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;SHIFTF-ROTATEF.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;ASSORTED.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;PACKLIB.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;DEFPACKAGE.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;FORMAT.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;MP.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;ATOMICS.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;PACKAGE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;PACKAGE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;FLAG.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;CONSTRUCTOR.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;REINITIALIZER.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;CHANGER.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;HIERARCHY.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;CPL.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STD-SLOT-VALUE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;SLOT.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;BOOT.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;KERNEL.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;OUTCOME.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;DISCRIMINATE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;DTREE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;EFFECTIVE-ACCESSOR.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;CLOSFASTGF.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;SATIATION.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;METHOD.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;COMBIN.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STD-ACCESSORS.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;DEFCLASS.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;SLOTVALUE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STANDARD.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;BUILTIN.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;CHANGE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STDMETHOD.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;GENERIC.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;FIXUP.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;CELL.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;EFFECTIVE-METHOD.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;SVUC.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;SHARED-INITIALIZE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;INITIALIZE-INSTANCE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;ALLOCATE-INSTANCE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;MAKE-INSTANCE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;COMPUTE-CONSTRUCTOR.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;DEPENDENTS.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;COMPILER-MACROS.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;REINITIALIZE-INSTANCE.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;UPDATE-INSTANCE-FOR-DIFFERENT-CLASS.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STATIC-GFS;CHANGE-CLASS.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;SOURCE-LOCATION.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;DEFVIRTUAL.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;CONDITIONS.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;PRINT.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;STREAMS.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;SEQUENCES.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;PPRINT.LISP")
(load "SYS:SRC;LISP;KERNEL;CMP;COMPILER-CONDITIONS.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;PACKLIB2.LISP")
(load "SYS:SRC;LISP;KERNEL;CLOS;INSPECT.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;FLI.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;POSIX.LISP")
(load "SYS:SRC;LISP;MODULES;SOCKETS;SOCKETS.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;TOP.LISP")
(load "SYS:SRC;LISP;KERNEL;TAG;PRE-EPILOGUE-BCLASP.LISP")
(load "SYS:SRC;LISP;KERNEL;LSP;EPILOGUE-BCLASP.LISP")
(load "SYS:SRC;LISP;KERNEL;TAG;BCLASP.LISP")
