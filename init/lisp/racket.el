;; brew install librsvg
(use-package racket-mode
  ;; :quelpa ((racket-mode :fetcher github :repo "yanyingwang/racket-mode-for-ming") :upgrade t)
  :init
  ;; (add-hook 'racket-mode-hook
  ;;           (lambda ()
  ;;             (define-key racket-mode-map (kbd "C-M-y") 'insert-lambda)))
  ;; (add-hook 'racket-mode-hook #'racket-mode)
  ;; (add-hook 'racket-repl-mode-hook
  ;;           (lambda ()
  ;;             (define-key racket-repl-mode-map (kbd "C-M-y") 'insert-lambda)
  ;;             (define-key racket-repl-mode-map (kbd "[") 'racket-smart-open-bracket)))

  (add-hook 'racket-mode-hook #'racket-mode-xref-backend-function)

  (require 'racket-xp)
  (add-hook 'racket-mode-hook #'racket-xp-mode)
  ;; Note: If you find these point-motion features too distracting and/or slow, in your racket-xp-mode-hook you may disable them:
  ;; (add-hook 'racket-xp-mode-hook
  ;;           (lambda ()
  ;;             (remove-hook 'pre-redisplay-functions
  ;;                          #'racket-xp-pre-redisplay
  ;;                          t)))


  ;; (add-hook 'racket-mode-hook      #'racket-unicode-input-method-enable)
  ;; (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
  ;; (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
  ;; (add-hook 'racket-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))
  ;; (setq tab-always-indent 'complete)
  (cond
   ((string-equal system-type "windows-nt")
    (progn (message "Font set for Windows")))
   ((string-equal system-type "darwin")
    (setq racket-program "/Applications/Racket v8.4/bin/racket"))
   ((string-equal system-type "gnu/linux")
    (setq racket-program "/home/yanying/racket/bin/racket")))

  (setq racket-user-command-line-arguments '("-e" "(require scribble/reader) (use-at-readtable)"))
  :config
  (add-to-list 'auto-mode-alist '("\\.rkt?\\'" . racket-mode))
  (add-to-list 'auto-mode-alist '("\\.scm?\\'" . racket-mode))
  (add-to-list 'auto-mode-alist '("\\.*racketrc\\'" . racket-mode))

  ;; (put '􏹌 'racket-indent-function 0)
  ;; (put '名 'racket-indent-function 'defun)
  ;; (put 'insert 'racket-indent-function 'defun)
  ;; (put 'racket-macro-name 'racket-indent-function indent-value)
  :ensure t)



(use-package scribble-mode
  :init
  ;; (add-hook 'scribble-mode-hook #'geiser-mode)
  :bind (("C-c C-p" . racket-cycle-paren-shapes))
  :ensure t)




;; (defun racket-add-keywords (face-name keyword-rules)
;;   (let* ((keyword-list (mapcar #'(lambda (x)
;;                                    (symbol-name (cdr x)))
;;                                keyword-rules))
;;          (keyword-regexp (concat "(\\("
;;                                  (regexp-opt keyword-list)
;;                                  "\\)[ \n]")))
;;     (font-lock-add-keywords 'racket-mode
;;                             `((,keyword-regexp 1 ',face-name))))
;;   (mapc #'(lambda (x)
;;             (put (cdr x)
;;                  'racket-indent-function
;;                  (car x)))
;;         keyword-rules))


;; (racket-add-keywords
;;  'font-lock-keyword-face
;;  '((0 . 名)
;;    ;; (2 . let1)
;;    ;; (1 . error)
;;    ))

;; ;; (scheme-add-keywords
;; ;;  'font-lock-variable-name-face
;; ;;  '((0 . 名)
;; ;;    ))


;; (racket-add-keywords
;;  'font-lock-function-face
;;  '((0 . 􏹌)
;;    ;; (2 . let1)
;;    ;; (1 . error)
;;    ))
