(use-package flycheck-mode
  :ensure t)

(require 'flycheck-mode)

(global-flycheck-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)
