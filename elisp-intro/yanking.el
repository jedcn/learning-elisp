;; Using `C-h v' (`describe-variable'), look at the value of your kill
;; ring. Add several items to your kill ring; look at its value again.
;; Using `M-y' (`yank-pop)', move all the way around the kill ring.
;; How many items were in your kill ring? Find the value of
;; `kill-ring-max'. Was your kill ring full, or could you have kept
;; more blocks of text within it?

kill-ring

(length kill-ring)
;; => 60

kill-ring-max
;; => 60

;; Using `nthcdr' and `car', construct a series of expressions to
;; return the first, second, third, and fourth elements of a list.

(setq breads '(wheat rye sourdough wonder))
;; => (wheat rye sourdough wonder)

(let
    ((first (car breads))
     (second (car (nthcdr 1 breads)))
     (third (car (nthcdr 2 breads)))
     (fourth (car (nthcdr 3 breads))))
  (message "1: %s, 2: %s, 3: %s, 4: %s" first second third fourth))
