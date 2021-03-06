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


(use-package dired-hacks-utils
  :init
  :config
  :ensure t)
(use-package dired-filter
  :init
  :config
  :ensure t)
;; (use-package dired-collapse
;;   :init
;;   :config
;;   :ensure t)
(use-package diredfl
  :init
  :config
  (diredfl-global-mode)
  :ensure t)
(use-package dired-rainbow
  :init
  :config
  (progn
    (dired-rainbow-define-chmod directory "#6cb2eb" "d.*")
    (dired-rainbow-define html "#eb5286" ("css" "less" "sass" "scss" "htm" "html" "jhtm" "mht" "eml" "mustache" "xhtml"))
    (dired-rainbow-define xml "#f2d024" ("xml" "xsd" "xsl" "xslt" "wsdl" "bib" "json" "msg" "pgn" "rss" "yaml" "yml" "rdata"))
    (dired-rainbow-define document "#9561e2" ("docm" "doc" "docx" "odb" "odt" "pdb" "pdf" "ps" "rtf" "djvu" "epub" "odp" "ppt" "pptx"))
    (dired-rainbow-define markdown "#ffed4a" ("org" "etx" "info" "markdown" "md" "mkd" "nfo" "pod" "rst" "tex" "textfile" "txt"))
    (dired-rainbow-define database "#6574cd" ("xlsx" "xls" "csv" "accdb" "db" "mdb" "sqlite" "nc"))
    (dired-rainbow-define media "#de751f" ("mp3" "mp4" "MP3" "MP4" "avi" "mpeg" "mpg" "flv" "ogg" "mov" "mid" "midi" "wav" "aiff" "flac"))
    (dired-rainbow-define image "#f66d9b" ("tiff" "tif" "cdr" "gif" "ico" "jpeg" "jpg" "png" "psd" "eps" "svg"))
    (dired-rainbow-define log "#c17d11" ("log"))
    (dired-rainbow-define shell "#f6993f" ("awk" "bash" "bat" "sed" "sh" "zsh" "vim"))
    (dired-rainbow-define interpreted "#38c172" ("py" "ipynb" "rb" "pl" "t" "msql" "mysql" "pgsql" "sql" "r" "clj" "cljs" "scala" "js"))
    (dired-rainbow-define compiled "#4dc0b5" ("asm" "cl" "lisp" "el" "c" "h" "c++" "h++" "hpp" "hxx" "m" "cc" "cs" "cp" "cpp" "go" "f" "for" "ftn" "f90" "f95" "f03" "f08" "s" "rs" "hi" "hs" "pyc" ".java"))
    (dired-rainbow-define executable "#8cc4ff" ("exe" "msi"))
    (dired-rainbow-define compressed "#51d88a" ("7z" "zip" "bz2" "tgz" "txz" "gz" "xz" "z" "Z" "jar" "war" "ear" "rar" "sar" "xpi" "apk" "xz" "tar"))
    (dired-rainbow-define packaged "#faad63" ("deb" "rpm" "apk" "jad" "jar" "cab" "pak" "pk3" "vdf" "vpk" "bsp"))
    (dired-rainbow-define encrypted "#ffed4a" ("gpg" "pgp" "asc" "bfe" "enc" "signature" "sig" "p12" "pem"))
    (dired-rainbow-define fonts "#6cb2eb" ("afm" "fon" "fnt" "pfb" "pfm" "ttf" "otf"))
    (dired-rainbow-define partition "#e3342f" ("dmg" "iso" "bin" "nrg" "qcow" "toast" "vcd" "vmdk" "bak"))
    (dired-rainbow-define vc "#0074d9" ("git" "gitignore" "gitattributes" "gitmodules"))
    (dired-rainbow-define-chmod executable-unix "#38c172" "-.*x.*"))
  :ensure t)

;; (use-package rainbow-blocks
;;   :init
;;   :config
;;   (add-hook 'emacs-lisp-mode-hook 'rainbow-blocks-mode)
;;   (add-hook 'racket-mode-hook 'rainbow-blocks-mode)
;;   :ensure t)
