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


(use-package region-bindings-mode
  :bind ((:map region-bindings-mode-map
               ("a" . 'mc/mark-all-like-this)
               ("p" . 'mc/mark-previous-like-this)
               ("n" . 'mc/mark-next-like-this)
               ("m" . 'mc/mark-more-like-this-extended)))
  :init
  (setq region-bindings-mode-disable-predicates ((lambda () buffer-read-only)))
  :config
  (require 'region-bindings-mode)
  (region-bindings-mode-enable)
  :ensure t)


(use-package phi-search
  ;;:bind (("C-s" . 'phi-search)
  ;;       ("C-r" . 'phi-search-backward))
  :config
  (require 'phi-search)
  :ensure t)

;;  :init
;;  :config
;;  (require 'iedit)


(use-package expand-region
  :bind (("C-=" . 'er/expand-region)
         ("C-M-SPC" . 'er/expand-region))
  ;; mark-sexp => C-M-@
  :init
  :config
  :ensure t)


(use-package expand-line
  :bind (("s-n" . 'turn-on-expand-line-mode)
         ("C-c n" . 'turn-on-expand-line-mode))
  :init
  :config
  :ensure t)
