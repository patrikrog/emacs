(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; (straight-use-package
;;  '(hydrangea-theme :type git :host github :repo "yuttie/hydrangea-emacs"))
;; (straight-use-package 'ef-themes)
;; (straight-use-package 'centaur-tabs)
;; (straight-use-package 'autothemer)
;; (straight-use-package 'lua-mode)
;; (straight-use-package 'catppuccin-theme)
;; (straight-use-package
;;  '(kanagawa-theme :type git :host github :repo "meritamen/emacs-kanagawa-theme"))


(straight-use-package 'org)
(straight-use-package 'dashboard)
(straight-use-package 'electric)
(straight-use-package 'vertico)
(straight-use-package 'consult)
(straight-use-package 'consult-projectile)
(straight-use-package 'magit)
(straight-use-package 'orderless)
(straight-use-package 'bind-key)
(straight-use-package 'rg)
(straight-use-package 'lsp-mode)
(straight-use-package 'company-mode)
(straight-use-package 'projectile)
(straight-use-package 'treemacs)
(straight-use-package 'jinja2-mode)
(straight-use-package 'undo-tree)
(straight-use-package 'crystal-mode)
(straight-use-package 'monokai-pro-theme)
(straight-use-package 'persp-mode)
