;; https://www.reddit.com/r/emacs/comments/g9jkyz/rebinding_spbackwarddeletechar/
(defun de-sp-smart-delete ()
  "Kill region in mark if mark is active, else delete char."
  (interactive)
  (if mark-active
      (sp-delete-region (region-beginning) (region-end))
    (sp-backward-delete-char)))


(use-package smartparens
  :bind (("M-D" . sp-unwrap-sexp)
         ("<C-M-backspace>" . sp-backward-kill-sexp)
         ("<S-M-backspace>" . sp-backward-kill-sexp)
         ("DEL" . de-sp-smart-delete)
         :map smartparens-strict-mode-map
         ("DEL" . de-sp-smart-delete))
  :init
  (add-hook 'prog-mode-hook 'smartparens-global-mode)
  (add-hook 'markdown-mode-hook 'turn-on-smartparens-strict-mode)
  (add-hook 'emacs-lisp-mode-hook 'smartparens-strict-mode)
  (add-hook 'clojure-mode-hook 'smartparens-strict-mode)
  (add-hook 'scheme-mode-hook 'smartparens-strict-mode)
  (add-hook 'racket-mode-hook 'smartparens-strict-mode)
  (add-hook 'racket-repl-mode-hook 'smartparens-strict-mode)
  (add-hook 'geiser-repl-mode-hook 'smartparens-strict-mode)
  :config
  (sp-pair "(" ")" :wrap "C-(")
  :ensure t)


(use-package smartparens-config
  :ensure smartparens
  :config
  (progn
    (show-smartparens-global-mode t)))
