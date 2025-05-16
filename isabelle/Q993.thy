theory Triangle_Symmetric_Concyclic
imports 
  Main
  "HOL-Analysis.Euclidean_Space"
begin
context 
  fixes A B C :: "real^2"
  assumes non_collinear: "¬ collinear {A, B, C}"
begin
definition foot :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2" where
  "foot P Q R = (let n = (R - Q) ⊥ in
                closest_point_on_line Q (Q + n) P)"
definition D :: "real^2" where "D = foot A B C"
definition E :: "real^2" where "E = foot B C A"
definition F :: "real^2" where "F = foot C A B"
definition symmetric_about_line :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real^2" where
  "symmetric_about_line X Y Z = (
    let v = Z - Y;
        proj = ((X - Y) • v) / (v • v) * v
    in 2 * (Y + proj) - X)"
context
  fixes P :: "real^2"
  assumes interior: "in_triangle A B C P"
begin
definition L :: "real^2" where "L = symmetric_about_line P B C"
definition M :: "real^2" where "M = symmetric_about_line P C A"
definition N :: "real^2" where "N = symmetric_about_line P A B"
definition G :: "real^2" where "G = (A + P) / 2"
definition concyclic :: "real^2 set ⇒ bool" where
  "concyclic S = (∃c r. S ⊆ sphere c r ∧ card S ≥ 3)"
theorem triangle_symmetric_concyclic_cond:
  "concyclic {D, E, G, F} ⟷ concyclic {A, M, L, N}"
  sorry
end