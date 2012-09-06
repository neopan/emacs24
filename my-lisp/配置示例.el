;;LOAD_PATH
(add-to-list 'load-path' "~/.emacs.d/site-lisp")
;=========================================END==============================================;


;;COLOR_THEME
(require 'color-theme)
(color-theme-classic) 
;=========================================END==============================================;


;;LANG
(set-language-environment 'Chinese-GB)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(setq default-process-coding-system '(utf-8 . utf-8))
(setq-default pathname-coding-system 'utf-8)
(set-file-name-coding-system 'utf-8)
(setq ansi-color-for-comint-mode t) ;;����shell-mode����,����û����
;=========================================END==============================================;

;;MY CUSTOMIZE
(auto-image-file-mode t);��ͼƬ��ʾ����
(display-time-mode 1);��ʾʱ�䣬��ʽ����
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(transient-mark-mode t);������ʱ���ñ��
(setq frame-title-format '("" buffer-file-name "@emacs" ));�ڱ�������ʾbuffer����
(setq default-fill-column 80);Ĭ����ʾ 80�оͻ��� 
(set-scroll-bar-mode nil)  ; ȡ��������
;;(tool-bar-mode nil)        ; ȡ��������
(setq default-directory "~/")     ; ���ô��ļ���ȱʡ·��
(ido-mode t)             ; ��ido��ʹ���ļ�ʱ��������ʾ����emacs23����ido
(setq visible-bell t)          ; �رշ��˵ĳ���ʱ����ʾ��
(setq inhibit-startup-message t) ; �ر�emacs����ʱ�Ļ���
(setq gnus-inhibit-startup-message t) ; �ر�gnus����ʱ�Ļ���
(fset 'yes-or-no-p 'y-or-n-p)    ; �� y ��ո����ʾ yes��n ��ʾ no
(setq mouse-yank-at-point t)    ; ������������Ǹ��ط��������������
(setq kill-ring-max 200)    ; ����ճ��������Ŀ����
(setq auto-save-mode nil)    ; �Զ�����ģʽ
(setq x-select-enable-clipboard t) ; ����emacs���ⲿ���������ճ��
(setq user-full-name "XXXXXX")
(setq user-mail-address "XXXXXX@gmail.com")    ; �������õĸ�����Ϣ,���ںܶ�ط����á�
(setq global-font-lock-mode t)    ; �����﷨������
(setq-default kill-whole-line t) ; ������ C-k ʱ��ͬʱɾ������
(setq show-paren-mode t) ;������ƥ����ʾģʽ
(setq show-paren-style 'parenthesis) ;����ƥ��ʱ���Ը�����ʾ����һ�ߵ����ţ�����겻�ᷳ�˵�������һ�����Ŵ���
(setq mouse-avoidance-mode 'animate) ;��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס���ߡ�
(setq auto-image-file-mode t) ;�� Emacs ����ֱ�Ӵ򿪺���ʾͼƬ
(setq default-major-mode 'text-mode)
; (add-hook 'text-mode-hook 'turn-on-auto-fill) ; ����ȱʡ��ģʽ��text��,������auto-fill��ģʽ.�����ǻ���ģʽfundamental-mode
(setq-default auto-fill-function 'do-auto-fill) ; Autofill in all modes;;

;(setq-default indent-tabs-mode nil)
;(setq default-tab-width 8)
;(setq tab-stop-list ())
;;���� TAB �ַ���indent, �������ܶ���ֵĴ��󡣱༭ Makefile ��ʱ��Ҳ���õ��ģ���Ϊ makefile-mode ��� TAB �����ó������� TAB �ַ������Ҽ�����ʾ�ġ�ע����û�����
(setq column-number-mode t)
(setq line-number-mode t) ; ��ʾ�к�
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time) ; ��ʾʱ��
(setq sentence-end "\\([������]\\|����\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)     ; ���� sentence-end ����ʶ�����ı�㡣������ fill ʱ�ھ�ź���������ո�
(setq enable-recursive-minibuffers t)     ; ���Եݹ��ʹ�� minibuffer
(setq scroll-margin 3  scroll-conservatively 10000) 
;;��ֹҳ�����ʱ������ scroll-margin 3 �����ڿ�����Ļ����3��ʱ�Ϳ�ʼ���������ԺܺõĿ��������ġ�
(setq track-eol t)    ; ���������β�����ƶ���ʱ��ʼ�ձ�������β��
(setq Man-notify-method 'pushy) ; ����� man page ʱ��ֱ����ת�� man buffer��
(setq next-line-add-newlines nil)    ; Emacs 21 ���Ѿ���ȱʡ���á��� C-n �����¼�ʱ��������С�
(setq speedbar-show-unknown-files t);;������ʾ����Ŀ¼�Լ��ļ�
(setq dframe-update-speed nil);;���Զ�ˢ�£��ֶ� g ˢ��
(setq speedbar-update-flag nil)
(setq speedbar-use-images nil);;��ʹ�� image �ķ�ʽ
(setq speedbar-verbosity-level 0)
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S chunyu") ; ����ʱ�������ʶ�����һ�α����ļ���ʱ�䡣
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top) ;�� dired ���Եݹ�Ŀ�����ɾ��Ŀ¼��
;=========================================END==============================================;


;;xcscope
(require 'xcscope)
;; C-c s a             �趨��ʼ����Ŀ¼��һ���������ĸ�Ŀ¼
;; C-s s I             ��Ŀ¼�е�����ļ������б���������
;; C-c s s             ���ҷ���
;; C-c s g             Ѱ��ȫ�ֵĶ���
;; C-c s c             ����ָ����������Щ����������
;; C-c s C             ����ָ��������������Щ����
;; C-c s e             Ѱ��������ʽ
;; C-c s f             Ѱ���ļ�
;; C-c s i             ����ָ�����ļ�����Щ�ļ�include
;=========================================END==============================================;

;;�ļ�ͷheader����
(require 'header2)
;;(require 'header)
(setq make-header-hooks '(header-mode-line
                            header-blank
                            header-file-name
                            header-blank
                            header-copyright
                            header-blank
                            header-author
                            header-creation-date
                            header-modification-author
                            header-modification-date
                            header-update-count
                            header-blank
                            header-history
                            header-blank
                            ))
(setq header-copyright-notice "  XXXXXXX" )
(make-local-variable 'user-full-name)
(make-local-variable 'user-mail-address)
;=========================================END==============================================;



;;setnu
;(add-hook 'c-mode-common-hook '(lambda()  (require 'setnu+)  ) ) ;;����C/C++mode��ʾ�к�
;(add-hook 'c++-mode-common-hook '(lambda()  (require 'setnu+)  ) )

;; ������ʾ�к�ģ��
(require 'display-line-number)
;;(add-hook 'c-mode-common-hook '(lambda()  (require 'display-line-number)  ) )
;; ��������д򿪵��ļ�����ʾ�еĻ��ʹ������ע��
;;(global-display-line-number-mode 1)
;; ������ʾ��ʽ
(setq display-line-number-format "%3d ")
;; �� tool bar ������һ��ͼ�꣬
;; ע��: һ��Ҫ�� load-path �� �����ҵ� display-line-nuber.xpm �ļ����С�
;;
;;(tool-bar-add-item "display-line-number"
;;                   'display-line-number-mode
;;                   'display-line-number-mode
;;                  :help "display line number!"
;;                   :button (cons :toggle  '(and (boundp
;;                                                 display-line-number-mode)
;;                                                display-line-number-mode)))
;;
;; ʹ�÷���
;; M-x display-line-number-mode
;; ���� toggle ��ʾ�кŵ�ģʽ
;; M-x display-line-number-mode-on
;; ������ʾ�кŵ�ģʽ
;; M-x display-line-number-mode-off
;; �ر���ʾ�кŵ�ģʽ
;; ����ĳ�� mode ������ʾ�кŵ�ģʽ
;; (add-hook 'c-mode-hook 'display-line-number-mode)
(add-hook 'c-mode-hook 'display-line-number-mode)
(add-hook 'c++-mode-hook 'display-line-number-mode)
;=========================================END==============================================;

;;tabbar
(require 'tabbar)
(tabbar-mode)
;=========================================END==============================================;

;����Ự����
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(load "desktop")
(desktop-save-mode) 
;=========================================END==============================================;

;; ����redo
(require 'redo)
;=========================================END==============================================;

;;cedet ecb��װ
(add-hook 'texinfo-mode-hook (lambda () (require 'sb-texinfo)))
     (load-file "~/.emacs.d/site-lisp/cedet-1.0pre4/common/cedet.el")
     (semantic-load-enable-code-helpers)
     (autoload 'speedbar-frame-mode "speedbar" "Popup a speedbar frame" t)
     (autoload 'speedbar-get-focus "speedbar" "Jump to speedbar frame" t)
     (define-key-after (lookup-key global-map [menu-bar tools])
                [speedbar]
                '("Speedbar" .
                speedbar-frame-mode)
                [calendar])

;; ָ��semantic��ʱ�ļ���·�������⵽��������ʱ�ļ�
(setq semanticdb-default-save-directory "~/backups/emacs/semantic")

;;;;C/C++��������ʱ�Զ�����semantic��/usr/include���������ݿ�
(setq semanticdb-search-system-databases t)
  (add-hook 'c-mode-common-hook
          (lambda ()
            (setq semanticdb-project-system-databases
                  (list (semanticdb-create-database
                           semanticdb-new-database-class
                           "/usr/include")))))

;; project root path
(setq semanticdb-project-roots
          (list
        (expand-file-name "/")))
;; ����semanticռ��CPU����
(setq-default semantic-idle-scheduler-idle-time 432000)

;;ecb
(add-to-list 'load-path "~/.emacs.d/site-lisp/ecb-2.32")
(load-file "~/.emacs.d/site-lisp/ecb-2.32/ecb.el")
(require 'ecb)
(setq ecb-auto-activate nil
          ecb-tip-of-the-day nil
          ecb-tree-indent 4
          ecb-windows-height 0.5
          ecb-windows-width 0.13
          ecb-auto-compatibility-check nil
          ecb-version-check nil
          inhibit-startup-message t)
;;����Emacs
;;����M-x ecb-byte-complie���룬���Լӿ������ٶ�
;;M-x ecb-show-help�����߰���
;;M-x customize-option RET ecb-source-path RET����Դ��Ŀ¼

;;�����Զ���ȫ
(defun my-indent-or-complete ()
   (interactive)
   (if (looking-at "\\>")
          (hippie-expand nil)
          (indent-for-tab-command)))
(autoload 'senator-try-expand-semantic "senator")

(setq hippie-expand-try-functions-list
          '(
                senator-try-expand-semantic
                try-expand-dabbrev
                try-expand-dabbrev-visible
                try-expand-dabbrev-all-buffers
                try-expand-dabbrev-from-kill
                try-expand-list
                try-expand-list-all-buffers
                try-expand-line
                try-expand-line-all-buffers
            try-complete-file-name-partially
            try-complete-file-name
            try-expand-whole-kill
        )
)
;=========================================END==============================================;


;; c-mode����
;; c-mode��������
(defun my-c-mode-common-hook ()
  (setq default-tab-width 4)
  (setq tab-width 4)
  (setq c-basic-offset 4)
  (hs-minor-mode t))
(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)

(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
;;�ܰ�һ�����������������Ҫ��ʱ����չ��
;;  M-x              hs-minor-mode
;;  C-c @ ESC C-s    show all
;;  C-c @ ESC C-h    hide all
;;  C-c @ C-s        show block
;;  C-c @ C-h        hide block
;;  C-c @ C-c toggle hide/show

;; C��������
(defun my-c-mode-hook ()
  (c-set-style "cc-mode"))
(add-hook 'c-mode-hook 'my-c-mode-hook)

;; C++����
(defun my-c++-mode-hook ()
  (c-set-style "stroustrup"))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;=========================================END==============================================;

(defun my-c-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist  '(
    (?` ?` _ "''")
    (?\( ?  _ " )")
    (?\[ ?  _ " ]")
    (?{ \n > _ \n ?} >)))
  (setq skeleton-pair t)
  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-hook 'my-c-mode-auto-pair)
(add-hook 'c++-mode-hook 'my-c-mode-auto-pair)
;;������ߵ����ţ��ͻ��Զ���ȫ�ұߵĲ���.����(), "", [] , {} , �ȵȡ�
;=========================================END==============================================;


;;bakup
(setq auto-save-default nil)    ;������ #filename# �ļ�
(setq make-backup-files t)    ;�趨�����������ļ�
(setq auto-save-mode nil)    ;�Զ�����ģʽ
;;(setq-default make-backup-files t)    ; ��������ʱ�ļ�
(setq   delete-old-versions   t)
(setq version-control 'never)    ; ���ð汾���ƣ������Ա��ݶ��
(setq kept-old-versions 2)    ; ������ԭʼ�İ汾���Σ�����һ�α༭ǰ���ĵ����͵ڶ��α༭ǰ���ĵ�
(setq kept-new-versions 1)    ; �������µİ汾1�Σ����ͬ��
(setq delete-old-versions t)    ;ɾ������������3�а汾�İ汾
(setq backup-directory-alist '((" " . "~/backups/emacs/")))    ; ���ñ����ļ���·��
(setq backup-by-copying t)    ;�������÷�����ֱ�ӿ���
   
;; Emacs �У��ı��ļ�ʱ��Ĭ�϶�����������ļ�(�� ~ ��β���ļ�)��������ȫȥ��
;; (������ȡ)��Ҳ�����ƶ����ݵķ�ʽ��������õ��ǣ������е��ļ����ݶ�����һ
;; ���̶��ĵط�("~/backups")������ÿ�������ļ���������ԭʼ�������汾�����µ�
;; 1���汾�����ұ��ݵ�ʱ�򣬱����ļ��Ǹ�����������ԭ����
;=========================================END==============================================;


;;HOT KEY
;;����F3��F4��F5��F6��F7��F8 for Xrefactory
(global-set-key [f1] 'shell)                              ; ����shell
(global-set-key [C-f9] 'gdb)                              ; ����
(setq compile-command "make -f Makefile")                 ; ����
(global-set-key [f9] 'do-compile)
(global-set-key [f10] 'speedbar)                          ; ����/�ر�speedbar

(global-set-key (kbd "M-\[") 'hs-hide-block)              ; ���ؿ�
(global-set-key (kbd "M-\]") 'hs-show-block)              ; ��ʾ��
(global-set-key [C-f12] 'comment-or-uncomment-region)     ; ע�� / ȡ��ע��
(global-set-key [f12] 'c-indent-line-or-region)           ; ��ʽ������

(global-set-key (kbd "C-`") 'ecb-goto-window-sources)     ; �л���ecb sources����
(global-set-key [C-tab] 'other-window)                    ; �л�����
(global-set-key [M-return] 'delete-other-windows)         ; �ر���������
(global-set-key "\C-xk" 'kill-this-buffer)                ; �رյ�ǰbuffer
(global-set-key (kbd "s-SPC") 'set-mark-command)          ; �ı�set mark��

;; ��ʾbuffer�б�
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; ��ת����ǰĿ¼��Dired
(global-set-key "\C-x\C-j" 'dired-jump)

;; ��ת���Ĵ���ָ����λ��
(global-set-key "\C-xj" 'jump-to-register)

;; ��ת��ȫ�ֶ���
(global-set-key "\C-xg" 'cscope-find-global-definition-no-prompting) 

(global-set-key (kbd "S-<SPC>") 'set-mark-command) ;��shift+space �� setmark ��, C-@ �ܲ��ð���

(global-set-key [C-=] 'my-indent-or-complete)     ;�Զ���ȫ������
(global-set-key [\C-f12] 'ecb-activate)         ;����ECB
(global-set-key [\C-S-f12] 'ecb-deactivate)     ;�˳�ECB
;; ��ȫ���� ��Ctrl+\ �Զ���ȫmenu
(global-set-key [M-/] 'hippie-expand)
;;(global-set-key [(control return)] 'senator-complete-symbol);
;;(global-set-key [(control return)] ' senator-completion-menu-popup)
(global-set-key "\C-\\" 'semantic-ia-complete-symbol-menu)
;;tabbar
(global-set-key (kbd "S-<up>") 'tabbar-backward-group)
(global-set-key (kbd "S-<down>") 'tabbar-forward-group)
(global-set-key (kbd "S-<left>") 'tabbar-backward)
(global-set-key (kbd "S-<right>") 'tabbar-forward)
(global-set-key ( kbd "C-.") 'redo) 
;=========================================END==============================================;


(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.32")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
;=========================================END==============================================;


;; Xrefactory configuration part ;;
;; some Xrefactory defaults can be set here
(defvar xref-current-project t) ;; can be also "my_project_name"
;;ע:�����nil��Ϊ��t
(defvar xref-key-binding 'global) ;; can be also 'local or 'none
(setq load-path (cons "/home/uiu/.emacs.d/site-lisp/xref/emacs" load-path))
(setq exec-path (cons "/home/uiu/.emacs.d/site-lisp/xref" exec-path))
(load "xrefactory")
;; end of Xrefactory configuration part ;;
(message "xrefactory loaded")
;=========================================END==============================================;