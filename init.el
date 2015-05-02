;;; melpa
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)


;;; ensure use-packge
(if (not (package-installed-p 'use-package))
    (progn
      (package-refresh-contents)
      (package-install 'use-package)))
(require 'use-package)


;;; set fonts
(set-default-font "Input Mono-10:bold")


;;; set line spacing
(setq-default line-spacing 4)


;;; set line number
(global-linum-mode t)

;;; hide scroll bar
(scroll-bar-mode -1)


;;; solarized theme
;(use-package solarized-theme
;  :ensure t)

;(require 'solarized)
;(deftheme solarized-light "The light variant of the Solarized colour theme")
;(create-solarized-theme 'light 'solarized-light)
;(provide-theme 'solarized-light)
