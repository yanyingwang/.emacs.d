;;; helm-projectile
(use-package helm-projectile
  :ensure t)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-enable-caching t)
(helm-projectile-on)

;; To change the remote file exists cache expire to 10 minutes use this snippet of code:
(setq projectile-file-exists-remote-cache-expire nil)

;; You can also enable the cache for local file systems, that is normally not needed but possible:
(setq projectile-file-exists-remote-cache-expire (* 10 60))

(setq projectile-file-exists-local-cache-expire (* 5 60))



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

(projectile-rails-global-mode)



(use-package helm-descbinds
  :ensure t)

(require 'helm-descbinds)
(helm-descbinds-mode)

(use-package helm-themes
  :ensure t)

(require 'helm-themes)

; Idle Timer
(add-hook 'projectile-idle-timer-hook 'my-projectile-idle-timer-function)


