
;;; set fonts
(set-default-font "Input Mono-10:bold")

;;; set line spacing
(setq-default line-spacing 4)

;;; set line number
(global-linum-mode t)

;;; hide tool bar
(tool-bar-mode -1)

;;; hide scroll bar
(scroll-bar-mode -1)

;; Use colors to highlight commands, etc.
(global-font-lock-mode t) 

;; Display time
(display-time)

;; Format the title-bar to always include the buffer name
(setq frame-title-format "emacs – %b")

;; Flash instead of that annoying bell
(setq visible-bell t)

