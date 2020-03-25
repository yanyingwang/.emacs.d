(use-package flymake-easy
  :config
  (require 'flymake-easy)
  :ensure t)

(use-package flymake-ruby
  :init
  (add-hook 'ruby-mode-hook 'flymake-ruby-load)
  :config
  (require 'flymake-ruby)
  :ensure t)