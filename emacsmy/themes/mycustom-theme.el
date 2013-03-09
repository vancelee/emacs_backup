;;; mycustom-theme.el --- custom theme for faces

(deftheme mycustom
  "Created 2012-06-22. Last edited 2012-06-23")

(custom-theme-set-faces
   'mycustom
;   `(default ((t (:foreground "#cecece" :background "#2e3434"))))
   `(default ((t (:foreground "#c6c6c6" :background "#3a3a3a"))))
   `(cursor ((t (:background "#ffff00"))))
   `(error ((t (:foreground "salmon1"))))
   `(warning ((t (:foreground "red"))))
   `(success ((t (:foreground "#fce94f"))))
   `(mode-line ((t (:foreground "#5f005f" :background "#bcbcbc"))))
   `(mode-line-inactive ((t (:foreground "#626262" :background "#949494"))))
   `(fringe ((t (:background "#262626"))))
   `(minibuffer-prompt ((t (:foreground "#ff8700" :bold t))))
   ;; Compilation faces
   `(compilation-mode-line-fail ((t (:foreground "dark green"))))
   `(compilation-mode-line-run  ((t (:foreground "dark goldenrod"))))
   `(compilation-mode-line-exit ((t (:foreground "SpringGreen4"))))
   ;; Highlighting faces
   `(highlight ((t (:foreground "#3a3a3a" :background "#c6c6c6"))))
   `(region ((t (:foreground "#3a3a3a" :background "#c6c6c6"))))
   `(secondary-selection ((t (:background "#00ff00"))))
   `(isearch ((t (:foreground "#080808" :background "#ffff00"))))
   `(lazy-highlight ((t (:foreground "#303030" :background "#767676"))))
   ;; Font lock faces
   `(font-lock-builtin-face ((t (:foreground "#5c5cff"))))
   `(font-lock-comment-face ((t (:foreground "#767676"))))
   `(font-lock-constant-face ((t (:foreground "#5fd7d7"))))
   `(font-lock-function-name-face ((t (:foreground "#8787ff"))))
   `(font-lock-keyword-face ((t (:foreground "#d75f00"))))
   `(font-lock-string-face ((t (:foreground "#5fd7d7"))))
   `(font-lock-type-face ((t (:foreground "#d75f00"))))
   `(font-lock-variable-name-face ((t (:foreground "#268bd2"))))
   ;; Button and link faces
   `(link ((t (:underline t :foreground "cyan"))))
   `(link-visited ((t (:underline t :foreground "dark cyan"))))
   ;; Gnus faces
   `(gnus-header-content ((t (:weight normal :foreground "yellow green"))))
   `(gnus-header-from ((t (:foreground "pale green"))))
   `(gnus-header-subject ((t (:foreground "pale turquoise"))))
   `(gnus-header-name ((t (:foreground "dark sea green"))))
   `(gnus-header-newsgroups ((t (:foreground "dark khaki"))))
   ;; Org mode faces
   `(org-level-1 ((t (:foreground "#5c5cff" :weight bold))))
   `(org-level-2 ((t (:foreground "#ffd700" :weight bold))))
   `(org-level-3 ((t (:foreground "#d75f00"))))
   `(org-level-4 ((t (:foreground "#cdcd00"))))
   `(org-level-5 ((t (:foreground "#ff00ff"))))
   `(org-level-6 ((t (:foreground "#00cd00"))))
   ;; Ido mode faces
   '(ido-first-match ((t (:foreground "#1e90ff" :weight bold))))
   ;; Message faces
   `(message-header-name ((t (:foreground "dark turquoise"))))
   `(message-header-cc ((t (:foreground "yellow green"))))
   `(message-header-other ((t (:foreground "dark khaki"))))
   `(message-header-subject ((t (:foreground "pale turquoise"))))
   `(message-header-to ((t (:foreground "pale green"))))
   `(message-cited-text ((t (:foreground "SpringGreen3"))))
   `(message-separator ((t (:foreground "deep sky blue")))))

(provide-theme 'mycustom)

;;; mycustom-theme.el ends here
