theory CircleArrangement
  imports Complex_Main "HOL-Analysis.Analysis"
begin

section ‹Seven circles arrangement problem›

text ‹In the figure, seven small circles have equal radii. 
       We need to find how many times the area of the shaded portion 
       is compared to the area of one small circle.›

(* Define the radius of small circles *)
definition r :: real where "r > 0"

(* Area of a single small circle *)
definition small_circle_area :: real where
  "small_circle_area = π * r^2"

(* Define the coordinates of circle centers *)
(* Center of the central circle *)
definition c0 :: "real × real" where
  "c0 = (0, 0)"

(* Centers of the six outer circles *)
definition get_outer_center :: "nat ⇒ real × real" where
  "get_outer_center n = 
    (2*r * cos (real n * (2*π/6)), 2*r * sin (real n * (2*π/6)))"

(* Check that n is in range *)
definition valid_index :: "nat ⇒ bool" where
  "valid_index n ⟷ n < 6"

(* Centers of all seven circles *)
definition center :: "nat ⇒ real × real" where
  "center n = (if n = 0 then c0 else 
               if valid_index (n-1) then get_outer_center (n-1)
               else undefined)"

(* The large circle that encloses the arrangement has radius 3r *)
definition big_R :: real where
  "big_R = 3 * r"

(* Area of the large circle *)
definition large_circle_area :: real where
  "large_circle_area = π * big_R^2"

(* The shaded area is the area of the large circle minus the areas of the 7 small circles *)
definition shaded_area :: real where
  "shaded_area = large_circle_area - 7 * small_circle_area"

(* The ratio of the shaded area to one small circle area *)
definition ratio :: real where
  "ratio = shaded_area / small_circle_area"

(* Compute the ratio *)
lemma ratio_value: "ratio = 9 - 7 = 2"
  unfolding ratio_def shaded_area_def large_circle_area_def small_circle_area_def big_R_def 
  by (simp add: algebra_simps)

end