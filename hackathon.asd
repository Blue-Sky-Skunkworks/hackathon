(defsystem "hackathon"
  :description "none"
  :version "0.1"
  :author "unknown"
  :license "unknown"
  :serial t
  :depends-on ("story" "story-module-polymer")
  :components ((:static-file "hackathon.asd")
               (:file "package")
               (:file "utility")
               (:file "logo")
               (:file "sponsors")
               (:file "press-release")
               (:file "schedule")
               (:file "sharing")
               (:file "code-of-conduct")
               (:file "time")
               (:file "main")
               (:file "initialize")))
