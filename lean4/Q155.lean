import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic

/-!
# Formalization of: Find $x$ in the given diagram

Let $C$, $Q$, $Q'$ be collinear points in Euclidean space,
with $\operatorname{dist}(C, Q) = 5$, $\operatorname{dist}(Q, Q') = x$,
and $\operatorname{dist}(C, Q') = 20$. From the diagram, $x = 15$.
-/

open EuclideanGeometry

variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P]
variable (C Q Q' : P)

/-- $|CQ| = 5$ -/
hypothesis hCQ : dist C Q = 5

/-- $|Q Q'| = x$ is the label in the diagram -/
variable (x : ℝ)
hypothesis hxdef : x = dist Q Q'

/-- $|C Q'| = 20$ -/
hypothesis hCQ' : dist C Q' = 20

/-- The points $C$, $Q$, $Q'$ are collinear, and $Q$ lies between $C$ and $Q'$. -/
hypothesis h_collinear : Wbtw ℝ C Q Q'

/-- Conclusion: $x = 15$ -/
theorem find_x_diagram : x = 15 := by
  -- From properties of Wbtw (weakly between),
  -- dist C Q + dist Q Q' = dist C Q'
  have h_sum : dist C Q + dist Q Q' = dist C Q' :=
    Wbtw.dist_add_dist_eq_dist h_collinear
  rw [hCQ, hxdef, hCQ'] at h_sum
  -- Now: 5 + x = 20
  linarith