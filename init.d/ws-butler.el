(use-package ws-butler
  :ensure t)


;; autoload ws-butler on file open
(add-hook 'find-file-hook #'ws-butler-global-mode)
(setq require-final-newline t)

;; ws-butler also load highlight-changes-mode
;(with-eval-after-load 'ws-butler
  ;; (diminish 'ws-butler-global-mode)
  ;(diminish 'ws-butler-mode " β"))

;(add-hook 'highlight-changes-mode-hook
  ;(lambda ()
    ;(diminish 'highlight-changes-mode)))
