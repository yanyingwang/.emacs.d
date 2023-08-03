;; disable minimize window keys
(global-unset-key (kbd "C-z"))
(global-unset-key (kbd "C-x C-z"))
(global-unset-key (kbd "C-x c"))

;; enable C-x C-u & C-x C-l
;;(put 'upcase-region 'disabled nil)
;;(put 'downcase-region 'disabled nil)

;; other windows
(defun previous-other-window () (interactive) (other-window -1))

(global-set-key (kbd "M-[") 'other-window)
(global-set-key (kbd "<C-tab>") 'other-window)
(global-set-key (kbd "M-]") 'previous-other-window)
(global-set-key (kbd "<C-S-tab>") 'previous-other-window)
(global-set-key (kbd "<M-return>") 'toggle-frame-fullscreen)
(global-set-key (kbd "<s-S-escape>") 'next-buffer)
(global-set-key (kbd "<s-escape>") 'previous-buffer)


(global-set-key (kbd "C-c 2 c") 'hs-toggle-hiding)
(global-set-key (kbd "C-c 2 a") 'hs-show-all)

;; key customize for system conflict
(cond ((string-equal system-type "windows-nt")
       (progn
         (message "Key-binding set for Windows")))
      ((string-equal system-type "darwin")
       (progn
         (setq mac-command-modifier 'meta)
         (setq mac-option-modifier 'super)
         (message "Key binding set for MacOS")))
      ((string-equal system-type "gnu/linux")
       (progn
         (message "Key binding set for Linux"))))


;; copy line
;; https://www.emacswiki.org/emacs/CopyingWholeLines
(defun copy-line (arg)
  "Copy lines (as many as prefix argument) in the kill ring"
  (interactive "p")
  (kill-ring-save (line-beginning-position)
                  (line-beginning-position (+ 1 arg)))
  (message "%d line%s copied" arg (if (= 1 arg) "" "s")))
(global-set-key (kbd "C-c k") 'copy-line)
(global-set-key (kbd "C-c g k") 'copy-line)


;; select-current-line
;; https://lists.gnu.org/archive/html/help-gnu-emacs/2010-12/msg01183.html
(defun select-current-line ()
  "Select the current line"
  (interactive)
  (beginning-of-line) ; move to end of line
  (set-mark (line-end-position)))
(global-set-key (kbd " C-c l") 'select-current-line)
(global-set-key (kbd " C-c g l") 'select-current-line)
(global-set-key (kbd " s-l") 'select-current-line)

;; select until next begining line
(global-set-key (kbd "C-c n") 'turn-on-expand-line-mode)
(global-set-key (kbd "s-n") 'turn-on-expand-line-mode)

;; cycle-paren
(global-set-key (kbd "C-c g p") 'racket-cycle-paren-shapes)
(global-set-key (kbd " s-p") 'racket-cycle-paren-shapes)


;; insert lambda
(defun insert-lambda ()
  "Insert lambda at cursor point."
  (interactive)
  (insert "lambda")
  ;; (backward-char 4)
  )
(defun insert-lambda-exp ()
  "Insert lambda exp at cursor point."
  (interactive)
  (insert "(lambda () ())")
  (backward-char 5)
  )
(global-set-key (kbd "C-M-y") 'insert-lambda)
(global-set-key (kbd "C-M-S-y") 'insert-lambda-exp)

;;   ;; https://oracleyue.github.io/2018/04/24/init-helm/
;; (global-set-key (kbd "M-g a") 'helm-do-grep-ag)
;; (setq helm-grep-default-command   ;; ~grep~
;;       "grep --color=always -d skip %e -n%cH -e %p %f"
;;       helm-grep-default-recurse-command
;;       "grep --color=always -d recurse %e -n%cH -e %p %f")

;; (setq helm-grep-default-command     ;; ~ack~
;;       "ack -Hn --color --smart-case --no-group %e %p %f"
;;       helm-grep-default-recurse-command
;;       "ack -H --color --smart-case --no-group %e %p %f")
;; (setq helm-grep-ag-command        ;; ~ag~ from "the-silver-searcher"
;;       "ag --line-numbers -S --hidden --color --color-match '31;43' \
;;           --nogroup %s %s %s")
;; (setq helm-grep-ag-pipe-cmd-switches '("--color-match '31;43'"))
