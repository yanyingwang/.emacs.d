;;; magit
(use-package magit
  :bind (("C-x g" . magit-status))
  :init (setq magit-last-seen-setup-instructions "1.4.0")
  :ensure t)
