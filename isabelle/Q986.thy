theory CircleTangentSecantTheorem
imports Main HOL.Euclidean_Geometry
begin
locale circle_tangent_secant_theorem =
  fixes O :: "real^2" 
  fixes P C D E A B F G :: "real^2" 
  fixes r :: real 
  assumes r_pos: "r > 0" 
  defines "circle ≡ {X. dist X O = r}"
  assumes CD_on_circle: "C ∈ circle ∧ D ∈ circle"
  assumes CD_diameter: "dist C D = 2*r ∧ midpoint O C D"
  assumes P_outside: "dist P O > r"
  assumes C_on_circle: "C ∈ circle"
  assumes E_on_circle: "E ∈ circle"
  assumes PC_tangent: "dist P O^2 = dist P C^2 - r^2" 
  assumes PE_tangent: "dist P O^2 = dist P E^2 - r^2"
  assumes A_on_circle: "A ∈ circle"
  assumes B_on_circle: "B ∈ circle"
  assumes P_A_B_collinear: "collinear P A B"
  assumes A_B_distinct: "A ≠ B"
  assumes A_C_collinear: "collinear A C F"
  assumes B_D_collinear: "collinear B D F"
  assumes D_E_collinear: "collinear D E G"
  assumes A_B_collinear: "collinear A B G"
  assumes points_distinct: 
    "C ≠ D ∧ C ≠ E ∧ C ≠ A ∧ C ≠ B ∧ C ≠ F ∧ C ≠ G ∧
     D ≠ E ∧ D ≠ A ∧ D ≠ B ∧ D ≠ F ∧ D ≠ G ∧
     E ≠ A ∧ E ≠ B ∧ E ≠ F ∧ E ≠ G ∧
     A ≠ B ∧ A ≠ F ∧ A ≠ G ∧
     B ≠ F ∧ B ≠ G ∧
     F ≠ G"
  defines "angle X Y Z ≡ 
    let v1 = X - Y;
        v2 = Z - Y
    in arccos ((v1 • v2) / (norm v1 * norm v2))"
begin
theorem angle_GFE_eq_angle_ADE:
  "angle G F E = angle A D E"
  sorry