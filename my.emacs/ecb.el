(add-to-list 'load-path "~/site-lisp/ecb-2.40")
(require 'ecb)

(setq stack-trace-on-error t)

;;自动启动ecb，不显示每日提示
(setq ecb-auto-activate t
      ecb-tip-of-the-day nil
      ecb-tree-indent 4
      ecb-windows-height 0.5
      ecb-windows-width 0.20
      ecb-auto-compatibility-check nil
      ecb-version-check nil
      inhibit-startup-message t)

;;;; 各窗口间切换
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

;;  隐藏和显示ecb窗口
(defun my-ecb-active-or-deactive ()  
  (interactive)
  (if ecb-minor-mode
	  (ecb-deactivate)
	(ecb-activate)))
(global-set-key (kbd "<C-f1>") 'my-ecb-active-or-deactive)
;;(define-key gbal-map [(control f1)] 'ecb-hide-ecb-windows)
;;(define-key global-map [(control f2)] 'ecb-show-ecb-windows)

;;;; 使某一ecb窗口最大化
(define-key global-map "\C-c1" 'ecb-maximize-window-directories)
(define-key global-map "\C-c2" 'ecb-maximize-window-sources)
(define-key global-map "\C-c3" 'ecb-maximize-window-methods)
(define-key global-map "\C-c4" 'ecb-maximize-window-history)

;;;; 恢复原始窗口布局
(define-key global-map "\C-c" 'ecb-restore-default-window-sizes)
