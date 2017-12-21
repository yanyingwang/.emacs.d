;;; flycheck
;; $ gem install rubocop ruby-lint
;;(use-package flycheck
;;:ensure t)

;;(add-hook 'after-init-hook #'global-flycheck-mode)


;;; rvm
(use-package rvm
  :ensure t)

(require 'rvm)
(rvm-use-default)


(use-package robe
  :init
  (add-hook 'ruby-mode-hook 'robe-mode)
  :ensure t)
