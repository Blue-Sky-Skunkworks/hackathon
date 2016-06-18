(in-package :hackathon)


(defun render-logo (stream)
  (html
    (:div :class "layout vertical center" :style "padding:40px;"
          (:canvas :style "margin-left:13px;" :id "logo" :width 356 :height 348)
          (:img :style "margin:20px 0px 20px 0px;" :alt "Missoula Civic Hackathon" :width 437 :height 145 :src "/images/logo-text.png"))))

(in-package :story-js)

(define-script logo-js

  (defun animate-logo ()
    (let ((img ((@ document create-element) "img")))
      (setf *logo-cell* img
            (@ img src) "/images/logo-cell.png")
      ((@ img add-event-listener) "load" animate-logo-go)))

  (defvar *life-size* 8)

  (defvar *life* (new (*uint8-array (* *life-size* *life-size*))))

  (defun life (row col) (return (aref *life* (+ (* row *life-size*) col))))

  (defun setup-life ()
    (loop for row from 0 to (- *life-size* 1)
          do (loop for col from 0 to (- *life-size* 1)
                   do (setf (aref *life* (+ (* row *life-size*) col))
                            (if (or (= col 0) (= row 0) (= row (- *life-size* 1)) (= col (- *life-size* 1))
                                    (and (= col 1) (= row 1))
                                    (and (= col 1) (= row (- *life-size* 2)))
                                    (and (= col (- *life-size* 2)) (= row (- *life-size* 2)))
                                    (and (= col (- *life-size* 2)) (= row 1)))
                                (if (< ((@ *math random)) 0.88) 1 0)
                                1)))))

  (defun arc (cx x y radius &key (start 0) (end (* (@ *math *p-i) 2)) fill line-width)
    ((@ cx begin-path))
    (when line-width (setf (@ cx line-width) line-width))
    ((@ cx arc) x y radius start end t)
    (if fill
        ((@ cx fill))
        ((@ cx stroke))))

  (defun animate-logo-go ()
    (let* ((canvas (id "logo"))
           (cx ((@ canvas get-context) "2d")))
      (setup-life)
      ((@ cx clear-rect) 0 0 (@ canvas width) (@ canvas height))
      (loop
        for row from 0 to 7
        do
           (loop for col from 0 to 7
                 do (when (life row col)
                      ((@ cx draw-image) *logo-cell* (+ 1 (* col 43)) (+ 2 (* row 42))))))

      (setf (@ cx fill-style) "white"
            (@ cx stroke-style) "white")

      (arc cx 173 181 33 :fill t)
      (arc cx 173 181 111 :line-width 29)

      ((@ cx begin-path))
      (let ((theta (- (@ *math *p-i) (* (@ *math *p-i) (/ 69 180)))))
        ((@ cx arc) 173 181 111 theta (+ theta (- (/ (@ *math *p-i) 4.4))) t))
      ((@ cx line-to) 173 181)
      ((@ cx fill))

      ((@ cx save))
      ((@ cx begin-path))
      ((@ cx move-to) 173 164)
      ((@ cx line-to) 0 164)
      ((@ cx line-to) 0 0)
      ((@ cx line-to) 350 0)
      ((@ cx line-to) 350 340)
      ((@ cx line-to) 0 340)
      ((@ cx line-to) 0 198)
      ((@ cx line-to) 173 198)
      ((@ cx clip))

      (arc cx 173 181 62 :line-width 29)
      ((@ cx restore)))

    (set-timeout (lambda () (animate-logo-go)) 6000))

  )


