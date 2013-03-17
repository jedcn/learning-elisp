;; There was a bunch of awesome stuff in this chapter. Here's what I
;; stumbled upon in response to it

;; Externally, run the command "pwd" and see what it returns
(compile "pwd")

;; Show a message describing the pwd
(pwd)

;; The variable that pwd references
default-directory

;; A list containing the files in the pwd
(directory-files default-directory)

;; The name of this buffer
(buffer-name)

;; The name of the file behind this buffer
(buffer-file-name)
