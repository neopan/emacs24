(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-source-path (quote (("D:\\Program\\emacs-24.1" "emacs") ("D:\\WorkSpace\\KBSS_CORP\\kbss\\backend\\corp\\trunk\\src" "kbss_corp"))))
 '(nil nil t)
 ;;'(session-use-package t nil (session))
 )
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(t 10000))


;;基本属性配置
(load-file (expand-file-name "~/my.emacs/base-config.el"))

;;color-theme配置
(load-file (expand-file-name "~/my.emacs/color-theme.el"))

;;cedet配置
(load-file (expand-file-name "~/my.emacs/cedet.el"))

;;ecb配置
(load-file (expand-file-name "~/my.emacs/ecb.el"))

;;tabbar设置
(load-file (expand-file-name "~/my.emacs/tabbar.el"))

;;yasnippet 配置
(load-file (expand-file-name "~/my.emacs/yasnippet.el"))

;;session 配置
(load-file (expand-file-name "~/my.emacs/session.el"))

;;company-mode 配置
(load-file (expand-file-name "~/my.emacs/auto-complete.el"))

;;company-mode 配置
(load-file (expand-file-name "~/my.emacs/company-mode.el"))

;;psgml 配置
;;(load-file (expand-file-name "~/my.emacs/psgml.el"))

;;快捷键配置
(load-file (expand-file-name "~/my.emacs/key-map.el"))

;;**********************************************************************
;; 自己的代码配置
;; 字操作相关
(load-file (expand-file-name "~/my-lisp/my-word-operate.el"))

;; 行操作相关
(load-file (expand-file-name "~/my-lisp/my-line-operate.el"))
