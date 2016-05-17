(in-package :hackathon)

(defparameter *venue* '(46.8625418 -113.9848200))

(defun render-press-release (stream)
  (header-panel :mode "seamed"
    (toolbar
      (:span :style "margin-left:0px;" :class "title" "Missoula Civic Hackathon Press Release")
      (icon-button :class "toolbar-icon" :style "margin-left:0px;" :icon "arrow-back" :onclick "page(\"/\");"))
    (:div :style "padding:20px;" :class "layout vertical center"
          (:div :style "max-width:700px;"
                (:h1 "FOR IMMEDIATE RELEASE")
                (:table
                 (:tr (:td :style "padding-right:20px;" "Event Name:") (:td "Missoula Civic Hackathon"))
                 (:tr (:td :style "padding-right:20px;" "Event Dates:") (:td "June 18-19, 2016"))
                 (:tr (:td :style "padding-right:20px;vertical-align:top;" "Event Location:")
                      (:td
                       "Phyllis J. Washington Education Center" (:br)
                       "32 Campus Drive" (:br)
                       "University of Montana" (:br)
                       "Missoula, Montana 59812"))
                 (:tr (:td :style "padding-right:20px;" "Contact:") (:td "William Halliburton, Co-Organizer"))
                 (:tr (:td :style "padding-right:20px;" "Phone Number:") (:td "(406) 830-5031"))
                 (:tr (:td :style "padding-right:20px;" "E-mail Address:")
                      (:td "<a href=\\\"mailto:will@blueskystewardship.org\\\">will@blueskystewardship.org</a>"))
                 (:tr (:td :style "padding-right:20px;" "Website Address:")
                      (:td "<a target=\"_blank\" href=\"http://missoulacivichackathon.org\">http://missoulacivichackathon.org</a>")))

                (:br)
                (:h1 "Missoula Civic Hackathon Hosts Area Technical Developers and Citizens
to Build Solutions to Civic Problems")

                (:h1 "MISSOULA, MT")

                (:h2 "What's happening and who's it for?")

                (:p "Missoula is set to host its second Civic
Hackathon from June 18 through the 19th, 2016. Civic Hackathons are
events where developers, designers, artists, students, researchers,
civic leaders, and citizens come together to share ideas, form teams,
and work towards tangible solutions to the problems we all face daily
in the towns we live. Local technical experts, professors and civic
leaders will be on hand to coach teams.")

                (:p "“The opportunity to meet other developers and
people with pressing civic problems and to work towards a common goal,
while at the same time having fun, learning much, and making friends,
is truly valuable and often-times rarely experienced.”  says William
Halliburton who attended Spokane SpoCode Civic Hackathon 2014.")

                (:p "“Although I am not a computer programmer, I
love the idea of working with fellow Missoulians to accomplish
something for this great city that will serve not just this locality
but potentially localities all over. If we can solve a problem here,
who's to say that it can't at the very least be tested in other
cities.” says community member Luke Robinson.")

                (:p "“In the real world of work, purpose finding is
what leaders do.” - Robert E. Quinn")

                (:h2 "Why attend a Civic Hackathon Event?")

                (:ul
                 (:li "Education &mdash; learn by doing.")
                 (:li "Build your network &mdash; meet talented developers and civic changers.")
                 (:li "Team dating &mdash; build your team.")
                 (:li "Learn a new skill &mdash; flex your technical and social muscles.")
                 (:li "Join a global community &mdash; over hundreds of civic hackathons past, present, and future."))

                (:h2 "How is it done?")

                (:p "Beginning with a free and open to
the public <a style=\"display:inline-block\" target=\"_blank\"
href=\"https://en.wikipedia.org/wiki/Open_Space_Technology\">open
space technology</a> unconference on Saturday morning, citizens bring
their best ideas and inspire others to join their projects. Over
Saturday and Sunday teams focus on developing solutions, validating
their ideas, and building a working prototype. On Sunday evening teams
demo their prototypes and receive valuable feedback from a panel of
experts.")

                (:p "This is not a competition, but
rather an opportunity to collaborate. People with relevant needed
skills will be encouraged to help on multiple projects.")

                (:h2 "When and where is it?")

                (:p "The detailed Missoula Civic Hackathon Schedule
can be found online at <a target=\"_blank\"
href=\"http://missoulacivichackathon.org/#!/schedule\">http://missoulacivichackathon.org/</a>. The
hours of the event are Saturday, June 18, 2016 from 8:30 a.m. through
the night to 6:00 p.m Sunday, June 19.")

                (:p "It will be held on the University of Montana
Campus at the")
                (:div :class "layout vertical center"
                      (:span :class "location" :onclick "setMapZoom(18);" "Phillis J. Washington Education Center")
                      (:span :class "location" :onclick "setMapZoom(15);" "32 Campus Drive")
                      (:span (:span :class "location" :onclick "setMapZoom(12);" "Missoula, ")
                             (:span :class "location" :onclick "setMapZoom(5);" "Montana 59812."))
                      (vertical-break)
                      (google-map :id "map" :style "height:300px;width:500px;" :latitude (car *venue*) :longitude (cadr *venue*) :zoom 14
                        (map-marker :latitude (car *venue*) :longitude (cadr *venue*)
                          :icon "images/map-icon.png"
                          :title "Missoula Civic Hackathon")))

                (:h2 "What do we hope to accomplish?")

                (:p "The beginning of a citywide dialogue on
the possibilities of creating information systems that bring to light
the many pressing issues that we are facing in our own community and
hence faced by a vast number communities all over the world.")
                (:p "Issues such as sustainability, loss
of fertile land, desertification, pollution, disenfranchisement, local
financing, food production, energy, transportation, city planning,
urban forest decline, crime, water, preservation of species, land
management, “waste”, climate change, and housing being just a few
examples of what is in the minds and hearts of many citizens.")

                (:h2 "What are other civic hackathons accomplishing?")

                "Hackathons <a target='_blank'
href='http://devpost.com/hackathons'>around the world</a> are busy
working toward better communities. Read <a target='_blank'
href='http://www.codeforamerica.org/blog/2016/02/04/this-month-in-civictech-january-hacking/'>This Month in #CivicTech: January Hacking</a>. "

                (:h2 "How can I sign up?")

                (:p "Interested parties can register at
<a target=\"_blank\"
href=\"http://missoulacivichackathon.org/\">http://missoulacivichackathon.org/</a>. The
ticket cost of $15 includes breakfast, lunch, dinner, and a midnight
snack on Saturday as well as breakfast and lunch on Sunday. Attendees
will also receive exclusive Missoula Civic Hackathon perks.")

                (:h2 "How are we attempting to mitigate our ecological footprint?")

                (:p "The Missoula Civic Hackathon is a
<a target='blank'
href='http://www.missoulaclimate.org/zero-waste.html'>Zero Waste</a>
sponsored event and dinnerware and composting services will be
provided. We have set up a <a href=\"#!/sharing\"
onclick=\"page('/sharing');\">ride and couch sharing service</a> that
participants traveling from other cities are encouraged to
utilize. All meat served at the event is locally grown, grass-fed and
grass-finished.")

                (:h2 "About our local sponsors:")

                (:p "Thanks to our local sponsors the "
                    (iter (for els on *sponsors*)
                      (destructuring-bind (name url &optional image grey) (car els)
                        (htm
                         (unless (cdr els) (str "and "))
                         ;; (when (third (car els)) (str "the "))
                         (:a :target "_blank" :href url (esc name)))
                        (when (cdr els) (str ", ")))))
                "."

                (:p "Sponsorship opportunities are still available,
interested parties please contact us at <a href=\"mailto:will@blueskystewardship.org\">will@blueskystewardship.org</a>."))

          ;;                   (:h2 "About Blue Sky Stewardship:")

          ;;                   (:p "<a target=\"_blank\" href=\"http://blueskystewardship.org\">Blue Sky Stewardship</a> is a local food non-profit focused on
          ;; researching and demonstrating solutions to Missoula's food production,
          ;; processing, distribution, and waste systems. Blue Sky Stewardship is
          ;; supported by the High Stakes Foundation, the Montana Institute for
          ;; Sustainable Transportation, generous private donors, and a team of
          ;; volunteers.")

          )))

