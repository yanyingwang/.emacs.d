;; (setq scheme-program-name "chez")
;; (add-hook 'scheme-mode-hook 'geiser-mode)
;; (setq scheme-program-name "gosh -i")


(setenv "CHEZSCHEMELIBDIRS"
        (concat
         (getenv "HOME")
         "/.chezlib"))



(use-package racket-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.*racketrc\\'" . racket-mode))
  ;; (add-hook 'racket-mode-hook
  ;;           (lambda ()
  ;;             (define-key racket-mode-map (kbd "C-c r") 'racket-run)))
  (add-hook 'racket-mode-hook      #'racket-unicode-input-method-enable)
  (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
  (setq tab-always-indent 'complete)
  :ensure t)



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
  (setq geiser-racket-collects '("~/.emacs.d/init/scheme/"))
  (setq geiser-racket-init-file "~/.emacs.d/init/scheme/dotracketrc")
  (setq geiser-active-implementations '(racket chez))
  (setq geiser-repl-history-filename "~/.emacs.d/geiser-history")
  (setq geiser-repl-use-other-window nil)
  ;; (setq geiser-repl-skip-version-check-p t)
  ;;(setq geiser-repl-startup-time 20000)
  (add-hook 'geiser-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))
  (add-hook 'geiser-repl-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'geiser-repl-mode-hook 'smartparens-strict-mode)
  :ensure t)
