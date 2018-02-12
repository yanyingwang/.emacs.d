(use-package cal-china-x
  :config
  (require 'cal-china-x)
  (setq mark-holidays-in-calendar t)
  (setq cal-china-x-important-holidays cal-china-x-chinese-holidays)
  (setq cal-china-x-general-holidays '((holiday-lunar 1 15 "元宵节")))
  (setq calendar-holidays
        (append cal-china-x-important-holidays
                cal-china-x-general-holidays
                ;;other-holidays
                ))
  :ensure t)


(use-package pinyin-search
  :ensure t)


(use-package bing-dict
  :config
  (require 'bing-dict)
  (global-set-key (kbd "C-c d") 'bing-dict-brief)
  (setq bing-dict-show-thesaurus 'both) ;nil, 'synonym, 'antonym or 'both
  (setq bing-dict-pronunciation-style 'uk)
  (setq bing-dict-save-search-result t)
  ;;(setq bing-dict-org-file "/path/to/your_vocabulary.org")
  :ensure t)
