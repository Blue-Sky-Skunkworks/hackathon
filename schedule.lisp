(in-package :hackathon)

(defun render-schedule (stream)
  (header-panel :mode "seamed"
    (toolbar :class "schedule"
      (:span :style "margin-left:0px;" :class "title" "Fall 2016 Missoula Civic Hackathon Event Schedule")
      (icon-button :class "toolbar-icon" :style "margin-left:0px;" :icon "arrow-back" :onclick "page(\"/\");"))
    (:div :style "padding:20px;" :class "schedule layout vertical center"
          (:div :style "max-width:700px;"
                (:div :class "timezone" "All times are Mountain Daylight Time (MDT)")
                (:h1 "Saturday, September 24")
                (:table :class "schedule"
                        (iter (for (time what sub) in '(("9:00 a.m." "Doors Open &mdash; Coffee, Tea and Snacks")
                                                        ("9:30 a.m." "Lightning Talks")
                                                        ("10:30 a.m. &ndash; Noon" "Civic Hackathon Unconference" "(Free and Open to the Public!)")
                                                        ("Noon &ndash; 1:00p.m." "Lunch (some food will be provided)")
                                                        ("1:00 p.m. &ndash; 5:00 p.m." "Open Workshops")
                                                        ("5:00 p.m. &ndash; Midnight" "Worldwide Standing Rock Fundraiser")
                                                        ("8:00 p.m. &ndash; 10 p.m." "CryptoParty")))
                          (htm (:tr (:th (str time)) (:td
                                                      (if sub
                                                          (htm (:span (str what))
                                                               (:br) (:span (str sub)))
                                                          (str what)))))))))))
