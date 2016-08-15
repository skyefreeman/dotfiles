
;;;;;;;;;;;;;;;;;   Cheat Sheet   ;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Recording keyboard macros
;; 
;; C-X ( -> start-kbd-macro
;; C-X ) -> end-kbd-macro
;; C-X e -> execute macro
;; M-X name-last-kbd-macro
;; M-X insert-kbd-macro
;; 
;; Shortcuts
;;
;; C-h i m   -> Help Index
;; C-x r j * -> Jump to register *
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun build-milestone (text)
  (insert "")
  )

(format-spec "Milestone(\ntitle: %a, \ntaskDescription: %b, \nstatus: .Incomplete,\ntaskType: .Standard\n)," (format-spec-make ?a "LOLOL" ?b "LOLB"))


(defun output-line ()
  (interactive)
  (setq p1 (line-beginning-position))
  (setq p2 (line-end-position))
  (setq myLine (buffer-substring-no-properties p1 p2))
  (next-line 1)
  (insert myLine))


Video of mother-child play (3 minutes)
First prentatal check up
Weight, heart rate, blood pressure
Photo of pregnancy belly bulge (Week 5)
Photo of pregnancy belly bulge (Week 10)

