;;; helm
(use-package helm
  :bind (("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-c h" . helm-command-prefix)
         ("M-y" . helm-show-kill-ring)
         ("C-x b" . helm-mini)
         ("C-c h o" . helm-occur)
         ("C-h SPC" . helm-all-mark-rings)
         ("C-c h x" . helm-register)
         ("C-c h g" . helm-google-suggest))
  :init
  (add-to-list 'helm-sources-using-default-as-input 'helm-source-man-pages) ; enable man page at point
  :config
  (require 'helm)
  (require 'helm-config)
  (helm-mode 1)
  ;;(semantic-mode 1)
  ;;(helm-autoresize-mode t)              ; autoresize
  ;;(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
  ;;(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB works in terminal
  (define-key minibuffer-local-map (kbd "C-c C-l") 'helm-minibuffer-history)
  (setq helm-split-window-in-side-p t ; open helm buffer inside current window, not occupy whole other window
        helm-move-to-line-cycle-in-source t ; move to end or beginning of source when reaching top or bottom of source.
        helm-ff-search-library-in-sexp t ; search for library in `require' and `declare-function' sexp.
        helm-scroll-amount 8 ; scroll 8 lines other window using M-<next>/M-<prior>
        helm-ff-file-name-history-use-recentf t
        helm-echo-input-in-header-line t)
  (setq helm-M-x-fuzzy-match t
        helm-buffers-fuzzy-matching t
        helm-recentf-fuzzy-match t
        helm-semantic-fuzzy-match t ; To enable fuzzy matching for both Semantic and Imenu listing
        helm-imenu-fuzzy-match t
        helm-locate-fuzzy-match t   ; fuzzy matching with helm-locate
        helm-apropos-fuzzy-match t) ; fuzzy matching for helm-occur
  (when (executable-find "curl")
    (setq helm-google-suggest-use-curl-p t))
  (when (executable-find "ack-grep")     ;  use ack-grep to replace grep if possiable
    (setq helm-grep-default-command "ack-grep -Hn --no-group --no-color %e %p %f"
          helm-grep-default-recurse-command "ack-grep -H --no-group --no-color %e %p %f"))
  :ensure t)



;;; eshell with helm
(add-hook 'eshell-mode-hook    ; completion
          #'(lambda ()
              (define-key eshell-mode-map
                [remap eshell-pcomplete]
                'helm-esh-pcomplete)))

(defun pcomplete/sudo ()    ; Fix completion after SUDO
  (let ((prec (pcomplete-arg 'last -1)))
    (cond ((string= "sudo" prec)
           (while (pcomplete-here*
		   (funcall pcomplete-command-completion-function)
		   (pcomplete-arg 'last) t))))))


(add-hook 'eshell-mode-hook    ; Enable helm Eshell history
	  #'(lambda ()
	      (define-key eshell-mode-map
		(kbd "M-p")
		'helm-eshell-history)))


(use-package helm-descbinds
  :ensure t)

(require 'helm-descbinds)
(helm-descbinds-mode)

(use-package helm-themes
  :ensure t)
(require 'helm-themes)
