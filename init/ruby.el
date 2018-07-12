;;; flycheck
;; $ gem install rubocop ruby-lint
;;(use-package flycheck
;;:ensure t)

;;(add-hook 'after-init-hook #'global-flycheck-mode)

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
