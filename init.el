;;; melpa
(require 'package)

(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t) ; Org-mode's repository

(package-initialize)



;;; ensure use-packge and auto installing loading it
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)



;;; load files
(load "~/.emacs.d/init/self")
(load "~/.emacs.d/init/key-binding")


(load "~/.emacs.d/init/tempfile")

(load "~/.emacs.d/init/smooth-scrolling")

;;(load "~/.emacs.d/init/remove-whitespace")
(load "~/.emacs.d/init/ws-butler")

(load "~/.emacs.d/init/langs-mode")

(load "~/.emacs.d/init/powerline")
(load "~/.emacs.d/init/golden-ratio")

(load "~/.emacs.d/init/auto-complete")

(load "~/.emacs.d/init/undo-tree")

(load "~/.emacs.d/init/aggressive-indent")
;;(load "~/.emacs.d/init/auto-indent")

(load "~/.emacs.d/init/indent-guide")
;;(load "~/.emacs.d/init/highlight-indentation")

(load "~/.emacs.d/init/smartparens")
(load "~/.emacs.d/init/paredit")

(load "~/.emacs.d/init/rainbow-delimiters")




(load "~/.emacs.d/init/helm")
(load "~/.emacs.d/init/helm-projectile")
(load "~/.emacs.d/init/helm-around")

(load "~/.emacs.d/init/magit")
(load "~/.emacs.d/init/diff-hl")

(load "~/.emacs.d/init/ruby-world")
(load "~/.emacs.d/init/slime")

(load "~/.emacs.d/init/moe-theme")
;;(load "~/.emacs.d/init/gruvbox-theme")
;;(load "~/.emacs.d/init/zenburn-theme")
