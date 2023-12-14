(setq gc-cons-threshold 100000000)
(add-hook 'after-init-hook (lambda () (setq gc-cons-threshold (* 10 1024 1024))))

(load (expand-file-name "packages.el" user-emacs-directory))
(load (expand-file-name "keybinds.el" user-emacs-directory))
(load (expand-file-name "functions.el" user-emacs-directory))

(require 'lsp-mode)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(recentf-mode t)
(vertico-mode t)
;; (centaur-tabs-mode 0)
(electric-pair-mode t)
(hl-line-mode t)
(global-display-line-numbers-mode t)
(delete-selection-mode t)
(cua-mode t)
(rg-enable-default-bindings)
(blink-cursor-mode nil)
(global-undo-tree-mode)
(projectile-mode +1)
(persp-mode t)

(add-to-list 'default-frame-alist '(height . 45)) ;; Vertical frame size
(add-to-list 'default-frame-alist '(width . 140)) ;; Horizontal frame size
(add-to-list 'default-frame-alist '(font . "Iosevka Extended-13"))

(setq backup-by-copying t
	  backup-directory-alist '(("." . "~/.config/emacs/backups"))
	  completion-category-defaults nil
	  confirm-kill-emacs 'y-or-n-p
	  lsp-keymap-prefix "C-l"
	  lsp-pylsp-plugins-autopep8-enabled t
	  org-replace-disputed-keys t
	  org-support-shift-select t
	  pr/emacs-dir "~/.config/emacs"
	  pr/org-dir "~/src/anteckningar"
	  tramp-allow-unsafe-temporary-files t
	  user-full-name "Patrik"
	  version-control t
 	  browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox"
      completion-category-overrides '((file (styles basic partial-completion)))
      completion-styles '(orderless basic)
      create-lockfiles nil
      dashboard-items '((recents . 25))
      dashboard-startup-banner nil
      delete-old-versions t
      enable-recursive-minibuffers t
      indent-tabs-mode t
      inhibit-splash-screen t
      inhibit-startup-message t
      initial-buffer-choice 'dashboard-open
      initial-scratch-message ";; scratch"
      recentf-max-menu-items 50
      recentf-max-saved-items 50
      tab-width 4
      tramp-default-method "ssh"
	  undo-tree-auto-save-history t
	  undo-tree-history-directory-alist '(("." . "~/.config/emacs/undo"))
      user-mail-address "patrik@vintergatan.space"
	  projectile-project-search-path '("~/src"))

(setq magit-display-buffer-function
	  (lambda (buffer)
        (display-buffer
         buffer (if (and (derived-mode-p 'magit-mode)
                         (memq (with-current-buffer buffer major-mode)
                               '(magit-process-mode
                                 magit-revision-mode
                                 magit-diff-mode
                                 magit-stash-mode
                                 magit-status-mode)))
                    nil
                  '(display-buffer-same-window)))))

(setq-default inhibit-startup-screen t
			  tab-width 4
			  Man-notify-method 'pushy
			  cursor-type 'bar)

(dashboard-setup-startup-hook)

(defalias 'yes-or-no-p 'y-or-n-p)

(add-hook 'python-mode-hook #'lsp)
(add-hook 'python-mode-hook
		  (lambda ()
			(setq indent-tabs-mode t)
			(setq python-indent 4)
			(setq tab-width 2)))

(put 'dired-find-alternate-file 'disabled nil)

;; fanns förut i 'look-and-feel.el'
;; (set-mouse-color "white")

;; (defun set-cursor-hook (frame)
;;   (modify-frame-parameters
;;    frame (list (cons 'mouse-color "white"))))

;; (add-hook 'after-make-frame-functions 'set-cursor-hook)

;; (setq centaur-tabs-style "bar"
;;         centaur-tabs-set-bar 'over
;;         centaur-height-tabs 30
;;         centaur-tabs-set-icons nil
;;         centaur-tabs-gray-out-icons 'buffer
;;         catppuccin-flavor 'mocha)

(with-eval-after-load 'lsp-mode
  (add-to-list 'lsp-language-id-configuration
               '(crystal-mode . "crystal"))
  (lsp-register-client
  (make-lsp-client :new-connection (lsp-stdio-connection '("crystalline"))
                   :activation-fn (lsp-activate-on "crystal")
                   :priority '1
                   :server-id 'crystalline)))

(if (daemonp)
	(add-hook 'after-make-frame-functions
			  (lambda (frame)
				(load-theme 'monokai-pro-octagon t))))

(load-theme 'monokai-pro-octagon t)
