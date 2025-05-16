theory Parallelogram
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = sqrt((fst p2 - fst p1)^2 + (snd p2 - snd p1)^2)"
definition colinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "colinear A B C = (∃t. (B = A + t *⇘ (C - A)) ∧ 0 ≤ t ∧ t ≤ 1)"
definition between :: "point ⇒ point ⇒ point ⇒ bool" where
  "between A B C = (colinear A B C ∧ A ≠ C)"
fix P Q R S T :: point
assume T_on_QS: "colinear Q T S"
assume T_on_RP: "colinear R T P"
assume T_between: "Q ≠ S ∧ between Q T S ∧ between R T P"
fix x y :: real
assume "distance R T = x"
assume "distance T S = 2*y + 12"
assume "distance Q T = 5*y"
assume "distance T P = 5*x - 28"
assume "distance Q T = distance T S" 
assume "distance R T = distance T P" 
theorem value_of_x: "x = 7"
proof -
  from ‹distance Q T = 5*y› and ‹distance T S = 2*y + 12› and ‹distance Q T = distance T S›
  have "5*y = 2*y + 12" by simp
  hence "3*y = 12" by simp
  hence "y = 4" by simp
  from ‹distance R T = x› and ‹distance T P = 5*x - 28› and ‹distance R T = distance T P›
  have "x = 5*x - 28" by simp
  hence "x - 5*x = -28" by simp
  hence "-4*x = -28" by simp
  hence "4*x = 28" by simp
  thus "x = 7" by simp
qed