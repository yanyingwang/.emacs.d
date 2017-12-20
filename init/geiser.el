(use-package geiser
  :init
  (setq geiser-active-implementations '(chez))
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

  (add-hook 'geiser-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))
  (add-hook 'geiser-repl-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'geiser-repl-mode-hook (lambda () (paredit-mode +1)))

  :ensure t)
