theory SemicircleTangency
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec p q = (fst q - fst p, snd q - fst p)"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst q - fst p)² + (snd q - snd p)²)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p q = ((fst p + fst q)/2, (snd p + snd q)/2)"
definition dot_product :: "real × real ⇒ real × real ⇒ real" where
  "dot_product v w = fst v * fst w + snd v * snd w"
definition perp :: "real × real ⇒ real × real" where
  "perp v = (-(snd v), fst v)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle p q r = 
    let v1 = vec q p;
        v2 = vec q r;
        dot = dot_product v1 v2;
        norm1 = sqrt(dot_product v1 v1);
        norm2 = sqrt(dot_product v2 v2)
    in arccos (dot / (norm1 * norm2))"
locale semicircle_tangency =
  fixes A B C D E F O :: point
  assumes
    AB_distinct: "A ≠ B" and
    O_midpoint: "O = midpoint A B" and
    O_equidistant: "dist O A = dist O B" and
    CA_perp: "dot_product (vec A C) (vec A B) = 0" and
    DB_perp: "dot_product (vec B D) (vec A B) = 0" and
    C_on_semicircle: "dist O C = dist O A" and
    D_on_semicircle: "dist O D = dist O A" and
    EC_tangent: "dot_product (vec C E) (vec O C) = 0" and
    ED_tangent: "dot_product (vec D E) (vec O D) = 0" and
    OF_perp: "dot_product (vec F O) (vec C D) = 0" and
    F_on_CD: "∃t. 0 ≤ t ∧ t ≤ 1 ∧ 
              F = (fst C + t * (fst D - fst C), snd C + t * (snd D - snd C))"
theorem (in semicircle_tangency) 
  shows "angle E F D = angle F O B"
proof -
  sorry
qed