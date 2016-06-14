(in-package :hackathon)

(defun render-schedule (stream)
  (header-panel :mode "seamed"
    (toolbar :class "schedule"
      (:span :style "margin-left:0px;" :class "title" "Summer 2016 Missoula Civic Hackathon Event Schedule")
      (icon-button :class "toolbar-icon" :style "margin-left:0px;" :icon "arrow-back" :onclick "page(\"/\");"))
    (:div :style "padding:20px;" :class "schedule layout vertical center"
          (:div :style "max-width:700px;"
                (:div :class "timezone" "All times are Mountain Daylight Time (MDT)")

                (:h1 "Friday, June 17")
                (:table :class "schedule" (:tr (:th "6:00 p.m. &ndash; 8:00 p.m.")
                                               (:td "Social Gathering &mdash; Free Cycles")))
                (vertical-break)
                (:h1 "Saturday, June 18")
                (:table :class "schedule"
                        (iter (for (time what sub) in '(("9:00 a.m." "Doors Open &mdash; Coffee, Tea and Snacks")
                                                        ("9:30 a.m." "Lightning Talks")
                                                        ("10:30 a.m. &ndash; Noon" "Civic Hackathon Unconference" "(Free and Open to the Public!)")
                                                        ("Noon &ndash; 1:00p.m." "Lunch (some food will be provided)")
                                                        ("1:00 p.m. &ndash; 4:00 p.m." "Carnival!")
                                                        ("4:00 p.m." "Demos and Prizes")
                                                        ("5:00 p.m. &ndash; Midnight" "Worldwide Free Cycles Fundraiser")
                                                        ("8:00 p.m. &ndash; 10 p.m." "CryptoParty")))
                          (htm (:tr (:th (str time)) (:td
                                                      (if sub
                                                          (button :onclick (ps (visit-tickets)) :class "free-ticket layout vertical center"
                                                            (:span (str what))
                                                            (:span (str sub)))
                                                          (str what)))))))))))
