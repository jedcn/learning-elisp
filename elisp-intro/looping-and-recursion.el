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
;;
;; My interpretation of the question is that we're back to this:
;;
;;          *
;;         * *
;;        * * *
;;       * * * *
;;
;; And row 1 has 1 pebble, and row 2 has 2 pebbles, and previously if
;; we asked for a value of row two it would be 1 + 2 = 3 pebbles, but
;; now we want to do 1 * 2 = 2 pebbles.
;;
;; So, row 3 would be: 3 * 2 * 1 = 6 pebbles.
;;
;; Looks like factorial.
(defun triangle-multiplied (number-of-rows)
  "Multiple values in the triangle with ROW-COUNT rows"
  (interactive "d")
  (let ((total 1)
        (row-number 1))
    (while (<= row-number number-of-rows)
      (setq total (* total row-number))
      (setq row-number (1+ row-number)))
    total))

(eq 1 (triangle-multiplied 1))
(eq 2 (triangle-multiplied 2))
(eq 6 (triangle-multiplied 3))
(eq 24 (triangle-multiplied 4))
(eq 120 (triangle-multiplied 5))

;; Rewrite these two functions recursively.

(defun triangle-with-squares-recursively (number)
  "Add together values in the perfect square triangle with NUMBER rows"
    (if (= number 1)
      1
    (+ (* number (* number number)) ; What each "row" contributes: n * n^2
       (triangle-with-squares-recursively
        (1- number)))))

(eq 1 (triangle-with-squares-recursively 1))
(eq 9 (triangle-with-squares-recursively 2))
(eq 36 (triangle-with-squares-recursively 3))
(eq 100 (triangle-with-squares-recursively 4))

(defun triangle-multiplied-recursively (number)
  "Multiple values in the triangle with ROW-COUNT rows"
  (if (= number 1)
      1
    (* number
       (triangle-multiplied-recursively
        (1- number)))))

(eq 1 (triangle-multiplied-recursively 1))
(eq 2 (triangle-multiplied-recursively 2))
(eq 6 (triangle-multiplied-recursively 3))
(eq 24 (triangle-multiplied-recursively 4))
(eq 120 (triangle-multiplied-recursively 5))

;; Rewrite these functions using `cond'.
(defun triangle-with-squares-using-cond (number)
  (cond ((<= number 0) 0)
        ((= number 1) 1)
        ((> number 1)
         (+ (* number (* number number))
          (triangle-with-squares-using-cond (1- number))))))

(eq 1 (triangle-with-squares-using-cond 1))
(eq 9 (triangle-with-squares-using-cond 2))
(eq 36 (triangle-with-squares-using-cond 3))
(eq 100 (triangle-with-squares-using-cond 4))

(defun triangle-multiplied-using-cond (number)
  "Multiple values in the triangle with ROW-COUNT rows"
  (cond ((<= number 0) 0)
        ((= number 1) 1)
        ((> number 1)
         (* number
            (triangle-multiplied-using-cond (1- number))))))

(eq 1 (triangle-multiplied-using-cond 1))
(eq 2 (triangle-multiplied-using-cond 2))
(eq 6 (triangle-multiplied-using-cond 3))
(eq 24 (triangle-multiplied-using-cond 4))
(eq 120 (triangle-multiplied-using-cond 5))

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
(defun texinfo-indexing ()
  "Creates an index entry at the beginning of a paragraph for
every `@dfn' within the paragraph."
  (message "I'll be back"))
