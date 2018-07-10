;;; indent-guide
(use-package indent-guide
  :init
  (setq indent-guide-delay 0.5)
  (setq indent-guide-recursive t)
  (setq indent-guide-char "¡")            ;  ¦ │ ┆ ┋ ┋ ¡ ¶ ‽ § ¿ ◊
  :config
  (require 'indent-guide)
  (indent-guide-global-mode)
  (set-face-foreground 'indent-guide-face "dimgray")
  ;;(set-face-foreground 'indent-guide-face "lightgray")
  ;;(set-face-foreground 'indent-guide-face "gray")
  :ensure t)
