;; my-keybindings.el --- My key bindings setting
;; Vance Lee <2011-11-16>
;; Last Modified: <2013-02-03>

;; window switch
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

;; f9-f12 打开应用
;; 打开 sr-speedbar
(global-set-key [f8] 'sr-speedbar-open)

;; 打开inline images
(global-set-key [f9] 'org-toggle-inline-images)
;; 打开mynote
(global-set-key [f10]
    '(lambda () (interactive) (find-file "~/Dropbox/org/todo.org")))
;; 打开TODO LIST
(global-set-key [f11]
    '(lambda () (interactive) (find-file "~/Dropbox/org/idea.org")))
;; remember
(global-set-key [f12] 'org-remember)

;; <M-/> 打开自动补全
(global-set-key "\M-/" 'ac-start)

;; <C-k>删除整行,<M-k>删除光标处到行末的内容
(global-set-key "" (quote kill-whole-line))
(global-set-key "\353" (quote kill-line))

;; Mark set
(global-set-key (kbd "C-0") 'set-mark-command)

;; javascript mode
(global-set-key (kbd "C-c j") 'js-mode)

;; HTML mode
(global-set-key (kbd "C-c h") 'html-mode)

(provide 'my-keybindings)
