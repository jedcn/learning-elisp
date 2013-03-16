;; Using a `while' loop, write a function to count the number of
;; punctuation marks in a region--period, comma, semicolon, colon,
;; exclamation mark, and question mark. Do the same using recursion.

Hello. How are you? Hey look: I see a strange dog. I
said "Come here," and the dog sniffed my hand; she liked me!

(defun region-count-punction (beginning end)
  "Count punction marks in a region"
  (interactive "r")
  (save-excursion
    (let ((count 0))
      (goto-char beginning)
      (while (and (< (point) end)
                  (re-search-forward "[:;.?,!]" end t))
        (setq count (1+ count)))

      (cond ((zerop count)
             (message
              "The region does NOT have any punction marks."))
            ((= 1 count)
             (message
              "The region has 1 punction mark."))
            (t
             (message
              "The region has %d punction marks." count))))))
