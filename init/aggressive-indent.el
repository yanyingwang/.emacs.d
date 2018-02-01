;;; aggressive indent
(use-package aggressive-indent
  :config
  (add-to-list 'aggressive-indent-excluded-modes 'web-mode)    ; exclude html
  (global-aggressive-indent-mode 1)
  :ensure t)
