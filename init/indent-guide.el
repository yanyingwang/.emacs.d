;;; indent-guide
(use-package indent-guide
  :config
  (set-face-foreground 'indent-guide-face "dimgray")
  ;;(set-face-foreground 'indent-guide-face "lightgray")
  ;;(set-face-foreground 'indent-guide-face "gray")
  (setq indent-guide-delay 0.5)
  (setq indent-guide-recursive t)
  (setq indent-guide-char "¦")            ;  ¦ │ ┆ ┋ ┋
  (indent-guide-global-mode)
  :ensure t)
