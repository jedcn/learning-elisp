;; Set `flowers' to `violet' and `buttercup'. Cons two more flowers on
;; to this list and set this new list to `more-flowers'. Set the CAR
;; of `flowers' to a fish. What does the `more-flowers' list now
;; contain?

(setq flowers '(violet buttercup))
;; => (violet buttercup)

(setq more-flowers (cons 'daisy (cons 'rose flowers)))
;; => (daisy rose violet buttercup)

(setcar flowers 'mackeral)
;; => mackeral

flowers
;; => (mackeral buttercup)

more-flowers
;; => (daisy rose mackeral buttercup)
