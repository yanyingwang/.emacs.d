;; paru -S enchant pkgconf

;; (use-package jinx
;;   :hook (emacs-startup . global-jinx-mode)
;;   :bind (("M-$" . jinx-correct)
;;          ("C-M-$" . jinx-languages))
;;   :config
;;   (add-to-list 'vertico-multiform-categories
;;                '(jinx grid (vertico-grid-annotate . 20) (vertico-count . 4)))
;;   (vertico-multiform-mode)
;;   )

 ;; paru -S extra/hunspell-en_us
(setenv "DICPATH" "/usr/share/hunspell")
(setq ispell-program-name "hunspell")
(setq ispell-default-dictionary "en_US-large")
(add-hook 'markdown-mode-hook 'flyspell-mode)
(add-hook 'scribble-mode-hook 'flyspell-mode)

(use-package flyspell-correct
  :after flyspell
  :bind (:map flyspell-mode-map ("C-;" . flyspell-correct-wrapper)))

;; (use-package flyspell-correct-helm
;;   :after flyspell-correct)

(use-package flyspell-correct-popup
  :after flyspell-correct)
