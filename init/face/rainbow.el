(use-package rainbow-delimiters
  :ensure t)

(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-depth-1-face ((t (:foreground "#458588"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "#b16286"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "DarkSeaGreen"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "IndianRed"))))

 '(rainbow-delimiters-depth-5-face ((t (:foreground "MediumPurple")))) ;"SlateGray" "DarkOrchid"

 '(rainbow-delimiters-depth-6-face ((t (:foreground "SteelBlue")))) ;"DarkCyan" "SteelBlue"
 '(rainbow-delimiters-depth-7-face ((t (:foreground "DeepPink2"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "OliveDrab"))))
 '(rainbow-delimiters-depth-9-face ((t (:foreground "dark red")))))
;; https://www.w3schools.com/colors/colors_names.asp

(use-package rainbow-mode
  :init
  (add-hook 'emacs-lisp-mode-hook 'rainbow-mode)
  (add-hook 'ruby-mode-hook 'rainbow-mode)
  (add-hook 'scheme-mode-hook 'rainbow-mode)
  (add-hook 'racket-mode-hook 'racket-mode)
  (add-hook 'js-mode-hook 'rainbow-mode)
  :config
  :ensure t)
