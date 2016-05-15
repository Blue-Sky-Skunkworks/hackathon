(in-package :hackathon)

(define-story hackathon (:title "Missoula Civic Hackathon"
                         :directories ("images" "imports")
                         :imports ("style")
                         :scripts (("logo.js" logo-js))
                         :package :hackathon
                         :modules (:roboto
                                   :polymer
                                   :iron-flex-layout
                                   :neon-animatable :neon-animated-pages :fade-in-animation :fade-out-animation
                                   :paper-ripple :paper-button :paper-card)
                         :page-args (:body-class "fullbleed layout vertical"))
  (:style :is "custom-style" :include "iron-flex iron-flex-alignment")
  (animated-pages :id "pages" :class "flex" :style "padding:20px;"
    :entry-animation "fade-in-animation"
    :exit-animation "fade-out-animation"
    :selected 0
    (animatable :id "top-grid"
      (card :elevation 5 :class "card press-release" :style "cursor:pointer;" :onclick "page(\"/press-release\")"
        (:div :class "card-content layout vertical center" :style "padding:30px;"
              (render-logo stream)
              (ripple)
              (button :onclick "page(\"/press-release\"); " "Press Release")))))
  (script (when-ready (lambda () (animate-logo)))))


