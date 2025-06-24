theory Square_Division
  imports Complex_Main
begin
definition square_vertices :: "((real × real) list)" where
  "square_vertices = [(0,0), (6,0), (6,6), (0,6)]"
definition midpoint :: "(real × real) ⇒ (real × real) ⇒ (real × real)" where
  "midpoint p q = ((fst p + fst q)/2, (snd p + snd q)/2)"
definition M1 :: "real × real" where
  "M1 = midpoint (0,0) (6,0)"  
definition M2 :: "real × real" where
  "M2 = midpoint (6,6) (0,6)"  
definition line_M1M2 :: "real ⇒ real" where
  "line_M1M2 x = 2 * x"
definition A :: "real × real" where
  "A = (3, y1)"
definition B :: "real × real" where
  "B = (3, y2)"
locale AB_on_M1M2 =
  fixes y1 y2 :: real
  assumes y1_in: "0 ≤ y1" "y1 ≤ 6"
    and y2_in: "0 ≤ y2" "y2 ≤ 6"
    and ab_len: "abs (y1 - y2) = 4"
definition divides_square_equally :: "real ⇒ real ⇒ bool" where
  "divides_square_equally y1 y2 ⟷
    (∃P Q R S.
      let V0 = (0,0); V1 = (6,0); V2 = (6,6); V3 = (0,6);
          A = (3, y1); B = (3, y2)
      in
        True
    )"
end