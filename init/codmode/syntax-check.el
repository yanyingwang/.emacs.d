;; (use-package helm-flymake
;;   :init
;;   (require 'helm-flymake)
;;   (flymake-mode)
;;   :ensure t)

;; (use-package flymake-easy
;;   :ensure t)

;; (use-package flymake-diagnostic-at-point
;;   :after flymake
;;   :config
;;   (add-hook 'flymake-mode-hook #'flymake-diagnostic-at-point-mode))



;; (use-package flymake-ruby
;;   :ensure t
;;   :init
;;   (require 'flymake-ruby)
;;   ;;(add-hook 'ruby-mode-hook 'flymake-ruby-load)
;;   )

;; (use-package flymake-racket
;;   :ensure t
;;   :commands (flymake-racket-add-hook)
;;   :init
;;   (add-hook 'scheme-mode-hook #'flymake-racket-add-hook)
;;   (add-hook 'racket-mode-hook #'flymake-racket-add-hook))

;; (use-package flymake-shellcheck
;;   :commands flymake-shellcheck-load
;;   :init
;;   (add-hook 'sh-mode-hook 'flymake-shellcheck-load))

;; (use-package flymake-jslint
;;   :ensure t
;;   :init
;;   (add-hook 'js-mode-hook 'flymake-jslint-load))




;; (use-package flymake-yaml
;;   :ensure t
;;   :init
;;   (require 'flymake-yaml)
;;   (add-hook 'yaml-mode-hook 'flymake-yaml-load))

;; (use-package flymake-less
;;   :ensure t
;;   :init
;;   (require 'flymake-less)
;;   (add-hook 'less-css-mode-hook 'flymake-less-load))
;; (use-package flymake-sass
;;   :ensure t
;;   :init
;;   (require 'flymake-sass)
;;   (add-hook 'sass-mode-hook 'flymake-sass-load))
;; (use-package flymake-css
;;   :ensure t
;;   :init
;;   (require 'flymake-css)
;;   (add-hook 'css-mode-hook 'flymake-css-load))



;; (use-package flyspell-correct
;;   :after flyspell
;;   :bind (:map flyspell-mode-map ("C-;" . flyspell-correct-wrapper)))
;; (use-package flyspell-correct-popup
;;   :after flyspell-correct)
;; ;; (add-hook 'flyspell-mode-hook #'flyspell-correct-auto-mode)
