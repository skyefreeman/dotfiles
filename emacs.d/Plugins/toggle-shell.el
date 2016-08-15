;; start toggle-shell.el

(defun activate-shell-window ()
  "Splits the window vertically, activating a shell"
  (split-window-vertically -15)
  (other-window 1)
  (shell))

(defun window-buffer-name (window)
  (setq buffer (window-buffer window))
  (buffer-name buffer))

(defun shell-window-active ()
  "Returns a window visiting a *shell* if one exists."
  (let (window 'nil)
    (setq windows (window-list))
    (while windows
      (setq current-window (car windows))
      (setq current-buffer-name (window-buffer-name current-window))
      (when (string= current-buffer-name "*shell*")
	(setq window current-window))
      (setq windows (cdr windows)))
    window))

;; Public

(defun toggle-shell ()
  "Activates a shell if one is not visible, otherwise the visible shell is hidden"
  (interactive)
  (setq shell-window (shell-window-active))
  (if shell-window
      (delete-window shell-window)
    (activate-shell-window)))

(provide 'toggle-shell)
;; end toggle-shell.el
