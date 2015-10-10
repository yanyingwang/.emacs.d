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
(load "~/.emacs.d/lisp/locale")
(load "~/.emacs.d/lisp/self")
(load "~/.emacs.d/lisp/faces")

(load "~/.emacs.d/lisp/langs-mode")

(load "~/.emacs.d/lisp/powerline")
(load "~/.emacs.d/lisp/golden-ratio")

(load "~/.emacs.d/lisp/auto-complete")
(load "~/.emacs.d/lisp/aggressive-indent")
;;(load "~/.emacs.d/lisp/auto-indent")

(load "~/.emacs.d/lisp/smartparens")
(load "~/.emacs.d/lisp/indent-guide")
(load "~/.emacs.d/lisp/rainbow-delimiters")

;;(load "~/.emacs.d/lisp/highlight-indentation")

(load "~/.emacs.d/lisp/helm")
(load "~/.emacs.d/lisp/helm-projectile")
(load "~/.emacs.d/lisp/helm-around")

(load "~/.emacs.d/lisp/magit")

(load "~/.emacs.d/lisp/ruby-world")
(load "~/.emacs.d/lisp/slime")

(load "~/.emacs.d/lisp/moe-theme")
;;(load "~/.emacs.d/lisp/gruvbox-theme")
;;(load "~/.emacs.d/lisp/zenburn-theme")
