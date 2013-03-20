(defun pomodoros-so-far (progress-list)
  "Sum the pomodoros taken so far in a PROGRESS-LIST"
  (let ((total 0)
        (item)
        (item-name)
        (item-pomodoros))
    (while progress-list
      (setq item (car progress-list))
      (setq item-name (car item))
      (setq item-pomodoros (car (cdr item)))
      (setq total (+ total item-pomodoros))
      (setq progress-list (cdr progress-list)))
    total))

(defun pomodoros-summary
  (pomodoros-so-far pages-so-far pages-total)
  "Messages about pomodoros associated with working through a book"
  (let* ((pages-left (- pages-total pages-so-far))
         (pages-per-pomodoro (/ pages-so-far pomodoros-so-far))
         (pomodoros-left (/ pages-left pages-per-pomodoro)))
    (message "pomodoros: %d, pages/pomodoro: %d, pages left: %d, pomodoros left: %d"
             pomodoros-so-far
             pages-per-pomodoro
             pages-left
             pomodoros-left)))

(setq elisp-page-current 209)
(setq elisp-page-total 209)

(setq elisp-progress '(("Preface" 1)
                       ("List Processing" 3)
                       ("Practicing Evaluation" 1)
                       ("Writing Defuns" 3)
                       ("Buffer Walk Through" 2)
                       ("More Complex" 1)
                       ("Narrowing & Widening" 0.5)
                       ("car cdr & cons" 0.5)
                       ("Cutting & Storing Text" 4)
                       ("List Implementation" 0.5)
                       ("Yanking" 1)
                       ("Loops & Recursion" 5)
                       ("Regexp Search" 2)
                       ("Counting Words" 2)
                       ("Words in a defun" 2)
                       ("Readying a Graph" 2)
                       ("Emacs Initialization" 1)
                       ("Debugging" 1)
                       ("Conclusion" 0)
                       ))

(pomodoros-summary (pomodoros-so-far elisp-progress)
                elisp-page-current
                elisp-page-total)
