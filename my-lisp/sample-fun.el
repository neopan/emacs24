;;��ʱ�Ǻ�
;;��ʱ����Ҫ������һ���ļ�����һЩ������Ȼ��ܿ�����������㵱Ȼ���� ʹ�� bookmark���߼Ĵ�����
;;������Щʵ����̫���ˡ������ӵ��vi������ ma, mb, 'a, 'b �Ĳ���������������ü��� elisp �ﵽ���Ƶ�Ŀ��
(global-set-key [(control ?\.)] 'ska-point-to-register)
(global-set-key [(control ?\,)] 'ska-jump-to-register)
(defun ska-point-to-register()
  "Store cursorposition _fast_ in a register. 
Use ska-jump-to-register to jump back to the stored 
position."
  (interactive)
  (setq zmacs-region-stays t)
  (point-to-register 8))

(defun ska-jump-to-register()
  "Switches between current cursorposition and position
that was stored with ska-point-to-register."
  (interactive)
  (setq zmacs-region-stays t)
  (let ((tmp (point-marker)))
        (jump-to-register 8)
        (set-register 8 tmp)))

;; go-to-char �ǳ���л Oliver Scholz �ṩ��������� �ҡ�
;;���������һ�� vi �� "f" ��������Ʒ��vi���û�֪����vi�� һ���ر�õ����� "f"�����㰴 "fx", x ������һ���ַ�ʱ
;;��� �ͻ��ƶ�����һ�� "x" ������֮��ֻҪ�� ";"(�ֺ�)�����͵��� ��һ�� "x"��
;;�ٸ�����˵������������;����������������һ���֣������ ���ס�
;;(setq unread-command-events (list last-input-event)))
;;                                               ^^^^^
;;����ϣ��Ѹ�ٵĵ�������Ǹ� event ������������ vi �ﰴ "fe"�������굽�� "setq" ���Ǹ� e ���棬��ʱ���ҽ��Ű� ";", 
;;��һ����͵���������Ҫ�ĵط����ܷ���ɣ�������������ã����� �㷢������ķǳ��ã�

;;��һֱ���� Emacs û������һ�������������� Oliver ���� ��һ�������Ĵ𰸣�
;;������δ���֮�󣬵��㰴 C-c a x (x ������һ���ַ�) ʱ���� ��ͻᵽ��һ�� x �����ٴΰ� x�����͵���һ�� x������ C-c a w w w w ..., C-c a b b b b b b ...
;;�Ҿ��������ʽ�� vi �� "f" Ҫ�졣
(defun wy-go-to-char (n char)
  "Move forward to Nth occurence of CHAR.
Typing `wy-go-to-char-key' again will move forwad to the next Nth
occurence of CHAR."
  (interactive "p\ncGo to char: ")
  (search-forward (string char) nil nil n)
  (while (char-equal (read-char)
             char)
    (search-forward (string char) nil nil n))
  (setq unread-command-events (list last-input-event)))
(define-key global-map (kbd "C-c a") 'wy-go-to-char)

