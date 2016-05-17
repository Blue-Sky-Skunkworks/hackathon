(in-package :hackathon)

(define-story hackathon (:title "Missoula Civic Hackathon"
                         :directories ("images" "imports" "documents")
                         :imports ("style")
                         :scripts (("hack.js" hack-js) ("logo.js" logo-js))
                         :package :hackathon
                         :modules (:roboto :page :packery :polymer :echo
                                   :iron-flex-layout :iron-icons
                                   :iron-icons-editor :iron-icons-communication :iron-icons-places :iron-icons-notification
                                   :iron-icons-social
                                           :neon-animatable :neon-animated-pages :fade-in-animation :fade-out-animation
                                           :paper-ripple :paper-button :paper-card :paper-header-panel :paper-toolbar :paper-icon-button
                                           :google-map)
                         :page-args (:body-class "fullbleed layout vertical")
                         :publish-directory (hackathon-file "build/")
                         :cname "missoulacivichackathon.org"
                         :header hackathon-header
                         :footer hackathon-footer)
  (:style :is "custom-style" :include "iron-flex iron-flex-alignment iron-positioning")
  (animated-pages :id "pages" :class "flex" :style "padding:20px;"
    :entry-animation "fade-in-animation"
    :exit-animation "fade-out-animation"
    :selected 0
    (animatable) ; initial loading shows and transitions to next
    (animatable :id "top-grid"
      (card :elevation 5 :class "pack press-release" :style "cursor:pointer;" :onclick "page(\"/press-release\")"
        (:div :class "card-content layout vertical center" :style "padding:30px;"
              (render-logo stream)
              (ripple)
              (button :onclick "page(\"/press-release\"); " "Press Release")))

      (iter (for (name onclick icon text) in
                 `(("schedule" "page(\"/schedule\");" "date-range" "The Event Schedule")
                   ;; ("wiki" "page(\"/wiki/Home\");" "editor:mode-edit" "The Hackathon Wiki")
                   ;; ("participate" "page(\"/participate\");" "places:all-inclusive" "Participate from Anywhere")
                   ("sharing" "page(\"/sharing\");" ("places:airport-shuttle"
                                                     "notification:airline-seat-individual-suite")
                              "Ride & Couch Sharing")
                   ("email-list" ,(ps (visit-email-list)) "communication:email" "Join the Email List")
                   ("sponsors" "page(\"/sponsors\");" "card-giftcard" "Our Sponsors")
                   ("government" "page(\"/government\");" "social:location-city" "Friends in Government")
                   ("conduct" "page(\"/code-of-conduct\");" "gavel" "Code of Conduct")
                   ;; ("prayer" "page(\"/prayer\");" "flag" "Prayer Flags")
                   ("time" "page(\"/time\");" "hourglass-empty" "The Time")
                   ("school" "page(\"/school\");" "social:school" "Hackathon Programming School")
                   ("media" "page(\"/media\");" "visibility" "Media Coverage")
                   ("source-code" ,(ps (visit-source-code)) "code" "Code For This Site")
                   ))
        (card :class "pack"
          (htm (:div :class "card-content" :style "padding:20px;"
                     (button :onclick onclick :style "padding:36px 20px 20px 20px;width:230px;height:150px;"
                       :class (concatenate 'string name " layout vertical center")
                       (cond
                         ((consp icon)
                          (htm (:div :class "layout horizontal center"
                                     (iter (for els on icon)
                                       (icon :class "big" :icon (car els))
                                       (when (cdr els) (str "&nbsp;&nbsp;"))))))
                         (t (icon :class "big" :icon icon)))
                       (vertical-break)
                       (esc text))))))


      )

    (animatable (render-press-release stream))
    (animatable (render-schedule stream))
    (animatable (render-sharing stream))
    (animatable (render-sponsors stream))
    (animatable (render-code-of-conduct stream))
    (animatable (render-time stream))
    (animatable (render-government stream))
    (animatable (render-school stream))
    (animatable (render-media stream))

    ;; (animatable (render-prayer stream))
    ;; (animatable (render-participate stream))

    )
  (script
    (when-ready (lambda ()
                  (setup-routing)
                  (dolist (panel '("sponsors-panel")) (echo-watch-scrolling panel))
                  (animate-logo)
                  ))))

(defun hackathon-header (stream)
  (comment (ascii-text "Welcome to Hackathon!" :font "emboss2") :indent 4))

(defun hackathon-footer (stream)
  (comment (ascii-text ">>>> Hack Me! <<<<" :font "pagga") :indent 4))


(in-package :story-js)

(defun hack-js ()
  (concatenate 'string (main) (government)))

(define-script main

  (defun select-page (index)
    (let ((pages (id "pages")))
      (unless (=== (@ pages selected) index)
        (setf (@ pages selected) index)))
    ((@ echo render)))

  (defun setup-routing ()
    (page "/" (lambda () (select-page 1) (pack "top-grid")))
    (page "/press-release" (lambda () (select-page 2)))
    (page "/schedule" (lambda () (select-page 3)))
    (page "/sharing" (lambda () (select-page 4)))
    (page "/sponsors" (lambda () (select-page 5) (pack "sponsors" :gutter 60)))
    (page "/code-of-conduct" (lambda () (select-page 6)))
    (page "/time" (lambda () (select-page 7)))
    (page "/government" (lambda () (select-page 8) (pack "government" :gutter 60)))
    (page "/school" (lambda () (select-page 9)))
    (page "/media" (lambda () (select-page 10) (pack "medias" :gutter 60)))
    ;; (page "/participate" (lambda () (select-page 7)))
    ;; (page "/prayer" (lambda () (select-page 8)))
    ;; (page "/wiki/:page" (lambda (ctx) (ensure-loaded :marked (select-page 13) (setup-wiki (@ ctx params page)))))
    ;; (page "/wiki" (lambda () (page "/wiki/Home")))
    (page (create :hashbang t)))

  (defun visit-url (url)
    ((@ window open) url "_blank"))

  (defun visit-email-list ()
    (visit-url "https://groups.google.com/forum/#!forum/blue-sky-skunkworks"))

  (defun join-school ()
    (visit-url "https://groups.google.com/forum/#!forum/missoula-civic-hackathon-students"))

  (defun visit-source-code ()
    (visit-url "https://github.com/Blue-Sky-Skunkworks/hackathon"))

  )
