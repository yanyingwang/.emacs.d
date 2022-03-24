;;; web mode
(use-package web-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
  (add-to-list 'auto-mode-alist '("\\.tmpl\\'" . web-mode))
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-enable-auto-pairing t)
  :config
  (require 'web-mode)
  :ensure t)


;;; scss mode ===> check rainbow-mode
(use-package scss-mode
  :ensure t)
(use-package less-css-mode
  :ensure t)


;;; slim mode
(use-package slim-mode
  :config
  (require 'slim-mode)
  :ensure t)


;;; haml mode
(use-package haml-mode
  :config
  (require 'haml-mode)
  :ensure t)


;;; markdown mode
(use-package markdown-mode
  :config
  (require 'markdown-mode)
  :ensure t)


;;; yaml
(use-package yaml-mode
  :config
  (add-hook 'yaml-mode-hook (lambda () (define-key yaml-mode-map "\C-m" 'newline-and-indent)))
  :ensure t)


(use-package emmet-mode
  :config
  (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
  (add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
  :ensure t)


(use-package olivetti
  :config
  (require 'olivetti)
  :ensure t)