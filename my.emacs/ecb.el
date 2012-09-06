(add-to-list 'load-path "~/site-lisp/ecb-2.40")
(require 'ecb)

(setq stack-trace-on-error t)

;;�Զ�����ecb������ʾÿ����ʾ
(setq ecb-auto-activate t
      ecb-tip-of-the-day nil
      ecb-tree-indent 4
      ecb-windows-height 0.5
      ecb-windows-width 0.20
      ecb-auto-compatibility-check nil
      ecb-version-check nil
      inhibit-startup-message t)

;;;; �����ڼ��л�
(global-set-key [M-left] 'windmove-left)
(global-set-key [M-right] 'windmove-right)
(global-set-key [M-up] 'windmove-up)
(global-set-key [M-down] 'windmove-down)

;;  ���غ���ʾecb����
(defun my-ecb-active-or-deactive ()  
  (interactive)
  (if ecb-minor-mode
	  (ecb-deactivate)
	(ecb-activate)))
(global-set-key (kbd "<C-f1>") 'my-ecb-active-or-deactive)
;;(define-key gbal-map [(control f1)] 'ecb-hide-ecb-windows)
;;(define-key global-map [(control f2)] 'ecb-show-ecb-windows)

;;;; ʹĳһecb�������
(define-key global-map "\C-c1" 'ecb-maximize-window-directories)
(define-key global-map "\C-c2" 'ecb-maximize-window-sources)
(define-key global-map "\C-c3" 'ecb-maximize-window-methods)
(define-key global-map "\C-c4" 'ecb-maximize-window-history)

;;;; �ָ�ԭʼ���ڲ���
(define-key global-map "\C-c" 'ecb-restore-default-window-sizes)
