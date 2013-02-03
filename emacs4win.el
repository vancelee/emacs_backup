;;emacs4win.el

(setenv "HOME" "D:/home")
(setenv "PATH" "D:/home")
;;set the default file path
(setq default-directory "~/")

;;Load Path
(add-to-list 'load-path "D:/home/emacs/emacsmy")
(setq load-path (cons "~/emacs/emacsmy/org2blog" load-path))
(add-to-list 'custom-theme-load-path "~/emacs/emacsmy/themes")

(set-language-environment 'UTF-8)
(set-locale-environment "UTF-8")

;;disable menu-bar
(unless window-system
  (menu-bar-mode -1))
;;disable toolbar
(tool-bar-mode -1)
;;scroll bar setting
(set-scroll-bar-mode 'right)
;;don't show startup message
(setq inhibit-startup-message t)
(setq initial-scratch-message "")
;;
(global-hl-line-mode t)

(if window-system
  (set-face-attribute 'default nil :font "Monaco-11"))
;; Chinese Font
(if window-system
  (set-fontset-font nil 'han "MicroSoft YaHei"))

;;Theme setting
(load-theme 'mycustom2 t)

;;Base setting
(require 'base-settings)

;;Key bindings
(require 'my-keybindings)

;;Load setting
(require 'load-modes)

(provide 'emacs4win)

;;自动补全
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/emacs/emacsmy/ac-dict")
(ac-config-default)
(global-auto-complete-mode t)
;; start completion when entered 3 characters
(setq ac-auto-start 3)
