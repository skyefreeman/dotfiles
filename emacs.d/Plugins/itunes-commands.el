;; start itunes-commands.el

(setq base-string "osascript -e 'tell application \"iTunes\"")

(defun itunes-applescript-command (command)
  "Runs an applescript iTunes command."
  (interactive "sCommand: ")
  (shell-command (format "%s to %s'" base-string command)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun itunes-toggle-play ()
  "Toggles iTunes' current track status. Pauses if playing, plays if paused."
  (interactive)
  (itunes-applescript-command "playpause"))

(defun itunes-next-track ()
  "Goes to the next iTunes track."
  (interactive)
  (itunes-applescript-command "next track"))

(defun itunes-previous-track ()
  "Goes to the previous iTunes track."
  (interactive)
  (itunes-applescript-command "previous track"))

(defun itunes-rewind ()
  "Rewinds the current iTunes track."
  (interactive)
  (itunes-applescript-command "rewind"))

(defun itunes-fastforward ()
  "Fast forwards the current iTunes track."
  (interactive)
  (itunes-applescript-command "fast forward"))

(defun itunes-resume-playback ()
  "Resumes regular playback on the the current iTunes track."
  (interactive)
  (itunes-applescript-command "resume"))

;; Search
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun itunes-search (artist)
  "Searches itunes' music library for artists matching ARTIST."
  (shell-command-to-string (format "%s to (search playlist \"Music\" for \"%s\" only artists)'" base-string artist)))

(defun itunes-play-track (track)
  (shell-command (format "%s to play track %s" base-string track)))

(setq bowie-songs (itunes-search "david bowie"))
(setq bowie-songs-list (split-string bowie-songs ", "))
(car bowie-songs-list)

(defun print-elements-of-list (list)
  (while list
    (print (car list))
    (setq list (cdr list))))

(print-elements-of-list bowie-songs-list)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun itunes-artist-search (artist)
  (interactive "sSearch: ")
  (setq search-string
	(format "%s %s %s %s"
		(format "%s to set results to (search playlist \"Music\" for \"%s\" only artists)'" base-string artist)
		"-e 'repeat with t in results'"
		"-e 'log (name of t as string)'"
		"-e 'end repeat'"))
  (shell-command search-string))

;;tell application "iTunes"
;;repeat with t in (search playlist "Music" for "The Clash" only artists)
;;log (name of t as string)
;;end repeat
;;end tell

;; itunes close
;; itunes search

;; END itunes-commands.el
