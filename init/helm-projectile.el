;;; helm-projectile
(use-package helm-projectile
  :ensure t)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-enable-caching t)
(helm-projectile-on)


(setq projectile-switch-project-action 'helm-projectile)
;;(setq projectile-switch-project-action 'helm-projectile-find-file)
;;(setq projectile-switch-project-action 'projectile-find-dir)
;;(setq projectile-find-dir-includes-top-level t)


;;(setq projectile-keymap-prefix (kbd "C-c C-p"))
					;change the default keymap prefix C-c p

;;(define-key some-keymap (kbd "s-p") 'projectile-command-map)
					;add additional commands

(add-to-list 'projectile-globally-ignored-directories "backup")
(add-to-list 'projectile-globally-ignored-directories ".git")
(add-to-list 'projectile-globally-ignored-directories "log")
(add-to-list 'projectile-globally-ignored-directories "tmp")
					; ignore dirs




;;; projectile-rails
(use-package projectile-rails
  :ensure t)

(add-hook 'projectile-mode-hook 'projectile-rails-on)



(use-package helm-descbinds
  :ensure t)

(require 'helm-descbinds)
(helm-descbinds-mode)

(use-package helm-themes
  :ensure t)

(require 'helm-themes)

; Idle Timer
(add-hook 'projectile-idle-timer-hook 'my-projectile-idle-timer-function)

