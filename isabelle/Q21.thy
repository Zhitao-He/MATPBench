theory CubicFunction
  imports Complex_Main "HOL-Library.Polynomial"
begin

(* 定义立方函数 f(x) = x³ *)
definition f :: "real ⇒ real" where
  "f x = x^3"

(* 证明f是一个3次多项式 *)
theorem cubic_function_degree:
  "∃p. degree p = 3 ∧ (∀x. f x = poly p x)"
proof
  let ?p = "[:0, 0, 0, 1:]"
  show "degree ?p = 3 ∧ (∀x. f x = poly ?p x)"
  proof
    show "degree ?p = 3"
      by simp
    show "∀x. f x = poly ?p x"
    proof
      fix x :: real
      have "poly ?p x = 1 * x^3 + 0 * x^2 + 0 * x + 0"
        by (simp add: poly_pCons)
      also have "... = x^3"
        by simp
      also have "... = f x"
        by (simp add: f_def)
      finally show "f x = poly ?p x"
        by simp
    qed
  qed
qed

end