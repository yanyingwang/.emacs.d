(add-hook 'focus-out-hook (lambda ()
                            (cl-letf (((symbol-function 'message) #'format))
                              (save-some-buffers t))))  ; save all buffers when lost focus


(fset 'yes-or-no-p 'y-or-n-p)       ; Use y or n instead of yes or not
(remove-hook 'find-file-hooks 'vc-find-file-hook)


;;(mouse-wheel-mode t) ; Make the mouse wheel scroll Emacs
;;(show-paren-mode 1)                     ; enable ShowParenMode

(desktop-save-mode 1)                   ; set windows size
;;(custom-set-variables
;; '(initial-frame-alist (quote ((fullscreen . maximized))))) ; Start in full-screen mode

(when (fboundp 'winner-mode)
  (winner-mode 1))                      ; key commands ‘C-c left’ and ‘C-c right’
(global-font-lock-mode t)               ; Use colors to highlight commands, etc



(setq inhibit-splash-screen t)     ; remove splash screen and messages
(setq inhibit-startup-message t)
(setq ad-redefinition-action 'accept)


(setq user-full-name "Yanying Wang")
(setq user-mail-address "yanyingwang1@gmail.com")


(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(setq mode-require-final-newline nil)

(setq show-paren-delay t)
(setq show-paren-mode t)


(setq path-to-ctags "/usr/bin/ctags") ;; <- your ctags path here

(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (format "%s -f TAGS -e -R %s" path-to-ctags (directory-file-name dir-name)))
  )

(defadvice find-tag (around refresh-etags activate)
  "Rerun etags and reload tags if tag not found and redo find-tag.
   If buffer is modified, ask about save before running etags."
  (let ((extension (file-name-extension (buffer-file-name))))
    (condition-case err
        ad-do-it
      (error (and (buffer-modified-p)
                  (not (ding))
                  (y-or-n-p "Buffer is modified, save it? ")
                  (save-buffer))
             (er-refresh-etags extension)
             ad-do-it))))

(defun er-refresh-etags (&optional extension)
  "Run etags on all peer files in current dir and reload them silently."
  (interactive)
  (shell-command (format "etags *.%s" (or extension "el")))
  (let ((tags-revert-without-query t))  ; don't query, revert silently
    (visit-tags-table default-directory nil)))
