theory RightTriangle
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin

section ‹Right Triangle Problem›

(* In right triangle ABC, A is the right angle, cos B = 6/10, and we need to find tan C *)

theorem right_triangle_cos_tan:
  fixes A B C :: "real^2"
  assumes 
    "A ≠ B" "A ≠ C" "B ≠ C" 
    "orthogonal (B - A) (C - A)"  (* Right angle at A *)
    "cos_angle (A - B) (C - B) = 6/10"  (* cos B = 6/10 *)
  shows "tan_angle (A - C) (B - C) = 3/4"  (* tan C = 3/4 *)

end