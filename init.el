;; https://emacs.stackexchange.com/questions/233/how-to-proceed-on-package-el-signature-check-failure

(require 'package)
(setq package-enable-at-startup nil)
;;(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
;;                         ("melpa" . "http://melpa.org/packages/")))
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))
;;(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
;; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
;; (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/ "))
;; (add-to-list 'package-archives '("elpa-popkit" . "http://elpa.popkit.org/"))
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
(load-directory "~/.emacs.d/init/lisp")
(load-directory "~/.emacs.d/init/format")
(load-directory "~/.emacs.d/init/company")
(load-directory "~/.emacs.d/init/tool")
(load-directory "~/.emacs.d/init/utility")
;; (load-file "~/.emacs.d/init/helm.el")
(load-directory "~/.emacs.d/init/face")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(dired-filter rainbow-blocks dired-rainbow dired-hacks undo-tree chicken-scheme youdao-dictionary yasnippet-snippets yaml-mode wttrin ws-butler web-mode vue-mode use-package smartparens slime slim-mode scss-mode scribble-mode rvm ruby-refactor robe region-bindings-mode rainbow-mode rainbow-delimiters racket-mode projectile-rails pinyin-search php-mode phi-search osx-plist olivetti multiple-cursors micgoline markdown-mode magit indent-guide helm-themes helm-projectile helm-descbinds haml-mode gruvbox-theme golden-ratio geiser expand-region expand-line exec-path-from-shell eshell-prompt-extras esh-autosuggest emr emmet-mode diff-hl counsel company-tabnine circadian cal-china-x browse-at-remote bing-dict auto-package-update auto-dim-other-buffers aggressive-indent)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#458588" :height 1.09))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#b16286" :height 1.08))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "DarkSeaGreen" :height 1.07))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "IndianRed" :height 1.06))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "DarkOrchid" :height 1.04))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "SteelBlue" :height 1.02))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "DeepPink2" :height 1.01))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "OliveDrab" :height 1.0))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "dark red" :height 0.99)))))
