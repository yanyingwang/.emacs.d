;; ;; coped from https://github.com/webyrd/dot_emacs/blob/master/dot_emacs

;; ;;; Loading/creating a file/buffer whose name ends with '.ss'
;; ;;; automagically switches Emacs to Scheme mode.
;; (setq auto-mode-alist (cons '("\\.ss" . scheme-mode) auto-mode-alist))
;; (setq auto-mode-alist (cons '("\\.sls" . scheme-mode) auto-mode-alist))

;; ;;; Teach Emacs how to properly indent
;; ;;; certain Scheme special forms
;; ;;; (such as 'pmatch')
;; (put 'cond 'scheme-indent-function 0)
;; (put 'pmatch 'scheme-indent-function 1)
;; (put 'match 'scheme-indent-function 1)
;; (put 'dmatch 'scheme-indent-function 1)
;; (put 'let-values 'scheme-indent-function 1)
;; (put 'call-with-values 'scheme-indent-function 2)
;; (put 'syntax-case 'scheme-indent-function 2)
;; (put 'test 'scheme-indent-function 1)
;; (put 'test-check 'scheme-indent-function 1)
;; (put 'test-divergence 'scheme-indent-function 1)
;; (put 'make-engine 'scheme-indent-function 0)
;; (put 'trace-lambda 'scheme-indent-function 1)

;; ;;; miniKanren-specific indentation
;; (put 'lambdaf@ 'scheme-indent-function 1)
;; (put 'lambdag@ 'scheme-indent-function 1)
;; (put 'fresh 'scheme-indent-function 1)
;; (put 'exists 'scheme-indent-function 1)
;; (put 'exist 'scheme-indent-function 1)
;; (put 'nom 'scheme-indent-function 1)
;; (put 'run 'scheme-indent-function 2)
;; (put 'conde 'scheme-indent-function 0)
;; (put 'conda 'scheme-indent-function 0)
;; (put 'condu 'scheme-indent-function 0)
;; (put 'project 'scheme-indent-function 1)
;; (put 'run* 'scheme-indent-function 1)
;; (put 'run1 'scheme-indent-function 1)
;; (put 'run2 'scheme-indent-function 1)
;; (put 'run3 'scheme-indent-function 1)
;; (put 'run4 'scheme-indent-function 1)
;; (put 'run5 'scheme-indent-function 1)
;; (put 'run6 'scheme-indent-function 1)
;; (put 'run7 'scheme-indent-function 1)
;; (put 'run8 'scheme-indent-function 1)
;; (put 'run9 'scheme-indent-function 1)
;; (put 'run10 'scheme-indent-function 1)

;; ;;; font-lock for additional Scheme keywords
;; ;;; http://www.emacswiki.org/emacs/AddKeywords
;; (defun scheme-add-keywords (face-name keyword-rules)
;;   (let* ((keyword-list (mapcar #'(lambda (x)
;; 				   (symbol-name (cdr x)))
;; 			       keyword-rules))
;; 	 (keyword-regexp (concat "(\\("
;; 				 (regexp-opt keyword-list)
;; 				 "\\)[ \n]")))
;;     (font-lock-add-keywords 'scheme-mode
;; 			    `((,keyword-regexp 1 ',face-name)))))

;; (scheme-add-keywords
;;  'font-lock-keyword-face
;;  '((1 . fresh)
;;    (1 . conde)
;;    (1 . run)
;;    (1 . run*)
;;    (1 . match)
;;    (1 . pmatch)
;;    (1 . dmatch)
;;    (1 . syntax-case)
;;    (1 . with-syntax)
;;    (1 . unless)
;;    (1 . when)
;;    (1 . library)
;;    (1 . export)
;;    (1 . import)
;;    ))
;; ;; (setq scheme-program-name "chez")
;; ;; (add-hook 'scheme-mode-hook 'geiser-mode)
;; ;; (setq scheme-program-name "gosh -i")




;; ;; chezschemelibdirs
;; (setenv "CHEZSCHEMELIBDIRS"
;;         (concat
;;          (getenv "HOME")
;;          "/.chezlib"))
