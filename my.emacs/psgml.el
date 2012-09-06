;;; Set up PSGML
; Add PSGML to load-path so Emacs can find it.
; Note the forward slashes in the path... this is platform-independent so I 
; would suggest using them over back slashes. If you use back slashes, they 
; MUST BE doubled, as Emacs treats backslash as an escape character. 
(setq load-path (append (list nil "~/site-lisp/psgml-1.3.2/") load-path))
; Use PSGML for sgml and xml major modes.
(autoload 'sgml-mode "psgml" "Major mode to edit SGML files." t)
(autoload 'xml-mode "psgml" "Major mode to edit XML files." t)
