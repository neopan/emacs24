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
(setq ansi-color-for-comint-mode t) ;;处理shell-mode乱码,好像没作用
;=========================================END==============================================;

;;MY CUSTOMIZE
(auto-image-file-mode t);打开图片显示功能
(display-time-mode 1);显示时间，格式如下
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(transient-mark-mode t);允许临时设置标记
(setq frame-title-format '("" buffer-file-name "@emacs" ));在标题栏显示buffer名称
(setq default-fill-column 80);默认显示 80列就换行 
(set-scroll-bar-mode nil)  ; 取消滚动栏
;;(tool-bar-mode nil)        ; 取消工具栏
(setq default-directory "~/")     ; 设置打开文件的缺省路径
(ido-mode t)             ; 打开ido，使打开文件时后面有提示，在emacs23带有ido
(setq visible-bell t)          ; 关闭烦人的出错时的提示声
(setq inhibit-startup-message t) ; 关闭emacs启动时的画面
(setq gnus-inhibit-startup-message t) ; 关闭gnus启动时的画面
(fset 'yes-or-no-p 'y-or-n-p)    ; 按 y 或空格键表示 yes，n 表示 no
(setq mouse-yank-at-point t)    ; 不在鼠标点击的那个地方插入剪贴板内容
(setq kill-ring-max 200)    ; 设置粘贴缓冲条目数量
(setq auto-save-mode nil)    ; 自动保存模式
(setq x-select-enable-clipboard t) ; 允许emacs和外部其他程序的粘贴
(setq user-full-name "XXXXXX")
(setq user-mail-address "XXXXXX@gmail.com")    ; 设置有用的个人信息,这在很多地方有用。
(setq global-font-lock-mode t)    ; 进行语法加亮。
(setq-default kill-whole-line t) ; 在行首 C-k 时，同时删除该行
(setq show-paren-mode t) ;打开括号匹配显示模式
(setq show-paren-style 'parenthesis) ;括号匹配时可以高亮显示另外一边的括号，但光标不会烦人的跳到另一个括号处。
(setq mouse-avoidance-mode 'animate) ;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
(setq auto-image-file-mode t) ;让 Emacs 可以直接打开和显示图片
(setq default-major-mode 'text-mode)
; (add-hook 'text-mode-hook 'turn-on-auto-fill) ; 设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode
(setq-default auto-fill-function 'do-auto-fill) ; Autofill in all modes;;

;(setq-default indent-tabs-mode nil)
;(setq default-tab-width 8)
;(setq tab-stop-list ())
;;不用 TAB 字符来indent, 这会引起很多奇怪的错误。编辑 Makefile 的时候也不用担心，因为 makefile-mode 会把 TAB 键设置成真正的 TAB 字符，并且加亮显示的。注：还没搞清楚
(setq column-number-mode t)
(setq line-number-mode t) ; 显示行号
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(display-time) ; 显示时间
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)     ; 设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插入两个空格。
(setq enable-recursive-minibuffers t)     ; 可以递归的使用 minibuffer
(setq scroll-margin 3  scroll-conservatively 10000) 
;;防止页面滚动时跳动， scroll-margin 3 可以在靠近屏幕边沿3行时就开始滚动，可以很好的看到上下文。
(setq track-eol t)    ; 当光标在行尾上下移动的时候，始终保持在行尾。
(setq Man-notify-method 'pushy) ; 当浏览 man page 时，直接跳转到 man buffer。
(setq next-line-add-newlines nil)    ; Emacs 21 中已经是缺省设置。按 C-n 或向下键时不添加新行。
(setq speedbar-show-unknown-files t);;可以显示所有目录以及文件
(setq dframe-update-speed nil);;不自动刷新，手动 g 刷新
(setq speedbar-update-flag nil)
(setq speedbar-use-images nil);;不使用 image 的方式
(setq speedbar-verbosity-level 0)
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %3a %02H:%02M:%02S chunyu") ; 设置时间戳，标识出最后一次保存文件的时间。
(setq dired-recursive-copies 'top)
(setq dired-recursive-deletes 'top) ;让 dired 可以递归的拷贝和删除目录。
;=========================================END==============================================;


;;xcscope
(require 'xcscope)
;; C-c s a             设定初始化的目录，一般是你代码的根目录
;; C-s s I             对目录中的相关文件建立列表并进行索引
;; C-c s s             序找符号
;; C-c s g             寻找全局的定义
;; C-c s c             看看指定函数被哪些函数所调用
;; C-c s C             看看指定函数调用了哪些函数
;; C-c s e             寻找正则表达式
;; C-c s f             寻找文件
;; C-c s i             看看指定的文件被哪些文件include
;=========================================END==============================================;

;;文件头header设置
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
;(add-hook 'c-mode-common-hook '(lambda()  (require 'setnu+)  ) ) ;;设置C/C++mode显示行号
;(add-hook 'c++-mode-common-hook '(lambda()  (require 'setnu+)  ) )

;; 加载显示行号模块
(require 'display-line-number)
;;(add-hook 'c-mode-common-hook '(lambda()  (require 'display-line-number)  ) )
;; 如果想所有打开的文件都显示行的话就打开下面的注释
;;(global-display-line-number-mode 1)
;; 设置显示格式
(setq display-line-number-format "%3d ")
;; 在 tool bar 上增加一个图标，
;; 注意: 一定要在 load-path 中 可以找到 display-line-nuber.xpm 文件才行。
;;
;;(tool-bar-add-item "display-line-number"
;;                   'display-line-number-mode
;;                   'display-line-number-mode
;;                  :help "display line number!"
;;                   :button (cons :toggle  '(and (boundp
;;                                                 display-line-number-mode)
;;                                                display-line-number-mode)))
;;
;; 使用方法
;; M-x display-line-number-mode
;; 用来 toggle 显示行号的模式
;; M-x display-line-number-mode-on
;; 启动显示行号的模式
;; M-x display-line-number-mode-off
;; 关闭显示行号的模式
;; 仅对某种 mode 启动显示行号的模式
;; (add-hook 'c-mode-hook 'display-line-number-mode)
(add-hook 'c-mode-hook 'display-line-number-mode)
(add-hook 'c++-mode-hook 'display-line-number-mode)
;=========================================END==============================================;

;;tabbar
(require 'tabbar)
(tabbar-mode)
;=========================================END==============================================;

;加入会话功能
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(load "desktop")
(desktop-save-mode) 
;=========================================END==============================================;

;; 启用redo
(require 'redo)
;=========================================END==============================================;

;;cedet ecb安装
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

;; 指定semantic临时文件的路径，避免到处都是临时文件
(setq semanticdb-default-save-directory "~/backups/emacs/semantic")

;;;;C/C++语言启动时自动加载semantic对/usr/include的索引数据库
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
;; 避免semantic占用CPU过多
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
;;重启Emacs
;;运行M-x ecb-byte-complie编译，可以加快运行速度
;;M-x ecb-show-help看在线帮助
;;M-x customize-option RET ecb-source-path RET设置源码目录

;;设置自动补全
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


;; c-mode设置
;; c-mode公共设置
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
;;能把一个代码块缩起来，需要的时候再展开
;;  M-x              hs-minor-mode
;;  C-c @ ESC C-s    show all
;;  C-c @ ESC C-h    hide all
;;  C-c @ C-s        show block
;;  C-c @ C-h        hide block
;;  C-c @ C-c toggle hide/show

;; C语言设置
(defun my-c-mode-hook ()
  (c-set-style "cc-mode"))
(add-hook 'c-mode-hook 'my-c-mode-hook)

;; C++设置
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
;;输入左边的括号，就会自动补全右边的部分.包括(), "", [] , {} , 等等。
;=========================================END==============================================;


;;bakup
(setq auto-save-default nil)    ;不生成 #filename# 文件
(setq make-backup-files t)    ;设定不产生备份文件
(setq auto-save-mode nil)    ;自动保存模式
;;(setq-default make-backup-files t)    ; 不生成临时文件
(setq   delete-old-versions   t)
(setq version-control 'never)    ; 启用版本控制，即可以备份多次
(setq kept-old-versions 2)    ; 备份最原始的版本两次，及第一次编辑前的文档，和第二次编辑前的文档
(setq kept-new-versions 1)    ; 备份最新的版本1次，理解同上
(setq delete-old-versions t)    ;删掉不属于以上3中版本的版本
(setq backup-directory-alist '((" " . "~/backups/emacs/")))    ; 设置备份文件的路径
(setq backup-by-copying t)    ;备份设置方法，直接拷贝
   
;; Emacs 中，改变文件时，默认都会产生备份文件(以 ~ 结尾的文件)。可以完全去掉
;; (并不可取)，也可以制定备份的方式。这里采用的是，把所有的文件备份都放在一
;; 个固定的地方("~/backups")。对于每个备份文件，保留最原始的两个版本和最新的
;; 1个版本。并且备份的时候，备份文件是复本，而不是原件。
;=========================================END==============================================;


;;HOT KEY
;;保留F3、F4、F5、F6、F7、F8 for Xrefactory
(global-set-key [f1] 'shell)                              ; 进入shell
(global-set-key [C-f9] 'gdb)                              ; 调试
(setq compile-command "make -f Makefile")                 ; 编译
(global-set-key [f9] 'do-compile)
(global-set-key [f10] 'speedbar)                          ; 启动/关闭speedbar

(global-set-key (kbd "M-\[") 'hs-hide-block)              ; 隐藏块
(global-set-key (kbd "M-\]") 'hs-show-block)              ; 显示块
(global-set-key [C-f12] 'comment-or-uncomment-region)     ; 注释 / 取消注释
(global-set-key [f12] 'c-indent-line-or-region)           ; 格式化代码

(global-set-key (kbd "C-`") 'ecb-goto-window-sources)     ; 切换到ecb sources窗口
(global-set-key [C-tab] 'other-window)                    ; 切换窗口
(global-set-key [M-return] 'delete-other-windows)         ; 关闭其他窗口
(global-set-key "\C-xk" 'kill-this-buffer)                ; 关闭当前buffer
(global-set-key (kbd "s-SPC") 'set-mark-command)          ; 改变set mark键

;; 显示buffer列表
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; 跳转到当前目录的Dired
(global-set-key "\C-x\C-j" 'dired-jump)

;; 跳转到寄存器指定的位置
(global-set-key "\C-xj" 'jump-to-register)

;; 跳转到全局定义
(global-set-key "\C-xg" 'cscope-find-global-definition-no-prompting) 

(global-set-key (kbd "S-<SPC>") 'set-mark-command) ;用shift+space 来 setmark 了, C-@ 很不好按。

(global-set-key [C-=] 'my-indent-or-complete)     ;自动补全或缩进
(global-set-key [\C-f12] 'ecb-activate)         ;启用ECB
(global-set-key [\C-S-f12] 'ecb-deactivate)     ;退出ECB
;; 补全命令 右Ctrl+\ 自动补全menu
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
;;注:这里的nil改为了t
(defvar xref-key-binding 'global) ;; can be also 'local or 'none
(setq load-path (cons "/home/uiu/.emacs.d/site-lisp/xref/emacs" load-path))
(setq exec-path (cons "/home/uiu/.emacs.d/site-lisp/xref" exec-path))
(load "xrefactory")
;; end of Xrefactory configuration part ;;
(message "xrefactory loaded")
;=========================================END==============================================;