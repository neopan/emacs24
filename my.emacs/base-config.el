;;关闭工具栏
(tool-bar-mode 0) 

;;光标靠近鼠标鼠标自动走开
(mouse-avoidance-mode 'jump)

;; 自动加载被外部程序修改的文件
(global-auto-revert-mode t)

;; 使用空格缩进
;; indent-tabs-mode  t 使用 TAB 作格式化字符  0 使用空格作格式化字符
(setq indent-tabs-mode 0)
(setq tab-always-indent t)
(setq default-tab-width 4)
(setq tab-width 4)

;;关闭鼠标选择自动复制 
(setq mouse-drag-copy-region nil) 

;; 包含 Emacs 框架侧边缘（放置滚动条的位置）的值：right 或 left。如果设置为 0，则关闭滚动条。其缺省值是 left
(scroll-bar-mode 0)
 
;; 关闭emacs启动时的画面 
(setq inhibit-startup-message t)

;;将备份文件全部放到~/.backups目录下
(setq backup-directory-alist (quote (("." . "~/.backups"))))

;;将自动备份文件放到指定目录
(setq auto-save-file-name-transforms
          `((".*" ,"~/.emacs.d/auto-save-list/" t)))

;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号。
(show-paren-mode t)

;;滚动边缘时 光标不跳转到屏幕中间
(setq scroll-margin 3 scroll-conservatively 10000)

;;设置大小
;;(setq default-frame-alist
;;      '((height . 35) (width . 120) (menu-bar-lines . 10) (tool-bar-lines . 0)))
;;(setq default-frame-alist
;;      (append '((top + -2)(left + -2)(width . 167) (height . 42))
;;	      default-frame-alist))

;;关闭烦人的出错时的提示声
(setq visible-bell t)

;;进行语法加亮
(setq global-font-lock-mode t)

;; 显示行号
(setq column-number-mode t)
(setq line-number-mode t)

;; 取消自动保存
(auto-save-mode 0)
