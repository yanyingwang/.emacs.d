(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-selection-wrap-around t)
  :config
  (push 'company-robe company-backends)
  (define-key company-active-map (kbd "<tab>") 'company-select-next)
  (define-key company-active-map (kbd "<backtab>") 'company-select-previous) ;<S-tab>
  :ensure t)
