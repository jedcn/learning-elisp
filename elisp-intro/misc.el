;; message is helpful in debugging. It can be used like Ruby's puts or
;; console.log in most JavaScript interpeters
(message "Made it here")

;; String values can be insterted into message with %s
(message "Made it to %s" "here")

;; Numeric values with %d, and we can mix like so:
(message "Made it to %s %d times" "here" 5)

;; You can bind variables with set
(set 'x 1)
x          ;; => 1
(+ x x)    ;; => 2

;; You'll see that the x in the expression above has a single quote
;; in front of it.

;; You can skip the need for this quote with setq
(setq y 2)
y          ;; => 2
(+ y y)    ;; => 4

;; You can also use setq to assign multiple values
(setq x 1
      y 2
      z 3)

(+ x y z)  ;; => 6
