(setq gc-cons-threshold 100000000)
(add-hook 'after-init-hook (lambda () (setq gc-cons-threshold (* 10 1024 1024))))

(load (expand-file-name "packages.el" user-emacs-directory))
(load (expand-file-name "keybinds.el" user-emacs-directory))
(load (expand-file-name "look-and-feel.el" user-emacs-directory))
(load (expand-file-name "functions.el" user-emacs-directory))

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(recentf-mode t)
(vertico-mode t)
(centaur-tabs-mode t)
(electric-pair-mode t)
(hl-line-mode t)
(global-display-line-numbers-mode t)
(delete-selection-mode t)
(cua-mode t)

(setq backup-by-copying t
 	  browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox"
	  backup-directory-alist '(("." . "~/.config/emacs/backups"))
	  completion-category-defaults nil
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
	  tramp-allow-unsafe-temporary-files t
	  user-full-name "Patrik"
      user-mail-address "patrik@vintergatan.space"
	  version-control t
	  org-replace-disputed-keys t
	  org-support-shift-select t)

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
			  Man-notify-method 'pushy)

(dashboard-setup-startup-hook)

(defalias 'yes-or-no-p 'y-or-n-p)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("75fb82e748f32de807b3f9e8c72de801fdaeeb73c791f405d8f73711d0710856" "65a1a112abd99456167df57ce2cfff42ed137c4f9146e75b2ae9812499689c3a" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "524fa911b70d6b94d71585c9f0c5966fe85fb3a9ddd635362bfabd1a7981a307" "0bbfb2d1f64662bdfa107125ddb157e1709e164ee9d4b88ad39b533ef96dcc97" "9f76d044d2eac30c5c351e34c913dfeee3ab71ef97fd51f90ceeb16134c69b1f" "831aeccb5350f71e04e24e077f810ec8a0cdb49c66faf8f10eb3dfde60f3facb" default)))
(put 'dired-find-alternate-file 'disabled nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
