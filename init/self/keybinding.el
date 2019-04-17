;; disable minimize window keys
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-x c"))

;; enable C-x C-u & C-x C-l
;;(put 'upcase-region 'disabled nil)
;;(put 'downcase-region 'disabled nil)

;; other windows
(defun previous-other-window () (interactive) (other-window -1))

(global-set-key (kbd "M-[") 'other-window)
(global-set-key (kbd "<C-tab>") 'other-window)
(global-set-key (kbd "M-]") 'previous-other-window)
(global-set-key (kbd "<C-S-tab>") 'previous-other-window)
(global-set-key (kbd "<M-return>") 'toggle-frame-fullscreen)
(global-set-key (kbd "<M-S-escape>") 'next-buffer)
(global-set-key (kbd "<M-escape>") 'previous-buffer)

;; key customize for system conflict
(cond ((string-equal system-type "windows-nt")
       (progn
         (message "Key-binding set for Windows")))
      ((string-equal system-type "darwin")
       (progn
         (setq mac-command-modifier 'meta)
         (setq mac-option-modifier 'super)
         (message "Key binding set for MacOS")))
      ((string-equal system-type "gnu/linux")
       (progn
         (message "Key binding set for Linux"))))


;; copy line
;; https://www.emacswiki.org/emacs/CopyingWholeLines
(defun copy-line (arg)
  "Copy lines (as many as prefix argument) in the kill ring"
  (interactive "p")
  (kill-ring-save (line-beginning-position)
                  (line-beginning-position (+ 1 arg)))
  (message "%d line%s copied" arg (if (= 1 arg) "" "s")))
(global-set-key (kbd "C-c k") 'copy-line)


;; select-current-line
;; https://lists.gnu.org/archive/html/help-gnu-emacs/2010-12/msg01183.html
(defun select-current-line ()
  "Select the current line"
  (interactive)
  (beginning-of-line) ; move to end of line
  (set-mark (line-end-position)))
(global-set-key (kbd " C-c l") 'select-current-line)
(global-set-key (kbd " s-l") 'select-current-line)