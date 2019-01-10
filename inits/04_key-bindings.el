;; バックスペースの設定
(define-key global-map "\C-h" 'delete-backward-char)

;; C-kで行全体を削除する
(setq kill-whole-line t)
