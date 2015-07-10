;;; Start in full-screen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))



;;; customize scratch message
(setq initial-scratch-message
      (concat ";; Happy hacking " (or user-login-name "") " - Emacs ♥ you!\n\n"))



(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq ad-redefinition-action 'accept)



;; enable C-x C-u & C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)



;;; prevent emacs from adding coding information in the first line
(setq ruby-insert-encoding-magic-comment nil)




(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)

;;(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
;;backup-by-copying t    ; Don't delink hardlinks
;;version-control t      ; Use version numbers on backups
;;delete-old-versions t  ; Automatically delete excess backups
;;kept-new-versions 20   ; how many of the newest versions to keep
;;kept-old-versions 5)   ; and how many of the old
