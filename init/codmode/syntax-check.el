(use-package flymake-racket
  :ensure t
  :commands (flymake-racket-add-hook)
  :init
  (add-hook 'scheme-mode-hook #'flymake-racket-add-hook)
  (add-hook 'racket-mode-hook #'flymake-racket-add-hook))







;; ;; (use-package flymake-easy
;; ;;   :config
;; ;;   (require 'flymake-easy)
;; ;;   :ensure t)

;; ;; (use-package flymake-ruby
;; ;;   :init
;; ;;   (add-hook 'ruby-mode-hook 'flymake-ruby-load)
;; ;;   :config
;; ;;   (require 'flymake-ruby)
;; ;;   :ensure t)

;; (use-package flycheck
;;   :config
;;   (global-flycheck-mode)
;;   :ensure t)

;; ;; (use-package flycheck-posframe
;; ;;   :ensure t
;; ;;   :after flycheck
;; ;;   :config (add-hook 'flycheck-mode-hook #'flycheck-posframe-mode))

;; (use-package flycheck-pos-tip
;;   :init
;;   (with-eval-after-load 'flycheck
;;     (flycheck-pos-tip-mode))
;;   :ensure t)

;; ;; (use-package flycheck-color-mode-line
;; ;;   :init
;; ;;   (eval-after-load "flycheck"
;; ;;     '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))
;; ;;   :config
;; ;;   (require 'flycheck-color-mode-line)
;; ;;   :ensure t)


;; ;; (use-package flycheck-package
;; ;;   :init
;; ;;   (with-eval-after-load 'flycheck
;; ;;     (flycheck-package-setup))
;; ;;   :ensure t)





;; ;;; not finished package
;; ;; (use-package flycheck-grammarly
;; ;;   :init
;; ;;   :config
;; ;;   :ensure t)



;; ;; (use-package flycheck-pos-tip
;; ;;   :config
;; ;;   (with-eval-after-load 'flycheck
;; ;;     (flycheck-pos-tip-mode))
;; ;;   :ensure t)
