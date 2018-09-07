(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;;(add-to-list 'package-archives '("elpa-popkit" . "http://elpa.popkit.org/"))
;;(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
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

(load-directory "~/.emacs.d/init/self")
(load-directory "~/.emacs.d/init/projectile")
(load-directory "~/.emacs.d/init/codmode")
(load-directory "~/.emacs.d/init/scheme")
(load-directory "~/.emacs.d/init/format")
(load-directory "~/.emacs.d/init/company")
(load-directory "~/.emacs.d/init/manage")
(load-directory "~/.emacs.d/init/productivity")
(load-directory "~/.emacs.d/init/tool")
(load-directory "~/.emacs.d/init")
(load-directory "~/.emacs.d/init/face")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(package-selected-packages
   (quote
    (browse-at-remote yaml-mode ws-butler web-mode use-package undo-tree smartparens slime slim-mode scss-mode rvm robe region-bindings-mode rainbow-delimiters projectile-rails pinyin-search phi-search paredit multiple-cursors micgoline markdown-mode magit js2-mode indent-guide helm-themes helm-projectile helm-descbinds haml-mode gruvbox-theme geiser expand-region exec-path-from-shell diff-hl company coffee-mode circadian chicken-scheme cal-china-x bing-dict auto-package-update aggressive-indent))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#458588"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#b16286"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "#8ec07c"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "#d65d0e"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "dark magenta"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "dark cyan"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "DeepPink2"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "forest green"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "dark red")))))
