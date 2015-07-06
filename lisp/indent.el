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




;;; Highlight-Indentation-for-Emacs
(use-package highlight-indentation
  :ensure t)

;;(highlight-indentation-mode)

(set-face-background 'highlight-indentation-face "#e3e3d3")
(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")




;;; indent-guide
(use-package  indent-guide
  :ensure t)

(indent-guide-global-mode)
