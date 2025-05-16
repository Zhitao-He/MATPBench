theory GeometryProof
imports Main HOL.Real
begin

locale triangle_and_parallelogram =
  fixes P Q R S T U V W :: "real × real"
  assumes area_PQR: "area_triangle P Q R = 1"
  assumes area_STU: "area_triangle S T U = 1"
  assumes U_midpoint_QR: "U = midpoint Q R"
  assumes W_midpoint_PQ: "W = midpoint P Q"
  assumes V_midpoint_PR: "V = midpoint P R"
  assumes R_midpoint_ST: "R = midpoint S T"
  assumes V_midpoint_SU: "V = midpoint S U"
  assumes W_midpoint_TU: "W = midpoint T U"

definition midpoint :: "(real × real) ⇒ (real × real) ⇒ (real × real)" where
  "midpoint A B = (fst A + fst B) / 2, (snd A + snd B) / 2)"

definition area_triangle :: "(real × real) ⇒ (real × real) ⇒ (real × real) ⇒ real" where
  "area_triangle A B C = abs(
    (fst A * (snd B - snd C) + 
     fst B * (snd C - snd A) + 
     fst C * (snd A - snd B)) / 2)"

definition area_parallelogram :: "(real × real) ⇒ (real × real) ⇒ (real × real) ⇒ (real × real) ⇒ real" where
  "area_parallelogram A B C D = area_triangle A B C + area_triangle A C D"

theorem parallelogram_area:
  "area_parallelogram U V R W = 1/2"

end