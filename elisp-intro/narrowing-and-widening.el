123456789012345678901234567890123456789012345678901234567890DONT-INCLUDE-ME
;; Write a function that will display the first 60 characters of the
;; current buffer, even if you have narrowed the buffer to its latter
;; half so that the first line is inaccessible. Restore point, mark,
;; and narrowing. For this exercise, you need to use a whole potpourri
;; of functions, including `save-restriction', `widen', `goto-char',
;; `point-min', `message', and `buffer-substring'.

;; (`buffer-substring' is a previously unmentioned function you will
;; have to investigate yourself; or perhaps you will have to use
;; `buffer-substring-no-properties' or `filter-buffer-substring' ...,
;; yet other functions. Text properties are a feature otherwise not
;; discussed here. *Note Text Properties: (elisp)Text Properties.)

;; Additionally, do you really need `goto-char' or `point-min'? Or can
;; you write the function without them?
(defun first-60-chars ()
  "Display the first 60 characters of the current buffer"
  (interactive)
  (save-restriction
    (widen)
    (message "%s" (buffer-substring-no-properties 1 61))))

(first-60-chars)
