
(use-package racket-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.rkt?\\'" . racket-mode))
  (add-to-list 'auto-mode-alist '("\\.*racketrc\\'" . racket-mode))
  ;; (add-hook 'racket-mode-hook
  ;;           (lambda ()
  ;;             (define-key racket-mode-map (kbd "C-c r") 'racket-run)))
  (add-hook 'racket-mode-hook      #'racket-unicode-input-method-enable)
  (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
  (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
  (add-hook 'racket-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))
  (add-hook 'racket-repl-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'racket-repl-mode-hook 'smartparens-strict-mode)
  (setq tab-always-indent 'complete)
  :ensure t)



(use-package scribble-mode
  :init
  (add-hook 'scribble-mode-hook #'geiser-mode)
  :ensure t)
