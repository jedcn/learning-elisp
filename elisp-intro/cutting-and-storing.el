;; Ugh. These exercises took up way too much time.
;;
;; The contents of the kill-ring are.. what? TextProperties? And how
;; are these accessed? Where was substring-no-properties mentioned?
;; Blah. This is not cool.
;;
;; Write an interactive function that searches for a string. If the
;; search finds the string, leave point after it and display a message
;; that says "Found!". (Do not use `search-forward' for the name of
;; this function; if you do, you will overwrite the existing version
;; of `search-forward' that comes with Emacs. Use a name such as
;; `test-search' instead.)
(defun search-for-text (s)
  (interactive "sSearch for text: ")
  (if (search-forward s)
      (message "Found!")
    (message "")))

;; Write a function that prints the third element of the kill ring in
;; the echo area, if any; if the kill ring does not contain a third
;; element, print an appropriate message.
(defun third-element-in-kill-ring ()
  (if (> (length kill-ring) 3)
      (let* ((third-from-last (- (length kill-ring) 3)))
        (message "%s" (substring-no-properties (car (nthcdr third-from-last kill-ring)))))
    (message "kill-ring only has %d elements" (length kill-ring))))

(third-element-in-kill-ring)
