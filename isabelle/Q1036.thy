theory Putnam_Geometry_Incircle
imports
  Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real^2"
definition non_collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "non_collinear A B C ≡ ¬(∃t1 t2. (1 - t1 - t2) *R A + t1 *R B + t2 *R C = 0)"
definition in_interior_triangle :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "in_interior_triangle K A B C ≡ ∃t1 t2 t3. t1 > 0 ∧ t2 > 0 ∧ t3 > 0 ∧ t1 + t2 + t3 = 1 ∧
                                   K = t1 *R A + t2 *R B + t3 *R C"
definition incircle_touch_points :: "point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "incircle_touch_points A B C I D E F ≡ 
     (∃r. r > 0 ∧
       norm (I - D) = r ∧ D ∈ {(1-t)*R B + t*R C | t. 0 ≤ t ∧ t ≤ 1} ∧
       norm (I - E) = r ∧ E ∈ {(1-t)*R C + t*R A | t. 0 ≤ t ∧ t ≤ 1} ∧
       norm (I - F) = r ∧ F ∈ {(1-t)*R A + t*R B | t. 0 ≤ t ∧ t ≤ 1} ∧
       (B - C) • (I - D) = 0 ∧
       (C - A) • (I - E) = 0 ∧
       (A - B) • (I - F) = 0)"
definition concyclic :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "concyclic E F M N ≡ ∃C r. r > 0 ∧ 
                          norm (E - C) = r ∧ 
                          norm (F - C) = r ∧ 
                          norm (M - C) = r ∧ 
                          norm (N - C) = r"
theorem putnam_2024_geometry_cyclicity:
  fixes A B C K I J D E F M N :: point
  assumes "non_collinear A B C"
    and "in_interior_triangle K A B C"
    and "incircle_touch_points A B C I D E F"
    and "incircle_touch_points K B C J D N M"
  shows "concyclic E F M N"
  sorry