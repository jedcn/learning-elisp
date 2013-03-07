;; This is how you write a function:
;;
;; (defun FUNCTION-NAME (ARGUMENTS...)
;;   "OPTIONAL-DOCUMENTATION..."
;;   (interactive ARGUMENT-PASSING-INFO)     ; optional
;;   BODY...)

(defun multiply-by-seven (number)
  "Multiply NUMBER by seven."
  (* 7 number))

(defun multiply-by-seven (number) ; second version
  "Multiply NUMBER by seven."
  (+ number number number number number number number))

;; Invoke this by typing: C-u 9 M-x multiply-by-7 and see that it
;; ends up as 63

(defun multiply-by-seven (number) ; interactive version
  "Multiply NUMBER by seven."
  (interactive "p")
  (message "The result is %d" (* 7 number)))

(multiply-by-seven 7)

;; Here's an example of what a "let" looks like
;; It declare 3 symbols: firstname, lastname, and age
(let ((firstname "Jed")       ; firstname is initialized to Jed
      (lastname "Northridge") ; lastname is initialized to Northridge
      age)                    ; age isn't initialized to anything, so
                              ; it gets nil

  ;; And here's the body..
  ;; It sets a variable and echos a message
  (setq age 12)
  (message "%s %s must be %d years old."
           firstname lastname age)
  )


;; Write a non-interactive function that doubles the value of its
;; argument, a number.
(defun doubler (number)
  "Double NUMBER"
  (+ number number))

(doubler 20)

;; Make that function interactive.
(defun doubler (number)
  "Double NUMBER"
  (interactive "p")
  (message "%s"(+ number number)))

;; Write a function that tests whether the current value of
;; `fill-column' is greater than the argument passed to the function,
;; and if so, prints an appropriate message.
(defun larger-than-fill-column (number)
  "Message if NUMBER is greater than fill-column"
  (if (> number fill-column)
      (message "%s is greater than fill-column (%s)" number fill-column)
    (message "%s is not greater than fill-column (%s)" number fill-column)
      ))

(larger-than-fill-column 20)
(larger-than-fill-column 200)
