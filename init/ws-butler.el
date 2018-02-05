(use-package ws-butler
  :config
  (add-hook 'find-file-hook #'ws-butler-global-mode)
  :ensure t)
