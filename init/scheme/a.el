;; (setq scheme-program-name "chez")
;; (add-hook 'scheme-mode-hook 'geiser-mode)
;; (setq scheme-program-name "gosh -i")




;; chezschemelibdirs
(setenv "CHEZSCHEMELIBDIRS"
        (concat
         (getenv "HOME")
         "/.chezlib"))
