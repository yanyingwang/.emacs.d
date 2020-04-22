;;; rvm
(use-package rvm
  :config
  (require 'rvm)
  (rvm-use-default)
  :ensure t)

(use-package robe
  :init
  (add-hook 'ruby-mode-hook 'robe-mode)
  (add-hook 'enh-ruby-mode-hook 'robe-mode)
  :ensure t)

(use-package ruby-refactor
  :init
  (add-hook 'ruby-mode-hook 'ruby-refactor-mode-launch)
  :ensure t)
