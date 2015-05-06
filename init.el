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
(load "~/.emacs.d/lisp/faces")
(load "~/.emacs.d/lisp/powerline")

(load "~/.emacs.d/lisp/lang-modes")
(load "~/.emacs.d/lisp/syntax")

(load "~/.emacs.d/lisp/helm")
(load "~/.emacs.d/lisp/helm-around")

(load "~/.emacs.d/lisp/linux")

(load "~/.emacs.d/lisp/ruby-world")

(load "~/.emacs.d/lisp/themes")



