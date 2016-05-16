(in-package :hackathon)

(defun render-sharing (stream)
  (html
    (header-panel :mode "seamed"
      (toolbar :class "sharing"
        (:span :style "margin-left:0px;" :class "title" "Missoula Civic Hackathon Ride & Couch Sharing")
        (icon-button :class "toolbar-icon" :style "margin-left:0px;" :icon "arrow-back" :onclick "page(\"/\");"))
      (:div :style "padding:20px;" :class "layout vertical center"
            (:div :style "padding-top:60px;max-width:700px;"
                  "Please use the <a target='_blank'
            href='https://groups.google.com/forum/#!forum/blue-sky-skunkworks'>mailing
            list</a> for ride and couch requests. <br><br> We have at
            least 4 spaces free at the moment for sleeping during the
            Hackathon.")))))
