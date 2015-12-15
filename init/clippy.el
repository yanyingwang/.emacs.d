(use-package clippy
  :ensure t)

(setq clippy-tip-show-function #'clippy-popup-tip-show)

(global-set-key (kbd "C-c d f") 'clippy-describe-function)


(global-set-key (kbd "C-c d v") 'clippy-describe-function)
