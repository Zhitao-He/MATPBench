import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Triangle

open RealInnerProductSpace
open EuclideanGeometry

/--
Let $O$ and $I$ be the circumcenter and incenter of $\triangle ABC$, respectively.
Given that $OI \perp AI$, prove that $AB + AC = 2BC$.
-/
section OI_perp_AI_theorem

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

variable (A B C O I : P)

/-- If $A$, $B$, $C$ are non-collinear points in a Euclidean space,
    $O$ is the circumcenter, $I$ is the incenter, and $OI \perp AI$,
    then $AB + AC = 2BC$. -/
theorem triangle_OI_perp_AI_side_sum
    (h_noncollinear : ¬ Collinear ℝ A B C)
    (hO : O = circumcenter A B C)
    (hI : I = (EuclideanGeometry.Triangle.mk₃ A B C h_noncollinear).incenter)
    (h_perp : inner (O -ᵥ I) (A -ᵥ I) = 0) :
    dist A B + dist A C = 2 * dist B C := by
  sorry

end OI_perp_AI_theorem