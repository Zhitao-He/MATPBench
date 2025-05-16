theory PutnamGeoTheorem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
section ‹Putnam Geometry Problem›
text ‹
  In the diagram (not drawn to scale), suppose that triangle ABC is similar to 
  triangle PAQ and triangle ABQ is similar to triangle QCP.
  If angle BAC = 70 degrees, then compute angle PQC.
›
locale putnam_geo_2015_b2 =
  fixes A B C P Q :: "complex"
  assumes distinct: "A ≠ B" "B ≠ C" "C ≠ A" "A ≠ P" "Q ≠ P" "Q ≠ B" "Q ≠ C"
  assumes non_collinear1: "¬(∃t. (1-t) * A + t * B = C ∧ 0 ≤ t ∧ t ≤ 1)"
  assumes non_collinear2: "¬(∃t. (1-t) * P + t * A = Q ∧ 0 ≤ t ∧ t ≤ 1)"
  assumes non_collinear3: "¬(∃t. (1-t) * A + t * B = Q ∧ 0 ≤ t ∧ t ≤ 1)"
  assumes non_collinear4: "¬(∃t. (1-t) * Q + t * C = P ∧ 0 ≤ t ∧ t ≤ 1)"
  (* Similar triangles *)
  assumes sim1: "∃k r. k > 0 ∧ r ≠ 0 ∧ 
                complex_of_real k * (B - A) = r * (A - P) ∧ 
                complex_of_real k * (C - A) = r * (Q - P)"
  assumes sim2: "∃k r. k > 0 ∧ r ≠ 0 ∧ 
                complex_of_real k * (B - A) = r * (C - Q) ∧ 
                complex_of_real k * (Q - A) = r * (P - Q)"
  (* Angle BAC = 70 degrees *)
  assumes angle_BAC: "arg((B - A) / (C - A)) = 70 * pi / 180"
  (* Conclusion: angle PQC = 15 degrees *)
  shows "arg((P - Q) / (C - Q)) = 15 * pi / 180"