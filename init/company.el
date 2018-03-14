(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-selection-wrap-around t)
  (setq company-idle-delay 0)
  (setq company-show-numbers t)
  :config
  (push 'company-robe company-backends)
  (company-tng-configure-default)
  ;;(define-key company-active-map (kbd "C-n") 'company-select-next)
  ;;(define-key company-active-map (kbd "C-p") 'company-select-previous)
  :ensure t)
