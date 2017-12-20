;;; magit
(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status))
  :init (setq magit-last-seen-setup-instructions "1.4.0"))
