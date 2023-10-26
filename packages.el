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
(straight-use-package 'org)
(straight-use-package 'centaur-tabs)
(straight-use-package 'dashboard)
(straight-use-package 'electric)
(straight-use-package 'vertico)
(straight-use-package 'consult)
(straight-use-package 'autothemer)
(straight-use-package 'magit)
(straight-use-package 'orderless)
(straight-use-package 'bind-key)
