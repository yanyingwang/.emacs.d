(use-package magit
  :bind (("C-x g" . magit-status))
  :init (setq magit-last-seen-setup-instructions "1.4.0")
  :ensure t)

(use-package browse-at-remote
  :bind (("C-c g g" . browse-at-remote))
  :ensure t)

(use-package github-stars
  :ensure t)
