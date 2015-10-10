;;; melpa
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)



;;; ensure use-packge and auto installing loading it
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)



;;; load files
(load "~/.emacs.d/init.d/locale")
(load "~/.emacs.d/init.d/self")
(load "~/.emacs.d/init.d/faces")

(load "~/.emacs.d/init.d/tempfile")
(load "~/.emacs.d/init.d/whitespace")

(load "~/.emacs.d/init.d/langs-mode")

(load "~/.emacs.d/init.d/powerline")
(load "~/.emacs.d/init.d/golden-ratio")

(load "~/.emacs.d/init.d/auto-complete")
(load "~/.emacs.d/init.d/aggressive-indent")
;;(load "~/.emacs.d/init.d/auto-indent")

(load "~/.emacs.d/init.d/smartparens")

(load "~/.emacs.d/init.d/indent-guide")
;;(load "~/.emacs.d/init.d/highlight-indentation")

(load "~/.emacs.d/init.d/rainbow-delimiters")




(load "~/.emacs.d/init.d/helm")
(load "~/.emacs.d/init.d/helm-projectile")
(load "~/.emacs.d/init.d/helm-around")

(load "~/.emacs.d/init.d/magit")

(load "~/.emacs.d/init.d/ruby-world")
(load "~/.emacs.d/init.d/slime")

(load "~/.emacs.d/init.d/moe-theme")
;;(load "~/.emacs.d/init.d/gruvbox-theme")
;;(load "~/.emacs.d/init.d/zenburn-theme")
