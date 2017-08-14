(use-package flymake-easy
  :ensure t)
(require 'flymake-easy)



(use-package flymake-ruby
  :ensure t)
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
