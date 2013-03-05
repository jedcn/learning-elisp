;; Functions I've seen

;; The name of the current buffer
(buffer-name)

;; The name of the file that is being visited in the current buffer
(buffer-file-name)

;; The location, in terms of number of characters, of the cursor
;; within the buffer
(point)

;; The smallest location that the cursor could have within the buffer
(point-min)

;; The largest location that the cursor could have within the buffer
(point-max)

;; Switch to the most recently visited, non-visible buffer
(switch-to-buffer (other-buffer))
