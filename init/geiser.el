(use-package geiser
  :ensure t)

(cond
 ((string-equal system-type "windows-nt") ; Microsoft Windows
  (progn
    (message "Microsoft Windows")))
 ((string-equal system-type "darwin") ; Mac OS X
  (progn
    (setq geiser-guile-binary "/usr/local/bin/guile")
    (setq geiser-chez-binary "/usr/local/bin/chez")
    (message "Mac OS X")))
 ((string-equal system-type "gnu/linux") ; linux
  (progn
    (message "Linux"))))


;(setq geiser-active-implementations '(chez))
