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



(use-package powerline
  :config
  (powerline-default-theme)
  ;;(setq powerline-arrow-shape 'arrow)   ; the default
  (setq powerline-arrow-shape 'curve)   ; give your mode-line curves
  ;; (setq powerline-arrow-shape 'arrow14) ; best for small fonts
  :ensure t)


(use-package micgoline
  :init
  (defface micgoline-pl-active-blue

    '((t (:background "#4885ed" :foreground "#FFFFFF" :inherit mode-line)))
    "P face blue."
    :group 'powerline)

  (defface micgoline-pl-inactive-blue
    '((t (:background "#2b2f59" :Foreground "#FFFFFF" :inherit mode-line-inactive))) ;; "#00A1F1"
    "P face blue."
    :group 'powerline)

  (defface micgoline-pl-active-green
    '((t (:background "#3cba54" :foreground "#FFFFFF" :inherit mode-line)))
    "P face green."
    :group 'powerline)

  (defface micgoline-pl-inactive-green
    '((t (:background  "#16441d" :foreground "#FFFFFF" :inherit mode-line-inactive))) ;; "#7CBB00"
    "P face green."
    :group 'powerline)

  (defface micgoline-pl-active-red
    '((t (:background "#db3236" :foreground "#FFFFFF" :inherit mode-line)))
    "P face red."
    :group 'powerline)

  (defface micgoline-pl-inactive-red
    '((t (:background "#59342a" :foreground "#FFFFFF" :inherit mode-line-inactive))) ;; "#F65314"
    "P face red."
    :group 'powerline)

  (defface micgoline-pl-active-yellow
    '((t (:background "#f4c20d" :foreground "#FFFFFF" :inherit mode-line)))
    "P face yellow."
    :group 'powerline)

  (defface micgoline-pl-inactive-yellow
    '((t (:background "#54592a" :foreground "#FFFFFF" :inherit mode-line-inactive))) ;; "#FFBB00"
    "P face yellow."
    :group 'powerline)
  (setq ns-use-srgb-colorspace nil)
  (setq powerline-default-separator 'slant) ;; nil slant arrow
  :config
  :ensure t)


;; (use-package smart-mode-line
;;   :ensure t
;;   ;; :after powerline
;;   ;; :after micgoline
;;   ;; :after smart-mode-line
;;   :init
;;   (setq sml/no-confirm-load-theme t)
;;   (sml/setup)
;;   ;; (setq sml/theme 'dark)
;;   ;; (setq sml/theme 'light)
;;   (setq sml/theme 'respectful)
;;   :ensure t)

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
