;; Write a function similar to `triangle' in which each row has a
;; value which is the square of the row number. Use a `while' loop.
;;
;; My interpretation of the question is that we're dealing with
;; something like this:
;;
;;      1
;;     4 4
;;   9  9  9
;; 16 16 16 16
;;
;; And we want to figure out what the total sum of these numbers are
;; for any row-- so:
;;
;; row
;; ------------------------------
;; 1: 1
;;   => 1
;;
;; 2: (+ 1 4 4)
;;   => 9
;;
;; 3: (+ 1 4 4 9 9 9)
;;   => 36
;;
;; 4: (+ 1 4 4 9 9 9 16 16 16 16)
;;   => 100
;;
(defun triangle-with-squares (number-of-rows)
  "Add together values in the perfect square triangle with ROW-COUNT rows"
  (interactive "d")
  (let ((total 0)
        (row-number 1)
        (row-number-squared)
        (row-total))
    (while (<= row-number number-of-rows)
      (setq row-number-squared (* row-number row-number))
      (setq row-total (* row-number row-number-squared))
      (setq total (+ total row-total))
      (setq row-number (1+ row-number)))
    total))

(eq 1 (triangle-with-squares 1))
(eq 9 (triangle-with-squares 2))
(eq 36 (triangle-with-squares 3))
(eq 100 (triangle-with-squares 4))

;; Write a function similar to `triangle' that multiplies instead of
;; adds the values.

;; Rewrite these two functions recursively. Rewrite these functions
;; using `cond'.

;; Write a function for Texinfo mode that creates an index entry at
;; the beginning of a paragraph for every `@dfn' within the paragraph.
;; (In a Texinfo file, `@dfn' marks a definition. This book is written
;; in Texinfo.)

;; Many of the functions you will need are described in two of the
;; previous chapters, *note Cutting and Storing Text: Cutting &
;; Storing Text, and *note Yanking Text Back: Yanking.  If you use
;; `forward-paragraph' to put the index entry at the beginning of the
;; paragraph, you will have to use `C-h f' (`describe-function') to
;; find out how to make the command go backwards.
