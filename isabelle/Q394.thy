theory CoPlanarSquares
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition vecadd :: "point ⇒ point ⇒ point" (infixl "⊕" 65) where
  "p1 ⊕ p2 = (fst p1 + fst p2, snd p1 + snd p2)"
definition scalmult :: "real ⇒ point ⇒ point" (infixl "⊗" 70) where
  "c ⊗ p = (c * fst p, c * snd p)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C ⟷ (fst B - fst A) * (snd C - snd A) = (snd B - snd A) * (fst C - fst A)"
definition area_triangle :: "point ⇒ point ⇒ point ⇒ real" where
  "area_triangle A B C = (1/2) * abs (
    fst A * (snd B - snd C) +
    fst B * (snd C - snd A) +
    fst C * (snd A - snd B)
  )"
theorem coplanar_adjacent_squares_triangle_area:
  let A = (0, 0);
      B = (5, 0);
      C = (15, 0);
      D = (15, 10);
      F = (5, 10);
      G = (5, 5);
      H = (0, 5);
      E = (10, 5)
  in area_triangle A B E = 25/3