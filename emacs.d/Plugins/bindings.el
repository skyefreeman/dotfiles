
(global-set-key (kbd "<C-tab>") 'other-window) ;; cycle through windows

(global-set-key [(meta n)] 'move-line-down) ;;Moves current line down
(global-set-key [(meta p)] 'move-line-up)  ;;Moves current line up

(global-set-key (kbd "C-s-c") 'mc/edit-lines) ;;Adds cursor to each line selection
(global-set-key (kbd "C-.") 'mc/mark-next-like-this) ;;Adds cursor to next word selection
(global-set-key (kbd "C-,") 'mc/mark-previous-like-this) ;;Adds cursor to previous word selection
(global-set-key (kbd "C-c .") 'mc/mark-all-like-this) ;;Adds cursor to all instances of word selection

(global-set-key (kbd "C-=") 'toggle-shell) ;;Calls the toggle-shell function

(provide 'bindings)
