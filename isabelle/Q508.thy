theory Trapezoid_Problem
imports Main HOL.Real
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint p1 p2 = ((fst p1 + fst p2)/2, (snd p1 + snd p2)/2)"
fixes Q R S T U V :: point
assumes QR_length: "distance Q R = 2"
assumes VS_length: "distance V S = 7"
assumes S_midpoint: "S = midpoint R T"
assumes V_midpoint: "V = midpoint Q U"
assumes QUTR_trapezoid: "fst Q = fst U ∧ fst R = fst T" 
theorem UT_length: "distance U T = 12"
proof -
  have "VS_length = (QR_length + distance U T)/2" by (simp add: midpoint_def)
  hence "7 = (2 + distance U T)/2" by (simp add: QR_length VS_length)
  hence "14 = 2 + distance U T" by simp
  thus "distance U T = 12" by simp
qed