theory Triangle_Area
  imports Complex_Main
begin
definition A :: "real × real" where "A = (0, 0)"
definition B :: "real × real" where "B = (0, 8)"
definition C :: "real × real ⇒ real × real" where "C r = (r, 0)"
definition triangle_area :: "(real × real) ⇒ (real × real) ⇒ (real × real) ⇒ real" where
  "triangle_area A B C = 1/2 * abs ((fst B - fst A) * (snd C - snd A) - (fst C - fst A) * (snd B - snd A))"
definition triangle_problem :: "bool" where
  "triangle_problem ≡ 
    let r = 10 in
      triangle_area A B (C r) = 40"
end