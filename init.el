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





;;; set locale env
(defun sanityinc/utf8-locale-p (v)
  "Return whether locale string V relates to a UTF-8 locale."
  (and v (string-match "UTF-8" v)))

(defun locale-is-utf8-p ()
  "Return t iff the \"locale\" command or environment variables prefer UTF-8."
  (or (sanityinc/utf8-locale-p (and (executable-find "locale") (shell-command-to-string "locale")))
      (sanityinc/utf8-locale-p (getenv "LC_ALL"))
      (sanityinc/utf8-locale-p (getenv "LC_CTYPE"))
      (sanityinc/utf8-locale-p (getenv "LANG"))))

(when (or window-system (locale-is-utf8-p))
  (setq utf-translate-cjk-mode nil) ; disable CJK coding/encoding (Chinese/Japanese/Korean characters)
  (set-language-environment 'utf-8)
  (setq locale-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (set-terminal-coding-system 'utf-8)
  (set-selection-coding-system (if (eq system-type 'windows-nt) 'utf-16-le 'utf-8))
  (prefer-coding-system 'utf-8))






;;; themes

;;; solarized theme
(use-package color-theme-sanityinc-solarized
  :ensure t)

					;(require 'color-theme-sanityinc-solarized)

					;(custom-set-variables    ; M-x color-theme-sanityinc-solarized-light
					; '(custom-enabled-themes (quote (sanityinc-solarized-light)))
					; '(custom-safe-themes (quote ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default))))
					;(custom-set-faces)


;;; material theme
(use-package material-theme
  :ensure t)

;(load-theme 'material t)


;;; zenburn theme
(use-package zenburn-theme
  :ensure t)

					;(load-theme 'zenburn t)



;;; moe theme
(use-package moe-theme
  :ensure t)

(require 'moe-theme)
;; Show highlighted buffer-id as decoration. (Default: nil)
(setq moe-theme-highlight-buffer-id t)

;; Resize titles (optional).
(setq moe-theme-resize-markdown-title '(1.5 1.4 1.3 1.2 1.0 1.0))
(setq moe-theme-resize-org-title '(1.5 1.4 1.3 1.2 1.1 1.0 1.0 1.0 1.0))
(setq moe-theme-resize-rst-title '(1.5 1.4 1.3 1.2 1.1 1.0))

;; Resize titles
(setq moe-theme-resize-markdown-title '(2.0 1.7 1.5 1.3 1.0 1.0))
(setq moe-theme-resize-org-title '(2.2 1.8 1.6 1.4 1.2 1.0 1.0 1.0 1.0))
(setq moe-theme-resize-rst-title '(2.0 1.7 1.5 1.3 1.1 1.0))

;; Choose a color for mode-line.(Default: blue)
(moe-theme-set-color 'cyan)

;; Too Yellow Background in terminal?
(setq moe-light-pure-white-background-in-terminal t)

;; Finally, apply moe-theme now.
;; Choose what you like, (moe-light) or (moe-dark)
(moe-light)

;; automatically switch between moe-dark and moe-light according to the system time
(require 'moe-theme-switcher)

(moe-theme-set-color 'orange)
;; (Available colors: blue, orange, green ,magenta, yellow, purple, red, cyan, w/b.)








;;; set fonts
(set-default-font "Input Mono-10:bold")

;;; set line spacing
(setq-default line-spacing 4)

;;; set line number
(global-linum-mode t)

;;; hide tool bar
(tool-bar-mode -1)

;;; hide scroll bar
(scroll-bar-mode -1)

;;; Start in full-screen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))


;;; customize scratch message
(setq initial-scratch-message
      (concat ";; Happy hacking " (or user-login-name "") " - Emacs ♥ you!\n\n"))




;;; powerline
(use-package powerline
  :ensure t)

(require 'powerline)
(powerline-default-theme)



;;; themes

;;; auto complete
(use-package auto-complete
  :ensure t)
(require 'auto-complete-config)
(ac-config-default)


;;; aggressive indent
(use-package aggressive-indent
  :ensure t)

(global-aggressive-indent-mode 1)
(add-to-list 'aggressive-indent-excluded-modes 'html-mode)    ; exclude html


;;; ruby-end
(use-package ruby-end
  :ensure t)

(require 'ruby-end)


;;; auto pair
(use-package autopair
  :ensure t)

(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers


;;;  intelligently call whitespace-cleanup on save
(use-package whitespace-cleanup-mode
  :ensure t)








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





(use-package helm-projectile
  :ensure t)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(setq projectile-switch-project-action 'helm-projectile-find-file)
(setq projectile-switch-project-action 'helm-projectile)

(add-to-list 'projectile-globally-ignored-directories "backup")    ; ignore dir name of 'backup'


(use-package helm-descbinds
  :ensure t)

(require 'helm-descbinds)
(helm-descbinds-mode)

(use-package helm-themes
  :ensure t)

(require 'helm-themes)



;;; eshell with helm
(add-hook 'eshell-mode-hook    ; completion
          #'(lambda ()
              (define-key eshell-mode-map
                [remap eshell-pcomplete]
                'helm-esh-pcomplete)))

(defun pcomplete/sudo ()    ; Fix completion after SUDO
  (let ((prec (pcomplete-arg 'last -1)))
    (cond ((string= "sudo" prec)
           (while (pcomplete-here*
		   (funcall pcomplete-command-completion-function)
		   (pcomplete-arg 'last) t))))))


(add-hook 'eshell-mode-hook    ; Enable helm Eshell history
	  #'(lambda ()
	      (define-key eshell-mode-map
		(kbd "M-p")
		'helm-eshell-history)))





;;; magit
(use-package magit
  :ensure t)

(setq magit-last-seen-setup-instructions "1.4.0")




;;; ruby world

;;; flycheck
;; $ gem install rubocop ruby-lint
;;(use-package flycheck
;;:ensure t)

(add-hook 'after-init-hook #'global-flycheck-mode)


;;; projectile-rails
(use-package projectile-rails
  :ensure t)

(add-hook 'projectile-mode-hook 'projectile-rails-on)

;;; rvm
(use-package rvm
  :ensure t)

(require 'rvm)
(rvm-use-default)    ; use rvm's default ruby for the current Emacs session


;;; inf ruby
(use-package inf-ruby
  :ensure t)

;;; web mode
(use-package web-mode
  :ensure t)

(require 'web-mode)


;;; slim mode
(use-package slim-mode
  :ensure t)

(require 'slim-mode)

;;; markdown mode
(use-package markdown-mode
  :ensure t)

(require 'markdown-mode)


;;; coffeescript mode
(use-package coffee-mode
  :ensure t)

(custom-set-variables '(coffee-tab-width 2))















