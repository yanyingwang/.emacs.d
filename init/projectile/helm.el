;;; Helm-projectile
(use-package helm-projectile
  :init
  (setq projectile-keymap-prefix (kbd "C-c p"))
  (setq projectile-completion-system 'helm) ; helm default ivy
  (setq projectile-enable-caching t)
  (setq projectile-file-exists-remote-cache-expire nil) ; To change the remote file exists cache expire to 10 minutes use this snippet of code:
  (setq projectile-file-exists-remote-cache-expire (* 10 60)) ; You can also enable the cache for local file systems, that is normally not needed but possible:
  (setq projectile-file-exists-local-cache-expire (* 5 60))
  (setq projectile-switch-project-action 'helm-projectile) ; values: helm-projectile-find-file projectile-find-dir
  (setq helm-buffer-max-length 60)      ; adjust helm-mini filename column width
  (setq projectile-find-dir-includes-top-level t)
  (add-hook 'projectile-idle-timer-hook 'my-projectile-idle-timer-function) ; Idle Timer
  :config
  (projectile-global-mode)
  (helm-projectile-on)
  (define-key projectile-mode-map (kbd "s-<escape>") #'projectile-project-buffers-other-buffer)
  (define-key projectile-mode-map (kbd "s-b") #'projectile-switch-to-buffer)
  (add-to-list 'projectile-globally-ignored-directories "backup") ; ignore dirs
  (add-to-list 'projectile-globally-ignored-directories ".git")
  (add-to-list 'projectile-globally-ignored-directories "log")
  (add-to-list 'projectile-globally-ignored-directories "tmp")
  (add-to-list 'projectile-globally-ignored-directories "*node_modules")
  :ensure t)



;; (use-package counsel-projectile
;;   :init
;;   (projectile-global-mode 1)
;;   (counsel-projectile-mode)
;;   (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;;   :ensure t)
