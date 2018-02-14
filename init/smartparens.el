(use-package smartparens
  :bind (("M-D" . sp-unwrap-sexp))
  :config
  :ensure t)


(use-package smartparens-config
  :ensure smartparens
  :config
  (progn
    (show-smartparens-global-mode t)))

(add-hook 'prog-mode-hook 'smartparens-global-mode)
(add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)
