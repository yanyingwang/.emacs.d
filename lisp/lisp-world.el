(use-package slime
  :ensure t)

(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(slime-setup)
