theory PerpendicularFeetCollinearCircle
imports
  Main
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale euclidean_geometry =
  fixes to_complex :: "'a::euclidean_space ⇒ complex"
  assumes to_complex_linear: "linear to_complex"
  assumes to_complex_isometry: "norm (to_complex x - to_complex y) = norm (x - y)"
context euclidean_geometry
begin
definition on_circle :: "complex ⇒ complex ⇒ bool" where
  "on_circle O P ⟷ (∃r>0. cmod (P - O) = r)"
definition collinear :: "complex ⇒ complex ⇒ complex ⇒ bool" where
  "collinear A B C ⟷ (∃t. C - A = t *⇩C (B - A)) ∨ A = B ∨ A = C ∨ B = C"
definition foot :: "complex ⇒ complex ⇒ complex ⇒ complex ⇒ bool" where
  "foot P A B F ⟷ F ∈ {z. Im((B - A) * cnj(z - A)) = 0} ∧
                   F ∈ {z. Im((P - F) * cnj(B - A)) = 0}"
theorem perpendicular_feet_collinear_cyclic:
  assumes "A ≠ B" "B ≠ C" "C ≠ A"
  assumes "on_circle O A" "on_circle O B" "on_circle O C"
  assumes "foot P B C D" "foot P C A E" "foot P A B F"
  assumes "collinear D E F"
  shows "on_circle O P"
  sorry