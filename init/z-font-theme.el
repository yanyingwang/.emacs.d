;;; set fonts with check OS type
;;(set-default-font "Ubuntu Mono-12:bold")
;;(set-default-font "Bront-12:bold")
;;(set-default-font "agave-11:book")
;;(set-default-font "Pointfree-10:bold")
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (message "Font set for Windows")))
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    ;;(set-default-font "monaco-12:bold")
    ;;(set-default-font "Bront-14:bold")
    ;;(set-default-font "agave-14:bold")
    (set-default-font "agave-14:book")
    (set-frame-font "agave-14:book" nil t)
    (message "Font set for MacOS")))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    ;;(set-default-font "Bront-12:bold")
    ;;(set-default-font "agave-11:bold")
    (set-default-font "Ubuntu Mono-11:bold")
    (message "Font set for Linux"))))


;;(use-package material-theme
;;  :config
;;  (load-theme 'material t)
;;  ;(load-theme 'material-light t)
;;  :ensure t)

;;(use-package zenburn-theme
;;  :config (load-theme 'zenburn t)
;;  :ensure t)

(use-package gruvbox-theme
  :config
  ;;(load-theme 'gruvbox t)
  ;;(load-theme 'gruvbox-light-soft  t)
  ;;(load-theme 'gruvbox-light-medium t)
  ;;(load-theme 'gruvbox-light-hard  t)
  ;;(load-theme 'gruvbox-dark-soft  t)
  ;;(load-theme 'gruvbox-dark-medium t)
  ;;(load-theme 'gruvbox-dark-hard  t)
  :ensure t :defer)


(use-package circadian
  :ensure t
  :config
  ;;(setq circadian-themes '(("8:00" . gruvbox-light-medium)
  ;;                         ("19:00" . gruvbox-dark-medium)))
  (setq calendar-latitude 31.230390)
  (setq calendar-longitude 121.473702)
  (setq circadian-themes '((:sunrise . gruvbox-light-medium)
                           (:sunset  . gruvbox-dark-medium)))
  (add-hook 'circadian-after-load-theme-hook
            #'(lambda (theme)
                (cond
                 ((string-equal theme "gruvbox-light-medium")
                  (progn
                    (set-face-attribute 'default nil :font "agave-14:bold")
                    (set-frame-font "agave-14:bold" nil t)
                    (set-face-foreground 'indent-guide-face "lightgray")))
                 ((string-equal theme "gruvbox-dark-medium")
                  (progn
                    (set-face-attribute 'default nil :font "agave-14:book")
                    (set-frame-font "agave-14:book" nil t)
                    (set-face-foreground 'indent-guide-face "dimgray"))))))
  (circadian-setup))

