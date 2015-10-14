(use-package slime
  :ensure t)

(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(slime-setup)


(add-hook 'slime-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))
