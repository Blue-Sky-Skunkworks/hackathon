(in-package :hackathon)

(defun initialize ()
  (story:initialize-story)
  (story:story "hackathon")
  (format t "Welcome to the Hackathon!~%"))
