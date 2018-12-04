;; バックスペースの設定
(global-set-key (kbd "C-h") 'delete-backward-char)                   

;; C-kで行全体を削除する
(setq kill-whole-line t)
