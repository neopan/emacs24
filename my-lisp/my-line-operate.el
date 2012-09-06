;;拷贝当前行
(defun copy-line (&optional arg)
  "Save current line into Kill-Ring without mark the line"
  (interactive "P")
  (let ((beg (line-beginning-position)) 
	(end (line-end-position arg)))
    (copy-region-as-kill beg end))
  )
(global-set-key [(control j)] 'copy-line)


;;追加拷贝当前行
(defun copy-line-append (&optional arg)
  "Save current line into Kill-Ring without mark the line"
  (interactive "P")
  (let ((beg (line-beginning-position)) 
	(end (line-end-position arg)))
    (append-next-kill)
    (copy-region-as-kill beg end))
  )
(global-set-key [(control meta j)] 'copy-line-append)

;;拷贝光标所在的括号{}之间的内容
(defun copy-between-paren()
  "my copy."
  (interactive)
  (search-backward "{")
  (mark-sexp)
  )
(global-set-key [(control meta o)] 'copy-between-paren)


;;配合键绑定可以实现 VIM 中的 % 跳转括号，好像是从王垠那里抄的。
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

;;哲思里抄的。复制光标所在的行。
(defun copy-line (&optional arg)
  "Save current line into Kill-Ring without mark the line"
  (interactive "P")
  (let ((beg (line-beginning-position))
        (end (line-end-position arg)))
    (copy-region-as-kill beg end)))

;;这个很有用。如果 buffer 里有激活的 region 的话，就复制里面的内容，没有的话就复制当前行。
(defun copy-line-or-region (&optional n)
  "Save current line or region into Kill-Ring.  If the mark is
deactivated in current buffer, Save current line; otherwise save
the region."
  (interactive "p")
  (if mark-active
      (kill-ring-save
       (region-beginning) (region-end))
    (copy-line n)))

;; copy region or whole line
(global-set-key "\M-w"
                (lambda ()
                  (interactive)
                  (if mark-active
                      (kill-ring-save (region-beginning)
                                      (region-end))
                    (progn
                     (kill-ring-save (line-beginning-position)
                                     (line-end-position))
                     (message "copied line")))))

;; kill region or whole line
(global-set-key "\C-w"
                (lambda ()
                  (interactive)
                  (if mark-active
                      (kill-region (region-beginning)
                                   (region-end))
                    (progn
                     (kill-region (line-beginning-position)
                                  (line-end-position))
                     (message "killed line")))))