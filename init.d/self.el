;;; Start in full-screen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))


;;; customize scratch message
(setq initial-scratch-message
      (concat ";; Happy hacking " (or user-login-name "") " - Emacs ♥ you!\n\n"))


;; remove splash screen and messages
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq ad-redefinition-action 'accept)


;; enable C-x C-u & C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


;;; prevent emacs from adding coding information in the first line
(setq ruby-insert-encoding-magic-comment nil)



;; save all buffers when lost focus
(add-hook 'focus-out-hook
  (lambda ()
    (cl-letf (((symbol-function 'message) #'format))
      (save-some-buffers t))))
      ;;(save-buffer t))))


;; Make the mouse wheel scroll Emacs
(mouse-wheel-mode t)


;; Always end a file with a newline
(setq require-final-newline t)


;; Stop emacs from arbitrarily adding lines to the end of a file when the cursor is moved past the end of it:
(setq next-line-add-newlines nil)


;; Use y or n instead of yes or not
(fset 'yes-or-no-p 'y-or-n-p)


;;; enable ShowParenMode
;;(show-paren-mode 1)

