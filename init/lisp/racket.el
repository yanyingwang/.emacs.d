
(use-package racket-mode
  :init
  (add-hook 'racket-mode-hook
            (lambda ()
              (define-key racket-mode-map (kbd "C-M-y") 'insert-lambda)))
  (add-hook 'racket-mode-hook #'racket-mode)
  (add-hook 'racket-repl-mode-hook
            (lambda ()
              (define-key racket-repl-mode-map (kbd "C-M-y") 'insert-lambda)
              (define-key racket-repl-mode-map (kbd "[") 'racket-smart-open-bracket)))

  ;; (require 'racket-xp)
  ;; (add-hook 'racket-mode-hook #'racket-xp-mode)

  ;; (add-hook 'racket-mode-hook      #'racket-unicode-input-method-enable)
  ;; (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
  ;; (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
  ;; (add-hook 'racket-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))
  ;; (setq tab-always-indent 'complete)
  (setq racket-program "/Applications/Racket v7.6/bin/racket")
  :config
  (add-to-list 'auto-mode-alist '("\\.rkt?\\'" . racket-mode))
  (add-to-list 'auto-mode-alist '("\\.*racketrc\\'" . racket-mode))
  :ensure t)


(use-package scribble-mode
  :init
  ;; (add-hook 'scribble-mode-hook #'geiser-mode)
  :bind (("C-c C-p" . racket-cycle-paren-shapes))
  :ensure t)
