(use-package multiple-cursors
  :bind (("C-S-c C-S-c" . mc/edit-lines)
         ("C-S-c C-S-c" . 'mc/edit-lines)
         ("C->" . 'mc/mark-next-like-this)
         ("C-<" . 'mc/mark-previous-like-this)
         ("C-c C-<" . 'mc/mark-all-like-this)
         ("C-S-<mouse-1>" . 'mc/add-cursor-on-click))
  :init
  :config
  :ensure t)
(define-key mc/keymap (kbd "<return>") nil)


(use-package expand-region
  :bind (("C-=" . 'er/expand-region))
  :init
  :config
  :ensure t)
