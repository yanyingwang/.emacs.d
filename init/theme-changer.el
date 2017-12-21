(use-package theme-changer
  :init
  (setq calendar-location-name "Shanghai, China")
  (setq calendar-latitude 31.22)
  (setq calendar-longitude 121.48)
  :config
  (require 'theme-changer)
  (change-theme 'gruvbox-light-medium 'gruvbox-dark-medium)
  :ensure t)

