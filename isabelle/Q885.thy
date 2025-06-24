theory Geometry_Problem_Formalization
  imports
    "HOL-Analysis.Euclidean_Space"
    "HOL-Analysis.Angle"
begin
type_synonym point = "real^2"
definition unsigned_angle_degrees :: "point ⇒ point ⇒ point ⇒ real"
  where "unsigned_angle_degrees A O B = Angle.abs_angle (A - O) (B - O) * rad"
definition lines_parallel :: "point ⇒ point ⇒ point ⇒ point ⇒ bool"
  where "lines_parallel A B C D ≡
    A ≠ B ∧ C ≠ D ∧ Im (complex_of_vec (B - A) * conjugate (complex_of_vec (D - C))) = 0"
definition three_points_collinear :: "point ⇒ point ⇒ point ⇒ bool"
  where "three_points_collinear A B C ≡ C ∈ affine_hull {A, B}"
locale GeoProblem =
  fixes P O M F B Q K C G J :: point
  assumes P_neq_O: "P ≠ O"
  assumes O_neq_M: "O ≠ M"
  assumes B_neq_P: "B ≠ P"
  assumes F_neq_B: "F ≠ B" 
  assumes Q_neq_M: "Q ≠ M" 
  assumes K_neq_C: "K ≠ C" 
  assumes G_neq_J: "G ≠ J" 
  assumes angle_POM_is_43: "unsigned_angle_degrees P O M = 43"
  assumes FB_parallel_QM: "lines_parallel F B Q M"
  assumes P_on_FB: "three_points_collinear F B P"
  assumes O_on_QM: "three_points_collinear Q M O"
  assumes KC_parallel_GJ: "lines_parallel K C G J"
  assumes P_on_KC: "three_points_collinear K C P"
begin
theorem measure_of_angle_BPO:
  "unsigned_angle_degrees B P O = 137"
  sorry 
end
end