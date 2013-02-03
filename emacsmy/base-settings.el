;; base-settings.el -- base emacs setting
;; Vance Lee <2011-11-16>
;; Last Modified: <2013-02-03>

;;在fringe上显示一个小箭头指示当前buffer的边界
(setq-default indicate-buffer-boundaries 'left)

;;尽快显示按键序列
(setq echo-keystrokes 0.1)
(setq system-time-locale "C")

;;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;;Emacs找不到合适的模式时，缺省使用text-mode
(setq default-major-mode 'text-mode)

;;显示列号和行号
;;(setq column-number-mode t)
;;(global-linum-mode 1)

;;语法高亮
(autoload 'toggle-emacs-lock "emacs-lock" "Emacs lock" t)

;;启用以下功能
;(put 'narrow-to-region 'disabled nil)
;(put 'downcase-region 'disabled nil)
;(put 'dired-find-alternate-file 'disabled nil)

;; 不要总是没完没了的问yes or no, 为什么不能用y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; 不要闪烁光标
(blink-cursor-mode -1)

;;滚动页面时比较舒服，不要整页的滚动
(setq scroll-step 1
  scroll-margin 2
  scroll-conservatively 10000)

;;没有提示音,也不闪屏
(setq ring-bell-function 'ignore)

;;可以递归的使用minibuffer
(setq enable-recursive-minibuffers t)

;;可以保存你上次光标所在的位置
(require 'saveplace)
(setq-default save-place t)

;;不保存连续的重复的kill
(setq kill-do-not-save-duplicates t)

;;tab宽度
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
(setq tab-always-indent 'complete)
;; tab-stop-list M-i
(setq tab-stop-list (number-sequence 4 120 4))

;;去掉烦人的警告铃声
(setq visible-bell nil)

;;启动Emacs自动设置为两个窗口(上下各一个 or 左右各一)
;(split-window-vertically)
;(split-window-horizontally)

;;不产生备份文件
(setq make-backup-files nil)

;;speedbar display all types of files
(custom-set-variables
 '(speedbar-show-unknown-files t)
)

(provide 'base-settings)
