
;;;;;;;;;;; code originated from
;;;;;;;;;;; https://gist.github.com/exaos/4493582 ;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                  字体显示测试                                ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 中英文对齐
;; -------1---------2---------3---------4---------5---------6---------7--
;; abab  abababab  abababab  abababab  abababababab
;; abab  abababab  abababab  abababab  abababababab
;; abab  abababab  abababab  abababab  abababababab
;; 你我  你我你我  你我你我  你我你我  你我你我你我
;; 你我  你我你我  你我你我  你我你我  你我你我你我
;; 你我  你我你我  你我你我  你我你我  你我你我你我
;; abab  abababab  abababab  abababab  abababababab
;; abab  abababab  abababab  abababab  abababababab
;; abab  abababab  abababab  abababab  abababababab
;; 3456789+123456789+123456789+123456789+123456789+123456789+123456789+12
;; 半角： 0 o O 1 l I | i ; : . ~ \ / - _ = ! @ # $ % ^ & * ` ' " () [] {}
;; 全角：  ， ； 、 。 ？ ！
;; —— “ ” ‘ ’ 《 》 ［ ］ 「」『』〈〉《》〖〗【】〔〕
;; ---------------------------------------------------------------
;; 这儿的字符至少应该显示正常！
;; Esperanto: ĉ Ĉ ĝ Ĝ ĥ Ĥ ĵ Ĵ ŝ Ŝ ŭ Ŭ -- Ĵaudo Ĥoro aĝo antaŭ ĝoja
;; 化学元素： 𨧀 dù, 𨨏 (钅波) bō ㄅㄛ 𨭆 hēi 䥑 鐽 dá ㄉㄚˊ鎶
;; IPA: ðɫŋɹɾʃθtʒæɑəəɚɜɛɝɪɪ̈ɒɔʊʊ̈ʌ
;; àáâãäåæç èéêë ìíîï ðñòóôõö øùúûüýþÿ ÀÁÂÃÄÅ
;; Ç ÈÉÊË ÌÍÎÏ ÐÑ ÒÓÔÕÖ ØÙÚÛÜÝÞß
;; ¢ € ₠ £ ¥ ¤ ° © ® ™ § ¶ † ‡ ※ •◦ ‣ ✓●■◆○□◇★☆♠♣♥♦♤♧♡♢
;; ←→↑↓↔↖↗↙↘⇐⇒⇑⇓⇔⇗⇦⇨⇧⇩ ↞↠↟↡ ↺↻ ☞☜☝☟ ∀¬∧∨∃⊦∵∴∅∈∉⊂⊃⊆⊇⊄⋂⋃
;; ♩♪♫♬♭♮♯  ➀➁➂➃➄➅➆➇➈➉ 卐卍✝✚✡☥⎈☭☪☮☺☹ ☯☰☱☲☳☴☵☶☷
;; ☠☢☣☤♲♳⌬♨♿ ☉☼☾☽ ♀♂ ♔♕♖ ♗♘♙ ♚♛ ♜♝♞♟

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 查看某个字符是什么字体，使用函数: (describe-char); 默认绑定的按键是: C-u C-x =
;; 常见字体 -- 查看系统可用字体: (print (font-family-list))
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;; check your emacs's fonts with:;;;;
;; ;;;;;; M=x describe-fonts ;;;;;;;;;;;;
;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Fonts.html#Fonts

