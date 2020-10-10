;; ;;; js2-mode
;; (use-package js2-mode
;;   :init
;;   (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
;;   (add-hook 'js-mode-hook 'js2-minor-mode)
;;   (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
;;   (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
;;   (add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))
;;   ;;(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))
;;   :config
;;   :ensure t)

;; (use-package js2-refactor
;;   :init
;;   (add-hook 'js2-mode-hook #'js2-refactor-mode)
;;   (js2r-add-keybindings-with-prefix "C-c C-m")
;;   :config
;;   :ensure t)



;; ;; ;;; coffeescript mode
;; ;; (use-package coffee-mode
;; ;;   :ensure t)

;; ;; (custom-set-variables '(coffee-tab-width 2))


;; (use-package skewer-mode
;;   :init
;;   (add-hook 'js2-mode-hook 'skewer-mode)
;;   (add-hook 'css-mode-hook 'skewer-css-mode)
;;   (add-hook 'html-mode-hook 'skewer-html-mode)
;;   (add-hook 'skewer-repl-hook (lambda () (setq show-trailing-whitespace nil)))
;;   (add-hook 'skewer-repl-hook 'rainbow-delimiters-mode)
;;   ;; (add-hook 'skewer-repl-hook 'js-mode)
;;   (setq httpd-port 8081)
;;   :config
;;   :ensure t)

(setq js-indent-level 2)

;; ;;; vue-mode
;; (use-package vue-html-mode
;;   :init
;;   (add-to-list 'auto-mode-alist '("\\.vue?\\'" . vue-html-mode))
;;   :config
;;   (require 'vue-html-mode)
;;   :ensure t)


;;; vue-mode
(use-package vue-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.vue?\\'" . vue-html-mode))
  :config
  (require 'vue-mode)
  :ensure t)
