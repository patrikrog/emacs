(define-prefix-command 'ring-map)
(global-set-key (kbd "C-o") 'ring-map)

(define-key dired-mode-map (kbd "<mouse-2>") 'dired-find-alternate-file)

(global-set-key [f1] 'find-file)
(global-set-key [f2] 'consult-recent-file)
(global-set-key [f3] 'save-buffer)
(global-set-key [f4] 'kill-current-buffer)
(global-set-key [f5] 'consult-goto-line)
(global-set-key [f6] 'execute-extended-command)
(global-set-key [f7] 'query-replace)
(global-set-key [f8] 'delete-window)
(global-set-key [f9] 'pr/open-scratch-buffer)
(global-set-key [f10] 'indent-region)

(global-set-key (kbd "C-o o") 'find-file)
(global-set-key (kbd "C-o n") 'pr/open-org-dir)
(global-set-key (kbd "C-o c") 'pr/open-emacs-dir)

(global-set-key (kbd "C-<prior>") 'beginning-of-buffer)
(global-set-key (kbd "C-<next>") 'end-of-buffer)
(global-set-key (kbd "<next>") 'scroll-up-command)
(global-set-key (kbd "<prior>") 'scroll-down-command)

(global-set-key (kbd "M-<left>") 'previous-buffer)
(global-set-key (kbd "M-<right>") 'next-buffer)

(global-set-key (kbd "M-n") 'centaur-tabs-backward)
(global-set-key (kbd "M-o") 'centaur-tabs-forward)

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "C-s") 'consult-line)

(global-set-key (kbd "C-c s h") 'split-window-right)
(global-set-key (kbd "C-c s v") 'split-window-below)
(global-set-key (kbd "C-c s c") 'delete-window)

(global-set-key (kbd "C-c e r") 'pr/reload-init)

(global-set-key (kbd "C-x b") 'consult-buffer)
