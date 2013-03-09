;;; mycustom2-theme.el --- custom theme for faces

(deftheme mycustom2
  "Created 2012-06-22. Last edited 2012-06-23")

(custom-theme-set-faces
   'mycustom2
   `(default ((t (:foreground "#444444" :background "#eeeeee")))) ;; 默认字体
   `(cursor ((t (:foreground "#eeeeee" :background "#5f005f")))) ;; 光标
   `(error ((t (:foreground "#cd0000"))))
   `(warning ((t (:foreground "#ff0000"))))
   `(success ((t (:foreground "#fce94f"))))
   `(mode-line ((t (:foreground "#ffffff" :background "#5f005f")))) ;; 当前mode-line
   `(mode-line-inactive ((t (:foreground "#bcbcbc" :background "#5f005f")))) ;; 其他mode-line
   `(fringe ((t (:background "#dadada")))) ;; 边框
   `(minibuffer-prompt ((t (:foreground "#5f005f" :bold t)))) ;; minibuffer
   `(linum ((t (:foreground "#9e9e9e" :background "#eeeeee")))) ;; 行号
   ;; Highlighting faces
   `(highlight ((t (:background "#cd00cd"))))
   `(hl-line ((t (:background "#dadada")))) ;; 高亮当前行
   `(region ((t (:background "#00ffff")))) ;; 选中的文字
   `(secondary-selection ((t (:background "#5fffff"))))
   `(isearch ((t (:foreground "#ffffff" :background "#875fff")))) ;; 第一个搜索到的字段
   `(lazy-highlight ((t (:foreground "#bcbcbc" :background "#875fff")))) ;; 其他搜索到的字段
   ;; Font lock faces
   `(font-lock-builtin-face ((t (:foreground "#878700"))))
   `(font-lock-comment-face ((t (:foreground "#9e9e9e")))) ;; 注释
   `(font-lock-constant-face ((t (:foreground "#444444")))) ;; 常量
   `(font-lock-function-name-face ((t (:foreground "#5f00ff")))) ;; 函数名
   `(font-lock-keyword-face ((t (:foreground "#444444" :bold t)))) ;; 关键字
   `(font-lock-string-face ((t (:foreground "#878700")))) ;; 字符串
   `(font-lock-type-face ((t (:foreground "#121212"))))
   `(font-lock-variable-name-face ((t (:foreground "#5f00ff")))) ;; 变量名
   ;; js2-mode faces
   `(js2-external-variable-face ((t (:foreground "#878700"))))
   ;; Button and link faces
   `(link ((t (:underline t :foreground "#875fff"))))
   `(link-visited ((t (:underline t :foreground "#8787ff"))))
   ;; Org mode faces
   `(org-level-1 ((t (:foreground "#5c5cff" :weight bold)))) ;; 
   `(org-level-2 ((t (:foreground "#878700" :weight bold))))
   `(org-level-3 ((t (:foreground "#5f0087"))))
   `(org-level-4 ((t (:foreground "#ff5f00"))))
   `(org-level-5 ((t (:foreground "#00005f"))))
   `(org-level-6 ((t (:foreground "#00cd00"))))
   `(org-link ((t (:foreground "#875fff"))))
   ;; Ido mode faces
   '(ido-first-match ((t (:foreground "#626262" :weight bold))))
   ;; Message faces
   `(message-header-name ((t (:foreground "#5c5cff"))))
   `(message-header-cc ((t (:foreground "#4e4e4e"))))
   `(message-header-other ((t (:foreground "#4e4e4e"))))
   `(message-header-subject ((t (:foreground "#4e4e4e"))))
   `(message-header-to ((t (:foreground "#4e4e4e"))))
   `(message-cited-text ((t (:foreground "#626262"))))
   `(message-separator ((t (:foreground "#949494")))))

(provide-theme 'mycustom2)

;;; mycustom2-theme.el ends here
