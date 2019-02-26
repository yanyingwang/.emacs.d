(use-package golden-ratio
  :diminish golden-ratio-mode
  :init
  (setq golden-ratio-adjust-factor .9
        golden-ratio-wide-adjust-factor .9)

  ;; ediff
  (eval-after-load "golden-ratio"
    '(progn
       (add-to-list 'golden-ratio-exclude-modes "ediff-mode")
       (add-to-list 'golden-ratio-inhibit-functions 'pl/ediff-comparison-buffer-p)))

  (defun pl/ediff-comparison-buffer-p ()
    (and (boundp 'ediff-this-buffer-ediff-sessions)
         ediff-this-buffer-ediff-sessions))

  ;; The version which also called balance-windows at this point looked
  ;; a bit broken, but could probably be replaced with:
  ;;
  ;; (defun pl/ediff-comparison-buffer-p ()
  ;;   (and (boundp 'ediff-this-buffer-ediff-sessions)
  ;;        ediff-this-buffer-ediff-sessions
  ;;        (prog1 t (balance-windows))))
  ;;
  ;; However I think the following has the desired effect, and without
  ;; messing with the ediff control buffer:
  ;;
  (add-hook 'ediff-startup-hook 'my-ediff-startup-hook)

  (defun my-ediff-startup-hook ()
    "Workaround to balance the ediff windows when golden-ratio is enabled."
    ;; There's probably a better way to do it.
    (ediff-toggle-split)
    (ediff-toggle-split))

  ;; helm
  (eval-after-load "golden-ratio"
    '(add-to-list 'golden-ratio-inhibit-functions 'pl/helm-alive-p))

  (defun pl/helm-alive-p ()
    (and (boundp 'helm-alive-p)
         (symbol-value 'helm-alive-p)))

  :config
  (golden-ratio-mode 1)
  :ensure t)

