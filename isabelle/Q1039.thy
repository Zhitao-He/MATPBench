theory PutnamGeometryTheorem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale acute_triangle_problem =
  fixes A B C :: "real^2"
  assumes triangle: "A ≠ B" "B ≠ C" "C ≠ A"
  and acute: "∠ BAC < pi/2" "∠ ABC < pi/2" "∠ BCA < pi/2"
  fixes E F :: "real^2"
  assumes E_on_AC: "∃t. 0 < t ∧ t < 1 ∧ E = A + t *\<^sub>R (C - A)"
  and F_on_AB: "∃s. 0 < s ∧ s < 1 ∧ F = A + s *\<^sub>R (B - A)"
  defines "M ≡ (E + F) /\<^sub>R 2"  (* midpoint of EF *)
  (* Perpendicular bisector of EF *)
  defines "perp_bis_EF ≡ {P. dist P E = dist P F}"
  fixes K :: "real^2"
  assumes K_on_BC: "∃u. 0 ≤ u ∧ u ≤ 1 ∧ K = B + u *\<^sub>R (C - B)"
  and K_on_perp_bis_EF: "K ∈ perp_bis_EF"
  (* Perpendicular bisector of MK *)
  defines "perp_bis_MK ≡ {P. dist P M = dist P K}"
  fixes S T :: "real^2"
  assumes S_on_AC: "∃v. 0 ≤ v ∧ v ≤ 1 ∧ S = A + v *\<^sub>R (C - A)"
  and S_on_perp_bis_MK: "S ∈ perp_bis_MK"
  and T_on_AB: "∃w. 0 ≤ w ∧ w ≤ 1 ∧ T = A + w *\<^sub>R (B - A)"
  and T_on_perp_bis_MK: "T ∈ perp_bis_MK"
  (* K, S, A, T are concyclic *)
  assumes concyclic: "∃O r. dist O K = r ∧ dist O S = r ∧ dist O A = r ∧ dist O T = r"
  (* Define angles *)
  defines "angle_KEF ≡ angle K E F"
  defines "angle_KFE ≡ angle K F E"
  defines "angle_BAC ≡ angle B A C"
theorem putnam_geometry_acute_triangle_angles:
  "angle_KEF = angle_KFE ∧ angle_KEF = angle_BAC"
  sorry