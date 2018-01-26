;;; aggressive indent
(use-package aggressive-indent
  :config
  (global-aggressive-indent-mode 0)
  (add-to-list 'aggressive-indent-excluded-modes 'html-mode)    ; exclude html
  :ensure t)
