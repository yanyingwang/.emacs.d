
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

;;; Start in full-screen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))


;;; customize scratch message
(setq initial-scratch-message
      (concat ";; Happy hacking " (or user-login-name "") " - Emacs ♥ you!\n\n"))

