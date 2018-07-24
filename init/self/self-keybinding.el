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
(global-set-key (kbd "<M-escape>") 'next-buffer)
(global-set-key (kbd "<M-S-escape>") 'previous-buffer)

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
