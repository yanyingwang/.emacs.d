
(use-package yasnippet
  :init
  (defvar company-mode/enable-yas t
    "Enable yasnippet for all backends.")

  (defun company-mode/backend-with-yas (backend)
    (if (or (not company-mode/enable-yas) (and (listp backend) (member 'company-yasnippet backend)))
        backend
      (append (if (consp backend) backend (list backend))
              '(:with company-yasnippet))))

  (setq company-backends (mapcar #'company-mode/backend-with-yas company-backends))


  ;; (yas-reload-all)
  ;; (add-hook 'prog-mode-hook #'yas-minor-mode)
  :config
  (yas-global-mode 1)

  (yas-define-snippets 'racket-mode
                       '(("require scribble/reader" "(require scribble/reader) (use-at-readtable)" "(require scribble/reader) (use-at-readtable)")
                         ("require xrepl scribble/reader" "(require xrepl racket/string racket/format scribble/reader) (use-at-readtable)" "(require xrepl racket/... scribble/reader) (use-at-readtable)")))

  (yas-define-snippets 'comint-mode ;; describle mode of `racket-repl` says: In addition to any hooks its parent mode ‘comint-mode’ might have run,this mode runs the hook ‘racket-repl-mode-hook’, as the final or penultimate step during initialization.
                       '(("require scribble/reader" "(require scribble/reader) (use-at-readtable)" "(require scribble/reader) (use-at-readtable)")
                         ("require xrepl scribble/reader" "(require xrepl racket/string racket/format scribble/reader) (use-at-readtable)" "(require xrepl racket/... scribble/reader) (use-at-readtable)")))

  :ensure t)


(use-package yasnippet-snippets
  :init
  ;; (yas-reload-all)
  ;; (add-hook 'prog-mode-hook #'yas-minor-mode)
  :config
  :ensure t)


