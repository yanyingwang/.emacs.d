;;; set fonts with check OS type
;;(set-default-font "Ubuntu Mono-12:bold")
;;(set-default-font "Bront-12:bold")
;;(set-default-font "agave-11:book")
;;(set-default-font "Pointfree-10:bold")
;;(set-default-font "monaco-12:bold")
;;(set-default-font "Bront-14:bold")
;;(set-default-font "agave-14:bold")
;;(set-default-font "Bront-12:bold")
;;(set-default-font "agave-11:bold")

(cond ((string-equal system-type "windows-nt")
       (progn (message "Font set for Windows")))
      ((string-equal system-type "darwin")
       (progn (set-default-font "agave-14:book")
              (set-frame-font "agave-14:book" nil t)))
      ((string-equal system-type "gnu/linux")
       (progn (set-default-font "Ubuntu Mono-11:bold"))))


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
  (setq circadian-themes '((:sunrise . gruvbox-dark-soft)
                           (:sunset  . gruvbox-dark-hard)))
  (add-hook 'circadian-after-load-theme-hook
            #'(lambda (theme)
                (cond
                 ((or (string-equal theme "gruvbox-light-soft")
                      (string-equal theme "gruvbox-light-medium")
                      (string-equal theme "gruvbox-light-hard"))
                  (progn
                    (set-face-attribute 'default nil :font "agave-14:bold")
                    (set-frame-font "agave-14:bold" nil t)
                    (set-face-foreground 'indent-guide-face "lightgray")))
                 ((or (string-equal theme "gruvbox-dark-soft")
                      (string-equal theme "gruvbox-dark-medium")
                      (string-equal theme "gruvbox-dark-hard"))
                  (progn
                    (set-face-attribute 'default nil :font "agave-14:book")
                    (set-frame-font "agave-14:book" nil t)
                    (set-face-foreground 'indent-guide-face "dimgray"))))))
  (circadian-setup))

