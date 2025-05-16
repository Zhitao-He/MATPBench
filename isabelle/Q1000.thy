theory Triangle_Concyclic_Problem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
locale triangle_geometry =
  fixes A B C O :: "complex"
  assumes triangle_ABC: "A ≠ B ∧ B ≠ C ∧ C ≠ A"
  and circO: "dist A O = dist B O ∧ dist B O = dist C O" (* A, B, C lie on circle with center O *)
context triangle_geometry
begin
definition is_perpendicular :: "complex ⇒ complex ⇒ complex ⇒ complex ⇒ bool" where
  "is_perpendicular A B C D ⟷ ((B - A) * (D - C) = 0)"
definition is_collinear :: "complex ⇒ complex ⇒ complex ⇒ bool" where
  "is_collinear P Q R ⟷ (∃t. (1 - t) * P + t * Q = R ∧ t ∈ ℝ)"
definition midpoint :: "complex ⇒ complex ⇒ complex" where
  "midpoint P Q = (P + Q) / 2"
definition is_concyclic :: "complex ⇒ complex ⇒ complex ⇒ complex ⇒ bool" where
  "is_concyclic P Q R S ⟷ (∃c r. r > 0 ∧ dist P c = r ∧ dist Q c = r ∧ dist R c = r ∧ dist S c = r)"
theorem concyclic_BHOG:
  fixes D E F G H :: "complex"
  assumes perpADBC: "is_collinear B C D ∧ is_perpendicular A D B C"
  and intersection_E: "is_collinear C O E ∧ is_collinear A D E"
  and midF: "F = midpoint A E"
  and intersection_H: "is_collinear F O H ∧ is_collinear B C H"
  and perpCGAO: "is_collinear C G G ∧ is_collinear A O G ∧ is_perpendicular C G A O"
  shows "is_concyclic B H O G"
  oops