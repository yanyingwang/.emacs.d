

;; sudo pacman -S librime
(use-package rime
  :init
  (setq rime-translate-keybindings
        '("C-f" "C-b" "C-n" "C-p" "C-g" "<left>" "<right>" "<up>" "<down>" "<prior>" "<next>" "<delete>"))
  (setq rime-share-data-dir "~/rime_custom")
  ;; (setq rime-user-data-dir "~/.emacs.d/rime")
  (setq rime-show-candidate 'posframe)  ; minibuffer message posframe sidewindow
  (setq rime-show-preedit 'inline)
  ;; (setq rime-posframe-properties
  ;;       (list :font ""
  ;;             :internal-border-width 10))
  :bind
  (:map rime-mode-map
        ("C-`" . 'rime-send-keybinding))
  :custom
  (default-input-method "rime")
  )
