theory Inscribed_Quadrilateral_Symmetry
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
definition norm :: "complex ⇒ real" where
  "norm z = sqrt((Re z)^2 + (Im z)^2)"
definition angle :: "complex ⇒ complex ⇒ complex ⇒ real" where
  "angle P Q R = acos(Re((P - Q) * cnj(R - Q)) / (norm(P - Q) * norm(R - Q)))"
definition collinear :: "complex ⇒ complex ⇒ complex ⇒ bool" where
  "collinear P Q R = (∃t. t ∈ {0..1} ∧ Q = P + t * (R - P))"
definition on_circle :: "complex ⇒ complex ⇒ real ⇒ bool" where
  "on_circle P O r = (norm(P - O) = r)"
theorem circle_bisector_equality:
  fixes A B C D E F G O :: complex
  assumes "A ≠ B" and "B ≠ C" and "C ≠ D" and "D ≠ A" 
      and "A ≠ D" and "C ≠ B"
      and "on_circle A O (norm(A - O))"
      and "on_circle B O (norm(A - O))"
      and "on_circle C O (norm(A - O))"
      and "on_circle D O (norm(A - O))"
      and "angle E A B = angle E C D"
      and "angle E B A = angle E D C"
      and "collinear F E G"
      and "angle E B E = angle E C E"  
      and "on_circle F O (norm(A - O))"
      and "on_circle G O (norm(A - O))"
      and "F ≠ G" and "F ≠ E" and "G ≠ E"
  shows "norm(E - F) = norm(E - G)"
  sorry