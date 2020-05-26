(use-package aggressive-indent
  :config
  (add-to-list 'aggressive-indent-excluded-modes 'web-mode)    ; exclude html
  (add-to-list 'aggressive-indent-excluded-modes 'slim-mode)
  (add-to-list 'aggressive-indent-excluded-modes 'haml-mode)
  (add-to-list 'aggressive-indent-excluded-modes 'ruby-mode)
  (add-to-list 'aggressive-indent-excluded-modes 'enh-ruby-mode)
  (add-to-list 'aggressive-indent-excluded-modes 'js2-mode)
  (add-to-list 'aggressive-indent-excluded-modes 'js-mode)
  (add-to-list 'aggressive-indent-excluded-modes 'racket-mode)
  (add-to-list 'aggressive-indent-excluded-modes 'racket-repl-mode)
  :init
  (global-aggressive-indent-mode 1)
  :ensure t)
