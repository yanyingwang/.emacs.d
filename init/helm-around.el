



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



