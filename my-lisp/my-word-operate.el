;;拷贝当前单词
;;只要光标停留在一个单词(包括字母，数字，下划线的连续字符串)上，按住 ctrl+'o'就能复制这个单词了。
(defun copy-word (&optional arg)
  "Copy a sequence of string into kill-ring"
  (interactive)
  (setq onPoint (point))
  (let ( 
	( beg (progn (re-search-backward "[^a-zA-Z0-9_]" (line-beginning-position) 3 1) 
		     (if (looking-at "[^a-zA-Z0-9_]") (+ (point) 1) (point) ) )
	      )
	( end (progn (goto-char onPoint) (re-search-forward "[^a-zA-Z0-9_]" (line-end-position) 3 1)
		     (if (looking-back "[^a-zA-Z0-9_]") (- (point) 1) (point) ) )
	      ))
    (copy-region-as-kill beg end)
    )
  )
(global-set-key [(control o)] 'copy-word)


;;删除当前单词
(defun mykill-word (&optional arg)
  "kill a word into kill-ring"
  (interactive)
  (setq onPoint (point))
  (let ( 
	( beg (progn (re-search-backward "[^a-zA-Z0-9_]" (line-beginning-position) 3 1) 
		     (if (looking-at "[^a-zA-Z0-9_]") (+ (point) 1) (point) ) )
	      )
	( end (progn (goto-char onPoint) (re-search-forward "[^a-zA-Z0-9_]" (line-end-position) 3 1)
		     (if (looking-back "[^a-zA-Z0-9_]") (- (point) 1) (point) ) )
	      ))
    (kill-region beg end)
    (backward-char 1)
    )
  )
(global-set-key [(meta d)] 'mykill-word)
