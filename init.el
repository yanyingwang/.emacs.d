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



;;; set fonts
(set-default-font "Input Mono-10:bold")

;;; set line spacing
(setq-default line-spacing 4)

;;; set line number
(global-linum-mode t)

;;; hide scroll bar
(scroll-bar-mode -1)

;;; customize scratch message
(setq initial-scratch-message
      (concat ";; Happy hacking " (or user-login-name "") " - Emacs ♥ you!\n\n"))



;;; solarized theme
;(use-package solarized-theme
;  :ensure t)

;(require 'solarized)
;(deftheme solarized-light "The light variant of the Solarized colour theme")
;(create-solarized-theme 'light 'solarized-light)
;(provide-theme 'solarized-light)



;;; helm
(use-package helm
  :ensure t)

(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

;(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
;(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)


(helm-mode 1)
(helm-autoresize-mode t)     ;autoresize
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(global-set-key (kbd "M-x") 'helm-M-x)
(setq helm-M-x-fuzzy-match t)    ; fuzzy matching for helm-M-x

(global-set-key (kbd "C-x b") 'helm-mini)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)    ; fuzzy matching for helm-mini

(global-set-key (kbd "C-x C-f") 'helm-find-files)


(when (executable-find "ack-grep")    ;  use ack-grep to replace grep
  (setq helm-grep-default-command "ack-grep -Hn --no-group --no-color %e %p %f"
        helm-grep-default-recurse-command "ack-grep -H --no-group --no-color %e %p %f"))

(semantic-mode 1)
(setq helm-semantic-fuzzy-match t
      helm-imenu-fuzzy-match    t)

(add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages)    ; enable helm-man-woman

(setq helm-locate-fuzzy-match t)    ; fuzzy matching with helm-locate

(global-set-key (kbd "C-c h o") 'helm-occur)    ; key binding for helm-occur
(setq helm-apropos-fuzzy-match t)    ; fuzzy matching for helm-occur

(global-set-key (kbd "C-c h M-:") 'helm-eval-expression-with-eldoc)    ; eval Emacs lisp



