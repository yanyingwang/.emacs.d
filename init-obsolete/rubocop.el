(use-package rubocop
  :init
  (add-hook 'ruby-mode-hook #'rubocop-mode)
  :ensure t)
