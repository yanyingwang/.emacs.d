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



;; cleaned up whitespace before saving
(defun delete-trailing-whitespace-except-current-line ()
  (interactive)
  (let ((begin (line-beginning-position))
        (end (line-end-position)))
    (save-excursion
      (when (< (point-min) begin)
        (save-restriction
          (narrow-to-region (point-min) (1- begin))
          (delete-trailing-whitespace)))
      (when (> (point-max) end)
        (save-restriction
          (narrow-to-region (1+ end) (point-max))
          (delete-trailing-whitespace))))))

(add-hook 'before-save-hook 'whitespace-cleanup)
;;(add-hook 'before-save-hook 'delete-trailing-whitespace-except-current-line)


;; show all trailing whitespace
;;(setq show-trailing-whitespace t)
(custom-set-variables
 '(show-trailing-whitespace t))





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



;; save all buffers
(add-hook 'focus-out-hook
  (lambda ()
    (cl-letf (((symbol-function 'message) #'format))
      (save-some-buffers t))))
      ;;(save-buffer t))))
