theory AngleBisection
imports 
  Main
  "HOL-Analysis.Euclidean_Space"
begin

locale circle_geometry =
  fixes O :: "real^2" (* center of the circle *)
    and r :: real (* radius of the circle *)
  assumes r_pos: "r > 0"

context circle_geometry begin

definition on_circle :: "real^2 ⇒ bool" where
  "on_circle X ≡ (norm (X - O) = r)"

definition outside_circle :: "real^2 ⇒ bool" where
  "outside_circle X ≡ (norm (X - O) > r)"

definition collinear :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "collinear A B C ≡ (∃t. C = A + t *R (B - A) ∨ B = A + t *R (C - A))"

definition between :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "between A B C ≡ collinear A B C ∧ (∃t. 0 < t ∧ t < 1 ∧ B = A + t *R (C - A))"

definition tangent :: "real^2 ⇒ real^2 ⇒ bool" where
  "tangent P A ≡ on_circle A ∧ ¬collinear P A O"

definition angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "angle A B C = arccos((((A - B) ⋅ (C - B))/(norm(A - B) * norm(C - B))))"

definition angle_bisector :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "angle_bisector V A B C ≡ angle A B V = angle V B C"

(* Problem setup *)
fixes P A B C D E F :: "real^2"

assumes P_outside: "outside_circle P"
  and A_on_circle: "on_circle A"
  and B_on_circle: "on_circle B"
  and C_on_circle: "on_circle C"
  and D_on_circle: "on_circle D"
  and E_on_circle: "on_circle E"
  and PA_tangent: "tangent P A"
  and PB_tangent: "tangent P B"
  and PCD_collinear: "collinear P C D"
  and COE_collinear: "collinear C O E"
  and E_other: "E ≠ C"
  and distinct_points: "P ≠ A ∧ P ≠ B ∧ P ≠ C ∧ P ≠ D ∧ P ≠ E ∧
                        A ≠ B ∧ A ≠ C ∧ A ≠ D ∧ A ≠ E ∧
                        B ≠ C ∧ B ≠ D ∧ B ≠ E ∧
                        C ≠ D ∧ C ≠ E ∧ D ≠ E"
  and F_on_AC: "∃la. 0 < la ∧ la < 1 ∧ F = A + la *R (C - A)"
  and F_on_EB: "∃mu. 0 < mu ∧ mu < 1 ∧ F = E + mu *R (B - E)"

(* Theorem statement *)
theorem angle_bisector_CD_ADF: "angle_bisector C A D F"

end

end