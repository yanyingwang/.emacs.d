
;;--;; alternate variable
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


;; (use-package powerline
;;   :config
;;   (require 'powerline)
;;   (powerline-default-theme)
;;   ;;(setq powerline-arrow-shape 'arrow)   ; the default
;;   (setq powerline-arrow-shape 'curve)   ; give your mode-line curves
;;   ;; (setq powerline-arrow-shape 'arrow14) ; best for small fonts
;;   :ensure t)

(use-package micgoline
  :config
  (require 'micgoline)
  (setq ns-use-srgb-colorspace nil)
  (setq powerline-default-separator 'arrow) ;; nil slant arrow
  (setq ns-use-srgb-colorspace nil)
  :ensure t)

(use-package smart-mode-line
  :ensure t
  ;; :after powerline
  ;; :after micgoline
  ;; :after smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t)
  (sml/setup)
  ;; (setq sml/theme 'dark)
  ;; (setq sml/theme 'light)
  (setq sml/theme 'respectful)
  :ensure t)

;; (use-package telephone-line
;;   :config
;;   (require 'telephone-line)
;;   (telephone-line-mode 1)
;;   (setq telephone-line-lhs
;;         '((evil   . (telephone-line-evil-tag-segment))
;;           (accent . (telephone-line-vc-segment
;;                      telephone-line-erc-modified-channels-segment
;;                      telephone-line-process-segment))
;;           (nil    . (telephone-line-minor-mode-segment
;;                      telephone-line-buffer-segment))))
;;   (setq telephone-line-rhs
;;         '((nil    . (telephone-line-misc-info-segment))
;;           (accent . (telephone-line-major-mode-segment))
;;           (evil   . (telephone-line-airline-position-segment))))
;;   :ensure t)


;; (use-package all-the-icons
;;   :ensure t)

;; (use-package doom-modeline
;;   :ensure t
;;   :init
;;   (doom-modeline-mode 1)
;;   :ensure t)
