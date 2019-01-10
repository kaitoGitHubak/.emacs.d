;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)

;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)

;; タイトルバーに時計とファイル名表示
(when (window-system)
  ;; display-timeより先にsetしておかないとdefaultの書式?になる workaround
  (setq display-time-string-forms
    '((format "%s/%s/%s" year month day)
      (format "(%s:%s)" 24-hours minutes)))
  (display-time) ;; display-time-stringの有効化
  ;; タイトルバーの書式設定 global-mode-stringにdisplay-time-stringが入っている
  ;; バッファがファイルのときはフルパス、でなければバッファ名表示
  ;; if(buffer-file-name) の評価がsetq時で終わらないよう:eval
  (setq frame-title-format '("" global-mode-string
                             (:eval (if (buffer-file-name) " %f""  %b"))) ) )

;; 改行コードを表示する
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; tabサイズ
(setq default-tab-width 2)

;; カーソルの点滅をやめる
(blink-cursor-mode 0)

;; カーソル行をハイライトする
(global-hl-line-mode t)

;; 対応する括弧を光らせる
(show-paren-mode t)

;;括弧補完
(electric-pair-mode t)

;; リージョンのハイライト
(transient-mark-mode t)

;; 現在ポイントがある関数名をモードラインに表示
(which-function-mode t)

;; ウィンドウ内に収まらないときだけ、カッコ内も光らせる
(setq show-paren-style 'mixed)
;;(set-face-background 'show-paren-match-face "grey")
;;(set-face-foreground 'show-paren-match-face "black")

 ;;操作性の向上
;;１行毎にスクロール
(setq scroll-conservatively 1)

;; スクロール開始のマージンの行数
 (setq scroll-margin 5)

 ;; 1 画面スクロール時にカーソルの画面上の位置をなるべく変えない
 (setq scroll-preserve-screen-position t)

;; スクロールの加速をやめる
(setq mouse-wheel-progressive-speed nil)

;;ファイルを開くときに大文字小文字の違いを無視
(setq read-buffer-completion-ignore-case t)    ;; バッファ名
(setq read-file-name-completion-ignore-case t) ;; ファイル名

;; 問い合わせを簡略化 yes/no を y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; bufferの最後でカーソルを動かそうとしても音をならなくする
(defun next-line (arg)
  (interactive "p")
  (condition-case nil
      (line-move arg)
    (end-of-buffer)))

;; エラー音をならなくする
(setq ring-bell-function 'ignore)
