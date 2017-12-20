(require 'package)


;(add-to-list 'package-archives '("elpa-popkit" . "http://elpa.popkit.org/"))
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; For important compatibility libraries like cl-lib
;(when (< emacs-major-version 24) (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
;(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)


(package-initialize)
(setq use-package-always-ensure t)


;;; load files
(load "~/.emacs.d/init/self")
(load "~/.emacs.d/init/key-binding")

(load "~/.emacs.d/init/dot-mode")

(load "~/.emacs.d/init/tempfile")

(load "~/.emacs.d/init/smooth-scrolling")

;;(load "~/.emacs.d/init/remove-whitespace")
(load "~/.emacs.d/init/ws-butler")

(load "~/.emacs.d/init/langs-mode")
(load "~/.emacs.d/init/markdown-toc")


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


(load "~/.emacs.d/init/term")


(load "~/.emacs.d/init/helm")
(load "~/.emacs.d/init/helm-projectile")
(load "~/.emacs.d/init/helm-around")

(load "~/.emacs.d/init/magit")
;;(load "~/.emacs.d/init/flymake")
;;(load "~/.emacs.d/init/flycheck")
(load "~/.emacs.d/init/diff-hl")

(load "~/.emacs.d/init/ruby-world")
(load "~/.emacs.d/init/slime")
(load "~/.emacs.d/init/geiser")


(load "~/.emacs.d/init/clippy")

(load "~/.emacs.d/init/moe-theme")
;;(load "~/.emacs.d/init/gruvbox-theme")
;;(load "~/.emacs.d/init/zenburn-theme")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(initial-frame-alist (quote ((fullscreen . maximized))))
 '(package-selected-packages
   (quote
    (geiser yaml-mode ws-butler web-mode use-package undo-tree smooth-scrolling smartparens slime slim-mode scss-mode rvm rainbow-delimiters projectile-rails powerline paredit moe-theme markdown-toc magit less-css-mode indent-guide helm-themes helm-projectile helm-descbinds golden-ratio flymake-ruby dot-mode diff-hl coffee-mode clippy auto-complete aggressive-indent))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
