;; Mozc settings
(require 'mozc)
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
(setq mozc-candidate-style 'overlay)
(global-set-key (kbd "C-o") 'toggle-input-method)
