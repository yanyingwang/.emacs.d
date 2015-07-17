;;; Highlight-Indentation-for-Emacs
(use-package highlight-indentation
  :ensure t)

(highlight-indentation-mode)

(set-face-foreground 'highlight-indentation-face "#e3e3d3")
(set-face-foreground 'highlight-indentation-current-column-face "#c3b3b3")
