

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



(use-package expand-region
  :bind (("C-=" . 'er/expand-region)
         ("C-M-SPC" . 'er/expand-region))
  ;; mark-sexp => C-M-@
  :init
  :config
  :ensure t)


(use-package expand-line
  :bind (("C-c g n" . 'turn-on-expand-line-mode))
  :init
  :config
  :ensure t)
