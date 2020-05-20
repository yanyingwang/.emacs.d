
(use-package php-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.php?\\'" . php-mode))
  :config
  (require 'php-mode)
  :ensure t)