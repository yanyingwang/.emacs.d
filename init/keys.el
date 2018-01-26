;; disable minimize window keys
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))



;; enable C-x C-u & C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)



(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (message "Key-binding set for Windows")))
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (setq mac-command-modifier 'meta)
    (setq mac-option-modifier 'super)
    (global-set-key (kbd "s-SPC") 'just-one-space)
    (message "Key binding set for MacOS")))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (message "Key binding set for Linux"))))
