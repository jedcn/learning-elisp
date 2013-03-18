;; Here are the defuns provided by the 'Readying a Graph' chapter.
;;
;; Without any modification, they function perfectly and produce a
;; "bar chart" like graph.
;;
;; However, see prior commit, the defun of column-of-graph has now
;; been modified to produce a line graph instead of a bar chart.

(defvar graph-symbol "*"
  "String used as symbol in graph, usually an asterisk.")

(defvar graph-blank " "
  "String used as blank in graph, usually a blank space.
     graph-blank must be the same number of columns wide
     as graph-symbol.")

(defun column-of-graph (max-graph-height actual-height)
  "Return MAX-GRAPH-HEIGHT strings; ACTUAL-HEIGHT are graph-symbols.
     The graph-symbols are contiguous entries at the end
     of the list.
     The list will be inserted as one column of a graph.
     The strings are either graph-blank or graph-symbol."

  (let ((insert-list nil)
        (number-of-top-blanks
         (- max-graph-height actual-height)))

    ;; Fill in `graph-blanks' under the main line.
    (while (> (- actual-height 1) 0)
      (setq insert-list (cons graph-blank insert-list))
      (setq actual-height (1- actual-height)))

    ;; Add a single graph-symbol to represent the main line.
    (setq insert-list (cons graph-symbol insert-list))

    ;; Fill in `graph-blanks' above the main line
    (while (> number-of-top-blanks 0)
      (setq insert-list (cons graph-blank insert-list))
      (setq number-of-top-blanks
            (1- number-of-top-blanks)))

    ;; Return whole list.
    insert-list))

(defun graph-body-print (numbers-list)
  "Print a bar graph of the NUMBERS-LIST.
     The numbers-list consists of the Y-axis values."

  (let ((height (apply 'max numbers-list))
        (symbol-width (length graph-blank))
        from-position)

    (while numbers-list
      (setq from-position (point))
      (insert-rectangle
       (column-of-graph height (car numbers-list)))
      (goto-char from-position)
      (forward-char symbol-width)
      ;; Draw graph column by column.
      (sit-for 0)
      (setq numbers-list (cdr numbers-list)))
    ;; Place point for X axis labels.
    (forward-line height)
    (insert "\n")
    ))

(graph-body-print '(1 2 3 4 6 4 3 5 7 6 5 2 3))

;; And here's what it used to produce:

        *
    *   **
    *  ****
   *** ****
  ********* *
 ************
*************

;; And here's what it produces now:

        *
    *    *
       *  *
   * *
  *   *     *
 *         *
*
