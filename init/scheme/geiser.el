;; run the console with `run-geiser'



(use-package geiser
  :init
  (cond
   ((string-equal system-type "darwin")
    (progn
      (setq geiser-chez-binary "/usr/local/bin/chez")
      (setq geiser-racket-binary "/Applications/Racket v7.2/bin/racket")
      (setq geiser-gauche-binary "/usr/local/bin/gosh -i")
      (setq geiser-guile-binary "/usr/local/bin/guile")
      (setq geiser-mit-binary "/usr/local/bin/mit")
      (setq geiser-chicken-binary "/usr/local/bin/csi")
      (message "Mac OS X")))
   ((string-equal system-type "windows-nt")
    (progn
      (message "Microsoft Windows")))
   ((string-equal system-type "gnu/linux")
    (progn
      (message "Linux"))))
  ;;(setq geiser-active-implementations '(chez))
  (setq geiser-repl-history-filename "~/.emacs.d/geiser-history")
  (setq geiser-repl-use-other-window nil)
  ;;(setq geiser-repl-startup-time 20000)
  (add-hook 'geiser-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))
  (add-hook 'geiser-repl-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'geiser-repl-mode-hook 'smartparens-strict-mode)
  :ensure t)


(setq scheme-program-name "gosh -i")
