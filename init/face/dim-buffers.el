(use-package auto-dim-other-buffers
  :init
  :config
  (add-hook 'after-init-hook (lambda ()
                               (when (fboundp 'auto-dim-other-buffers-mode)
                                 (auto-dim-other-buffers-mode t))))
  :ensure t)



;; (use-package dimmer
;;   :init
;;   (setq dimmer-fraction 0.3)
;;   ;; (setq dimmer-exclusion-regexp "eshell")
;;   :config
;;   (dimmer-mode)
;;   :ensure t)
