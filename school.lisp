(in-package :hackathon)

(defun render-school (stream)
  (header-panel :mode "seamed"
    (toolbar :class "school"
      (:span :style "margin-left:0px;" :class "title" "Missoula Civic Hackathon Programming School")
      (icon-button :class "toolbar-icon" :style "margin-left:0px;" :icon "arrow-back" :onclick "page(\"/\");"))
    (:div :style "padding:20px;" :class "layout vertical center"
          (card :style "margin-top:40px;padding:20px;max-width:400px;" :class "layout vertical center"
            (image :alt "small hackathon logo" :src "images/logo-small.png")
            (:p "We have started a free self-paced
                           programming school to bring interested
                           people up to speed on the rapid prototyping
                           skills necessary to pull off a 24 hour
                           hackathon with grace and style.")
            (vertical-break)
            (button :onclick "joinSchool();" :class "join-school" "Join the Missoula Civic Hackathon Programming School"))))
  )

