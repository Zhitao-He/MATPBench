theory Geometry_Problem
  imports Complex_Main
begin
locale geometry_setup =
  fixes A B C D E X :: "'a::euclidean_space"
  assumes AB_neq: "A ≠ B" and BC_neq: "B ≠ C" and CD_neq: "C ≠ D"
    and DE_neq: "D ≠ E" and EX_neq: "E ≠ X" and XA_neq: "X ≠ A"
begin
definition AB :: real where "AB = 5"
definition BD :: real where "BD = x"
definition CA :: real where "CA = 15/2"
definition EC :: real where "EC = 9/2"
definition collinear_ABD :: bool where "collinear_ABD ≡ collinear {A, B, D}"
definition collinear_ACE :: bool where "collinear_ACE ≡ collinear {A, C, E}"
definition circle_X :: "'a set" where
  "circle_X = {P. dist P X = dist B X}"
assumes B_on_circle: "B ∈ circle_X"
    and D_on_circle: "D ∈ circle_X"
    and E_on_circle: "E ∈ circle_X"
    and C_on_circle: "C ∈ circle_X"
assumes AB_len: "dist A B = AB"
    and BD_len: "dist B D = BD"
    and CA_len: "dist C A = CA"
    and EC_len: "dist E C = EC"
definition Value :: "real ⇒ bool" where
  "Value x ≡ (x = 13)"
end
end