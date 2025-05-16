theory HexagonParallelogramAngles
imports 
  Main
  "HOL-Analysis.Euclidean_Space"
begin
locale hexagon_problem =
  fixes A B C D E F G :: "real^2"
  assumes hexagon_convex: "convex {A, B, C, D, E, F}"
    and parallelogram_ABGF: "is_parallelogram A B G F" 
    and parallelogram_CDGB: "is_parallelogram C D G B"
    and parallelogram_EFGD: "is_parallelogram E F G D"
    and angle_ABG: "angle A B G = 53 * pi / 180"
    and angle_CDG: "angle C D G = 56 * pi / 180"
  where "is_parallelogram P Q R S ≡ 
    (Q - P) + (S - R) = 0 ∧ (R - Q) + (P - S) = 0"
    and "angle P Q R ≡ vector_angle (P - Q) (R - Q)"
    and "vector_angle v w ≡ 
      if v = 0 ∨ w = 0 then 0 
      else arccos (inner v w / (norm v * norm w))"
theorem angle_EFG:
  assumes "hexagon_problem A B C D E F G"
  shows "angle E F G = 71 * pi / 180"
  oops