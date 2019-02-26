;; (use-package micgoline
;;   :config
;;   (require 'micgoline)
;;   (setq ns-use-srgb-colorspace nil)
;;   (setq powerline-default-separator 'slant)
;;   :ensure t)


;;alternate
;;arrow
;;arrow-fade
;;bar
;;box
;;brace
;;butt
;;chamfer
;;contour
;;curve
;;rounded
;;roundstub
;;slant
;;wave
;;zigzag
;;utf-8
;;nil


;;;;;; powerline
;;(use-package powerline
;;  :config
;;  (require 'powerline)
;;  (powerline-default-theme)
;;  ;;(setq powerline-arrow-shape 'arrow)   ; the default
;;  (setq powerline-arrow-shape 'curve)   ; give your mode-line curves
;;  ;;(setq powerline-arrow-shape 'arrow14) ; best for small fonts
;;  :ensure t)
;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;; micgoline.el --- powerline mode, color schemes from microsoft and google's logo.

;; Copyright (C) 2016 yzprofile
;;
;; Author: yzprofile <yzprofiles@gmail.com>
;; URL: https://github.com/yzprofile/micgoline
;; Version: 1.0.0
;; Keywords: mode-line powerline theme
;; Package-Requires: ((emacs "24.3") (powerline "2.3"))

;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; micgoline is a modular mode-line library built on the powerline package,
;; designed to make it easy to build beautiful mode-lines.

;;; Code:

(require 'powerline)

(defface micgoline-pl-active-blue

  '((t (:background "#4885ed" :foreground "#FFFFFF" :inherit mode-line)))
  "P face blue."
  :group 'powerline)

(defface micgoline-pl-inactive-blue
  '((t (:background "#2b2f59" :Foreground "#FFFFFF" :inherit mode-line-inactive))) ;; "#00A1F1"
  "P face blue."
  :group 'powerline)

(defface micgoline-pl-active-green
  '((t (:background "#3cba54" :foreground "#FFFFFF" :inherit mode-line)))
  "P face green."
  :group 'powerline)

(defface micgoline-pl-inactive-green
  '((t (:background  "#16441d" :foreground "#FFFFFF" :inherit mode-line-inactive))) ;; "#7CBB00"
  "P face green."
  :group 'powerline)

(defface micgoline-pl-active-red
  '((t (:background "#db3236" :foreground "#FFFFFF" :inherit mode-line)))
  "P face red."
  :group 'powerline)

(defface micgoline-pl-inactive-red
  '((t (:background "#59342a" :foreground "#FFFFFF" :inherit mode-line-inactive))) ;; "#F65314"
  "P face red."
  :group 'powerline)

(defface micgoline-pl-active-yellow
  '((t (:background "#f4c20d" :foreground "#FFFFFF" :inherit mode-line)))
  "P face yellow."
  :group 'powerline)

(defface micgoline-pl-inactive-yellow
  '((t (:background "#54592a" :foreground "#FFFFFF" :inherit mode-line-inactive))) ;; "#FFBB00"
  "P face yellow."
  :group 'powerline)


(setq powerline-default-separator 'slant)


(defun micgoline-load-theme ()
  "Setup the default mode-line."
  (interactive)
  (setq-default
   mode-line-format
   '("%e"
     (:eval
      (let* ((active (powerline-selected-window-active))
             (mode-line (if active 'mode-line 'mode-line-inactive))
             (blue (if active 'micgoline-pl-active-blue 'micgoline-pl-inactive-blue))
             (green (if active 'micgoline-pl-active-green 'micgoline-pl-inactive-green))
             (red (if active 'micgoline-pl-active-red 'micgoline-pl-inactive-red))
             (yellow (if active 'micgoline-pl-active-yellow 'micgoline-pl-inactive-yellow))
             (separator-right (intern (format "powerline-%s-%s"
                                              (powerline-current-separator)
                                              (car powerline-default-separator-dir))))
             (separator-left (intern (format "powerline-%s-%s"
                                             (powerline-current-separator)
                                             (cdr powerline-default-separator-dir))))
             (lhs (list (powerline-raw "%*" blue 'l)
                        (powerline-raw "%4l" blue 'l)
                        (powerline-raw ":" blue 'l)
                        (powerline-raw "%3c" blue 'r)

                        (when powerline-display-buffer-size
                          (powerline-buffer-size blue 'l))

                        (when powerline-display-mule-info
                          (powerline-raw mode-line-mule-info blue 'l))

                        (funcall separator-left blue red)

                        (set-face-attribute 'mode-line-buffer-id nil :foreground "#FFFFFF")
                        (powerline-buffer-id red 'l)

                        (when (and (boundp 'which-func-mode) which-func-mode)
                          (powerline-raw which-func-format red 'l))
                        (powerline-raw " " red)

                        (funcall separator-right red yellow)

                        (when (boundp 'erc-modified-channels-object)
                          (powerline-raw erc-modified-channels-object nil 'l))

                        (powerline-major-mode yellow 'l)
                        (powerline-process yellow)
                        (powerline-raw " " yellow)
                        (funcall separator-left yellow blue)
                        (powerline-minor-modes blue 'l)
                        (powerline-narrow blue 'l)
                        (powerline-raw " " blue)
                        (funcall separator-right blue green)
                        (powerline-vc green 'l)))

             (rhs (list (powerline-raw global-mode-string green 'r)
                        (funcall separator-right green red)
                        (unless window-system
                          (powerline-raw (char-to-string #xe0a1) red 'l))
                        (powerline-raw " " red)
                        (powerline-raw "%6p" red 'r)
                        (when powerline-display-hud
                          (powerline-hud mode-line blue)))))
        (concat (powerline-render lhs)
                (powerline-fill green (powerline-width rhs))
                (powerline-render rhs)))))))

(micgoline-load-theme)

(provide 'micgoline)

;;; micgoline.el ends here




(require 'micgoline)
(setq ns-use-srgb-colorspace nil)
(setq powerline-default-separator 'slant)
