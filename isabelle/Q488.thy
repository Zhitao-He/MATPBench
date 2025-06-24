theory GeometryProblem
imports Main
begin
variables x :: real
variables y :: real
definition len_IB :: real where "len_IB = (1/2)*x - 7"
definition len_JI :: real where "len_JI = (1/4)*x + 5"
definition len_LD :: real where "len_LD = 66 - (2/3)*y"
definition len_NL :: real where "len_NL = (1/3)*y - 6"
axiom NL_eq_LD: "len_NL = len_LD"
lemma solve_for_y: "y = 72"
proof -
  have eq1: "(1/3)*y - 6 = 66 - (2/3)*y"
    by (simp add: NL_eq_LD len_NL_def len_LD_def)
  have eq2: "(1/3)*y + (2/3)*y = 66 + 6"
    by (linarith [eq1]) 
  thus "y = 72"
    by (simp add: eq2)
qed
axiom JI_eq_IB: "len_JI = len_IB"
lemma solve_for_x: "x = 48"
proof -
  have eq1: "(1/4)*x + 5 = (1/2)*x - 7"
    by (simp add: JI_eq_IB len_JI_def len_IB_def)
  have eq2: "12 = (1/2)*x - (1/4)*x"
    by (linarith [eq1])
  thus "x = 48"
    by (simp add: eq2)
qed
theorem value_of_x_is_48: "x = 48"
  by (rule solve_for_x)
lemma length_values_at_x_48_y_72:
  "x = 48 ⟹ y = 72 ⟹ len_IB = 17 ∧ len_JI = 17 ∧ len_LD = 18 ∧ len_NL = 18"
proof (cases "x = 48" and "y = 72")
  assume hx: "x = 48" and hy: "y = 72"
  show "len_IB = 17 ∧ len_JI = 17 ∧ len_LD = 18 ∧ len_NL = 18"
    by (simp add: hx hy len_IB_def len_JI_def len_LD_def len_NL_def)
qed
end