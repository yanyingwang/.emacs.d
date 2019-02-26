
(use-package auto-dim-other-buffers
  :init
  :config
  (add-hook 'after-init-hook (lambda ()
                               (when (fboundp 'auto-dim-other-buffers-mode)
                                 (auto-dim-other-buffers-mode t))))
  :ensure t)
