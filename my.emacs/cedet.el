;;;;****************************************
;;cedet����
(setq byte-compile-warnings nil)
(add-to-list 'load-path "~/site-lisp/cedet-1.1/common")
(require 'cedet)
 
;; Enable EDE (Project Management) features
(global-ede-mode 1)
 
;; Enable SRecode (Template management) minor-mode.
;;(global-srecode-minor-mode 1)

;;********************************************************************************
;;semantic����
;;���ֺ���
;;(semantic-load-enable-minimum-features)
;;    ���������������������������ԣ�
;;    semantic-idle-scheduler-mode
;;    enable���mode��cedet��emacs���е�ʱ���Զ�����buffer���ݣ��������ڱ༭��buffer���ݸı��
;;    ���modeһ��Ӧ������Ҫenable�ģ����û��enable���mode����ֻ���ֹ������Ż���cedet���·�����
;;    semanticdb-minor-mode
;;    semanticdb��semantic�����������������ݵģ�����Ҳ��Ӧ��enable�ġ�
;;    semanticdb-load-ebrowse-caches
;;    ���feature�Ҳ��Ǻ�ȷ������ŵ���˼������semantic��������ebrowse�Ľ����
;;    ���feature��ž��ǰ�ebrowse���ɵ��ļ�load��semanticʹ�á�(Ҫ��˭�˽����feature�����������������)
(semantic-load-enable-code-helpers)
;;    ���������enable semantic-load-enable-minimum-features�⣬��������
;;    imenu
;;    ���feature������imenu��ʾsemantic���������࣬������tags��
;;    imenu��ʾsemantic����������
;;    semantic-idle-summary-mode
;;    �����mode֮�󣬹��ͣ����һ����/������tag��ʱ������minibuffer��ʾ���������ԭ��
;;    senator-minor-mode
;;    senator����֮�󣬻���emacs������һ��senator�Ĳ˵�������ͨ���˵��ڵ�ǰ�ļ��ĸ���tag֮��ǰ���ƶ�����ת��
;;    �����������淽��ش�/�ر�ĳ��feature����������һЩʵ�õĹ��ܣ������˵���ž������ף�
;;    semantic-mru-bookmark-mode
;;    cedet��tag��ת�Ĺ��ܣ����Ǿ�����ת�����Ҫ���ظղŵ�λ�ã���ʱ�����Ҫmru-bookmark-mode�ˡ�
;;    �����mode֮��ÿ����תsemantic�����λ�õ�����ǩһ����¼�������Ժ����ͨ��M-x semantic-mrub-switch-tags���󶨵�����C-x B�ϣ���ѡ��������ǰ������һ��λ�á�
;;(semantic-load-enable-gaudy-code-helpers)
;;    ���������enable semantic-load-enable-code-helpers֮�⣬��������
;;    semantic-stickyfunc-mode
;;    ���mode����ݹ��λ�ðѵ�ǰ��������ʾ��buffer���ϣ���ͼ��
;;    [��head-line����ʾ������]
;;    ��head-line����ʾ������
;;    ���mode�Ҿ����ô�������Ϊ�����Ͽ�����which-func-mode���档������ϰ�ߴ�tabbar-mode�����mode�Ḳ��tabbar-mode���������ǲ������ġ�
;;    semantic-decoration-mode
;;    �����mode��semantic������/������tag�Ϸ���һ����ɫ���ߣ�Դ�ļ��ܴ��ʱ������������ʾ����Щ����ͺ�����ͷ����ͼ��
;;    semantic-idle-completions-mode
;;    ���mode�򿪺󣬹����ĳ��ͣ��һ��ʱ���semantic���Զ���ʾ�˴����Բ�ȫ�����ݡ�
;;    �����ʾ�ĺ���������Ҫ�ģ���TAB�������ڸ������ܵĺ���֮��ѭ�������س��Ϳ���ȷ���ˡ�
;;(semantic-load-enable-excessive-code-helpers)
;;    ���������enable semantic-load-enable-gaudy-code-helpers֮�⣬��������
;;    semantic-highlight-func-mode
;;    �����mode�Ļ���semantic���ûҵĵ�ɫ�ѹ�����ں�����������ʾ
;;    semantic-idle-tag-highlight-mode
;;    �ù�XCode��eclipse����Ӧ�û�ϲ��������괦�����Ĺ��ܣ������ں����ڲ������ͣ����һ�������ϣ����������ڲ�����������ĵط��������ˡ�
;;    ��emacs��ֻҪ��semantic-idle-tag-highlight-mode������ڱ�����ͣ��һ�ᣬ�ͻ����ͬ�ı���ȫ��������������ͼ�еı���mAddr��
;;    semantic�����tag-highlight��Ȼ���ܣ������Ҹо�����ʾ��̫���ˣ�������������һ�����highlight-symbol�������ģ���������Ľ��ܡ�
;;    semantic-decoration-on-*-members
;;    ��private��protected�ĺ�������ɫ��ʶ����
;;    which-func-mode
;;    �����ʵ����emacs�Դ���which-function-mode���ѹ�굱ǰ���ڵĺ�������ʾ��mode-line�ϡ�
(semantic-load-enable-semantic-debugging-helpers)
;;    ���������enable�����͵���semantic��ص����ԣ�
;;    semantic-highlight-edits-mode
;;    �����mode��emacs�������޸Ĺ������ݸ�������������ͼ��begin���Ǹ�����ģ������ûҵ�ɫ�����ˣ�
;;    ��һ��ʱ���������Զ�ȡ��������һֱ������������buffer���������ҡ�
;;    ��ʵemacs�Դ�Ҳ�и����޸����ݵ�mode��highlight-changes-mode�������ú�ɫ��������������޸ĵ����ݣ����ǲ����Զ�ȡ���������޸Ķ�������buffer�ͻ����߰���⡣
;;    ��semantic����ͺö��ˡ�
;;    semantic-show-unmatched-syntax-mode
;;    ���mode���semantic�������˵������ú�ɫ�»��߱�ʶ������������������ļ��Ǵ�emacsԴ���������ģ�
;;    semantic-show-parser-state-mode
;;    �����mode��semantic����modeline����ʾ����ǰ����״̬�����ǹر�mode�����ӣ�
;;    �ܿ���modeline���ļ���ǰ�ĺ��߶���һ������ʵ�����ڶ�������������ʾ��ǰsemantic����״̬�ģ�δ����ʱ��ʾΪ��!�������ڽ���ʱ��ʾ��@����
;;    ���������ʾ��-�������buffer�޸ĺ�δ���½�����ʾΪ��^����
;;    semantic���ڿ���ʱ�Զ�������������Դ�senator-minor-mode����[C-c , ,]������senator�˵���ѡ[Force Tag Refresh]ǿ�������Ͻ�����


;;********************************************************************************
;;��Windows����ô����semanticȥ�ұ�������INCLUDEĿ¼
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
;;������ת����
(global-set-key [f12] 'semantic-ia-fastjump)
;;��������ֱ�Ӱ�[C-x b][RET]
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
;;�������������֮����ת
(define-key c-mode-base-map [M-S-f12] 'semantic-analyze-proto-impl-toggle)


;;���벹ȫ
;;(define-key c-mode-base-map (kbd "M-n") 'semantic-ia-complete-symbol-menu)
(define-key c-mode-base-map (kbd "M-n") 'semantic-ia-complete-symbol)
;;�ն���ʹ�� semantic-ia-complete-symbol
;;(semantic-idle-completions-mode);;���ð���ֻ��Ҫ�����.����->����ͣһ��semantic�ͻ��Զ���ʼ��ȫ�ˡ� 


;;******************************************************************************
;;EDE����
(global-ede-mode t)

;;���ӻ���ǩ
(enable-visual-studio-bookmarks)
;;F2 �ڵ�ǰ�����û�ȡ����ǩ
;;C-F2 ������һ����ǩ
;;S-F2 ������һ����ǩ
;;C-S-F2 ��յ�ǰ�ļ���������ǩ

;;�����۵�
(require 'semantic-tag-folding nil 'noerror)
(global-semantic-tag-folding-mode 1) 
(define-key semantic-tag-folding-mode-map (kbd "C-c , -") 'semantic-tag-folding-fold-block)
(define-key semantic-tag-folding-mode-map (kbd "C-c , +") 'semantic-tag-folding-show-block)
