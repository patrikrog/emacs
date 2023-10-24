(define-prefix-command 'ring-map)
(global-set-key (kbd "C-o") 'ring-map)

(global-set-key [f1] 'find-file)
(global-set-key [f2] 'recentf-open-files)
(global-set-key [f3] 'save-buffer)
(global-set-key [f4] 'kill-current-buffer)
(global-set-key [f5] 'goto-line)
(global-set-key [f6] 'execute-extended-command)
(global-set-key [f7] 'query-replace)
(global-set-key [f10] 'indent-region)

(global-set-key (kbd "C-o o") 'find-file)
(global-set-key (kbd "C-o n") 'open-org-dir)

(global-set-key (kbd "C-<prior>") 'beginning-of-buffer)
(global-set-key (kbd "C-<next>") 'end-of-buffer)
(global-set-key (kbd "<next>") 'scroll-up-command)
(global-set-key (kbd "<prior>") 'scroll-down-command)

(global-set-key (kbd "M-<left>") 'previous-buffer)
(global-set-key (kbd "M-<right>") 'next-buffer)

(global-set-key (kbd "C-z") 'undo)

(global-set-key (kbd "C-c s h") 'split-window-right)
(global-set-key (kbd "C-c s v") 'split-window-below)
(global-set-key (kbd "C-c s c") 'delete-window)

(global-set-key (kbd "C-c e r") 'reload-init)
