(use-package pinyin-search
  :ensure t)


(use-package exec-path-from-shell
  :init
  (when (memq window-system '(mac ns x))
    (exec-path-from-shell-initialize))
  :config
  :ensure t)


(use-package emr
  :bind ([prog-mode-map (kbd "C-M-RET")] . emr-show-refactor-menu)
  :init
  :config
  :ensure t)
