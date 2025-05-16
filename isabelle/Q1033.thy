theory Tangents_Secant_Midpoint_Angle
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
text ‹Let $PA$ and $PB$ be two tangents to a circle $O$ at points $A$ and $B$, respectively, 
      and let $PCD$ be a secant line of $O$ intersecting the circle at $C$ and $D$. 
      Let $E$ be the midpoint of $AB$. 
      Prove that: angle $ACD = angle BCE$.›
locale tangents_secant_midpoint_angle =
  fixes O A B C D P E :: "real^2"
  assumes
    on_circle: "dist A O = dist B O" "dist C O = dist A O" "dist D O = dist A O" 
    and PA_tangent: "(P - A) • (A - O) = 0" "A ≠ O" "P ≠ A" 
    and PB_tangent: "(P - B) • (B - O) = 0" "B ≠ O" "P ≠ B"
    and PCD_collinear: "∃ t1 t2. t1 ≠ 0 ∧ t2 ≠ 0 ∧ C = P + t1 *⇗ (D - P) ∧ D = P + t2 *⇗ (C - P)"
    and CD_distinct: "C ≠ D"
    and AB_distinct: "A ≠ B"
    and E_midpoint: "E = (A + B) /\<^sub>R 2"
    and distinct_points: "A ≠ C" "A ≠ D" "B ≠ C" "B ≠ D" "E ≠ C" "E ≠ D"
definition angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "angle X Y Z = (
    let v1 = (X - Y);
        v2 = (Z - Y);
        c = v1 • v2;
        n = norm v1 * norm v2
    in if n = 0 then 0 else arccos (c / n)
  )"
theorem tangent_secant_midpoint_angle:
  assumes "tangents_secant_midpoint_angle O A B C D P E"
  shows "angle A C D = angle B C E"
  sorry