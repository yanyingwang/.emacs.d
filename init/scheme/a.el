;; (setq scheme-program-name "chez")
;; (add-hook 'scheme-mode-hook 'geiser-mode)


(setenv "CHEZSCHEMELIBDIRS"
        (concat
         (getenv "HOME")
         "/.chezlib"))



(use-package racket-mode
  ;; :bind (("C-x g" . magit-status))
  :init
  ;; (add-hook 'racket-mode-hook
  ;;           (lambda ()
  ;;             (define-key racket-mode-map (kbd "C-c r") 'racket-run)))
  (add-hook 'racket-mode-hook      #'racket-unicode-input-method-enable)
  (add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)
  (setq tab-always-indent 'complete)

  :ensure t)
