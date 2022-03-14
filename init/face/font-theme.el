
(setq-default line-spacing 2)
;; (setq-default letter-spacing 2)


;; "agave-14:bold"
(cond ((string-equal system-type "windows-nt")
       (progn (message "Font set for Windows")))
      ((string-equal system-type "darwin")
       (progn (set-default-font "monaco-14:bold")
              ;; (set-default-font "agave-16:bold")
              (set-frame-font "monaco-14:bold" nil t)))
      ((string-equal system-type "gnu/linux")
       (progn (set-default-font "MonacoB2-10:bold")
              ;; (set-default-font "agave-16:bold")
              (set-frame-font "MonacoB2-10:bold" nil t))))


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

;;
;;(use-package doom-themes
;;  :init
;;  (require 'doom-themes)
;;  ;; Global settings (defaults)
;;  (setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
;;        doom-themes-enable-italic t) ; if nil, italics is universally disabled
;;  :config
;;  ;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;;  ;; may have their own settings.
;;  (load-theme 'doom-one t)
;;
;;  ;; Enable flashing mode-line on errors
;;  (doom-themes-visual-bell-config)
;;
;;  ;; Enable custom neotree theme (all-the-icons must be installed!)
;;  (doom-themes-neotree-config)
;;  ;; or for treemacs users
;;  (doom-themes-treemacs-config)
;;
;;  ;; Corrects (and improves) org-mode's native fontification.
;;  (doom-themes-org-config)
;;  :ensure t)
;;


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
                (progn
                  ;;; set fonts with check OS type
                  ;; "agave-11:bold"
                  ;; "MonacoB2-10:bold"
                ;;   (set-face-attribute 'default nil :font "monaco-14:bold")
                ;;   (set-frame-font "MonacoB2-10:bold" nil t)
                ;;   (set-face-foreground 'indent-guide-face "dimgray"))
                ;; (cond
                ;;  ((or (string-equal theme "gruvbox-light-soft")
                ;;       (string-equal theme "gruvbox-light-medium")
                ;;       (string-equal theme "gruvbox-light-hard"))
                ;;   (progn
                ;;     (set-face-attribute 'default nil :font (concat fontname ":bold"))
                ;;     (set-frame-font (concat fontname ":book") nil t)
                ;;     (set-face-foreground 'indent-guide-face "lightgray")))
                ;;  ((or (string-equal theme "gruvbox-dark-soft")
                ;;       (string-equal theme "gruvbox-dark-medium")
                ;;       (string-equal theme "gruvbox-dark-hard"))
                ;;   (progn
                ;;     (set-face-attribute 'default nil :font (concat fontname ":book"))
                ;;     (set-frame-font (concat fontname ":bold") nil t)
                ;;     (set-face-foreground 'indent-guide-face "dimgray"))))
                  ))
  (circadian-setup))
