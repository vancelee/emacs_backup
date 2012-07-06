;; load-modes.el -- load modes setting
;; Vance Lee <2012-03-28>

;; sr-speedbar
(require 'sr-speedbar)
(setq speedbar-use-images nil)
;; sr-speedbar width
(setq sr-speedbar-width-x 30)

;; ido
(require 'ido)
(ido-mode t)

;;php-mode
(require 'php-mode)

;;html helper mode
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)

;;multi web mode
;;(require 'multi-web-mode)
;;(setq mweb-default-major-mode 'html-helper-mode)
;;(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
;;                  (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
;;                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
;;(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
;;(multi-web-global-mode 1)

;;org-mode
;;(require 'org-install)
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
 '(("weiqi" ?w "*** 1-nn%?\n[[~/Dropbox/sihuo/1-nn.png]]" "~/Dropbox/org/mygtd.org" "死活练习")
   ("Idea" ?i "*** %? " "~/Dropbox/org/mygtd.org" "idea/maybe")
   ("TODO" ?t "*** TODO %?" "~/Dropbox/org/mygtd.org" "Task")
   ("Enote" ?e "*** %? %^g" "~/Dropbox/org/mynote.org" "june 2012")
   ("JS" ?j "*** %? %^g" "~/Dropbox/org/js-note.org" "JavaScript Note")
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

(provide 'load-modes)
