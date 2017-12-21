(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  :config
  (push 'company-robe company-backends)
  :ensure t)

