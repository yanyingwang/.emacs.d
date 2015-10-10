;(custom-set-variables
  ;'(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  ;'(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)
;(make-directory "~/.emacs.d/backups/" t)


;(setq backup-directory-alist
          ;`((".*" . ,temporary-file-directory)))
    ;(setq auto-save-file-name-transforms
          ;`((".*" ,temporary-file-directory t)))

;;(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
;;backup-by-copying t    ; Don't delink hardlinks
;;version-control t      ; Use version numbers on backups
;;delete-old-versions t  ; Automatically delete excess backups
;;kept-new-versions 20   ; how many of the newest versions to keep
;;kept-old-versions 5)   ; and how many of the old


;; Save all tempfiles in $TMPDIR/emacs$UID/
;;(defconst emacs-tmp-dir (format "%s%s%s/" temporary-file-directory "emacs" (user-uid)))
(defconst emacs-tmp-dir "~/.emacs.d/autosaves")
(setq backup-directory-alist
      `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
      `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
      emacs-tmp-dir)
