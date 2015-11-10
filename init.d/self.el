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




;;; Start in full-screen mode
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))


;;; customize scratch message
(setq initial-scratch-message
      (concat ";; Happy hacking " (or user-login-name "") " - Emacs ♥ you!\n\n"))


;; remove splash screen and messages
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq ad-redefinition-action 'accept)


;; enable C-x C-u & C-x C-l
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


;; prevent emacs from adding coding information in the first line
(setq ruby-insert-encoding-magic-comment nil)



;; save all buffers when lost focus
(add-hook 'focus-out-hook
  (lambda ()
    (cl-letf (((symbol-function 'message) #'format))
      (save-some-buffers t))))
      ;;(save-buffer t))))


;; Make the mouse wheel scroll Emacs
;;(mouse-wheel-mode t)


;; Always end a file with a newline
(setq require-final-newline t)


;; Stop emacs from arbitrarily adding lines to the end of a file when the cursor is moved past the end of it:
(setq next-line-add-newlines nil)


;; Use y or n instead of yes or not
(fset 'yes-or-no-p 'y-or-n-p)


;; enable ShowParenMode
;;(show-paren-mode 1)

(remove-hook 'find-file-hooks 'vc-find-file-hook)


(setq user-full-name "Yanying Wang")
(setq user-mail-address "yanyingwang1@gmail.com")



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

;; Use colors to highlight commands, etc.
(global-font-lock-mode t)

;; Display time
(display-time)

;; Format the title-bar to always include the buffer name
(setq frame-title-format "emacs – %b")

;; Flash instead of that annoying bell
(setq visible-bell t)


;; disable minimize window
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))
