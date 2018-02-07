;;;;;; powerline
;;(use-package powerline
;;  :config
;;  (require 'powerline)
;;  (powerline-default-theme)
;;  ;;(setq powerline-arrow-shape 'arrow)   ; the default
;;  (setq powerline-arrow-shape 'curve)   ; give your mode-line curves
;;  ;;(setq powerline-arrow-shape 'arrow14) ; best for small fonts
;;  :ensure t)
;;

;;; micgoline
(use-package micgoline
  :config
  (require 'micgoline)
  (setq ns-use-srgb-colorspace nil)
  (setq powerline-default-separator 'slant)
  :ensure t)

;;alternate
;;arrow
;;arrow-fade
;;bar
;;box
;;brace
;;butt
;;chamfer
;;contour
;;curve
;;rounded
;;roundstub
;;slant
;;wave
;;zigzag
;;utf-8
;;nil



;;; telephone-line
;;
;;(use-package telephone-line
;;  :config
;;  (require 'telephone-line)
;;  (telephone-line-mode 1)
;;  (setq telephone-line-primary-right-separator 'telephone-line-identity-left
;;        telephone-line-secondary-right-separator 'telephone-line-identity-hollow-left)
;;  (setq telephone-line-height 24
;;        telephone-line-evil-use-short-tag t)
;;  :ensure t)
;;
