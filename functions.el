(defun open-org-dir ()
  (interactive)
  (find-file "~/.org"))

(defun load-file-emacs-dir (filename)
  (expand-file-name filename user-emacs-directory))

(defun reload-init ()
  (interactive)
  (load-file
   (expand-file-name "init.el" user-emacs-directory)))

;; stal dessa från någonstans
(defun goto-random-line ()
  "Go to a random line in this buffer."
  ; good for electrobibliomancy.
  (interactive)
  (goto-line (1+ (random (buffer-line-count)))))

(defun buffer-line-count ()
  "Return the number of lines in this buffer."
  (count-lines (point-min) (point-max)))
