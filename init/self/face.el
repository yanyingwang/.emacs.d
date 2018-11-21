(setq visible-bell t)            ; flash instead of that annoying bell


(setq frame-title-format ; format the title-bar to always include the buffer name
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%"))
        (:eval (if (buffer-modified-p)
                   " •"))
        " - Emacs" emacs-version))


(when (memq window-system '(mac ns))
  (add-to-list 'default-frame-alist '(ns-appearance . dark))
  (add-to-list 'default-frame-alist '(ns-transparent-titlebar . t)))


(global-display-line-numbers-mode 1)


(tool-bar-mode -1)                       ; tool bar
(scroll-bar-mode -1)                     ; scroll bar
(menu-bar-mode 1)                        ; menu bar


(display-time-mode 1)                   ; display time
(setq display-time-format "%Y-%m-%d %H:%M ")
(setq display-time-default-load-average 1)


(setq initial-scratch-message
      (concat ";; Happy hacking " (or user-login-name "") " - Emacs ♥ you!\n\n")) ;customize scratch message

(global-hl-line-mode -1)
