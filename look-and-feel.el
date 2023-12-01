(add-to-list 'default-frame-alist '(height . 50)) ;; Vertical frame size
(add-to-list 'default-frame-alist '(width . 100)) ;; Horizontal frame size
(add-to-list 'default-frame-alist '(left . 450))
(add-to-list 'default-frame-alist '(top . 200))
(add-to-list 'custom-theme-load-path "~/.config/emacs/themes")

(load-theme 'wilmersdorf t)
(set-face-font 'default "Source Code Pro Semibold-11")

(set-mouse-color "white")

(defun set-cursor-hook (frame)
  (modify-frame-parameters
   frame (list (cons 'mouse-color "white"))))

(add-hook 'after-make-frame-functions 'set-cursor-hook)

(blink-cursor-mode nil)
(setq-default cursor-type 'bar)
;; (setq centaur-tabs-style "bar"
;;         centaur-tabs-set-bar 'over
;;         centaur-height-tabs 30
;;         centaur-tabs-set-icons nil
;;         centaur-tabs-gray-out-icons 'buffer
;;         catppuccin-flavor 'mocha)
