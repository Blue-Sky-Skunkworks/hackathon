(in-package :hackathon)

(define-story hackathon (:title "Missoula Civic Hackathon"
                         :directories ("images" "imports")
                         :imports ("style")
                         :scripts (("hack.js" hack-js) ("logo.js" logo-js))
                         :package :hackathon
                         :modules (:roboto
                                   :page
                                   :polymer
                                   :iron-flex-layout :iron-icons
                                   :neon-animatable :neon-animated-pages :fade-in-animation :fade-out-animation
                                   :paper-ripple :paper-button :paper-card :paper-header-panel :paper-toolbar
                                   :paper-icon-button
                                   :google-map)
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
              (button :onclick "page(\"/press-release\"); " "Press Release"))))
    (animatable (render-press-release stream)))
  (script (when-ready (lambda () (setup-routing) (animate-logo)))))

(in-package :story-js)

(define-script hack-js
  (defun select-page (index)
    (let ((pages (id "pages")))
      (unless (=== (@ pages selected) index)
        (setf (@ pages selected) index))))
  (defun setup-routing ()
    (page "/" (lambda () (select-page 0)))
    (page "/press-release" (lambda () (select-page 1)))
    (page (create :hashbang t))))
