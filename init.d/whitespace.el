;; cleaned up whitespace before saving
;(defun delete-trailing-whitespace-except-current-line ()
  ;(interactive)
  ;(let ((begin (line-beginning-position))
        ;(end (line-end-position)))
    ;(save-excursion
      ;(when (< (point-min) begin)
        ;(save-restriction
          ;(narrow-to-region (point-min) (1- begin))
          ;(delete-trailing-whitespace)))
      ;(when (> (point-max) end)
        ;(save-restriction
          ;(narrow-to-region (1+ end) (point-max))
          ;(delete-trailing-whitespace))))))


(defun delete-trailing-whitespace-except-current-line ()
  "do delete-trailing-whitespace, except preserve whitespace of current line"
  (interactive)
  (let ((current-line (buffer-substring (line-beginning-position) (line-end-position)))
        (backward (- (line-end-position) (point))))
    (delete-trailing-whitespace)
    (when (not (string-equal (buffer-substring (line-beginning-position) (line-end-position))
                             current-line))
      (delete-region (line-beginning-position) (line-end-position))
      (insert current-line)
      (backward-char backward))))


(add-hook 'before-save-hook 'delete-trailing-whitespace-except-current-line)
;;(add-hook 'before-save-hook 'whitespace-cleanup)


(setq-default show-trailing-whitespace t)

(setq-default indent-tabs-mode nil)

