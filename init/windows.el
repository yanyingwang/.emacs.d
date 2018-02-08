(use-package ace-window
  :init
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  (setq aw-background nil)
  ;;:config
  :bind (("M-[" . ace-window)
         ("M-]" . ace-window))
  :ensure t)

