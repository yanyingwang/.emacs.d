(use-package company
  :init
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-selection-wrap-around t)
  (set 'company-idle-delay 0)
  ;(setq company-auto-select-first-candidate nil)
  ;(setq company-auto-complete t)   ; more key like space C-f use select suggestion
  ;(setq company-auto-complete 'company-explicit-action-p) ; auto-complete enable only when used select-next at least one time
  :config
  (push 'company-robe company-backends)
  (define-key company-active-map (kbd "<tab>") 'company-select-next)
  (define-key company-active-map (kbd "<backtab>") 'company-select-previous) ;<S-tab>
  ;(define-key company-active-map (kbd "C-n") 'company-select-next)
  ;(define-key company-active-map (kbd "C-p") 'company-select-previous)
  :ensure t)
