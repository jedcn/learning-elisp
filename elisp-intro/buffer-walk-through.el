(simplified-end-of-buffer)

;; Write your own `simplified-end-of-buffer' function definition then
;; test it to see whether it works.
(defun simplified-end-of-buffer ()
  "Move the point to the end of this buffer"
  (interactive)
  (goto-char (point-max)))

;; Use `if' and `get-buffer' to write a function that prints a message
;; telling you whether a buffer exists.
(defun message-about-buffer-existing (buffer-name)
  "Print a message regarding the existence of a buffer named BUFFER-NAME"
  (interactive)
  (if (get-buffer buffer-name)
      (message "The buffer '%s' exists!" buffer-name)
    (message "The buffer '%s' does not exists" buffer-name)
      )
  )

(message-about-buffer-existing "*Messages*")
(message-about-buffer-existing "I-Just-Made-This-Up")

;; Using `find-tag', find the source for the `copy-to-buffer'
;; function.

;; My find-tag isn't working. I don't have the table like the Intro
;; describes, and I don't know how to find the table. I spent 15
;; minutes looking into this and gave up. I can create tag files for
;; .el files that I see, but how do I create tag files for gzip els
;; that are living in tar files?

;; At any rate, I can look-up the source by doing

(describe-function 'copy-to-buffer)

;; And then seeing 'copy-to-buffer is an interactive compiled Lisp
;; function in `simple.el'.' and then clicking on simple.el
