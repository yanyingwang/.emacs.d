(use-package bing-dict
  :config
  (require 'bing-dict)
  (global-set-key (kbd "C-c d") 'bing-dict-brief)
  (setq bing-dict-show-thesaurus 'both) ;nil, 'synonym, 'antonym or 'both
  (setq bing-dict-pronunciation-style 'us)
  (setq bing-dict-save-search-result t)
  (setq bing-dict-cache-auto-save t)
  ;;(setq bing-dict-org-file "/path/to/your_vocabulary.org")
  :ensure t)



;; (use-package youdao-dictionary
;;   :config
;;   (setq url-automatic-caching t)
;;   (global-set-key (kbd "C-c y") 'youdao-dictionary-search-at-point)
;;   :ensure t)
