theory GeometryProblem 
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition on_circle :: "point ⇒ real ⇒ point ⇒ bool" where
  "on_circle O r P ⟷ dist O P = r"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ⟷ (∃t. (B = A + t *⇩R (C - A)) ∨ (C = A + t *⇩R (B - A)))"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = arccos((dist A B)^2 + (dist B C)^2 - (dist A C)^2) / (2 * dist A B * dist B C)"
definition tangent_at :: "point ⇒ point ⇒ point ⇒ real ⇒ bool" where
  "tangent_at E P O r ⟷ on_circle O r E ∧ (dist O P)^2 = (dist O E)^2 + (dist E P)^2"
definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line A B P ⟷ collinear A B P"
definition diameter :: "point ⇒ point ⇒ point ⇒ bool" where
  "diameter O A B ⟷ dist A B = 2 * dist O A ∧ dist O A = dist O B ∧ 
                   collinear A O B ∧ O ≠ A ∧ O ≠ B"
definition intersect_point :: "point set ⇒ point set ⇒ point ⇒ bool" where
  "intersect_point s1 s2 P ⟷ P ∈ s1 ∧ P ∈ s2"
definition midpoint :: "point ⇒ point ⇒ point ⇒ bool" where
  "midpoint M A B ⟷ M = ((fst A + fst B)/2, (snd A + snd B)/2)"
theorem tangent_angle_double_arc:
  fixes A B C D E F O P :: point
  assumes 
    "on_circle O (dist O B) A"        (* Circle with center O, passing through A and B *)
    "midpoint O A B"                  (* AB is a diameter of the circle, O its center *)
    "on_circle O (dist O B) C"        (* C is on the circle *)
    "on_circle O (dist O B) F"        (* F is on the circle *)
    "tangent_at E P O (dist O B)"     (* PE is tangent to the circle at E *)
    "tangent_at F P O (dist O B)"     (* PF is tangent at F *)
    "on_circle O (dist O B) E"        (* E is the point of tangency for PE *)
    "on_line P B C"                   (* C is on line PB *)
    "C ≠ B" "C ≠ P"                   (* C is distinct from B and P *)
    "on_line A F D"                   (* D is on line AF *)
    "on_line B E D"                   (* D is on line BE *)
    "A ≠ B" "A ≠ C" "A ≠ D" "A ≠ E" "A ≠ F" "A ≠ O" "A ≠ P"  (* All points are distinct *)
    "B ≠ C" "B ≠ D" "B ≠ E" "B ≠ F" "B ≠ O" "B ≠ P"
    "C ≠ D" "C ≠ E" "C ≠ F" "C ≠ O" "C ≠ P"
    "D ≠ E" "D ≠ F" "D ≠ O" "D ≠ P"
    "E ≠ F" "E ≠ O" "E ≠ P"
    "F ≠ O" "F ≠ P"
    "O ≠ P"
  shows "angle D P E = 2 * angle A C D"