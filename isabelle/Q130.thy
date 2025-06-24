theory Rectangle_Circle_Inscribed
  imports Main
begin
locale rectangle =
  fixes l w :: real
  assumes l_pos: "l > 0"
      and w_pos: "w > 0"
definition r :: real where "r = 5"
definition ratio :: bool where "ratio ≡ l = 2 * w"
definition area :: bool where "area ≡ l * w = 200"
definition inscribed :: bool where "inscribed ≡ r = w / 2 ∧ r = l / 4"
end