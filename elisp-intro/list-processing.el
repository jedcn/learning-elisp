;; Emacs Lisp Intro
;;   List Processing
;;
;; This is a list:
'(coffee milk sugar)

;; When I'm viewing this within emacs, I can evaluate the line above
;; by placing cursor at the end of the list and pressing C-x C-e

;; Lists can be defined over several lines:
'(coffee
  milk
  sugar)

;; List can contain numbers
'(1 2 3)

;; List can contain both numbers and strings
'(coffee 1 milk 2 sugar 3)

;; List can contain other lists
'(a list can contain '(another list))
'(coffee milk sugar '(1 2 3))

;; It appears that you need to put that single quote at the beginning
;; of a list else lisp will want to think the first thing in the list
;; is a function:
(coffee milk sugar)

;; The line above results in a stack trace when I try to evalute it,
;; and it seems to say that it expected "coffee" to be a function

;; The things within the lists above, such as coffee and 1 are called
;; atoms.

;; lisp is all about lists and atoms. When atoms are put together
;; between parenthesis and separated by whitespace you get lists.

;; There's only one thing that's both a list and an atom: the empty
;; list:
()

;; Atoms have types and usually those types are used when referring to
;; things, not the word atom.

;; Here's another type of atom that we haven't seen yet: text between
;; quotes aka a String
'(coffee milk sugar "swizzle stick")
