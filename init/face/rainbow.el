

(defvar rd-colors
    (list
     ;;;; https://www.w3schools.com/colors/colors_names.asp
     ;; "#458588"
     ;; "#b16286"
     ;; "DarkSeaGreen"
     ;; "IndianRed"
     ;; "DarkOrchid"  ;"SlateGray" "DarkOrchid" "MediumPurple"
     ;; "SteelBlue" ;"DarkCyan" "SteelBlue"
     ;; "DeepPink2"
     ;; "OliveDrab"
     ;; "dark red"

 ;;;; https://www.color-hex.com/color/ff0000
     "#350000"
     "#4c0000"
     "#470000"
     "#580000"
     "#660000"
     "#6b0000"
     "#7f0000"
     "#7c0000"
     "#990000"

     ;; "#4c0000"
     ;; "#7f0000"
     ;; "#8b1919"
     ;; "#983232"
     ;; "#b26666"
     ;; "#580000"
     ;; "#720000"
     ;; "#650000"
     ;; "#a54c4c"
     ;; "#bf7f7f"
     ))



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
   `(rainbow-delimiters-mismatched-face ((t (:foreground "#ff0080"))))
   `(rainbow-delimiters-unmatched-face ((t (:foreground "#00ffff"))))
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,(nth 0 rd-colors)))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,(nth 1 rd-colors)))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,(nth 2 rd-colors)))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,(nth 3 rd-colors)))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,(nth 4 rd-colors)))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,(nth 5 rd-colors)))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,(nth 6 rd-colors)))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,(nth 7 rd-colors)))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,(nth 8 rd-colors))))))
  :ensure t)


(use-package rainbow-mode
  :init
  :config
  (add-hook 'racket-repl-mode-hook #'rainbow-mode)
  (add-hook 'racket-mode-hook #'rainbow-mode)
  (add-hook 'ruby-mode-hook #'rainbow-mode)
  (add-hook 'js-mode-hook #'rainbow-mode)
  (add-hook 'elisp-mode-hook #'rainbow-mode)
  (add-hook 'css-mode-hook #'rainbow-mode)
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
