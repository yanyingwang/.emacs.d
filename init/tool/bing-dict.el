(use-package bing-dict
  :config
  (require 'bing-dict)
  (global-set-key (kbd "C-c d") 'bing-dict-brief)
  (setq bing-dict-show-thesaurus 'both) ;nil, 'synonym, 'antonym or 'both
  (setq bing-dict-pronunciation-style 'uk)
  (setq bing-dict-save-search-result t)
  ;;(setq bing-dict-org-file "/path/to/your_vocabulary.org")
  :ensure t)
