;; .emacs 

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(add-to-list 'load-path "~/.emacs.d/Plugins/")

(setq inhibit-startup-message t) ;;Hide startup message
(setq column-number-mode t)      ;;Display rows
(setq default-directory "~/")    ;;Sets default to Home directory

(package-initialize)

;;Turning off automatic backup files and autosaving files
(setq make-backup-files nil)
(setq auto-save-default nil)

;;Setting default window size
(when (window-system)
  (add-to-list 'default-frame-alist '(height . 50))
  (add-to-list 'default-frame-alist '(width . 150))
  (set-frame-position (selected-frame) 275 0))

;;Fixing Bash Path
;;(global-linum-mode 1);; Fringe line mode
(tool-bar-mode -1);; Disable tool-bar
(global-visual-line-mode 1); Proper line wrapping
(set-fringe-mode '(0 . 0)); Disable fringe of visual-line-mode

;;MELPA
(require 'package)
(add-to-list 'package-archives
  '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;;Load Custom Themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;;Autopair
(require 'autopair)
(autopair-global-mode) ;;Enable autopair in all buffers
(show-paren-mode 1)    ;;Matches parentheses

;;YASnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;autocomplete
;;(require 'auto-complete-config)
(global-auto-complete-mode 0)
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)
(ac-set-trigger-key "C-;")
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/ac-dict")
(setq ac-source-yasnippet nil)
(add-to-list 'completion-styles 'initials t)

;; xcode-mode
(add-to-list 'load-path "~/.emacs.d/Plugins/xcode-mode")
(require 'xcode-mode)

;; personal elisp files
(require 'toggle-shell)
(require 'aliases)
(require 'bindings)
(require 'functions)
(require 'registers)

;; Custom scratch buffer text
(setq initial-scratch-message "*scratch*\n\n")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wheatgrass)))
 '(custom-safe-themes
   (quote
    ("cf4b21d2a14cb2d9c8b347ef7a3900502237318197aea24a099001fa3cbf487e" "3ee402a796b1bf92ad3175ac5d6f48582aa232aa7854b5edaba54801a28dd08a" "90b5269aefee2c5f4029a6a039fb53803725af6f5c96036dee5dc029ff4dff60" "ce79400f46bd76bebeba655465f9eadf60c477bd671cbcd091fe871d58002a88" "c7359bd375132044fe993562dfa736ae79efc620f68bab36bd686430c980df1c" "0ebe0307942b6e159ab794f90a074935a18c3c688b526a2035d14db1214cf69c" "33c5a452a4095f7e4f6746b66f322ef6da0e770b76c0ed98a438e76c497040bb" "a774c5551bc56d7a9c362dca4d73a374582caedb110c201a09b410c0ebbb5e70" "e26780280b5248eb9b2d02a237d9941956fc94972443b0f7aeec12b5c15db9f3" "1989847d22966b1403bab8c674354b4a2adf6e03e0ffebe097a6bd8a32be1e19" default)))
 '(display-time-mode t)
 '(ede-project-directories
   (quote
    ("/tmp/ede-test/include" "/tmp/ede-test/src" "/tmp/ede-test")))
 '(fci-rule-color "#383838")
 '(fringe-mode (quote (nil . 0)) nil (fringe))
 '(indicate-buffer-boundaries (quote left))
 '(linum-format " %7i ")
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(show-paren-ring-bell-on-mismatch nil)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(visible-bell nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'erase-buffer 'disabled nil)
(put 'narrow-to-region 'disabled nil)
