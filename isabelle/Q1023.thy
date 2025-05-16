theory EqualChord
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = complex
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = (A + B) / 2"
definition dist :: "point ⇒ point ⇒ real" where
  "dist A B = cmod (A - B)"
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product A B = Re(A * cnj B)"
definition orthogonal :: "point ⇒ point ⇒ bool" where
  "orthogonal A B = (dot_product A B = 0)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = (∃t. t ≠ 0 ∧ t ≠ 1 ∧ C - A = t * (B - A))"
definition circumcenter :: "point ⇒ point ⇒ point ⇒ point" where
  "circumcenter A B C = undefined" 
definition orthocenter :: "point ⇒ point ⇒ point ⇒ point" where
  "orthocenter A B C = undefined" 
definition line_of :: "point ⇒ point ⇒ point set" where
  "line_of P Q = {R. ∃t. R = P + t * (Q - P)}"
definition perpendicular_line_through :: "point ⇒ point ⇒ point ⇒ point set" where
  "perpendicular_line_through P A B = 
    {R. ∃t. R = P + t * complex_of_real(Im((B - A) * cnj(1))) * (B - A) / ((B - A) * cnj(B - A))}"
definition intersection_point :: "point set ⇒ point set ⇒ point" where
  "intersection_point L1 L2 = undefined" 
theorem geometry_equal_chord:
  fixes A B C :: point
  assumes "¬ collinear A B C"
  defines "O ≡ circumcenter A B C"
  defines "H ≡ orthocenter A B C"
  defines "D ≡ midpoint B C"
  defines "DH ≡ line_of D H"
  defines "EF ≡ perpendicular_line_through H D H"
  defines "E ≡ intersection_point EF (line_of A B)"
  defines "F ≡ intersection_point EF (line_of A C)"
  shows "dist D E = dist D F"
  sorry