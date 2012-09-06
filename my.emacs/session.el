(add-to-list 'load-path "~/site-lisp/session/lisp")

(require 'session)

(add-hook 'after-init-hook 'session-initialize)
