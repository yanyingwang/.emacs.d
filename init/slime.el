(use-package slime
  :ensure t)

(if (file-exists-p "/usr/bin/sbcl")
    (setq inferior-lisp-program "/usr/bin/sbcl"))
(if (file-exists-p "/usr/local/bin/sbcl")
    (setq inferior-lisp-program "/usr/local/bin/sbcl"))


;;roswell slime
(if (file-exists-p "/usr/bin/sbcl")
  (load (expand-file-name "~/.roswell/helper.el")))

(setq slime-contribs '(slime-fancy))
(require 'slime)
(slime-setup '(slime-fancy slime-asdf slime-banner))


(add-hook 'slime-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))

(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
          ;; Stop SLIME's REPL from grabbing DEL,
          ;; which is annoying when backspacing over a '('
(defun override-slime-repl-bindings-with-paredit ()
(define-key slime-repl-mode-map
  (read-kbd-macro paredit-backward-delete-key) nil))
  (add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)
