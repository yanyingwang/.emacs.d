(use-package smartparens
  :config
  (require 'smartparens-config)
  ;;(add-hook 'js-mode-hook #'smartparens-mode)
  (smartparens-global-mode t)
  (show-smartparens-global-mode t)
  :ensure t)

;;
;;(use-package smartparens-config
;;  :ensure smartparens
;;  :config
;;  (progn
;;    (show-smartparens-global-mode t)))
;;
;;(add-hook 'prog-mode-hook 'smartparens-global-mode)
;;(add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)
;;