;; (setq enfont
;;       ;; "MonacoBSemi-10:slant=normal:weight=bold:width=normal"
;;       ;; "MonacoB-Bold-10:normal"
;;       ;; "MonacoB-10:bold"
;;       ;; "MonacoB2-10:bold"
;;       ;; "MonacoBSemi-11:bold"
;;       ;; "YaHei Consolas Coder-12:bold"
;;       ;; "Ubuntu Mono - Bront-12:bold"

;;       ;; "Agave-12:normal"
;;       ;; "Agave-11:bold"
;;       ;; "AgaveB-Regular-12:normal"
;;       ;; "AgaveB-Medium-12:medium"
;;       ;; "AgaveB-Semibold-12:semibold"
;;       ;; "AgaveBBr-Semibold-12:Semibold"
;;       ;; "AgaveB-Bold-12:bold"
;;       ;; "AgaveB-Heavy-12:heavy"
;;       ;; "AgaveB-Black-12:black"
;;       ;; "AgaveBBr-Black-12:black"
;;       ;; "AgaveXX-Semibold-11:normal"
;;       "AgaveXX-Bold-11:bold"
;;       )
;; ;; (set-frame-font "MonacoBSemi-10:bold" nil t)
;; (add-to-list 'default-frame-alist
;;               '(font . enfont))
;; (set-face-attribute 'default nil :font enfont)

;; (setq cnfont
;;       ;; "苹方-简-半粗-12:semibold"
;;       ;; "苹方-简-常规-12:regular"
;;       ;; "PingFangSC-Regular-12:Regular"
;;       ;; "PingFangSC-Medium-12:Medium"
;;       ;;;; "PingFangSC-Semibold-12:Demi"
;;       "文泉驿等宽微米黑-12:normal"
;;       )


;; (dolist (charset '(kana han symbol cjk-misc bopomofo gb18030))
;;   (set-fontset-font t charset cnfont))


;; ;; '("SimSun-ExtB" "HanaMinB" "MingLiU-ExtB")
;; (set-fontset-font t nil cnfont nil 'prepend)
;; (setq-default line-spacing 4)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun qiang-font-existsp (font)
  (if (null (x-list-fonts font)) nil t))

(defun qiang-make-font-string (font-name font-size)
  (if (and (stringp font-size)
           (equal ":" (string (elt font-size 0))))
      (format "%s%s:bold" font-name font-size)
    (format "%s-%s:bold" font-name font-size)))


(defun qiang-set-font ( english-fonts
			english-font-size
			chinese-fonts
			&optional unicode-fonts )
  ;; "The english-font-size could be set to \":pixelsize=18\" or a integer.
  ;; If set/leave chinese-font-size to nil, it will follow english-font-size"
  (require 'cl)   ;; for find if
  (unless unicode-fonts (setq unicode-fonts chinese-fonts))
  (let ((en-font (qiang-make-font-string (find-if #'qiang-font-existsp english-fonts) english-font-size))
        (zh-font  (font-spec :family (find-if #'qiang-font-existsp chinese-fonts)))
	(uni-font (font-spec :family (find-if #'qiang-font-existsp unicode-fonts))))
    ;; Set the default English font: for most latin characters
    (message "Set English Font to %s" en-font)
    (set-face-attribute 'default nil :font en-font)
    ;; (set-frame-font en-font nil t)

    ;; Set Chinese font
    (message "Set Chinese Font to %s prepended" zh-font)
    (dolist (charset '(kana han symbol cjk-misc bopomofo gb18030))
      (set-fontset-font t charset "仓颉")
      (set-fontset-font t charset zh-font nil 'append)
      )

    ;; Set the font for unicode not covered above
    ;;     'prepend -- do not override the previous settings
    (message "Set Unicode Font to %s" uni-font)
    (set-fontset-font t nil uni-font nil 'prepend)
    ))


;; ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(setq face-font-rescale-alist
      '(("AR PL UMing CN" . 1.1)
	("SimSun"  . 1.1)
	("NSimSun" . 1.1)
	("宋体"   . 1.1)
	("新宋体" . 1.1)
	("HanaMinB" . 1.1)
	("SimSun-ExtB" . 1.1)
	("Adobe 明體 Std" . 1.1)
	("微软雅黑" . 1.1)
	("文泉驿正黑" . 1.1)
        ("文泉驿微米黑" . 1.1)
        ("文泉驿等宽微米黑" . 1.1)
        ("PingFangSC-Medium" . 1.1)
        ("苹方-简-中等" . 1.1)
        ("思源黑体" . 1.1)
        ("仓颉" . 1.1)
        ("Noto Sans CJK SC" . 1.1)
        ))


;; 透明窗口
(defun toggle-transparency ()
  (interactive)
  (if (/= (cadr (frame-parameter nil 'alpha)) 100)
      (set-frame-parameter nil 'alpha '(100 100))
    (set-frame-parameter nil 'alpha '(85 50))))
(global-set-key (kbd "C-c t") 'toggle-transparency)

;; 默认风格 (frame)
(defun my-default-frame-face ()
  (qiang-set-font
   '("AgaveXX-Bold" "MonacoBSemi" "Consolas" "DejaVu Sans Mono" "Monospace") 11 ;; 1.1
   ;; '("MonacoBSemi" "Consolas" "DejaVu Sans Mono" "Monospace") 10 ;; 1.3
   '( "文泉驿等宽微米黑" "Noto Sans CJK SC" "思源黑体" "Noto Sans CJK SC" "苹方-简-中等" "文泉驿正黑" "新宋体" "微软雅黑" "AR PL UMing CN")
   '("SimSun-ExtB" "HanaMinB" "MingLiU-ExtB"))
  (setq-default line-spacing 4)
  (set-face-attribute 'default nil :font (font-spec))

  ;; 窗口初始不透明
  (set-frame-parameter (selected-frame) 'alpha '(100 100))
  (add-to-list 'initial-frame-alist '(alpha 100 100))
  ;; (toggle-transparency)
  )


;; If not in terminal, load default style
(if (display-graphic-p)
    (my-default-frame-face))

;; For emacsclient: apply default frame style to each new frame
(add-hook 'after-make-frame-functions
	  (lambda (new-frame)
	    (select-frame new-frame)
	    (my-default-frame-face)))
