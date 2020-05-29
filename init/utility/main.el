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


(use-package phi-search
  ;; :bind (("C-s" . 'phi-search)
  ;;        ("C-r" . 'phi-search-backward))
  :config
  (require 'phi-search)
  :ensure t)

;;  :init
;;  :config
;;  (require 'iedit)


(use-package multiple-cursors
  :defer 2
  :bind (("C-S-c C-S-c" . mc/edit-lines)

         ;; ("C->" . 'mc/mark-next-like-this-word)
         ;; ("C-<" .  mc/mark-previous-like-this-word)
         ;; ("C-c C-<" . 'mc/mark-all-words-like-this)
         ;; ("C-;" . 'mc/mark-all-words-like-this)

         ;; ("C-M->" . 'mc/mark-next-like-this-symbol)
         ;; ("C-M-<" .  mc/mark-previous-like-this-symbol)
         ;; ("C-c C-M-<" . 'mc/mark-all-symbols-like-this)
         ;; ("C-:" . 'mc/mark-all-symbols-like-this)

         (:map mc/keymap ("<return>" . nil))
         ("C-S-<mouse-1>" . 'mc/add-cursor-on-click))
  :init
  :config
  :ensure t)
