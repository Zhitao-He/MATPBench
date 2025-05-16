theory CircleDiametersAngles
  imports Main HOL.Real Complex_Main "HOL-Analysis.Analysis"
begin
locale circle_diameters_angles =
  fixes O A B C D :: "real × real"
  assumes O_center: "is_center O (circle O (dist A O))"
    and AC_diameter: "diameter (circle O (dist A O)) A C"
    and BD_diameter: "diameter (circle O (dist A O)) B D"
    and A_neq_C: "A ≠ C"
    and B_neq_D: "B ≠ D"
    and O_on_AC: "O = midpoint A C"
    and O_on_BD: "O = midpoint B D"
    and angle_AOD_54: "angle A O D = 54 * (π / 180)"
begin
definition "midpoint P Q = ((fst P + fst Q) / 2, (snd P + snd Q) / 2)"
definition "is_center C circ ⟹ ∀p∈circ. dist p C = radius circ"
definition "circle C r = {p. dist p C = r}"
definition "diameter circ P Q ⟹ P ∈ circ ∧ Q ∈ circ ∧ dist P Q = 2 * radius circ"
definition "angle P O Q" where
  "angle P O Q = angle_of_vectors (vector O P) (vector O Q)"
definition "vector P Q = (fst Q - fst P, snd Q - fst P)"
theorem angle_AOB_126:
  "angle A O B = 126 * (π / 180)"
  sorry