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
    ;;(set-default-font "agave-14:book")
    (set-default-font "agave-14:bold")
    (message "Font set for MacOS")))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (set-default-font "Ubuntu Mono-11:bold")
    ;;(set-default-font "Bront-12:bold")
    ;;(set-default-font "agave-11:bold")
    (message "Font set for Linux"))))




(use-package gruvbox-theme
  :config
  (load-theme 'gruvbox t)
;;  ;(load-theme 'gruvbox-dark-medium t)
;;  ;(load-theme 'gruvbox-dark-soft  t)
;;  ;(load-theme 'gruvbox-dark-hard  t)
;;  ;(load-theme 'gruvbox-light-medium t)
;;  ;(load-theme 'gruvbox-light-soft  t)
;;  ;(load-theme 'gruvbox-light-hard  t)
  :ensure t)



;;(use-package material-theme
;;  ;:init
;;  :config
;;  (load-theme 'material t)
;;  ;(load-theme 'material-light t)
;;  :ensure t)
;
;;(use-package zenburn-theme
;;  :config (load-theme 'zenburn t)
;;  :ensure t)




(use-package theme-changer
  :init
  (setq calendar-location-name "Shanghai, China")
  (setq calendar-latitude 31.22)
  (setq calendar-longitude 121.48)
  :config
  (require 'theme-changer)
  (change-theme 'gruvbox-light-medium 'gruvbox-dark-medium)
  :ensure t)




