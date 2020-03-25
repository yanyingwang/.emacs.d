;; https://github.com/asok/projectile-rails
(use-package projectile-rails
  :init
  (define-key projectile-rails-mode-map (kbd "C-c r") 'projectile-rails-command-map)
  (add-hook 'after-init-hook 'inf-ruby-switch-setup)
  ;; (setq projectile-rails-add-keywords nil)
  :config
  (projectile-rails-global-mode)
  :ensure t)
