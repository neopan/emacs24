;;�رչ�����
(tool-bar-mode 0) 

;;��꿿���������Զ��߿�
(mouse-avoidance-mode 'jump)

;; �Զ����ر��ⲿ�����޸ĵ��ļ�
(global-auto-revert-mode t)

;; ʹ�ÿո�����
;; indent-tabs-mode  t ʹ�� TAB ����ʽ���ַ�  0 ʹ�ÿո�����ʽ���ַ�
(setq indent-tabs-mode 0)
(setq tab-always-indent t)
(setq default-tab-width 4)
(setq tab-width 4)

;;�ر����ѡ���Զ����� 
(setq mouse-drag-copy-region nil) 

;; ���� Emacs ��ܲ��Ե�����ù�������λ�ã���ֵ��right �� left���������Ϊ 0����رչ���������ȱʡֵ�� left
(scroll-bar-mode 0)
 
;; �ر�emacs����ʱ�Ļ��� 
(setq inhibit-startup-message t)

;;�������ļ�ȫ���ŵ�~/.backupsĿ¼��
(setq backup-directory-alist (quote (("." . "~/.backups"))))

;;���Զ������ļ��ŵ�ָ��Ŀ¼
(setq auto-save-file-name-transforms
          `((".*" ,"~/.emacs.d/auto-save-list/" t)))

;;����ƥ��ʱ��ʾ����һ�ߵ����ţ������Ƿ��˵�������һ�����š�
(show-paren-mode t)

;;������Եʱ ��겻��ת����Ļ�м�
(setq scroll-margin 3 scroll-conservatively 10000)

;;���ô�С
;;(setq default-frame-alist
;;      '((height . 35) (width . 120) (menu-bar-lines . 10) (tool-bar-lines . 0)))
;;(setq default-frame-alist
;;      (append '((top + -2)(left + -2)(width . 167) (height . 42))
;;	      default-frame-alist))

;;�رշ��˵ĳ���ʱ����ʾ��
(setq visible-bell t)

;;�����﷨����
(setq global-font-lock-mode t)

;; ��ʾ�к�
(setq column-number-mode t)
(setq line-number-mode t)

;; ȡ���Զ�����
(auto-save-mode 0)
