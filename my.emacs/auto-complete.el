(add-to-list 'load-path "~/site-lisp/auto-complete-1.3.1/")

(require 'auto-complete)
(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories "~/.emacs.d/lisp/auto-complete-1.3.1/dict")

(defun apply-define-key (map key-pairs)
  (dolist (key-pair key-pairs)
    (define-key map (eval `(kbd ,(nth 0 key-pair))) (nth 1 key-pair))))

(defun auto-complete-settings ()
  "Settings for `auto-complete'."
  ;; After do this, isearch any string, M-: (match-data) always
  ;; return the list whose elements is integer
  (global-auto-complete-mode 1)
  ;; 不让回车的时候执行`ac-complete', 因为当你输入完一个
  ;; 单词的时候, 很有可能补全菜单还在, 这时候你要回车的话,
  ;; 必须要干掉补全菜单, 很麻烦, 用M-j来执行`ac-complete'
  (apply-define-key
   ac-complete-mode-map
   `(("<return>"   nil)
	 ("RET"		nil)
	 ("M-j"		ac-complete)
	 ("<C-return>" ac-complete)
	 ("M-n"		ac-next)
	 ("M-p"		ac-previous)))
  (setq ac-dwim t)
  (setq ac-candidate-max ac-candidate-menu-height)
  (set-default 'ac-sources
			   '(ac-source-semantic
				 ac-source-yasnippet
				 ac-source-abbrev
				 ac-source-words-in-buffer
				 ac-source-words-in-all-buffer
				 ac-source-imenu
				 ac-source-files-in-current-dir
				 ac-source-filename))
  ;;(setq ac-modes ac+-modes)
  (dolist (command `(backward-delete-char-untabify delete-backward-char))
	(add-to-list 'ac-trigger-commands command))
  (defun ac-start-use-sources (sources)
	(interactive)
	(let ((ac-sources sources))
	  (call-interactively 'ac-start)))
  (defvar ac-trigger-edit-commands
	`(self-insert-command
	  delete-backward-char
	  backward-delete-char
	  backward-delete-char-untabify)
	"*Trigger edit commands that specify whether `auto-complete' should start or not when `ac-completing'."))
(eval-after-load "auto-complete"
  '(auto-complete-settings))
(eval-after-load "cc-mode"
  '(progn
	 (dolist (command `(c-electric-backspace
						c-electric-backspace-kill))
	   (add-to-list 'ac-trigger-commands command)
	   (add-to-list 'ac-trigger-edit-commands command))))
(eval-after-load "autopair"
  '(progn
	 (dolist (command `(autopair-insert-or-skip-quote
						autopair-backspace
						autopair-extra-skip-close-maybe))
	   (add-to-list 'ac-trigger-commands command))
	 (defun ac-trigger-command-p ()
	   "Return non-nil if `this-command' is a trigger command."
	   (or
		(and
		 (memq this-command ac-trigger-commands)
		 (let* ((autopair-emulation-alist nil)
				(key (this-single-command-keys))
				(beyond-autopair (or (key-binding key)
									 (key-binding (lookup-key local-function-key-map key)))))
		   (memq beyond-autopair ac-trigger-edit-commands)))
		(and ac-completing
			 (memq this-command ac-trigger-edit-commands))))))
(defun ac-settings-4-lisp ()
  "Auto complete settings for lisp mode."
  (setq ac-omni-completion-sources '(("\\<featurep\s+'" ac+-source-elisp-features)
									 ("\\<require\s+'"  ac+-source-elisp-features)
									 ("\\<load\s+\""	ac-source-emacs-lisp-features)))
  (ac+-apply-source-elisp-faces)
  (setq ac-sources
		'(ac-source-yasnippet
		  ac-source-symbols
		  ;; ac-source-semantic
		  ac-source-abbrev
		  ac-source-words-in-buffer
		  ac-source-words-in-all-buffer
		  ;; ac-source-imenu
		  ac-source-files-in-current-dir
		  ac-source-filename)))
(defun ac-settings-4-c ()
  (setq ac-omni-completion-sources (list (cons "\\." '(ac-source-semantic))
										 (cons "->" '(ac-source-semantic))))
  (setq ac-sources
		'(ac-source-yasnippet
		  ac-source-c-keywords
		  ac-source-abbrev
		  ac-source-words-in-buffer
		  ac-source-words-in-all-buffer
		  ac-source-files-in-current-dir
		  ac-source-filename)))
(defun ac-settings-4-cpp ()
  (setq ac-omni-completion-sources
		(list (cons "\\." '(ac-source-semantic))
			  (cons "->" '(ac-source-semantic))))
  (setq ac-sources
		'(ac-source-yasnippet
		  ac-source-c++-keywords
		  ac-source-abbrev
		  ac-source-words-in-buffer
		  ac-source-words-in-all-buffer
		  ac-source-files-in-current-dir
		  ac-source-filename)))
(defun ac-settings-4-text ()
  (setq ac-sources
		'(;;ac-source-semantic
		  ac-source-yasnippet
		  ac-source-abbrev
		  ac-source-words-in-buffer
		  ac-source-words-in-all-buffer
		  ac-source-imenu)))
(defun ac-settings-4-eshell ()
  (setq ac-sources
		'(;;ac-source-semantic
		  ac-source-yasnippet
		  ac-source-abbrev
		  ac-source-words-in-buffer
		  ac-source-words-in-all-buffer
		  ac-source-files-in-current-dir
		  ac-source-filename
		  ac-source-symbols
		  ac-source-imenu)))
(defun ac-settings-4-html ()
  (setq ac-sources
		'(;;ac-source-semantic
		  ac-source-yasnippet
		  ac-source-abbrev
		  ac-source-words-in-buffer
		  ac-source-words-in-all-buffer
		  ac-source-files-in-current-dir
		  ac-source-filename)))

;;(am-add-hooks
;; `(lisp-mode-hook emacs-lisp-mode-hook lisp-interaction-mode-hook
;;			  svn-log-edit-mode-hook change-log-mode-hook)
;; 'ac-settings-4-lisp)
;;(apply-args-list-to-fun
;; (lambda (hook fun)
;;   (am-add-hooks hook fun))
;; `(('c-mode-hook	  'ac-settings-4-c)
;;   ('c++-mode-hook	  'ac-settings-4-cpp)
;;   ('text-mode-hook   'ac-settings-4-text)
;;   ('eshell-mode-hook 'ac-settings-4-eshell)
;;   ('html-mode-hook   'ac-settings-4-html)))
;;(eal-eval-by-modes
;; ac-modes
;; (lambda (mode)
;;   (let ((mode-name (symbol-name mode)))
;;	 (when (and (intern-soft mode-name) (intern-soft (concat mode-name "-map")))
;;	   (define-key (symbol-value (am-intern mode-name "-map")) (kbd "C-c a") 'ac-start)))))
(provide 'auto-complete-settings)
