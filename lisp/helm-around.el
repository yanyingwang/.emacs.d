
;;; helm-projectile
(use-package helm-projectile
  :ensure t)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-enable-caching t)
(helm-projectile-on)


(setq projectile-switch-project-action 'helm-projectile-find-file)

;;(setq projectile-switch-project-action 'helm-projectile)

;;(setq projectile-switch-project-action 'projectile-find-dir)
;;(setq projectile-find-dir-includes-top-level t)


;;(setq projectile-keymap-prefix (kbd "C-c C-p"))
					;change the default keymap prefix C-c p

;;(define-key some-keymap (kbd "s-p") 'projectile-command-map)
					;add additional commands

(add-to-list 'projectile-globally-ignored-directories "backup")
					; ignore dir name of 'backup'




;;; projectile-rails
(use-package projectile-rails
  :ensure t)

(add-hook 'projectile-mode-hook 'projectile-rails-on)




;;; rvm
(use-package rvm
  :ensure t)

(require 'rvm)
(rvm-use-default)    ; use rvm's default ruby for the current Emacs session




(use-package helm-descbinds
  :ensure t)

(require 'helm-descbinds)
(helm-descbinds-mode)

(use-package helm-themes
  :ensure t)

(require 'helm-themes)





;;; eshell with helm
(add-hook 'eshell-mode-hook    ; completion
          #'(lambda ()
              (define-key eshell-mode-map
                [remap eshell-pcomplete]
                'helm-esh-pcomplete)))

(defun pcomplete/sudo ()    ; Fix completion after SUDO
  (let ((prec (pcomplete-arg 'last -1)))
    (cond ((string= "sudo" prec)
           (while (pcomplete-here*
		   (funcall pcomplete-command-completion-function)
		   (pcomplete-arg 'last) t))))))


(add-hook 'eshell-mode-hook    ; Enable helm Eshell history
	  #'(lambda ()
	      (define-key eshell-mode-map
		(kbd "M-p")
		'helm-eshell-history)))



