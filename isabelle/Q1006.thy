theory Triangle_Orthocenter_Circumcenter
imports Main Euclidean_Geometry.Euclidean_Geometry
begin
locale triangle_altitudes =
  fixes A B C :: "point"
  assumes non_collinear: "¬ collinear A B C"
  (* Altitudes *)
  fixes D :: "point"
  assumes D_on_BC: "D ∈ line B C"
  assumes AD_perp_BC: "orthogonal (vector A D) (vector B C)"
  fixes E :: "point"
  assumes E_on_AC: "E ∈ line A C"
  assumes BE_perp_AC: "orthogonal (vector B E) (vector A C)"
  fixes F :: "point"
  assumes F_on_AB: "F ∈ line A B"
  assumes CF_perp_AB: "orthogonal (vector C F) (vector A B)"
  (* Orthocenter *)
  defines "H ≡ orthocenter A B C"
  (* Circumcenter *)
  defines "O ≡ circumcenter A B C"
  (* Intersection points *)
  fixes M :: "point"
  assumes M_on_AB: "M ∈ line A B"
  assumes M_on_ED: "M ∈ line E D"
  fixes N :: "point"
  assumes N_on_AC: "N ∈ line A C"
  assumes N_on_FD: "N ∈ line F D"
theorem OH_perp_MN: "orthogonal (vector O H) (vector M N)"