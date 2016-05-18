(in-package :hackathon)

(defparameter *sponsors*
  '(
    ;; Local to Missoula
    ("Phyllis J. Washington College of Education & Human Sciences" "http://www.coehs.umt.edu/" "PJWEC")
    ("Montana Code School" "http://montanacodeschool.com/" "MCS")
    ("Free Cycles" "http://www.freecycles.org" "FC")
    ("Blue Sky Stewardship" "http://blueskystewardship.org" "BSS")
    ("The University of Montana" "http://www.umt.edu/" "UM" t)
    ("Re: Industries" "http://www.reindustries.org/" "RI")
    ("Montana Institute for Sustainable Transportation" "http://www.strans.org/" "MIST")
    ("Geodata Services Inc." "http://www.geodataservicesinc.com/" "GD")
    ("Butterfly Herbs" "http://www.butterflyherbs.com/" "BH")

    ;; Remote
    ("ESRI" "http://esri.com/" "ESRI")
    ("Microsoft BizSpark" "https://www.microsoft.com/bizspark/" "MS")
    ("OpenDataSoft" "http://opendatasoft.com/" "ODS")
    ("Code for America" "https://www.codeforamerica.org/brigade/Missoula-Civic-Hackathon/" "CFA")))

(defparameter *spring-2016-sponsors*
  '(("Phyllis J. Washington College of Education & Human Sciences" "http://www.coehs.umt.edu/" "PJWEC")
    ("Moonlight Kitchens" "http://moonlightkitchens.com/" "MK")
    ("Montana Webmasters" "http://montanawebmaster.com/" "MW")
    ("Blue Sky Stewardship" "http://blueskystewardship.org" "BSS")
    ("Free Cycles" "http://www.freecycles.org" "FC")
    ("Omega Alpha Recycling Systems" "http://www.omega-alpharecycling.com/" "OARS")
    ("Montana Code School" "http://montanacodeschool.com/" "MCS")
    ("Geodata Services Inc." "http://www.geodataservicesinc.com/" "GD")
    ("Washington Companies" "http://www.washcorp.com/" "WC")
    ("Rockin' Rudys's" "http://www.rockinrudys.com/" "RR")
    ("Butterfly Herbs" "http://www.butterflyherbs.com/" "BH")
    ("Re: Industries" "http://www.reindustries.org/" "RI")
    ("The University of Montana" "http://www.umt.edu/" "UM" t)
    ("City Brew Coffee" "http://citybrew.com/" "CB")
    ("Missoula Fresh Market" "http://missoulafm.com/" "FM")
    ("The Good Food Store" "http://www.goodfoodstore.com/" "GFS")
    ("Break Expresso" "https://www.facebook.com/BreakEspressoMissoula/" "BE")
    ("Climate Smart Missoula" "http://www.missoulaclimate.org/zero-waste.html" "CS")
    ("Home ReSource" "http://www.homeresource.org/" "HR")
    ("Montana Institute for Sustainable Transportation" "http://www.strans.org/" "MIST")))

(defun render-sponsors (stream)
  (comment (format nil "~%~%~A~%~%~A~%" (ascii-text "We love our sponsors!")
                   (aa:indent-paragraph
                    (aa:word-wrap
                     (format nil "    We could not be pulling this hack ~
  off in such grace and style without all of the support that we ~
  have received, are receiving, and hope to continue to receive from ~
  the ~{~A~^, ~} and ~A."
                             (mapcar 'car (butlast *sponsors*)) (car (last1 *sponsors*)))
                     40)
                    8)) :indent 8)
  (header-panel :mode "seamed" :id "sponsors-panel"
    (toolbar :class "sponsors"
      (:span :style "margin-left:0px;" :class "title" "Missoula Civic Hackathon Sponsors")
      (icon-button :class "toolbar-icon" :style "margin-left:0px;" :icon "arrow-back" :onclick "page(\"/\");"))
    (:div :style "padding:20px;" :class "layout vertical"
          (:h1 :style "margin-bottom:0px;" "Thanks to all of the Missoula Civic Hackathon's sponsors")
          (:h4 :style "margin-top:5px;" "Sonsorship opportunities are still "
               (:a :href "mailto:will@blueskystewardship.org" "available") ".")
          (vertical-break "30px")
          (:div :id "sponsors" :style "padding:10px 60px 10px 60px;"
                (iter (for index from 0)
                  (for (name url image grey) in *sponsors*)
                  (card :class "pack" :id (format nil "card-~A" index)
                    (:div :class (concatenate 'string "card-content" (when grey " grey"))
                          (:a :target "_blank" :href url
                              (if image
                                  (image :alt name :src (format nil "images/sponsors/~A.png" image))
                                  (esc name))))))))))
