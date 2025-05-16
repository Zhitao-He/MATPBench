theory TangentCirclesAngleBisector
imports Main Complex_Geometry
begin
section "Two circles with external tangent and angle bisector"
subsection "Basic definitions and setup"
locale tangent_circles_setup =
  fixes P Q A B C D E F G H :: complex
  assumes 
    intersect: "A ≠ B" and "on_circle P A" and "on_circle P B" 
               and "on_circle Q A" and "on_circle Q B"
    and tangent_points: "on_circle P C" and "on_circle Q D" and "C ≠ D"
    and external_tangent: "is_tangent_at P C (Line C D)" and "is_tangent_at Q D (Line C D)"
    and E_position: "∃t. t > 1 ∧ E = B + t * (A - B)"
    and F_position: "collinear E C F" and "on_circle P F" and "F ≠ C" 
    and G_position: "collinear E D G" and "on_circle Q G" and "G ≠ D"
    and H_position: "between F H G" and "is_angle_bisector A F G H"
subsection "Main theorem"
theorem angle_equality:
  assumes "tangent_circles_setup P Q A B C D E F G H"
  shows "angle F C H = angle G D H"
proof -
  (* Proof to be completed *)
  sorry
qed