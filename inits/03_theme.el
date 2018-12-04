;; alpha
(if window-system 
    (progn
      (set-frame-parameter nil 'alpha 90)))

;;テーマ
(load-theme 'misterioso t)
