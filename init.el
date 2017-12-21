(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;(add-to-list 'package-archives '("elpa-popkit" . "http://elpa.popkit.org/"))
;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(setq use-package-always-ensure t)





;;; load init files
(defun load-directory (dir)
  (let ((load-it (lambda (f)
                   (load-file (concat (file-name-as-directory dir) f)))))
    (mapc load-it (directory-files dir nil "\\.el$"))))
(load-directory "~/.emacs.d/init")





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
