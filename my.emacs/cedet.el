;;;;****************************************
;;cedet配置
(setq byte-compile-warnings nil)
(add-to-list 'load-path "~/site-lisp/cedet-1.1/common")
(require 'cedet)
 
;; Enable EDE (Project Management) features
(global-ede-mode 1)
 
;; Enable SRecode (Template management) minor-mode.
;;(global-srecode-minor-mode 1)

;;********************************************************************************
;;semantic配置
;;五种函数
;;(semantic-load-enable-minimum-features)
;;    这个函数开启了最基本的三个特性：
;;    semantic-idle-scheduler-mode
;;    enable这个mode让cedet在emacs空闲的时候自动分析buffer内容，比如正在编辑的buffer内容改变后。
;;    这个mode一般应该是需要enable的，如果没有enable这个mode，那只有手工触发才会让cedet重新分析。
;;    semanticdb-minor-mode
;;    semanticdb是semantic用来保存分析后的内容的，所以也是应该enable的。
;;    semanticdb-load-ebrowse-caches
;;    这个feature我不是很确定，大概的意思好像是semantic可以利用ebrowse的结果。
;;    这个feature大概就是把ebrowse生成的文件load给semantic使用。(要是谁了解这个feature具体意义请告诉我下)
(semantic-load-enable-code-helpers)
;;    这个函数除enable semantic-load-enable-minimum-features外，还包括：
;;    imenu
;;    这个feature可以让imenu显示semantic分析出的类，函数等tags。
;;    imenu显示semantic分析出的类
;;    semantic-idle-summary-mode
;;    打开这个mode之后，光标停留在一个类/函数等tag上时，会在minibuffer显示出这个函数原型
;;    senator-minor-mode
;;    senator开启之后，会在emacs上增加一个senator的菜单，可以通过菜单在当前文件的各个tag之间前后移动，跳转；
;;    还可以在里面方便地打开/关闭某个feature；还有另外一些实用的功能，看看菜单大概就能明白：
;;    semantic-mru-bookmark-mode
;;    cedet有tag跳转的功能，但是经常跳转完后还需要跳回刚才的位置，这时候就需要mru-bookmark-mode了。
;;    打开这个mode之后，每次跳转semantic都会把位置当作书签一样记录下来，以后可以通过M-x semantic-mrub-switch-tags（绑定到按键C-x B上）来选择跳回以前的任意一个位置。
;;(semantic-load-enable-gaudy-code-helpers)
;;    这个函数除enable semantic-load-enable-code-helpers之外，还包括：
;;    semantic-stickyfunc-mode
;;    这个mode会根据光标位置把当前函数名显示在buffer顶上，如图：
;;    [在head-line上显示函数名]
;;    在head-line上显示函数名
;;    这个mode我觉得用处不大，因为基本上可以用which-func-mode代替。而且我习惯打开tabbar-mode，这个mode会覆盖tabbar-mode，所以我是不打开它的。
;;    semantic-decoration-mode
;;    打开这个mode后，semantic会在类/函数等tag上方加一条蓝色的线，源文件很大的时候用它可以提示出哪些是类和函数的头。如图：
;;    semantic-idle-completions-mode
;;    这个mode打开后，光标在某处停留一段时间后，semantic会自动提示此处可以补全的内容。
;;    如果提示的函数不是需要的，按TAB键可以在各个可能的函数之间循环，按回车就可以确定了。
;;(semantic-load-enable-excessive-code-helpers)
;;    这个函数除enable semantic-load-enable-gaudy-code-helpers之外，还包括：
;;    semantic-highlight-func-mode
;;    打开这个mode的话，semantic会用灰的底色把光标所在函数名高亮显示
;;    semantic-idle-tag-highlight-mode
;;    用过XCode或eclipse的人应该会喜欢高亮光标处变量的功能：就是在函数内部，光标停留在一个变量上，整个函数内部用这个变量的地方都高亮了。
;;    在emacs里只要打开semantic-idle-tag-highlight-mode，光标在变量处停留一会，就会把相同的变量全都高亮，比如下图中的变量mAddr：
;;    semantic的这个tag-highlight虽然智能，可是我感觉它显示得太慢了，所以我是用另一个插件highlight-symbol来高亮的，这儿有它的介绍。
;;    semantic-decoration-on-*-members
;;    把private和protected的函数用颜色标识出来
;;    which-func-mode
;;    这个其实就是emacs自带的which-function-mode，把光标当前所在的函数名显示在mode-line上。
(semantic-load-enable-semantic-debugging-helpers)
;;    这个函数会enable几个和调试semantic相关的特性：
;;    semantic-highlight-edits-mode
;;    打开这个mode后，emacs会把最近修改过的内容高亮出来，如下图中begin就是刚输入的，所以用灰底色高亮了：
;;    隔一段时间后高亮会自动取消，不会一直高亮着让整个buffer看起来混乱。
;;    其实emacs自带也有高亮修改内容的mode：highlight-changes-mode，它会用红色的字体高亮所有修改的内容，但是不会自动取消，所以修改多了整个buffer就会乱七八糟糕。
;;    用semantic这个就好多了。
;;    semantic-show-unmatched-syntax-mode
;;    这个mode会把semantic解析不了的内容用红色下划线标识出来，比如下面这个文件是从emacs源代码中来的：
;;    semantic-show-parser-state-mode
;;    打开这个mode，semantic会在modeline上显示出当前解析状态，这是关闭mode的样子：
;;    能看出modeline上文件名前的横线多了一条，其实倒数第二条就是用来显示当前semantic解析状态的：未解析时显示为”!”，正在解析时显示”@”，
;;    解析完后显示”-”，如果buffer修改后未重新解析显示为”^”。
;;    semantic会在空闲时自动解析，另外可以打开senator-minor-mode，按[C-c , ,]或者在senator菜单中选[Force Tag Refresh]强制它马上解析。


;;********************************************************************************
;;在Windows下怎么能让semantic去找编译器的INCLUDE目录
(setq semanticdb-project-roots (list (expand-file-name "/")))
(defconst cedet-user-include-dirs
  (list ".." "../include" "../cls" "../dao/odbc/cpp" "../dao/odbc/include"
        "../../corp/include" "../../corp/cls" "../../corp/dao/odbc/cpp" "../../corp/dao/odbc/include"
        "../../base/include" "../../base/cls" "../../base/dao/odbc/cpp" "../../base/dao/odbc/include"
        "../../common/include" "../../common/cls" "../../common/dao/odbc/cpp" "../../common/dao/odbc/include"))
(defconst cedet-win32-include-dirs
  (list "D:/Program/VS2008/VC/include"))
(require 'semantic-c nil 'noerror)
(let ((include-dirs cedet-user-include-dirs))
  (when (eq system-type 'windows-nt)
    (setq include-dirs (append include-dirs cedet-win32-include-dirs)))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))

;;******************************************************************************
;;函数跳转功能
(global-set-key [f12] 'semantic-ia-fastjump)
;;调回来，直接按[C-x b][RET]
(global-set-key [S-f12]
                (lambda ()
                  (interactive)
                  (if (ring-empty-p (oref semantic-mru-bookmark-ring ring))
                      (error "Semantic Bookmark ring is currently empty"))
                  (let* ((ring (oref semantic-mru-bookmark-ring ring))
                         (alist (semantic-mrub-ring-to-assoc-list ring))
                         (first (cdr (car alist))))
                    (if (semantic-equivalent-tag-p (oref first tag)
                                                   (semantic-current-tag))
                        (setq first (cdr (car (cdr alist)))))
                    (semantic-mrub-switch-tags first))))
;;函数定义和声明之间跳转
(define-key c-mode-base-map [M-S-f12] 'semantic-analyze-proto-impl-toggle)


;;代码补全
;;(define-key c-mode-base-map (kbd "M-n") 'semantic-ia-complete-symbol-menu)
(define-key c-mode-base-map (kbd "M-n") 'semantic-ia-complete-symbol)
;;终端下使用 semantic-ia-complete-symbol
;;(semantic-idle-completions-mode);;不用按键只需要光标在.或者->后面停一会semantic就会自动开始补全了。 


;;******************************************************************************
;;EDE配置
(global-ede-mode t)

;;可视化书签
(enable-visual-studio-bookmarks)
;;F2 在当前行设置或取消书签
;;C-F2 查找下一个书签
;;S-F2 查找上一个书签
;;C-S-F2 清空当前文件的所有书签

;;代码折叠
(require 'semantic-tag-folding nil 'noerror)
(global-semantic-tag-folding-mode 1) 
(define-key semantic-tag-folding-mode-map (kbd "C-c , -") 'semantic-tag-folding-fold-block)
(define-key semantic-tag-folding-mode-map (kbd "C-c , +") 'semantic-tag-folding-show-block)
