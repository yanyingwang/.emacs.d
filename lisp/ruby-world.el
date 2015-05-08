
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





;;; enh-ruby-mode
(use-package enh-ruby-mode
  :ensure t)

(remove-hook 'enh-ruby-mode-hook 'erm-define-faces)    ; remove specific faces with the hook defined by ehn-ruby-mode
(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
;;(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(setq enh-ruby-bounce-deep-indent t)
(setq enh-ruby-hanging-brace-indent-level 2)




;;; inf ruby
(use-package inf-ruby
  :ensure t)

(add-hook 'enh-ruby-mode-hook 'inf-ruby-minor-mode)    ; enh-ruby-mode
