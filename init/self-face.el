(setq frame-title-format "emacs – %b") ; format the title-bar to always include the buffer name
(setq visible-bell 1)            ; flash instead of that annoying bell


(global-display-line-numbers-mode 1)
(setq linum-format "%d ")


(tool-bar-mode 1)                       ; tool bar
(scroll-bar-mode 1)                     ; scroll bar
(menu-bar-mode 1)                       ; menu bar


(display-time-mode 1)                   ; display time
(setq display-time-format "%Y-%m-%d %H:%M ")
(setq display-time-default-load-average 1)


(setq initial-scratch-message
      (concat ";; Happy hacking " (or user-login-name "") " - Emacs ♥ you!\n\n")) ;customize scratch message

(global-hl-line-mode -1)
