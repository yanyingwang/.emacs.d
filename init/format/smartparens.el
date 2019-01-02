(use-package smartparens
  :bind (("M-D" . sp-unwrap-sexp)
         ("<C-M-backspace>" . sp-backward-kill-sexp))
  :init
  (add-hook 'prog-mode-hook 'smartparens-global-mode)
  (add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)
  (add-hook 'emacs-lisp-mode-hook 'smartparens-strict-mode)
  (add-hook 'clojure-mode-hook 'smartparens-strict-mode)
  (add-hook 'scheme-mode-hook 'smartparens-strict-mode)
  :config
  (sp-pair "(" ")" :wrap "C-(")
  :ensure t)


(use-package smartparens-config
  :ensure smartparens
  :config
  (progn
    (show-smartparens-global-mode t)))


