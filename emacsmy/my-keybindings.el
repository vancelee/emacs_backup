;; my-keybindings.el --- My key bindings setting
;; vance < 2011-11-16 >

;; <C-tab> <C-shift-tab> 前后切换buffer
(global-set-key (quote [C-tab]) (quote next-buffer))
(global-set-key (quote [C-S-iso-lefttab]) (quote previous-buffer))

;; f4关闭当期buffer
(global-set-key [f4] 'kill-buffer)

;; f5-f8 window相关设置
;; 水平拆分window
(global-set-key [f5] 'split-window-horizontally)
;; 垂直拆window
(global-set-key [f6] 'split-window-vertically)
;; 切换window
(global-set-key [f7] 'other-window)
;; 关闭当前window
(global-set-key [f8] 'delete-window)


;; f9-f12 打开应用
;; 打开speedbar
(global-set-key (quote [f9]) (quote speedbar))
;; speedbar焦点切换
(global-set-key (quote [M-f9]) (quote speedbar-get-focus))
;; speedbar显示全部文件
(setq speedbar-show-unknown-files t)
;; 打开eshell
(global-set-key [f10] 'eshell)
;; 打开TODO LIST
(global-set-key [f11]
    '(lambda () (interactive) (find-file "~/backup/todo.org")))

;; <M-/> 打开自动补全
(global-set-key "\M-/" 'auto-complete)

;; <C-k>删除整行,<M-k>删除光标处到行末的内容
(global-set-key "" (quote kill-whole-line))
(global-set-key "\353" (quote kill-line))

;; 解决Org-mode下<C-tab>和全局设置冲突
(defun my-minibuffer-setup-hook ()
  (my-keys-minor-mode 0))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'minibuffer-setup-hook 'my-minibuffer-setup-hook)
;; override key bindings
(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")
(define-key my-keys-minor-mode-map (quote [C-tab]) (quote next-buffer))
(define-minor-mode my-keys-minor-mode
  "A minor mode so that my key settings override annoying major modes."
  t " my-keys" 'my-keys-minor-mode-map)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(my-keys-minor-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'my-keybindings)