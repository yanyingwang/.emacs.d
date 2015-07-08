;;; web mode
(use-package web-mode
  :ensure t)

(require 'web-mode)


;;; scss mode
(use-package scss-mode
  :ensure t)


;;; slim mode
(use-package slim-mode
  :ensure t)

(require 'slim-mode)

;;; markdown mode
(use-package markdown-mode
  :ensure t)

(require 'markdown-mode)


;;; coffeescript mode
(use-package coffee-mode
  :ensure t)

(custom-set-variables '(coffee-tab-width 2))


;;; yaml
(use-package yaml-mode
  :ensure t)

(add-hook 'yaml-mode-hook
	  (lambda ()
	    (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
