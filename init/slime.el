(use-package slime
  :ensure t)


(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))
(require 'slime)
(slime-setup '(slime-fancy slime-asdf slime-banner))


;(load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;;; Replace "sbcl" with the path to your implementation
  ;(setq inferior-lisp-program "sbcl")


(add-hook 'slime-repl-mode-hook (lambda () (setq show-trailing-whitespace nil)))


(add-hook 'slime-repl-mode-hook (lambda () (paredit-mode +1)))
          ;; Stop SLIME's REPL from grabbing DEL,
          ;; which is annoying when backspacing over a '('
(defun override-slime-repl-bindings-with-paredit ()
(define-key slime-repl-mode-map
  (read-kbd-macro paredit-backward-delete-key) nil))
  (add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)


;;roswell
(load (expand-file-name "~/.roswell/impls/ALL/ALL/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
  (setq inferior-lisp-program "sbcl")
