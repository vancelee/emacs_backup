;; base-settings.el -- base emacs setting
;; vance <2011-11-16>

;;个人信息
(setq user-mail-address "acid204@gmail.com")
(setq user-full-name    "acidlee")

;;在fringe上显示一个小箭头指示当前buffer的边界
(setq-default indicate-buffer-boundaries 'left)

;;尽快显示按键序列
(setq echo-keystrokes 0.1)
(setq system-time-locale "C")

;;不要滚动条
(customize-set-variable 'scroll-bar-mode nil)

;;滚动条在右面
;;(set-scroll-bar-mode 'right)

;;支持emacs和外部程序的粘贴
(setq x-select-enable-clipboard t)

;;Emacs找不到合适的模式时，缺省使用text-mode
(setq default-major-mode 'text-mode)

;;显示列号和行号
(setq column-number-mode t)
(global-linum-mode 1)

;;语法高亮
(autoload 'toggle-emacs-lock "emacs-lock" "Emacs lock" t)

;;启用以下功能
(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'dired-find-alternate-file 'disabled nil)

;;不显示Emacs的开始画面
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

;; 不要总是没完没了的问yes or no, 为什么不能用y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; 不要闪烁光标, 烦不烦啊
(blink-cursor-mode -1)

;;滚动页面时比较舒服，不要整页的滚动
(setq scroll-step 1
  scroll-margin 3
  scroll-conservatively 10000)

;;没有提示音,也不闪屏
(setq ring-bell-function 'ignore)

;;可以递归的使用minibuffer
(setq enable-recursive-minibuffers t)

;;当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

;;可以保存你上次光标所在的位置
(require 'saveplace)
(setq-default save-place t)

;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。
;;(mouse-avoidance-mode 'animate)

;;不保存连续的重复的kill
(setq kill-do-not-save-duplicates t)

;;先格式化再补全
(setq tab-always-indent 'complete)

;;不要menu-bar和tool-bar
;;(menu-bar-mode -1)
;; GUI下显示toolbar的话select-buffer会出问题
(if (fboundp 'tool-bar-mode)
   (tool-bar-mode -1))

;;tab宽度
(setq c-basic-offset 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
;;去掉烦人的警告铃声
(setq visible-bell nil)

;;启动Emacs自动设置为两个窗口(上下各一个 or 左右各一)
;(split-window-vertically)
;(split-window-horizontally)

;;启动Emacs Server,然后用emacsclient起动emacs
;;加快emacs的起动速度
(server-start)

;;不产生备份文件
(setq make-backup-files nil)

(provide 'base-settings)
