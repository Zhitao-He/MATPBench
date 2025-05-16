theory CircleShading
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
text ‹In the diagram, two circles, each with center D, have radii of 1 and 2.
The total area of the shaded region is 5/12 of the area of the larger circle.
We need to find the measure of the angle ADC in degrees.›
locale circle_problem =
  fixes D A C :: "complex"
  assumes DA_length: "cmod (A - D) = 1"
  assumes DC_length: "cmod (C - D) = 2"
context circle_problem
begin
definition theta :: "real" where
  "theta = arg ((A - D) / (C - D))"
definition sector_area :: "real ⇒ real ⇒ real" where
  "sector_area r angle = (angle / (2 * pi)) * pi * r^2"
definition shaded_area :: "real" where
  "shaded_area = sector_area 2 theta - sector_area 1 theta"
definition larger_circle_area :: "real" where
  "larger_circle_area = pi * 4" (* Circle with radius 2 *)
(* Given that shaded_area = 5/12 of the larger circle area *)
lemma shaded_area_relation:
  "shaded_area = (5/12) * larger_circle_area"
  unfolding shaded_area_def larger_circle_area_def 
            sector_area_def
  by auto
(* From the relation, we can determine theta *)
lemma find_theta:
  "theta = pi * (2/3)"  (* 120 degrees = 2π/3 radians *)
  using shaded_area_relation
  unfolding shaded_area_def larger_circle_area_def
            sector_area_def
  by (auto simp: algebra_simps)
(* Converting radians to degrees *)
definition angle_ADC_degrees :: "real" where
  "angle_ADC_degrees = (theta * 180) / pi"
(* The answer is 120 degrees *)
lemma angle_ADC_is_120:
  "angle_ADC_degrees = 120"
  unfolding angle_ADC_degrees_def
  using find_theta
  by auto