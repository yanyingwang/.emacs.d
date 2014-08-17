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

;; MultiTerm-zsh
(setq multi-term-program "/bin/zsh")
(add-hook 'term-mode-hook (lambda ()
                            (define-key term-raw-map (kbd "C-y") 'term-paste)))
;; Keybinding
;; cycle through buffers with Ctrl-Tab (like Firefox)
;;(global-set-key (kbd "<C-tab>") 'bury-buffer')
;;(global-set-key (kbd "<C-x tab>") kbd "<C-x o")
