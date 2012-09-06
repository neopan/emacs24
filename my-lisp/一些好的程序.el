;;根据声明生成定义
(defun make-cpp-function-definition (buffer class-name start end)
  "generate c++ function definition and insert it into `buffer'"
  (interactive "BAppend to buffer: \nMClass name: \nr")
  (setq function-declaration (buffer-substring-no-properties start end))
  (setq function-definition nil)
  (defun iter (pos)
    (if (string-match
  "\\(?:\\(?:virtual\\|inline\\|static\\)[ \t\n]*\\)?\\(?:\\(\\(?:const[ \t\n]*\\)?[^ \t\n;* \t\n]*\\([^;]+\\)\\);"
  function-declaration
  pos)
 (progn
   (setq return-type
  (match-string 1 function-declaration))
   (setq one-function-definition
  (match-string 2 function-declaration))
   (if (equal class-name "")
       (setq one-function-declaration
      (concat return-type "\n" one-function-definition))
     (setq one-function-declaration
    (concat return-type "\n"
     class-name "::" one-function-definition)))
   (setq function-definition
  (concat function-definition
   one-function-declaration "\n{\n}\n\n"))
   (iter (match-end 0)))
      '()))
  (save-excursion
    (iter 0)
    (set-buffer (get-buffer-create buffer))
    (setq pos (point))
    (insert function-definition)
    (indent-region pos (point)))
  (if (one-window-p)
      (split-window-vertically))
  (switch-to-buffer-other-window buffer))


