(in-package :hackathon)

(require 'story-modules)

(defun initialize ()
  (story:initialize-story)
  (story:story "hackathon")
  (format t "Welcome to the Hackathon!~%"))
