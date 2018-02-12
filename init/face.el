(setq frame-title-format "emacs – %b") ;Format the title-bar to always include the buffer name
(setq visible-bell t)             ;Flash instead of that annoying bell

(global-linum-mode 1)                   ;line number
;;(setq linum-format "%d")
(tool-bar-mode -1)                      ;tool bar
(scroll-bar-mode 1)                     ;scroll bar
(menu-bar-mode 1)                       ;menu bar
(display-time-mode 1)                   ;display time
(setq display-time-format "%Y-%m-%d %H:%M ")
(setq display-time-default-load-average 1)
