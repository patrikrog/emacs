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
(centaur-tabs-mode 0)
(electric-pair-mode t)
(hl-line-mode t)
(global-display-line-numbers-mode t)
(delete-selection-mode t)
(cua-mode t)
(rg-enable-default-bindings)

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
	  org-support-shift-select t
	  pr/org-dir "/mnt/disk/notes"
	  pr/emacs-dir "~/.config/emacs"
	  lsp-keymap-prefix "C-l"
	  lsp-pylsp-plugins-autopep8-enabled t)

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

(require 'lsp-mode)
(add-hook 'python-mode-hook #'lsp)
(add-hook 'python-mode-hook
		  (lambda ()
			(setq indent-tabs-mode t)
			(setq python-indent 4)
			(setq tab-width 2)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "6198e96f1fd7de3889a1b6ab8be1fc9b7c734cc9db0b0f16b635a2974601f977" "3454885b915a176dce4b53e35053b7ee0aa9362fb9e934057ac44b6842a97453" "13a82ed60ee49cf347bbd110c2ab687cabb00db09f04d1bed36ad943f8163013" "46325e20421d2b4423cc90db5a35e0a45bd78a6f3e26c52314b189af3cc00733" "30b323c73d2b24c3eff96802f0085fbfef3c6d2aad03ddfb5f615b658b2d5bfa" "e8ab68ce371f48623dab9658d7910458e98affec3e09585a39552dbd3fd1ecda" "64204b9e3ad01000654d5524d2904fc8fa28aafc168f48660897ddfe36a2bfd5" "8e08bb8da358e2cf92e10e4bac47b025ccbcf4c70788cdbd67dc4ed11f786194" "82f0f47ac811eeb45fbcfc5fee48989e4d0bca11f74653b838c29fab9a20aee7" "d31c3706f7c1b0520405c796b33f515bc481d2062cbc964f3c36925665999a6d" "454e92bc5f22f690afce91cb6f92a3ccb638c57a89e84c55759fb16dfb2444e4" "6c01b5d4faa0f143055e63c9fba8e23e9160f181e54b14b46d56410811edbc9e" "ccb2ff53e9794d059ff941fabcf265b67c8418da664db8c4d6a3d656962b7135" "6ed8a3705a4296955010ecfcf808f02ac0d52985373e07c63f7fe5bc85206bb4" "ed6e47baf355da248c4de8953058234b82c8f838fc85f570f9fe1700e47b9426" "7021d655cda2ed5476960e166350d6cf9ee8af874216a26bc5457591222bb330" "f7b6b207d7a6318ea5d33ca2dea51483350d0c26beb986f008d63258b9c112ab" "46ae6660834278f41a1c074b817bb316f2da0196513b59a83a2a49b846a9921f" "d9c038dc91688c433de8e83709449563ec6475b900a21d7016856035ae4dcd32" "44b463a6e1111340cee98070c9492d95d8c2fcd7ad9397541687a06c24ad85cf" "0d12b08dec64641c5df1a13d2c52ad678f6235a9b1c86041ea457fc1a71651dc" "2d09bd884d697b48b380b48117ccaebd8e99fe1cb242e31675dcec5724c603f6" "f84dbe5cfa80aa6774c57fef30d76bcdeb71bd0077665fb74f75728c42f5675d" "2ef84b2c7ad4810912a095993ca8bdf386e1fd7f97842b57aac62dddb2bba211" "71acf47cc8cd4158e52ef63a9f8c4d128aa33d6772a0106b5a72757486047e08" "9b64a681308383067359cf06bfa6a1bc4fa75c5b68182e4d6ba4d1816277d70e" "75fb82e748f32de807b3f9e8c72de801fdaeeb73c791f405d8f73711d0710856" "65a1a112abd99456167df57ce2cfff42ed137c4f9146e75b2ae9812499689c3a" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "833ddce3314a4e28411edf3c6efde468f6f2616fc31e17a62587d6a9255f4633" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "524fa911b70d6b94d71585c9f0c5966fe85fb3a9ddd635362bfabd1a7981a307" "0bbfb2d1f64662bdfa107125ddb157e1709e164ee9d4b88ad39b533ef96dcc97" "9f76d044d2eac30c5c351e34c913dfeee3ab71ef97fd51f90ceeb16134c69b1f" "831aeccb5350f71e04e24e077f810ec8a0cdb49c66faf8f10eb3dfde60f3facb" default)))
(put 'dired-find-alternate-file 'disabled nil)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "#1f1f28" :foreground "#DCD7BA" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "ADBO" :family "Source Code Pro")))))
