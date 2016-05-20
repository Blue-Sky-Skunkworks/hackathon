(in-package :hackathon)

(require 'story-modules)

(defun initialize ()
  (story:initialize-story)
  (story:story "hackathon")
  (format t "Welcome to Hackathon!~%")
  (format t "~%~A~%" (cl-ansi-text:blue (art:text "Hackathon!" :font "standard"))))
