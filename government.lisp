(in-package :hackathon)

(defparameter *government*
   '(("Senator John Tester" "http://www.tester.senate.gov/" "Tester" render-tester-button)))

(defun render-government (stream)
  (header-panel :mode "seamed"
    (toolbar :class "government"
      (:span :style "margin-left:0px;" :class "title" "Missoula Civic Hackathon Friends in Government")
      (icon-button :class "toolbar-icon" :style "margin-left:0px;" :icon "arrow-back" :onclick "page(\"/\");"))
    (:div :style "padding:20px;" :class "layout vertical"
          (:h1 :style "margin-bottom:0px;" "Thanks to all of the Missoula Civic Hackathon's friends in government")
          (vertical-break "30px")
          (:div :id "government" :style "padding:10px 60px 10px 60px;"
                (iter (for index from 0)
                  (for (name url image additional) in *government*)
                  (card :class "pack" :id (format nil "card-~A" index)
                    (:div :class "card-content layout vertical center"
                          (:a :target "_blank" :href url
                              (if image
                                  (image :alt name :src (format nil "images/government/~A.png" image))
                                  (esc name)))
                          (when additional (funcall additional stream)))))))))

(defun render-tester-button (stream)
  (button :onclick (ps (view-testers-message)) "Read the Senator's Message"))

(in-package :story-js)

(define-script government
  (defun view-testers-message ()
    (visit-url "/documents/Senator-Tester-Spring-2016-Hackathon-Message.pdf")))
