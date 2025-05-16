theory SemicirclesProblem
imports Complex_Main "HOL-Analysis.Analysis"
begin
text ‹In the diagram, K, O and M are the centers of the three semi-circles. 
      Also, OC = 32 and CB = 36. The area of the semi-circle with center K is 1250π.›
(* Points on the real line *)
locale semicircles =
  fixes A K O C M B :: real
  assumes points_order: "A < K ∧ K < O ∧ O < C ∧ C < M ∧ M < B"
  assumes OC_length: "C - O = 32"
  assumes CB_length: "B - C = 36"
begin
(* Define the distance AB *)
definition AB :: real where "AB = B - A"
(* Define the area of a semicircle with diameter d *)
definition semi_area :: "real ⇒ real" where
  "semi_area d = (pi * (d/2)^2) / 2"
(* Theorem about the area of semicircle with center K *)
theorem semicircle_K_area:
  assumes "AB = 50"
  shows "semi_area AB = 1250 * pi"
  using assms semi_area_def
  by auto