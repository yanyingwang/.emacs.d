(use-package gruvbox-theme
  :config
  (load-theme 'gruvbox-dark-medium t)
  ;(load-theme 'gruvbox-dark-soft  t)
  ;(load-theme 'gruvbox-dark-hard  t)
  ;(load-theme 'gruvbox-light-medium t)
  ;(load-theme 'gruvbox-light-soft  t)
  ;(load-theme 'gruvbox-light-hard  t)
  :ensure t)


;(use-package material-theme
;  ;:init
;  :config
;  (load-theme 'material t)
;  ;(load-theme 'material-light t)
;  :ensure t)

;(use-package zenburn-theme
;  :config (load-theme 'zenburn t)
;  :ensure t)



(use-package theme-changer
  :init
  (setq calendar-location-name "Shanghai, China")
  (setq calendar-latitude 31.22)
  (setq calendar-longitude 121.48)
  :config
  (require 'theme-changer)
  (change-theme 'gruvbox-light-medium 'gruvbox-dark-medium)
  :ensure t)

