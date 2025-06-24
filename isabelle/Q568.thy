theory Geometry_Arc_BOP
  imports Main
begin
typedecl Point
record Circle =
  center :: Point
consts
  angle :: "Point ⇒ Point ⇒ Point ⇒ real"  ("∠ _ _ _")
  arc_measure :: "Point ⇒ Point ⇒ Point ⇒ real"  ("⌒_ _ _")
consts
  B M N O P :: Point
axiomatization where
  circle_B_def: "center (⦃center = B⦄) = B" and
  angle_PNO: "∠ P N O = 56" and
  angle_BMN: "∠ B M N = 70"
definition arc_BOP_measure :: real where
  "arc_BOP_measure ≡ arc_measure B O P"
theorem arc_BOP_112:
  "arc_BOP_measure = 112"
  unfolding arc_BOP_measure_def
  sorry
end