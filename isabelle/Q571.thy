theory Circle_Arc_BFA
  imports Main
begin
typedecl Point
record circle =
  center :: Point
consts
  angle :: "Point ⇒ Point ⇒ Point ⇒ real"  ("∠ _ _ _")
  arc_measure :: "Point ⇒ Point ⇒ Point ⇒ real"  ("arc _ _ _")
consts
  A :: Point
  B :: Point
  C :: Point
  D :: Point
  F :: Point
  G :: Point
definition circleB :: circle where
  "circleB ≡ ⦇ center = B ⦈"
axiomatization where
  angle_CBD: "∠ C B D = 55" and
  angle_FBG: "∠ F B G = 35" and
  center_B: "circleB = ⦇ center = B ⦈"
definition arc_BFA :: real where
  "arc_BFA ≡ arc B F A"
theorem arc_BFA_270:
  "arc_BFA = 270"
  oops
end