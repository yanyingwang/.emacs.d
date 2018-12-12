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
  :init
  :config
  (require 'phi-search)
  :ensure t)


;;(use-package iedit
;;  :init
;;  :config
;;  (require 'iedit)
;;  :ensure t)


(use-package expand-region
  ;; C-=
  :bind (("C-M-SPC" . 'er/expand-region))
  :init
  :config
  :ensure t)
