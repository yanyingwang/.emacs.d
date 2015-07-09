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
					; use rvm's default ruby for the current Emacs session




;;; inf ruby
(use-package inf-ruby
  :ensure t)

(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)
					; enh-ruby-mode

