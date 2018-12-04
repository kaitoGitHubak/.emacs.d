;;shell-pop
(require 'shell-pop)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(display-time-mode t)
 '(package-selected-packages
	 (quote
		(init-loader anzu recentf-ext helm auto-save-buffers-enhanced mozc company elscreen golden-ratio shell-pop)))
 '(shell-pop-shell-type
	 (quote
		("ansi-term" "*shell-pop-ansi-term*"
		 (lambda nil
			 (ansi-term shell-pop-term-shell)))))
 '(shell-pop-term-shell "/bin/bash")
 '(shell-pop-universal-key "C-t")
 '(shell-pop-window-position "bottom")
 '(shell-pop-window-size 30)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
