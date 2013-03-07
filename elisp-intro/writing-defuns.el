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
