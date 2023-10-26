(define-key dired-mode-map (kbd "<mouse-2>") 'dired-find-alternate-file)

(bind-key [f1] 'find-file)
(bind-key [f2] 'consult-recent-file)
(bind-key [f3] 'save-buffer)
(bind-key [f4] 'kill-current-buffer)
(bind-key [f5] 'consult-goto-line)
(bind-key [f6] 'execute-extended-command)
(bind-key [f7] 'query-replace)
(bind-key [f8] 'delete-window)
(bind-key [f9] 'pr/open-scratch-buffer)
(bind-key [f10] 'indent-region)

(bind-key "C-o o" 'find-file)
(bind-key "C-o n" 'pr/open-org-dir)
(bind-key "C-o c" 'pr/open-emacs-dir)

(bind-key "C-<prior>" 'beginning-of-buffer)
(bind-key "C-<next>" 'end-of-buffer)
(bind-key "<next>" 'scroll-up-command)
(bind-key "<prior>" 'scroll-down-command)

(bind-key "M-<left>" 'previous-buffer)
(bind-key "M-<right>" 'next-buffer)

(bind-key "M-n" 'centaur-tabs-backward)
(bind-key "M-o" 'centaur-tabs-forward)

(bind-key "C-z" 'undo)
(bind-key "C-s" 'consult-line)

(bind-key "C-c g" 'magit)

(bind-key "C-c s h" 'split-window-right)
(bind-key "C-c s v" 'split-window-below)
(bind-key "C-c s c" 'delete-window)

(bind-key "C-c e r" 'pr/reload-init)

(bind-key "C-x b" 'consult-buffer)
