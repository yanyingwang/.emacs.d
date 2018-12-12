


;; ;;; coffeescript mode
;; (use-package coffee-mode
;;   :ensure t)

;; (custom-set-variables '(coffee-tab-width 2))


(use-package skewer-mode
  :init
  (add-hook 'js-mode-hook 'skewer-mode)
  (add-hook 'css-mode-hook 'skewer-css-mode)
  (add-hook 'html-mode-hook 'skewer-html-mode)
  (add-hook 'skewer-repl-hook (lambda () (setq show-trailing-whitespace nil)))
  (add-hook 'skewer-repl-hook 'rainbow-delimiters-mode)
  ;; (add-hook 'skewer-repl-hook 'js-mode)
  (setq httpd-port 8081)
  :config
  :ensure t)
