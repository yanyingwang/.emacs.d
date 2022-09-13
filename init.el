;; https://emacs.stackexchange.com/questions/233/how-to-proceed-on-package-el-signature-check-failure

(require 'package)
(setq package-enable-at-startup nil)

;;(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
;;                         ("melpa" . "http://melpa.org/packages/")))

;;(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
;;                         ("melpa" . "http://elpa.emacs-china.org/melpa/")))

(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))

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
   (quote
    (pyim-wbdict pyim-basedict pyim gruvbox-theme rainbow-mode rainbow-delimiters micgoline powerline golden-ratio esh-autosuggest eshell-prompt-extras dired-rainbow diredfl dired-collapse dired-filter dired-efap dired-recent dired-ranger dired-subtree dired-avfs dired-atool auto-dim-other-buffers diff-hl yasnippet-snippets yasnippet undo-tree expand-line expand-region region-bindings-mode multiple-cursors phi-search emr exec-path-from-shell pinyin-search counsel ivy helm-themes helm-descbinds browse-at-remote magit wttrin cal-china-x youdao-dictionary bing-dict company-tabnine company ws-butler smartparens indent-guide aggressive-indent scribble-mode racket-mode geiser olivetti emmet-mode yaml-mode markdown-mode haml-mode slim-mode scss-mode web-mode osx-plist flymake-grammarly ruby-refactor robe rvm php-mode vue-mode projectile-rails helm-projectile auto-package-update use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "DarkRed"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "DarkGoldenRod"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "DarkOliveGreen"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "DarkGreen"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "#0047ab"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "DarkViolet"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "SaddleBrown"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "purple"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "RosyBrown"))))
 '(rainbow-delimiters-mismatched-face ((t (:foreground "#ff0080"))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "#00ffff")))))
