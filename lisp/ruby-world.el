
;;; ruby world


;;; flycheck
;; $ gem install rubocop ruby-lint
;;(use-package flycheck
;;:ensure t)

;;(add-hook 'after-init-hook #'global-flycheck-mode)


;;; projectile-rails
(use-package projectile-rails
  :ensure t)

(add-hook 'projectile-mode-hook 'projectile-rails-on)

;;; rvm
(use-package rvm
  :ensure t)

(require 'rvm)
(rvm-use-default)    ; use rvm's default ruby for the current Emacs session


;;; inf ruby
(use-package inf-ruby
  :ensure t)



;;; ruby-end
(use-package ruby-end
  :ensure t)

(require 'ruby-end)

