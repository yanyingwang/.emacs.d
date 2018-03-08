;; disable minimize window keys
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-x c"))


;; enable C-x C-u & C-x C-l
;;(put 'upcase-region 'disabled nil)
;;(put 'downcase-region 'disabled nil)



;; customize for system conflict
(cond ((string-equal system-type "windows-nt") ; Windows
       (progn
         (message "Key-binding set for Windows")))
      ((string-equal system-type "darwin") ; MacOS
       (progn
         (setq mac-command-modifier 'meta)
         (setq mac-option-modifier 'super)
         ;;(global-set-key (kbd "s-SPC") 'just-one-space)
         ;;(global-set-key (kbd "C-s-q") 'indent-pp-sexp)
         ;;(global-set-key (kbd "M-RET") 'toggle-frame-maximized)
         (message "Key binding set for MacOS")))
      ((string-equal system-type "gnu/linux") ; Linux
       (progn
         (message "Key binding set for Linux"))))
