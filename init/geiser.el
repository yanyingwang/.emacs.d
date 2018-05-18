(use-package geiser
  :init
  (cond
   ((string-equal system-type "darwin") ; Mac OS X
    (progn
      (setq geiser-chez-binary "/usr/local/bin/chez")
      (setq geiser-guile-binary "/usr/local/bin/guile")
      (setq geiser-mit-binary "/usr/local/bin/mit")
      (setq geiser-chicken-binary "/usr/local/bin/csi")
      (message "Mac OS X")))
   ((string-equal system-type "windows-nt") ; Microsoft Windows
    (progn
      (message "Microsoft Windows")))
   ((string-equal system-type "gnu/linux") ; linux
    (progn
      (message "Linux"))))
  (setq geiser-active-implementations '(chez))
  (setq geiser-repl-history-filename "~/.emacs.d/geiser-history")

  (add-hook 'geiser-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))
  (add-hook 'geiser-repl-mode-hook 'rainbow-delimiters-mode)
  ;;(add-hook 'geiser-repl-mode-hook (lambda () (paredit-mode +1)))

  :ensure t)


(setq scheme-program-name "chez")
