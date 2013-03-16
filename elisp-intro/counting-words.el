;; Using a `while' loop, write a function to count the number of
;; punctuation marks in a region--period, comma, semicolon, colon,
;; exclamation mark, and question mark. Do the same using recursion.

Hello. How are you? Hey look: I see a strange dog. I
said "Come here," and the dog sniffed my hand; she liked me!

(defun region-count-punctuation (beginning end)
  "Count punctuation marks in a region"
  (interactive "r")
  (save-excursion
    (let ((count 0))
      (goto-char beginning)
      (while (and (< (point) end)
                  (re-search-forward "[:;.?,!]" end t))
        (setq count (1+ count)))

      (cond ((zerop count)
             (message
              "The region does NOT have any punctuation marks."))
            ((= 1 count)
             (message
              "The region has 1 punctuation mark."))
            (t
             (message
              "The region has %d punctuation marks." count))))))

(defun recursive-count-punctuation (region-end)
  "Number of punctuation between point and REGION-END."

     ;;; 1. do-again-test
  (if (and (< (point) region-end)
           (re-search-forward "[:;.?,!]" region-end t))

     ;;; 2. then-part: the recursive call
      (1+ (recursive-count-punctuation region-end))

     ;;; 3. else-part
    0))

(defun count-punctuation-example (beginning end)
  "Print number of punctuation marks in the region.

     Punctuation marks are: ? or , or ; or ! or . or :
"
  (interactive "r")
  (message "Counting punctuation in region ... ")
  (save-excursion
    (goto-char beginning)
    (let ((count (recursive-count-punctuation end)))
      (cond ((zerop count)
             (message
              "The region does NOT have any punctuation marks."))
            ((= 1 count)
             (message "The region has 1 punctuation mark."))
            (t
             (message
              "The region has %d punctuation marks." count))))))
