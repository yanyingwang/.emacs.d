
(use-package eshell-prompt-extras
  :init
  (setq epe-path-style 'fish)
  ;; (setq eshell-highlight-prompt nil)
  (setq eshell-prompt-function 'epe-theme-lambda)
  (add-hook 'eshell-mode (setq diff-dl-mode 0))
  :config
  :ensure t)


;; (with-eval-after-load "esh-opt"
;;   (autoload 'epe-theme-lambda "eshell-prompt-extras")
;;   (setq eshell-highlight-prompt nil
;;         eshell-prompt-function 'epe-theme-wwlambda))
