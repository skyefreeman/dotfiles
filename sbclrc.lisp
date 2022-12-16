(defpackage :skyetools
  (:use :common-lisp)
  (:export #:start-ssk))

(in-package :skyetools)

;; How to: Load the current file and sync the repl
;;
;;  C-c ~ (sly-mprepl-sync)
;;

;; SwiftStarterKits

(defun start-ssk ()
  "Loads the SwiftStarterKits system and starts the server for development." 
  (ql:quickload "starterkit-web")
  (if (not (starterkit-web:running?))
      (starterkit-web:start :port 8080))
  (in-package :starterkit-web))

;; todo: dynamically add projects to local-projects
;; todo: save this file in dotfiles
;; todo: add this file as part of new machine setup


(in-package :cl-user)
