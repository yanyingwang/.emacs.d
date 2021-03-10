(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
  (add-hook 'emacs-lisp-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'ruby-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'scheme-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'racket-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'racket-repl-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'geiser-repl-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'scribble-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'js-mode-hook 'rainbow-delimiters-mode)

  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(rainbow-delimiters-depth-1-face ((t (:foreground "#458588" :height 1.09))))
   '(rainbow-delimiters-depth-2-face ((t (:foreground "#b16286" :height 1.08))))
   '(rainbow-delimiters-depth-3-face ((t (:foreground "DarkSeaGreen" :height 1.07))))
   '(rainbow-delimiters-depth-4-face ((t (:foreground "IndianRed" :height 1.06))))
   '(rainbow-delimiters-depth-5-face ((t (:foreground "DarkOrchid" :height 1.04)))) ;"SlateGray" "DarkOrchid" "MediumPurple"
   '(rainbow-delimiters-depth-6-face ((t (:foreground "SteelBlue" :height 1.02)))) ;"DarkCyan" "SteelBlue"
   '(rainbow-delimiters-depth-7-face ((t (:foreground "DeepPink2" :height 1.01))))
   '(rainbow-delimiters-depth-8-face ((t (:foreground "OliveDrab" :height 1.00))))
   '(rainbow-delimiters-depth-9-face ((t (:foreground "dark red" :height 0.99)))))
  ;; https://www.w3schools.com/colors/colors_names.asp
  :ensure t)


(use-package rainbow-mode
  :init
  :config
  (add-hook 'elisp-mode-hook 'rainbow-mode)
  (add-hook 'css-mode-hook 'rainbow-mode)
  ;; :mode "\\.elisp-mode\\'"
  :ensure t)
;; (define-globalized-minor-mode my-global-rainbow-mode rainbow-mode
;;   (lambda () (rainbow-mode 1)))
;; (my-global-rainbow-mode 1)


;; (use-package rainbow-blocks
;;   :init
;;   :config
;;   (add-hook 'emacs-lisp-mode-hook 'rainbow-blocks-mode)
;;   (add-hook 'racket-mode-hook 'rainbow-blocks-mode)
;;   :ensure t)
