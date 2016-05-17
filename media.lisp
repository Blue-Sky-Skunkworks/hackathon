(in-package :hackathon)

(defparameter *media*
  '(("The Missoula Independent" "http://missoulanews.bigskypress.com/missoula/hackathon/Content?oid=2756399" "independent")
    ("KPAX" "http://www.kpax.com/story/31573624/civic-hackathon-brainstorms-environmental-solutions" "kpax")))

(defun render-media (stream)
  (header-panel :mode "seamed" :id "media-panel"
    (toolbar :class "media"
      (:span :style "margin-left:0px;" :class "title" "Media Coverage of the Missoula Civic Hackathon ")
      (icon-button :class "toolbar-icon" :style "margin-left:0px;" :icon "arrow-back" :onclick "page(\"/\");"))
    (:div :style "padding:20px;" :class "fit layout vertical"
          (:div :id "medias" :style "padding:10px 60px 10px 60px;"
                (iter (for index from 0)
                  (for (name url image grey) in *media*)
                  (card :class "pack" :id (format nil "card-~A" index)
                    (:div :class (concatenate 'string "card-content" (when grey " grey"))
                          (:a :target "_blank" :href url
                              (if image
                                  (image :alt name :src (format nil "images/media/~A.png" image))
                                  (esc name))))))))))
