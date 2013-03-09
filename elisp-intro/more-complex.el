;; Write an interactive function with an optional argument that tests
;; whether its argument, a number, is greater than or equal to, or
;; else, less than the value of `fill-column', and tells you which, in
;; a message.  However, if you do not pass an argument to the
;; function, use 56 as a default value.
(defun how-relates-to-fill-column (&optional number)
  "Describe whether NUMBER is greater than, equal to, or less than fill-column"
  (interactive "p")
  (let* ((default-number 56)
         (number-to-use (or number
                            default-number)))
    (if (eq number-to-use fill-column)
        (message "%s is equal to fill-column (%s)" number-to-use fill-column)
      (if (< number-to-use fill-column)
          (message "%s is less than to fill-column (%s)" number-to-use fill-column)
        (message "%s is greater than fill-column (%s)" number-to-use fill-column)))))

(how-relates-to-fill-column 69)
(how-relates-to-fill-column 70)
(how-relates-to-fill-column 71)
(how-relates-to-fill-column)
