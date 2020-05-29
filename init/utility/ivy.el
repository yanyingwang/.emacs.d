(use-package ivy
  :init
  ;; (ivy-mode 1)
  :ensure t)

;; (use-package ivy-rich
;;   :init
;;   (ivy-rich-mode 1)
;;   (setq ivy-rich-display-transformers-list
;;         '(ivy-switch-buffer
;;           (:columns
;;            ((ivy-rich-candidate (:width 30))
;;             (ivy-rich-switch-buffer-size (:width 7))
;;             (ivy-rich-switch-buffer-indicators (:width 4 :face error :align right))
;;             (ivy-rich-switch-buffer-major-mode (:width 20 :face org-level-5))
;;             (ivy-rich-switch-buffer-project (:width 15 :face success))
;;             (ivy-rich-switch-buffer-path (:width (lambda (x) (ivy-rich-switch-buffer-shorten-path x (ivy-rich-minibuffer-width 0.3))))))
;;            :predicate
;;            (lambda (cand) (get-buffer cand)))))
;;   :ensure t)

;; (use-package all-the-icons-ivy-rich
;;   :init
;;   (all-the-icons-ivy-rich-mode 1)
;;   :ensure t)

(use-package counsel
  :init
  ;; (setq ivy-use-virtual-buffers t)
  ;; (setq ivy-count-format "(%d/%d) ")
  ;; (setq ivy-wrap t)
  ;; (setq ivy-height 20)

  (global-set-key (kbd "C-s") 'swiper-isearch)
  ;; (global-set-key (kbd "M-x") 'counsel-M-x)
  ;; (global-set-key (kbd "C-x C-f") 'counsel-find-file)
  ;; (global-set-key (kbd "M-y") 'counsel-yank-pop)
  ;; (global-set-key (kbd "<f1> f") 'counsel-describe-function)
  ;; (global-set-key (kbd "<f1> v") 'counsel-describe-variable)
  ;; (global-set-key (kbd "<f1> l") 'counsel-find-library)
  ;; (global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
  ;; (global-set-key (kbd "<f2> u") 'counsel-unicode-char)
  ;; (global-set-key (kbd "<f2> j") 'counsel-set-variable)
  ;; (global-set-key (kbd "C-x b") 'ivy-switch-buffer)
  ;; (global-set-key (kbd "C-c v") 'ivy-push-view)
  ;; (global-set-key (kbd "C-c V") 'ivy-pop-view)

  ;; (global-set-key (kbd "C-c C-r") 'ivy-resume)
  ;; (global-set-key (kbd "C-c b") 'counsel-bookmark)
  ;; (global-set-key (kbd "C-c d") 'counsel-descbinds)
  ;; (global-set-key (kbd "C-c g") 'counsel-git)
  ;; (global-set-key (kbd "C-c o") 'counsel-outline)
  ;; (global-set-key (kbd "C-c t") 'counsel-load-theme)
  ;; (global-set-key (kbd "C-c F") 'counsel-org-file)
  :ensure t)


;; ;; (defun ivy-resize--minibuffer-setup-hook ()
;; ;;   "Minibuffer setup hook."
;; ;;   (add-hook 'post-command-hook #'ivy-resize--post-command-hook nil t))

;; ;; (defun ivy-resize--post-command-hook ()
;; ;;   "Hook run every command in minibuffer."
;; ;;   (when ivy-mode
;; ;;     (shrink-window (1+ ivy-height))))  ; Plus 1 for the input field.

;; ;; (add-hook 'minibuffer-setup-hook 'ivy-resize--minibuffer-setup-hook)