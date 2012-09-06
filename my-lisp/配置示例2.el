;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Filename:      .emacs
;;                
;; Copyright (C) 2010,  admirestator
;; Version:       20110906
;; Author:        admirestator <admirestator#gmail.com>
;; Created at:    Mon Jun 21 15:56:07 2010
;;                
;; Description:   �����ļ�������Ϊ".emacs"�������û���
;;                Ŀ¼���ɡ�
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;**********************    basic setting    *********************

;;Load_path
(add-to-list 'load-path' "~/.emacs.d/plugins")

;;todo_path
(setq todo-file-do "~/emacs/todo/do")
(setq todo-file-done "~/emacs/todo/done")
(setq todo-file-top "~/emacs/todo/top")

;;Personal information
(setq user-full-name "admirestator")
(setq user-mail-address "admirestator#gmail.com") 

;;======================    time setting        =====================
;;����ʱ����ʾ���ã���minibuffer������Ǹ����ϣ����˽�ʲô���ţ�
(display-time-mode 1)

;;ʱ��ʹ��24Сʱ��
(setq display-time-24hr-format t)

;;ʱ����ʾ�������ں;���ʱ��
(setq display-time-day-and-date t)

;;ʱ�����Ա������ʼ�����
(setq display-time-use-mail-icon t)

;;ʱ��ı仯Ƶ��
(setq display-time-interval 10)

;;��ʾʱ�䣬��ʽ����
(display-time-mode 1)
(setq display-time-24hr-format t)
(setq display-time-day-and-date t) 
;;----------------------    END    time setting    ---------------------


