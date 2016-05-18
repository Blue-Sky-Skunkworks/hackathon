(in-package :hackathon)

(defun asdf-base-path (name)
  (directory-namestring (asdf:component-pathname (asdf:find-system name))))

(defun hackathon-file (&optional  base)
  (concatenate 'string (asdf-base-path :hackathon) base))

(defun last1 (list)
  (car (last list)))

