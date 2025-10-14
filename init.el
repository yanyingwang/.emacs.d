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


;(quelpa
;'(quelpa-use-package
;  :fetcher git
;  :url "https://github.com/quelpa/quelpa-use-package.git"))
;require 'quelpa-use-package)

;; (unless (package-installed-p 'quelpa)
;;   (with-temp-buffer
;;     (url-insert-file-contents "https://raw.githubusercontent.com/quelpa/quelpa/master/quelpa.el")
;;     (eval-buffer)
;;     (quelpa-self-upgrade)))


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

