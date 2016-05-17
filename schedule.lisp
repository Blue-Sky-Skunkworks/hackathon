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
                                               (:td "Social Gathering &mdash; Location TBD")))
                (vertical-break)
                (:h1 "Saturday, June 18")
                (:table :class "schedule"
                        (iter (for (time what sub) in '(("8:30 a.m." "Doors Open &mdash; Coffee, Tea and Snacks")
                                                        ("9:00 a.m. &ndash; Noon" "Civic Hackathon Unconference" "(Free and Open to the Public!)")
                                                        ("Noon &ndash; 1:00p.m." "Lunch")
                                                        ("1:00 p.m. &ndash; 2:00 p.m." "Pitches and Team Forming")
                                                        ("2:00 p.m." "The 24 hour clock starts")
                                                        ("7:00 p.m." "Dinner")
                                                        ("Midnight" "Coffee, Tea, and Snacks")))
                          (htm (:tr (:th (str time)) (:td
                                                      (if sub
                                                          (button :onclick (ps (visit-tickets)) :class "free-ticket layout vertical center"
                                                            (:span (str what))
                                                            (:span (str sub)))
                                                          (str what)))))))

                (vertical-break)
                (:h1 "Sunday, June 19")
                (:table :class "schedule"
                        (iter (for (time what) in '(("8:00 a.m." "Breakfast")
                                                    ("Noon" "Lunch")
                                                    ("3:00 p.m." "Last commit")
                                                    ("3:30 p.m. &ndash; 4:30 p.m." "Team Presentations")
                                                    ("4:30 p.m. &ndash; 5:00 p.m." "Voting and Awards")))
                          (htm (:tr (:th (str time)) (:td (str what))))))))))
