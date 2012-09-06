;;tabbar设置
(require 'tabbar)
(tabbar-mode 1)
;(global-set-key [(meta-j)] 'tabbar-backword)
;(global-set-key [(meta-k)] 'tabbar-forward)

;;;; 设置tabbar外观
;; 设置默认主题: 字体, 背景和前景颜色，大小
(set-face-attribute 'tabbar-default nil
                    :family "Vera Sans YuanTi Mono"
                    :background "gray80"
                    :foreground "gray30"
                    :height 1.0
                    )
;; 设置左边按钮外观：外框框边大小和颜色
(set-face-attribute 'tabbar-button nil
                    :inherit 'tabbar-default
                    :box '(:line-width 1 :color "gray30")
                    )
;; 设置当前tab外观：颜色，字体，外框大小和颜色
(set-face-attribute 'tabbar-selected nil
                    :inherit 'tabbar-default
                    :foreground "DarkGreen"
                    :background "LightGoldenrod"
                    :box '(:line-width 2 :color "DarkGoldenrod")
                    ;; :overline "black"
                    ;; :underline "black"
                    :weight 'bold
                    )
;; 设置非当前tab外观：外框大小和颜色
(set-face-attribute 'tabbar-unselected nil
                    :inherit 'tabbar-default
                    :box '(:line-width 2 :color "gray70")
                    )

;; (defun tabbar-buffer-ignore-groups (buffer)
;;   "Return the list of group names BUFFER belongs to.
;; Return only one group for each buffer."
;;   (with-current-buffer (get-buffer buffer)
;;     (cond
;;      ((or (get-buffer-process (current-buffer))
;;           (memq major-mode
;;                 '(comint-mode compilation-mode)))
;;       '("Process")
;;       )
;;      ((member (buffer-name)
;;               '("*scratch*" "*Messages*"))
;;       '("Common")
;;       )
;;      ((eq major-mode 'dired-mode)
;;       '("Dired")
;;       )
;;      ((memq major-mode
;;             '(help-mode apropos-mode Info-mode Man-mode))
;;       '("Help")
;;       )
;;      ((memq major-mode
;;             '(rmail-mode
;;               rmail-edit-mode vm-summary-mode vm-mode mail-mode
;;               mh-letter-mode mh-show-mode mh-folder-mode
;;               gnus-summary-mode message-mode gnus-group-mode
;;               gnus-article-mode score-mode gnus-browse-killed-mode))
;;       '("Mail")
;;       )
;;      (t
;;       (list 
;;        "default"  ;; no-grouping
;;        (if (and (stringp mode-name) (string-match "[^ ]" mode-name))
;;            mode-name
;;          (symbol-name major-mode)))
;;       )
;;      )
;;     )
;;   )

;; (setq tabbar-buffer-groups-function 'tabbar-buffer-ignore-groups)