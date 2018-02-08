;; disable minimize window keys
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-x c"))


;; enable C-x C-u & C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)



;; customize for system conflict
(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (message "Key-binding set for Windows")))
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (setq mac-command-modifier 'meta)
    (setq mac-option-modifier 'super)
    (global-set-key (kbd "s-SPC") 'just-one-space)
    (global-set-key (kbd "C-s-q") 'indent-pp-sexp)
    (message "Key binding set for MacOS")))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (message "Key binding set for Linux"))))


;; Split window with different buffer
(eval-when-compile (require 'cl))

(defun split-window-func-with-other-buffer (split-function)
  (lexical-let ((s-f split-function))
    (lambda ()
      (interactive)
      (funcall s-f)
      (set-window-buffer (next-window) (other-buffer)))))
(global-set-key "\C-x2" (split-window-func-with-other-buffer 'split-window-vertically))
(global-set-key "\C-x3" (split-window-func-with-other-buffer 'split-window-horizontally))
