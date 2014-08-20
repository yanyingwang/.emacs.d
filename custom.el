(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(session-use-package t nil (session)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; work with clipboard
;; http://www.emacswiki.org/emacs/CopyAndPaste#toc12
(global-set-key "\C-w" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-y" 'clipboard-yank)

;; set fonts
;; http://www.emacswiki.org/emacs/SetFonts
;;(set-default-font "Ubuntu Mono-11")
(set-default-font "Monaco-10")

;; MultiTerm
(when (require 'multi-term nil t)
  (setq multi-term-buffer-name "term"
        multi-term-program "/bin/zsh"))

; keybindings
(add-hook 'term-mode-hook (lambda ()
                            (define-key term-raw-map (kbd "C-y") 'term-paste)))

(when (require 'term nil t) ; only if term can be loaded..
  (setq term-bind-key-alist
        (list ;;(cons "C-c C-c" 'term-interrupt-subjob)
              ;;(cons "C-p" 'previous-line)
              ;;(cons "C-n" 'next-line)
              (cons "M-f" 'term-send-forward-word)
              (cons "M-b" 'term-send-backward-word)
              ;;(cons "C-c C-j" 'term-line-mode)
              ;;(cons "C-c C-k" 'term-char-mode)
              ;;(cons "M-DEL" 'term-send-backward-kill-word)
              (cons "M-d" 'term-send-forward-kill-word)
              ;;(cons "<C-left>" 'term-send-backward-word)
              ;;(cons "<C-right>" 'term-send-forward-word)
              ;;(cons "C-r" 'term-send-reverse-search-history)
              ;;(cons "M-p" 'term-send-raw-meta)
              ;;(cons "M-y" 'term-send-raw-meta)
              ;;(cons "C-y" 'term-send-raw)
              )))


;; Global Keybinding
;; cycle through buffers with Ctrl-Tab (like Firefox)
;;(global-set-key (kbd "<C-tab>") 'bury-buffer)
;;(global-set-key (kbd "<C-x tab>") kbd "<C-x o)

(defun duplicate-line (&optional arg)
  "Duplicate it. With prefix ARG, duplicate ARG times."
  (interactive "p")
  (next-line 
   (save-excursion 
     (let ((beg (line-beginning-position))
           (end (line-end-position)))
       (copy-region-as-kill beg end)
       (dotimes (num arg arg)
         (end-of-line) (newline)
         (yank))))))
(global-set-key (kbd "C-S-d") 'duplicate-line)
