;;; flycheck
;; $ gem install rubocop ruby-lint
;;(use-package flycheck
;;:ensure t)

;;(add-hook 'after-init-hook #'global-flycheck-mode)

;;; rvm
(use-package rvm
  :config
  (require 'rvm)
  (rvm-use-default)
  :ensure t)

(use-package enh-ruby-mode
  :init
  (add-to-list 'auto-mode-alist
               '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))
  (remove-hook 'enh-ruby-mode-hook 'erm-define-faces)
  (setq enh-ruby-indent-level 2)
  ;;(setq enh-ruby-comment-column 32)
  ;;(setq enh-ruby-bounce-deep-indent nil)
  ;;(setq enh-ruby-hanging-indent-level 2)

  ;;(setq enh-ruby-hanging-brace-indent-level 2)
  (setq enh-ruby-hanging-brace-deep-indent-level 1)

  ;;(setq enh-ruby-deep-indent-paren t)
  ;;(setq enh-ruby-hanging-paren-deep-indent-level 0)
  ;;(setq enh-ruby-hanging-paren-indent-level 2)
  :config
  ;;(define-key company-active-map (kbd "C-n") 'company-select-next)
  ;;(define-key company-active-map (kbd "C-p") 'company-select-previous)
  :ensure t)

(use-package robe
  :init
  (add-hook 'ruby-mode-hook 'robe-mode)
  (add-hook 'enh-ruby-mode-hook 'robe-mode)
  :ensure t)
