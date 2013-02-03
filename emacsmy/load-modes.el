;; load-modes.el -- load modes setting
;; Vance Lee <2012-03-28>
;; Last Modified: <2013-02-03>

;; sr-speedbar
(require 'sr-speedbar)
(setq speedbar-use-images nil)
;; sr-speedbar width
(setq sr-speedbar-width-x 30)

;; ido
(require 'ido)
(ido-mode t)

;; tabbar
(require 'tabbar)
;; tabbar group
(setq tabbar-buffer-groups-function
      (lambda ()
        (list "All Buffers")))
(setq tabbar-buffer-list-function
      (lambda ()
        (remove-if
         (lambda(buffer)
           (find (aref (buffer-name buffer) 0) " *"))
         (buffer-list))))
;; 设置默认主题
(set-face-attribute 'tabbar-default nil
                    :family "DejaVu Sans Mono"
                    :background "#c6c6c6"
                    :foreground "#262626"
                    :height 1.0
                    )
;; 设置左边按钮
(set-face-attribute 'tabbar-button nil
                    :inherit 'tabbar-default
                    :box '(:line-width 1 :color "#808080")
                    )
;; 设置当前tab
(set-face-attribute 'tabbar-selected nil
                    :inherit 'tabbar-default
                    :foreground "#262626"
                    :background "#e4e4e4"
                    :box '(:line-width 1 :color "#808080")
                    ;;:weight 'bold
                    )
;; 设置非当前tab
(set-face-attribute 'tabbar-unselected nil
                    :inherit 'tabbar-default
                    :box '(:line-width 1 :color "#808080")
                    )

;;php-mode
(require 'php-mode)

;;html helper mode
;;(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)

;; js2-mode
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;;org-mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
;; export HTML style
(setq org-export-html-style-include-default nil)
(setq org-export-html-style-include-scripts nil)
(setq org-export-html-headline-anchor-format nil)
;; C-c a 进入日程表
(define-key global-map "\C-ca" 'org-agenda)
;; 给已完成事项打上时间戳。可选 note，附加注释
(setq org-log-done 'time)
;; 解决org中文不会自动折行
(add-hook 'org-mode-hook
(lambda () (setq truncate-lines nil)))
;; 关闭 preamble 和 postamble
(setq org-export-html-preamble nil)
(setq org-export-html-postamble nil)
;;archive
(setq org-archive-location "~/Dropbox/org/archived.org::* Archived Tasks")

;;remember
(require 'remember)
(setq remember-annotation-functions '(org-remember-annotation))
(setq remember-handler-functions '(org-remember-handler))
(add-hook 'remember-mode-hook 'org-remember-apply-template)
(setq org-remember-templates
   '(("Todo" ?t "** TODO %? " "~/Dropbox/org/todo.org" "Todo List")
   ("Idea" ?i "** %?" "~/Dropbox/org/idea.org" "Idea List")
   ))

;; org2blog (org2blog depends on xml-rpc)
(require 'org2blog-autoloads)
;; org2bolg settings
 (setq org2blog/wp-blog-alist
       '(("wordpress"
          :url "http://vancel1.info/xmlrpc.php"
          :username "vancel1"
          :default-title "Hello World"
          :default-categories ("emacs")
          :tags-as-categories nil)))

;; use xsel to copy/paste in emacs-nox
(unless window-system
 (when (getenv "DISPLAY")
  (defun xsel-cut-function (text &optional push)
    (with-temp-buffer
      (insert text)
      (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
  (defun xsel-paste-function()
    (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
      (unless (string= (car kill-ring) xsel-output)
        xsel-output )))
  (setq interprogram-cut-function 'xsel-cut-function)
  (setq interprogram-paste-function 'xsel-paste-function)
 ))

;; markdown mode 
(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(provide 'load-modes)