;;======================    color setting        =====================
;; ָ����ɫ����Ϊ��ɫ
(set-cursor-color "purple")
;; �����ɫ����Ϊ��ɫ
;;(set-mouse-color "white")
;; ���ñ�����ɫ��������ɫ
;;(set-foreground-color "white")
;;(set-background-color "darkblue")
;; ��������һЩ��ɫ���﷨������ʾ�ı��������⣬����ѡ��ı��������⣬����ѡ��ı�����ѡ��
;;(set-face-foreground 'highlight "white")
;;(set-face-background 'highlight "blue")
(set-face-foreground 'region "cyan")
(set-face-background 'region "blue")
(set-face-foreground 'secondary-selection "skyblue")
(set-face-background 'secondary-selection "darkblue")

;;����������һЩ��ɫ
(setq calendar-load-hook
'(lambda ()
(set-face-foreground 'diary-face "skyblue")
(set-face-background 'holiday-face "slate blue")
(set-face-foreground 'holiday-face "white")))

;;-------------------------Shell ʹ�� ansi color-------------
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
;;----------------------    END    color setting    ---------------------


;;����emacs�������ڴ�С
(setq default-frame-alist 
'((height . 32) (width , 50) (menu-bar-lines . 20) (tool-bar-lines . 0))) 

;;Font
;;(set-default-font "10x20")
;;(set-default-font "STHeiti-10")
(set-default-font "Droid Sans Mono-10")

;;(add-to-list 'default-frame-alist '(font . "STHeiti-10"))
(add-to-list 'default-frame-alist '(font . "Droid Sans Mono-10"))

;;��Ҫ������ʱ�ļ�
(setq-default make-backup-files nil)

;;�����������Ի���
;;(set-language-environment 'Chinese-GB)

;;д�ļ��ı��뷽ʽ
;;(set-buffer-file-coding-system 'gb2312)
(set-buffer-file-coding-system 'utf-8)

;;�½��ļ��ı��뷽ʽ
;;(setq default-buffer-file-coding-system 'gb2312)
(setq default-buffer-file-coding-system 'utf-8)

;;�ն˷�ʽ�ı��뷽ʽ
(set-terminal-coding-system 'utf-8)

;;��������ı��뷽ʽ
;;(set-keyboard-coding-system 'gb2312) 
(set-keyboard-coding-system 'utf-8) 
    
;;��ȡ��д���ļ����ı��뷽ʽ
(setq file-name-coding-system 'utf-8) 

;;�򿪾����� text ģʽ
(setq default-major-mode 'text-mode)

;;����������Ϣ
(setq inhibit-startup-message t) 

;; ȡ���Զ�����
 (auto-save-mode 0)

;;�﷨����
(global-font-lock-mode t) 

;;����Щȱʡ���õĹ��ܴ�
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'LaTeX-hide-environment 'disabled nil)


;;��ͼƬ��ʾ����
;;(auto-image-file-mode t) 

;;��ֹҳ�����ʱ������ scroll-margin 3 �����ڿ�����Ļ����
;;3��ʱ�Ϳ�ʼ���������ԺܺõĿ���������
(setq scroll-margin 3
       scroll-conservatively 10000)

;;�رշ��˵ĳ���ʱ����ʾ����
(setq visible-bell t)

;;�� y/n ��� yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;��ʾ���к�
(column-number-mode t) 

;;��ʾ�к�
(setq mouse-yank-at-point t)


;;��һ���ܴ�� kill ring. ������ֹ�Ҳ�С��ɾ����Ҫ�Ķ�����
(setq kill-ring-max 200)

;;��ʾ����ƥ��
(show-paren-mode t) 

;;���ع�����
;;(tool-bar-mode nil) 
    
;;ȥ���˵�������F10��Ϊ��ʾ�˵�������Ҫ�˵����˿�����F10����������F10��ȥ���˵�
(menu-bar-mode nil)

;; ���ع�������ʵ����emacs-nox��û�����ģʽ�ġ�
;;(scroll-bar-mode nil) 


;;��꿿�����ָ��ʱ�������ָ���Զ��ÿ�
(mouse-avoidance-mode 'animate) 
    
;;��Ҫ������������
(setq mouse-yank-at-point t) 
    
;;������ʾѡ�е�����
(transient-mark-mode t) 
    
;;֧��emacs���ⲿ����Ŀ���ճ��
(setq x-select-enable-clipboard t) 
    
;;�ڱ�������ʾ��ǰλ��
(setq frame-title-format "Fiona@%b")

;;���Եݹ��ʹ�� minibuffer
(setq enable-recursive-minibuffers t)

;;��ʾ80�оͻ���
;;(add-hook 'message-mode-hook (lambda ()
;;(setq default-fill-column 80) 
;;(turn-on-auto-fill)))


;;��ֹ�ն�����
(setq visiable-bell t) 
    
;;����tabΪ4���ո�Ŀ��
;;(setq default-tab-width 4)

;;����һ�±���ʱ�İ汾���ƣ��������Ӱ�ȫ��
(setq version-control t)
(setq kept-new-versions 3)
(setq delete-old-versions t)
(setq kept-old-versions 2)
(setq dired-kept-versions 1)

;;���ñ���ʱ�İ汾���ƣ��������Ӱ�ȫ��
(mapcar
  (function (lambda (setting)
                     (setq auto-mode-alist
                               (cons setting auto-mode-alist))))
   '(("\\.xml$".  sgml-mode)
     ("\\\.bash" . sh-mode)
     ("\\.rdf$".  sgml-mode)
     ("\\.session" . emacs-lisp-mode)
     ("\\.l$" . c-mode)
     ("\\.css$" . css-mode)
     ("\\.cfm$" . html-mode)
     ("gnus" . emacs-lisp-mode)
     ("\\.idl$" . idl-mode)))

;;�� dired ���Եݹ�Ŀ�����ɾ��Ŀ¼
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top)

;;ʱ�������(time-stamp)���趨�ĵ��ϴα������Ϣ
;;ֻҪ��������ĵ�����Time-stamp:�����ã��ͻ��Զ�����ʱ���
;;����time-stamp
(setq time-stamp-active t)

;;ȥ��time-stamp�ľ��棿
(setq time-stamp-warn-inactive t)

;;����time-stamp�ĸ�ʽ�������µĸ�ʽ���õ�һ�����ӣ�<hans 05/18/2004 12:01:12>
(setq time-stamp-format "%:u %02m/%02d/%04y %02H02M02S")

;;���޸�ʱ�����ӵ������ļ��Ķ����
(add-hook 'write-file-hooks 'time-stamp)

;;���ĵ�����Զ�����հ�һ�У�����ĳЩϵͳ�����ļ�����Ҫ������
(setq require-final-newline t)
(setq track-eol t)

;;�����ʾΪһ����
;;(setq-default cursor-type 'bar)

;;ʹ��C-kɾ��ָ�뵽����ĩ�����ж���
(setq-default kill-whole-line t)

;;�趨ɾ�������¼Ϊ200�����Է����Ժ����޻ָ�
(setq kill-ring-max 200)

;;����ʹ�ò��Һ����ͱ�����Ѱ�ҷ�Χ
(setq apropos-do-all t)

;;����aspell������ΪEmacs��ƴд����ѧ
(setq-default ispell-program-name "aspell")

;;ʹ��narrow����ʱ��һ������
(put 'narrow-to-region 'disabled nil)

;;����Emacs�Զ�����Ϊ��������(���¸�һ��)
;;(split-window-vertically)

;;�����ǽ���ǰ����Ϊ��ҳ��һ�У�ͬ�ն��µ�clear�����е�����
(defun line-to-top-of-window () 
"Move the line point is on to top of window." 
(interactive) 
(recenter 0)) 

;;�����۵�
(load-library "hideshow")
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
(add-hook 'cperl-mode-hook 'hs-minor-mode)
(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode) 


;;��ʱ�Ǻ�
;;��ʱ����Ҫ������һ���ļ�����һЩ������Ȼ��ܿ�����������㵱Ȼ���� ʹ�� bookmark���߼Ĵ�����
;;������Щʵ����̫���ˡ������ӵ��vi������ ma, mb, 'a, 'b �Ĳ���������������ü��� elisp �ﵽ���Ƶ�Ŀ��
(global-set-key [(control ?\.)] 'ska-point-to-register)
(global-set-key [(control ?\,)] 'ska-jump-to-register)
(defun ska-point-to-register()
  "Store cursorposition _fast_ in a register. 
Use ska-jump-to-register to jump back to the stored 
position."
  (interactive)
  (setq zmacs-region-stays t)
  (point-to-register 8))

(defun ska-jump-to-register()
  "Switches between current cursorposition and position
that was stored with ska-point-to-register."
  (interactive)
  (setq zmacs-region-stays t)
  (let ((tmp (point-marker)))
        (jump-to-register 8)
        (set-register 8 tmp)))

;; go-to-char �ǳ���л Oliver Scholz �ṩ��������� �ҡ�
;;���������һ�� vi �� "f" ��������Ʒ��vi���û�֪����vi�� һ���ر�õ����� "f"�����㰴 "fx", x ������һ���ַ�ʱ
;;��� �ͻ��ƶ�����һ�� "x" ������֮��ֻҪ�� ";"(�ֺ�)�����͵��� ��һ�� "x"��
;;�ٸ�����˵������������;����������������һ���֣������ ���ס�
;;(setq unread-command-events (list last-input-event)))
;;                                               ^^^^^
;;����ϣ��Ѹ�ٵĵ�������Ǹ� event ������������ vi �ﰴ "fe"�������굽�� "setq" ���Ǹ� e ���棬��ʱ���ҽ��Ű� ";", 
;;��һ����͵���������Ҫ�ĵط����ܷ���ɣ�������������ã����� �㷢������ķǳ��ã�

;;��һֱ���� Emacs û������һ�������������� Oliver ���� ��һ�������Ĵ𰸣�
;;������δ���֮�󣬵��㰴 C-c a x (x ������һ���ַ�) ʱ���� ��ͻᵽ��һ�� x �����ٴΰ� x�����͵���һ�� x������ C-c a w w w w ..., C-c a b b b b b b ...
;;�Ҿ��������ʽ�� vi �� "f" Ҫ�졣
(defun wy-go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `wy-go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (search-forward (string char) nil nil n)
  (while (char-equal (read-char)
             char)
    (search-forward (string char) nil nil n))
  (setq unread-command-events (list last-input-event)))
(define-key global-map (kbd "C-c a") 'wy-go-to-char)



;;======================        Chinese setting        =====================   
;;(setq gnus-default-charset 'cn-gb-2312
;;gnus-group-name-charset-group-alist '((".*" . gb2312))
;;gnus-summary-show-article-charset-alist '((1 . cn-gb-2312) (2 . big5) (3 . chinese-gbk) (4 . utf-8))
;;gnus-newsgroup-ignored-charsets '(unknown-8bit x-unknown iso-8859-1)
;;gnus-group-posting-charset-alist '((".*" gb2312 (gb2312))))
;;(define-coding-system-alias 'gb18030 'gb2312)

;;------------����(utf-8)ģʽ------------
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
(setq ansi-color-for-comint-mode t)

;;���� sentence-end ����ʶ�����ı�㡣������ fill ʱ�ھ�ź�� �������ո�
(setq sentence-end "\\([������]\\|����\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;;----------------------        End Chinese setting        ---------------------


;;������ʲô������ģʽ�¶���auto-fillģʽ
;;    (setq-default auto-fill-function 'do-auto-fill)



;;���ļ�ģʽ���ļ���׺����������append��ʾ׷��
(
setq auto-mode-alist
    ( append 
        '(("\\.py\\'" . python-mode)
        ("\\.s?html?\\'" . html-helper-mode)
        (" \\.asp\\'" . html-helper-mode)
        ("\\.phtml\\'" . html-helper-mode)
        ("\\.css\\'" . css-mode)
        ("\\.pc$" . c-mode)
     )
auto-mode-alist))

;;��������
;;(gnus-add-configuration '(article (vertical 1.0 (summary .35 point) (article1.0))))

;;Group Buffer����
;;�Զ�����Topic-mode
(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

;;Sumarry Buffer����
(setq gnus-summary-line-format ":%U%R %B %s %-60=|%4L |%-20,20f |%&user-date; \n")



;;Article Buffer����
;;�趨Ҫ��ʾ��ͷ��Ϣ��ʽ
(setq gnus-visible-headers
"^\\(^To:\\|^CC:\\|^From:\\|^Subject:\\|^Date:\\|^Followup-To:
\\|^X-Newsreader:\\|^User-Agent:\\|^X-Mailer:
\\|Line:\\|Lines:\\|Content-Type:\\|NNTP-Posting-Host\\)")

;; session.el
(require 'session)
    (add-hook 'after-init-hook 'session-initialize)




;;======================    �����������˳��         =====================;
;;�������ǿ������ģ�������ô�ٸİɡ�
;;(setq font-encoding-alist
;;(append '(("MuleTibetan-0" (tibetan . 0))
;;("GB2312" (chinese-gb2312 . 0))
;;("JISX0208" (japanese-jisx0208 . 0))
;;("JISX0212" (japanese-jisx0212 . 0))
;;("VISCII" (vietnamese-viscii-lower . 0))
;;("KSC5601" (korean-ksc5601 . 0))
;;("MuleArabic-0" (arabic-digit . 0))
;;("MuleArabic-1" (arabic-1-column . 0))
;;("MuleArabic-2" (arabic-2-column . 0))) font-encoding-alist))
;;----------------------    �����������˳��        ---------------------       

;;�����֣�Ĭ�ϵĹ���̫�죬�����Ϊ3��
(defun up-slightly () (interactive) (scroll-up 3))
(defun down-slightly () (interactive) (scroll-down 3))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)


;;Լ������
(setq appt-issue-message t)


;;**********************        ȫ�ְ����趨        *********************       
;;����[f1]Ϊgoto-line   
;;(global-set-key [f1] 'info)
;;(global-set-key [f1] 'goto-line)
(global-set-key [f2] 'eshell)
;;(global-set-key [f3] 'shell)
(global-set-key [f3] 'goto-line)

(global-set-key [f4] 'kill-this-buffer)
;;[f11] define to maximise present window
;;ϰ�����ã��򿪣��رղ˵�
(global-set-key [f12] 'menu-bar-mode)


;;�ƶ��������
(global-set-key [home] 'beginning-of-buffer)
(global-set-key [end]  'end-of-buffer)

;;�л�buffer������
(global-set-key [(control o)] 'other-window)
(global-set-key [(control tab)] 'tabbar-forward)



;;**********************        ���ñ������        *********************

;;�ȼ�����
(global-set-key [f5] 'compile)
(setq-default compile-command "make -k")
(global-set-key [f6] 'speedbar)
(global-set-key [f7] 'gdb)
(global-set-key [f8] 'previous-error)
(global-set-key [f9] 'next-error)
;;��������gdb    
(global-set-key [f10] 'gdb-many-windows)



;;(global-set-key [f9] 'delete-window);F9 �ر�d��ǰ����
;;(global-set-key [f8] 'other-window);F8���ڼ���ת
;;(global-set-key [(f2)] 'ansi-term);F2 �л���shellģʽ
;;(global-set-key [f3] 'split-window-vertically);F3�ָ��
;;(global-set-key [f12] 'my-fullscreen);F12 ȫ��
;;(global-set-key [(f4)] 'compile);����
;;(global-set-key [f5] 'gdb);����gdb
;;(global-set-key [(f6)] 'gdb-many-windows);��������gdb
;;(global-set-key [f1] 'goto-line);����M-gΪgoto-line
;;(global-set-key [f7] 'other-frame);������������
;;(global-set-key [(f3)] 'speedbar);��speedbar



;;###########     CC-mode����  http://cc-mode.sourceforge.net/     ################
;;add-to-list 'load-path "~/.emacsd/cc-mode-5.31.3")
;; Use cperl mode instead of the default perl mode
;;(defalias 'c++-mode 'c-version)
(add-to-list 'load-path "~/.emacs.d/plugins/cc-mode-5.31.3")


(require 'cc-mode)
(c-set-offset 'inline-open 0)
(c-set-offset 'friend '-)
(c-set-offset 'substatement-open 0)

(setq indent-tabs-mode nil)
(setq c-basic-offset 4 )
(setq default-tab-width 4)



;;Create MyCppStyle
(defconst MyCppStyle
'((c-tab-always-indent . t)
   ;; (c-comment-only-line-offset . 0)
        (c-hanging-braces-alist . ((substatement-open after)
                                              (brace-list-open)))
        (c-cleanup-list . (comment-close-slash
                                 compact-empty-funcall))
    (c-offsets-alist . ((substatement-open . 0)
                                                (innamespace . 0)                           ;;��namespace�в�����
                                                (case-label      . +)                          ;;case��ǩ����һ��c-basic-offset��λ
                                                (access-label . -)                             ;;private/public�ȱ�ǩ������һ��λ
                                             ;;   (inline-open . 0)                             ;;��.h�ļ���д���������Ų�����
                                                (block-open     . 0)))                       ;;��һ���¿鿪ʼʱ������
;;    (c-echo-syntactic-information-p t)
        (setq comment-start "/*"
                  comment-end "*/")
    (setq indent-tabs-mode nil))
    "My Cpp Coding Style")
(c-add-style "MyCppStyle" MyCppStyle)                   ;;�������Լ���style��������ӵ�cc-mode��style�С�


;;Define own hook
(defun MyCppHook ()
(setq indent-tabs-mode nil)
(setq global-hl-line-mode t)
(c-set-style "MyCppStyle"))                                   ;;�������hook��Ӧ��MyCppStyle
(add-hook 'c++-mode-hook 'MyCppHook)                ;;����hookӦ�������е�c++ģʽ��


 ;; ��󣬿������ö��ڲ�ͬ���ļ��󶨲�ͬ��ģʽ���������������ʵ�֣�
;;set *.h and *.c and *.cpp files use c++ mode
(setq auto-mode-alist
      (cons '("\\.h$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.c$" . c++-mode) auto-mode-alist))
(setq auto-mode-alist
      (cons '("\\.cpp$" . c++-mode) auto-mode-alist))


;;������ߵ����ţ��ͻ��Զ���ȫ�ұߵĲ���.����(), '', [] , {} ,""
 (defun my-c-mode-auto-pair ()
      (interactive)
        (make-local-variable 'skeleton-pair-alist)
          (setq skeleton-pair-alist '(
                      (?` ?` _ "''")
                      (?\( _ ")")
                      (?\[ _ "]")
;;                      (?{ \n > _ \n ?} >)
                      (?\" _ "\"")))
    (setq skeleton-pair t)
          (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
;;          (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "'") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "[") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "\"") 'skeleton-pair-insert-maybe))
   (add-hook 'c-mode-hook 'my-c-mode-auto-pair)
   (add-hook 'c++-mode-hook 'my-c-mode-auto-pair)
;;    (add-hook 'cperl-mode-hook 'my-c-mode-auto-pair)
;;    (add-hook 'perl-mode-hook 'my-c-mode-auto-pair)    


;;Ĭ��Linux�ں˱�̷��ȡ��Linux�ں�˵���ĵ�                       

(setq auto-mode-alist (cons '("/usr/src/linux.*/.*\\.[ch]$" . linux-c-mode)
                            auto-mode-alist))                                                 
(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."  
  (interactive)                                                           
  (c-mode)                                                               
   (c-set-style "K&R")                                                    
   (setq tab-width 4) ;;Ĭ�Ϸ����8������                                 
   (setq indent-tabs-mode t)                                            
   (setq c-basic-offset 4))  ;;Ĭ�Ϸ����8������            


;;c-mode��cc-mode������ֻ��4��
(add-hook 'c-mode-hook
          '(lambda ()
             (c-set-style "Stroustrup")))


;;_____________C______________
;;CԤ��������                                                               
(setq c-macro-shrink-window-flag t)
(setq c-macro-preprocessor "c")
(setq c-macro-cppflags " ")
(setq c-macro-prompt-flag t)
(setq abbrev-mode t)
;;(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)




;;___________CPP______________
;;CPPԤ��������
(setq c-macro-shrink-window-flag t)
(setq c-macro-preprocessor "cpp")
(setq c-macro-cppflags " ")
(setq c-macro-prompt-flag t)
(setq abbrev-mode t)
;;(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)


;;����������Զ�����
;;(c-toggle-auto-hungry-state 1)                                            
;;(c-set-style "stroustrup")
;;(add-hook 'c-mode-common-hook 'program-mode)
;;(add-hook 'c++-mode-common-hook 'program-mode)





;;�ӡ�perl�������ʵ������ժ¼��������Ϣ
;;======================            CPerl-Mode          =====================
;; Use cperl mode instead of the default perl mode
(defalias 'perl-mode 'cperl-mode)
;;(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))
;;(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
;;(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
;;(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))

;; turn autoindenting on
(global-set-key "\t" 'newline-and-indent)

;; Use 4 space indents via cperl mode
(custom-set-variables
 '(cperl-close-paren-offset -4)
 ;;'(cperl-continued-statement-offset 4)
 '(cperl-indent-level 4)
 '(cperl-indent-parens-as-block t)
 '(cperl-tab-always-indent t));


;;Since I do not like the default indentations, I have the followings:
;;(add-hook 'cperl-mode-hook 'n-cperl-mode-hook t)
;;(defun n-cperl-mode-hook ()
 ;; (setq cperl-indent-level 4)
;;  (setq cperl-continued-statement-offset 0)
;;  (setq cperl-extra-newline-before-brace t)
  ;;(set-face-background 'cperl-array-face "wheat")
  ;;(set-face-background 'cperl-hash-face "wheat")



;; Set line width to 78 columns..
;;(setq fill-column 78)
(setq fill-column 80)
(setq auto-fill-mode t)

;; use % to match various kinds of brackets...
;; See: http://www.lifl.fr/~hodique/uploads/Perso/patches.el
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (let ((prev-char (char-to-string (preceding-char)))
        (next-char (char-to-string (following-char))))
    (cond ((string-match "[[{(<]" next-char) (forward-sexp 1))
          ((string-match "[\]})>]" prev-char) (backward-sexp 1))
          (t (self-insert-command (or arg 1))))))

;; Load an application template in a new unattached buffer...
(defun application-template-pl ()
  "Inserts the standard Perl application template"; For help and info.
  (interative "*")                                ; Make this user accessible.
(switch-to-buffer "application-template-pl")
(insert-file "~/.code_templates/perl_application.pl"))
;; Set to a specific key combination...
(global-set-key "\C-ca" 'application-template-pl)

;; Load a module template in a new unattached buffer...
(defun modelu-template-pm ()
"Insert the standard Perl modelu template"    ; For help and info.
(interactive "*")    ; Make this user accessible.
(switch-to-buffer "module-template-pm")
(insert-file "~/.code_templates/perl_module.pm"))
;; Set to a specific key combination...

;; Expand the following abbreviations while typing in text files...
(abbrev-mode 1) 

(define-abbrev-table 'global-abbrev-table '(
 ("pdbg"    "use Data:: Dumper qw( Dumper );\nwarn Dumper[];"    nil l)
 ("phbp"    "#! /usr/bin/perl -w"                                nil 1)
 ("pbmk"    "use Benchmark qw( cmpthese );\ncmpthese -10, {};"  nil 1)
 ("pusc"    "use Smart::Comments;\n\n### "                        nil 1)
 ("putm"    "use Test::More 'no_plan';"                            nil 1)
))


;;������ߵ����ţ��ͻ��Զ���ȫ�ұߵĲ���.����(), '', [] , {} ,""ͬcc-mode���ò���
 (require 'cperl-mode)
  (defun auto-pair ()
      (interactive)
        (make-local-variable 'skeleton-pair-alist)
          (setq skeleton-pair-alist '(
                      (?` ?` _ "''")
                      (?\( _ ")")
                      (?\[ _ "]")
;;                      (?{ \n > _ \n ?} >)
                      (?\" _ "\"")))
    (setq skeleton-pair t)
          (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
;;          (local-set-key (kbd "{") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "'") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "[") 'skeleton-pair-insert-maybe)
          (local-set-key (kbd "\"") 'skeleton-pair-insert-maybe))
   (add-hook 'cperl-mode-hook 'auto-pair)
   (add-hook 'perl-mode-hook 'auto-pair)
;;----------------------            End CPerl-Mode       --------------------- 



;;======================            �Զ���ȫ����       =====================
;;�Զ���ȫ���ܣ����´��������վֱ��Copy�����ģ�����һЩ���Դ˵�˵��
;;�������� hippie-expand �Ĳ�ȫ��ʽ������һ�������б� hippie-expand ������ʹ�ñ���ǰ��
;;�ĺ�������ȫ����˵������ʹ�õ�ǰ��buffer��ȫ������Ҳ������͵���Ŀɼ��Ĵ�����Ѱ�ң���
;;���Ҳ�������ô�����д򿪵�bufferȥ�ң������������ô��kill-ring����ļ�����������б�
;;���list����ǰʹ�õ�ƥ�䷽ʽ���� echo ������ʾ��
;;�ر�����˼���� try-expand-line�������԰��㲹ȫ����һ�����֡��Һܶ�ʱ�����������ִ�����
;;ͬ��ֻ�м����ֲ�һ��������������ȥ����ճ�����¡���ô�Ҿ������������ֵ�ǰ�漸���֡�Ȼ��
;;�ఴ���� M-/ ���ܵõ���һ�С�

;;hippie���Զ�������ԣ����ȵ�����senator�ķ��������
(autoload 'senator-try-expand-semantic "senator")

(global-set-key [(meta ?/)] 'hippie-expand)
(setq hippie-expand-try-functions-list
'(
    senator-try-expand-semantic    
    try-expand-line
    try-expand-line-all-buffers
    try-expand-list
    try-expand-list-all-buffers
    try-expand-dabbrev
    try-expand-dabbrev-visible
    try-expand-dabbrev-all-buffers
    try-expand-dabbrev-from-kill
    try-complete-file-name
    try-complete-file-name-partially
    try-complete-lisp-symbol
    try-complete-lisp-symbol-partially
    try-expand-whole-kill))



;;�Զ����Զ���������ⲿ���ǳ�hhuu�ģ�����ڵ����м�Ͳ��룬�������tab��
(defun my-indent-or-complete ()
  (interactive)
  (if (looking-at "\\>")
      (hippie-expand nil)
    (indent-for-tab-command))
  )

(global-set-key [(control tab)] 'my-indent-or-complete)
                

;;----------------------            End �Զ���ȫ        --------------------- 


;;======================            ���������Զ���ʽ��          =====================
;;Emacs ��Դ���ĸ�ʽ��֧�ֵķǳ��ã����������ڱ༭��ʱ���Զ������ʽ����������ѡ��һ����룬
;;�� Ctrl-Alt-\ �����������½��и�ʽ��.���Ҫճ��һ�����Ļ���ճ�����˽����Ű� Ctrl-Alt-\,
;;�Ϳ��԰��¼���Ĵ����ʽ���á����ǣ���������ճ���������¸�ʽ���Ļ�е������Emacs Ӧ�ÿ��Խ�
;;���Զ����������������������������Ĵ���ӵ������ļ����� Emacs �ͻ�ӵ������������
(dolist (command '(yank yank-pop))
  (eval
   `(defadvice ,command (after indent-region activate)
      (and (not current-prefix-arg)
           (member major-mode
                   '(
                     c-mode
                     c++-mode
                     clojure-mode
                     emacs-lisp-mode
                     haskell-mode
                     js-mode
                     latex-mode
                        lisp-mode
                     objc-mode
                     perl-mode
                     cperl-mode
                     plain-tex-mode
                     python-mode
                     rspec-mode
                        ruby-mode
                     scheme-mode))
           (let ((mark-even-if-inactive transient-mark-mode))
             (indent-region (region-beginning) (region-end) nil))))))

;;----------------------            End ���������Զ���ʽ��        --------------------- 



;;**********************            ���ñ�̲��                 *********************


;;======================            google-c-style        =====================
(load-file "~/.emacs.d/plugins/google-c-style.el")
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;;----------------------        END    google-c-style        ---------------------




;;======================            auto-header            =====================
(add-to-list 'load-path "~/.emacs.d/plugins/")
(require 'auto-header)

;;����auto-header.el�ļ�,�Զ�����ļ�ͷ
(require 'auto-header)

;; �����ļ�ͷ�е�����
(setq header-full-name "����")

;; ��������
(setq header-email-address "admirestator#gmail.com")

;; ����ÿ�α���ʱҪ���µ���Ŀ
(setq header-update-on-save
    '(  filename
        modified
        counter
        copyright))
;; �����ļ�ͷ����ʾ��ʽ
(setq header-field-list
'(  filename  ;�ļ���
;;    blank     ;���У���ͬ
    ;;copyright ;;��Ȩ
    version
    author    ;����
    created   ;������
;;blank
    description   ;����
    ;;blank
    ;;modified_by ;������
   ;; blank
    ;;status  ;״̬���Ƿ񷢲�
    ;;����
    ;;blank
  ))
;;----------------------        END    auto-header            ---------------------




;;======================            Load cedet            =====================
;; See cedet/common/cedet.info for configuration details.
(load-file "~/.emacs.d/plugins/cedet-1.0pre7/common/cedet.el")


;; Enable EDE (Project Management) features
(global-ede-mode 1)

;; Enable EDE for a pre-existing C++ project
;; (ede-cpp-root-project "NAME" :file "~/myproject/Makefile")


;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:

;; * This enables the database and idle reparse engines
(semantic-load-enable-minimum-features)

;; * This enables some tools useful for coding, such as summary mode
;;   imenu support, and the semantic navigator
;;(semantic-load-enable-code-helpers)

;; * This enables even more coding tools such as intellisense mode
;;   decoration mode, and stickyfunc mode (plus regular code helpers)
;; (semantic-load-enable-gaudy-code-helpers)

;; * This enables the use of Exuberent ctags if you have it installed.
;;   If you use C++ templates or boost, you should NOT enable it.
;; (semantic-load-enable-all-exuberent-ctags-support)
;;   Or, use one of these two types of support.
;;   Add support for new languges only via ctags.
;; (semantic-load-enable-primary-exuberent-ctags-support)
;;   Add support for using ctags as a backup parser.
;; (semantic-load-enable-secondary-exuberent-ctags-support)

;; Enable SRecode (Template management) minor-mode.
;; (global-srecode-minor-mode 1)
;;----------------------            END cedet                ---------------------



;;======================            Load ecb                =====================
(add-to-list 'load-path "~/.emacs.d/plugins/ecb-2.40")
(require 'ecb)
(require 'ecb-autoloads)
;;��emacs��Ȼ��M-x ecb-activate���ɴ�ecb��
;;----------------------            END    ecb                ---------------------




;;======================            Load cscope                =====================
(add-to-list 'load-path "~/emacs.d/plugins/cscope-15.7a/contrib/xcscope/")
(require 'xcscope)
;;�������ʮ���Ӵ󣬼�ʹ���ж��ļ��������Ҳ�ܷ�ʱ�����Ը��� Emacs ���� ������ cscope.out��
;;(setq cscope-do-not-update-database t)
;;��M-x !��Ȼ��cscope -b��֮��Ϳ�����Դ�����н�����ת�ˡ������cscope�˵�
;;������ƪ����ô��emacs�°�װ��ʹ��cscope�ģ�
;;http://ann77.stu.cdut.edu.cn/EmacsCscope.html
;;----------------------              END    cscop                ---------------------





;;======================            Load color-theme            =====================
;;��ɫ����
(load-file "~/.emacs.d/plugins/color-theme.el")
 (require 'color-theme)
     ;;(color-theme-initialize)
     ;;(color-theme-comidia)
     ;;(color-theme-midnight)
     ;;(color-theme-renegade)
     ;;-->(color-theme-taming-mr-arneson)
    ;;     (color-theme-dark-laptop)      
     ;;(color-theme-calm-forest)
;;----------------------            END    color-theme            ---------------------



;;======================            `Load gdb-many-window            =====================
;;gdb-many-window
;;������ܲ������ʹemacs�ĵ��Խ�����VCһ������watch, stacktrace�ȴ��ڣ�����ʵ��ͼ�λ�gdb.
;;��emacs�б���ó���Ȼ��M-x gdb����������ret���ര��gdb�ͳ�����
;;http://www.inet.net.nz/~nickrob/multi-gud.el
;;http://www.inet.net.nz/~nickrob/multi-gdb-ui.el

(add-to-list 'load-path"~/.emacs.d/plugins")
(setq gdb-many-windows t)
(load-library "multi-gud.el")
(load-library "multi-gdb-ui.el")
;;----------------------                END    gdb-many-window            ---------------------





;;======================            Load linum                 =====================
;;����linum.el(line number)����ʾ�кţ�
;;(add-to-list 'load-path"~/.emacs.d/plugins")
(require 'linum)
(global-linum-mode 1)
;;----------------------            END    linum                ---------------------



;;======================            Load Doxymacs                  =====================
;;(require 'doxymacs) 

;;(add-hook 'c-mode-common-hook 'doxymacs-mode)

;;(defun my-doxymacs-font-lock-hook ()
;;(if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
;;  (doxymacs-font-lock)))
;;  (add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)

;;  This will add the Doxygen keywords to c-mode and c++-mode only.
;;- Default key bindings are:
;;  - C-c d ? will look up documentation for the symbol under the point.
;;  - C-c d r will rescan your Doxygen tags file.
;;  - C-c d f will insert a Doxygen comment for the next function.
;;  - C-c d i will insert a Doxygen comment for the current file.
;;  - C-c d ; will insert a Doxygen comment for the current member.
;;  - C-c d m will insert a blank multi-line Doxygen comment.
;;  - C-c d s will insert a blank single-line Doxygen comment.
;; - C-c d @ will insert grouping comments around the current region.


;;----------------------            END    Doxymacs                ---------------------


;;======================            Load yasnippet                =====================
;;�Զ���ȫ������
(add-to-list 'load-path"~/.emacs.d/plugins")
(require 'yasnippet-bundle) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/")

 (require 'dropdown-list)
       (setq yas/prompt-functions '(yas/dropdown-prompt
              yas/ido-prompt
              yas/completing-prompt))
;;----------------------            END    yasnippet            ---------------------

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;FROM THE OpenSUSE11.3;;;;;;;;;;;;;;;;;;;;;;;;;
;;; File name: ` ~/.emacs '    
;;; ---------------------
;;;
;;; If you need your own personal ~/.emacs
;;; please make a copy of this file
;;; an placein your changes and/or extension.
;;;
;;; Copyright (c) 1997-2002 SuSE Gmbh Nuernberg, Germany.
;;;
;;; Author: Werner Fink, <feedback@suse.de> 1997,98,99,2002
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; Test of Emacs derivates
;;; -----------------------
(if (string-match "XEmacs\\|Lucid" emacs-version)
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;; XEmacs
  ;;; ------
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (progn
     (if (file-readable-p "~/.xemacs/init.el")
        (load "~/.xemacs/init.el" nil t))
  )
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;;; GNU-Emacs
  ;;; ---------
  ;;; load ~/.gnu-emacs or, if not exists /etc/skel/.gnu-emacs
  ;;; For a description and the settings see /etc/skel/.gnu-emacs
  ;;;   ... for your private ~/.gnu-emacs your are on your one.
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  (if (file-readable-p "~/.gnu-emacs")
      (load "~/.gnu-emacs" nil t)
    (if (file-readable-p "/etc/skel/.gnu-emacs")
    (load "/etc/skel/.gnu-emacs" nil t)))

  ;; Custom Settings
  ;; ===============
  ;; To avoid any trouble with the customization system of GNU emacs
  ;; we set the default file ~/.gnu-emacs-custom
  (setq custom-file "~/.gnu-emacs-custom")
  (load "~/.gnu-emacs-custom" t t)
;;;
)
;;;

