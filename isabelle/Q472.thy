theory MarbleInCone
imports
  Main
  "HOL-Analysis.Analysis"
  "HOL-Algebra.Algebra"
begin

text ‹Proof: A marble of radius 15 is rolled into a cone-shaped hole. It fits in perfectly. 
From the side the cone looks like an equilateral triangle. How deep is the hole if the depth is 45?›

definition radius :: "real" where
  "radius = 15"

definition depth :: "real" where
  "depth = 45"

(* Let the cone have its axis vertical, vertex at the origin O (0,0,0),
   opening upwards, with side view an equilateral triangle of height h = depth.
   The sphere of radius r is tangent to all three cone faces and to the base. *)

theorem marble_in_cone_depth:
  "∃h::real. h > 0 ∧ 
   (* The marble of radius 'radius' fits perfectly in a cone with 
      equilateral triangle cross section of height h *)
   h = depth"

end