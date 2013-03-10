;; Construct a list of four birds by evaluating several expressions with
;; `cons'.  Find out what happens when you `cons' a list onto itself.
;; Replace the first element of the list of four birds with a fish.
;; Replace the rest of that list with a list of other fish.
;;
;; (1) A list of 4 birds built up with conses
(setq some-birds (cons 'robin
                       (cons 'blue-jay
                             (cons 'crow
                                   (cons 'cardinal
                                         ())))))
;; => (robin blue-jay crow cardinal)
;;
;; (2) That list consed onto itself
(cons some-birds some-birds)
;; => ((robin blue-jay crow cardinal) robin blue-jay crow cardinal)

;; (3) Replace the first element of the list of four birds with a
;; fish.
(setcar some-birds 'grouper)
;; => grouper
;; setcar returned the new car, but now some-birds is:
some-birds
;; => (grouper blue-jay crow cardinal)
;;
;; (4) Replace the rest of that list with a list of other fish.
(setcdr some-birds '(mackeral trout tuna))
;; => (mackeral trout tuna)
;; setcdr returned the new cdr, but now some-birds is:
some-birds
;; => (grouper mackeral trout tuna)
