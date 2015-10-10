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
