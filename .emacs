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


;;������������
(load-file (expand-file-name "~/my.emacs/base-config.el"))

;;color-theme����
(load-file (expand-file-name "~/my.emacs/color-theme.el"))

;;cedet����
(load-file (expand-file-name "~/my.emacs/cedet.el"))

;;ecb����
(load-file (expand-file-name "~/my.emacs/ecb.el"))

;;tabbar����
(load-file (expand-file-name "~/my.emacs/tabbar.el"))

;;yasnippet ����
(load-file (expand-file-name "~/my.emacs/yasnippet.el"))

;;session ����
(load-file (expand-file-name "~/my.emacs/session.el"))

;;company-mode ����
(load-file (expand-file-name "~/my.emacs/auto-complete.el"))

;;company-mode ����
(load-file (expand-file-name "~/my.emacs/company-mode.el"))

;;psgml ����
;;(load-file (expand-file-name "~/my.emacs/psgml.el"))

;;��ݼ�����
(load-file (expand-file-name "~/my.emacs/key-map.el"))

;;**********************************************************************
;; �Լ��Ĵ�������
;; �ֲ������
(load-file (expand-file-name "~/my-lisp/my-word-operate.el"))

;; �в������
(load-file (expand-file-name "~/my-lisp/my-line-operate.el"))
