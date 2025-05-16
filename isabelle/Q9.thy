theory ChordIntersectionAngles
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale chord_intersection =
  fixes O A B C D E :: "real^2"
  assumes on_circle: "dist A O = dist B O" "dist B O = dist C O" 
                    "dist C O = dist D O" "dist D O = dist A O"
  and chords_intersect: "E ∈ closed_segment A B" "E ∈ closed_segment C D"
  and angle_D: "angle C D B = 35"
  and angle_AEC: "angle A E C = 105"
context chord_intersection
begin
theorem angle_C: "angle B C D = 70"
  sorry
