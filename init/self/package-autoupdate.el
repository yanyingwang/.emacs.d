(use-package auto-package-update
   :ensure t
   :config
   (setq auto-package-update-delete-old-versions t
         auto-package-update-prompt-before-update t
         auto-package-update-at-time "12:30"
         auto-package-update-interval 14)
   (auto-package-update-maybe))
