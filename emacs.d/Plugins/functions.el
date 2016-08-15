;; start functions.el

(defun move-line-up()
  "Move's the current line up 1"
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

(defun move-line-down()
  "Move's the current line down 1"
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

(defun apply-function-to-region-lines (fn)
  "Takes a function FN and applies it to the selected region"
  (interactive "aFunction to apply to region: ")
  (save-excursion
    (goto-char (region-end))
    (let ((end-marker (copy-marker (point-marker))) next-line-marker)
      (goto-char (region-beginning))
      (if (not (bolp))
	  (forward-line 1))
      (setq next-line-marker (point-marker))
      (while (< next-line-marker end-marker)
	(let ((start nil)
	      (end nil))
	  (goto-char next-line-marker)
	  (save-excursion
	    (setq start (point))
	    (forward-line 1)
	    (set-marker next-line-marker (point))
	    (setq end (point)))
	  (save-excursion
	    (let ((mark-active nil))
	      (narrow-to-region start end)
	      (funcall fn)
	      (widen)))))
      (set-marker end-marker nil)
      (set-marker next-line-marker nil))))

(defun insert-date ()
  "Inserts the current date in a specified form.  Short: 'm/d/y'. Medium: 'month day, year' "
  (interactive)
  (setq date-choice (completing-read "Format type: " '("short" "medium") nil t))
  (cond
   ((string= date-choice "short") (insert (format-time-string "%D")))
   ((string= date-choice "medium") (insert (format-time-string "%B %d, %Y")))))

(provide 'functions)
;; end functions.el
