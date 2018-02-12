;;; key commands ‘C-c left’ and ‘C-c right’
(when (fboundp 'winner-mode)
  (winner-mode 1))


;;; set windows size
(desktop-save-mode 1)
;;; Start in full-screen mode
;;(custom-set-variables
;; '(initial-frame-alist (quote ((fullscreen . maximized)))))


;; remove splash screen and messages
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq ad-redefinition-action 'accept)



;; prevent emacs from adding coding information in the first line
(setq ruby-insert-encoding-magic-comment nil)



;; save all buffers when lost focus
(add-hook 'focus-out-hook
          (lambda ()
            (cl-letf (((symbol-function 'message) #'format))
              (save-some-buffers t))))
;;(save-buffer t))))


;; Make the mouse wheel scroll Emacs
;;(mouse-wheel-mode t)




;; Use y or n instead of yes or not
(fset 'yes-or-no-p 'y-or-n-p)

;; enable ShowParenMode
;;(show-paren-mode 1)

(remove-hook 'find-file-hooks 'vc-find-file-hook)

;;; set line spacing
(setq-default line-spacing 4)

;; Use colors to highlight commands, etc.
(global-font-lock-mode t)



(setq user-full-name "Yanying Wang")
(setq user-mail-address "yanyingwang1@gmail.com")
(setq initial-scratch-message
      (concat ";; Happy hacking " (or user-login-name "") " - Emacs ♥ you!\n\n")) ;customize scratch message
