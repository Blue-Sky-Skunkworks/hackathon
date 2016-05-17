(in-package :hackathon)

;; After the winter solstice
;; =========================

;; Old Moon, or Moon After Yule
;; Snow Moon, Hunger Moon, or Wolf Moon
;; Sap Moon, Crow Moon or Lenten Moon

;; After the spring equinox
;; ========================

;; Grass Moon, or Egg Moon
;; Planting Moon, or Milk Moon
;; Rose Moon, Flower Moon, or Strawberry Moon

;; After the summer solstice
;; =========================

;; Thunder Moon, or Hay Moon
;; Green Corn Moon, or Grain Moon
;; Fruit Moon, or Harvest Moon

;; After the autumnal equinox
;; ==========================

;; Harvest Moon, or Hunter’s Moon
;; Hunter’s Moon, Frosty Moon, or Beaver Moon
;; Moon Before Yule, or Long Night Moon


(defun render-time (stream)
  (html
    (header-panel :mode "seamed"
                  (toolbar :class "time"
                           (:span :style "margin-left:0px;" :class "title" "The Time")
                           (icon-button :class "toolbar-icon" :style "margin-left:0px;" :icon "arrow-back" :onclick "page(\"/\");"))
                  (:div :style "padding:20px;background:black;" :class "fit layout vertical center-justified"
                        (:center
                         (:div :style "width:630px;height:630px;overflow:hidden;"
                               (image :style "margin:-200px 0 0 -200px;" :width 1024 :height 1024 :src "http://api.usno.navy.mil/imagery/moon.png")
                               ))))))

