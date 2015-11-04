(use-package clean-aindent-mode
  :ensure t)

(require 'clean-aindent-mode)

(define-key global-map (kbd "RET") 'newline-and-indent)

(set 'clean-aindent-is-simple-indent t)
