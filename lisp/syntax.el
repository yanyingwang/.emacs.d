
;;; auto complete
(use-package auto-complete
  :ensure t)
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-modes 'coffee-mode)
(add-to-list 'ac-modes 'scss-mode)
(add-to-list 'ac-modes 'slim-mode)


;;; aggressive indent
(use-package aggressive-indent
  :ensure t)

(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'html-mode)    ; exclude html



;;; Highlighting indentation for Emacs
;;(use-package highlight-indentation
;;:ensure t)

;;(set-face-background 'highlight-indentation-face "#e3e3d3")
;;(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")


;;; smartparens
(use-package smartparens
  :ensure t)

(require 'smartparens-config)
(smartparens-global-mode t)
(highlight-indentation-mode)


;;;  intelligently call whitespace-cleanup on save
;;(use-package whitespace-cleanup-mode
;;:ensure t)


