
;;; auto complete
(use-package auto-complete
  :ensure t)
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-modes 'coffee-mode)
(add-to-list 'ac-modes 'scss-mode)
(add-to-list 'ac-modes 'sass-mode)
(add-to-list 'ac-modes 'slim-mode)
(add-to-list 'ac-modes 'yaml-mode)


;;; smartparens
(use-package smartparens
  :ensure t)

(require 'smartparens-config)
(smartparens-global-mode t)
;;(highlight-indentation-mode)


;;;  intelligently call whitespace-cleanup on save
;;(use-package whitespace-cleanup-mode
;;:ensure t)


