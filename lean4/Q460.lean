import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Data.Real.Basic

namespace TriangleProblem

open EuclideanGeometry

variable {EuclideanPlane : Type*} [EuclideanSpace ℝ EuclideanPlane]

/--
The distance from a point `pt` to the (affine) line determined by distinct points `p₁` and `p₂`.
-/
noncomputable def distPointLine (pt p₁ p₂ : EuclideanPlane) (h : p₁ ≠ p₂) : ℝ :=
  dist pt (orthogonalProjection (affineSpan ℝ ({p₁, p₂} : Set EuclideanPlane)) pt)

/--
Triangle vertices as a map from `Fin 3`.
-/
def trianglePoints (A B C : EuclideanPlane) : Fin 3 → EuclideanPlane
  | ⟨0, _⟩ => A
  | ⟨1, _⟩ => B
  | ⟨2, _⟩ => C

/--
Main theorem: If triangle ABC has side lengths 13, 12, and 5, area 30, and D is an interior point,
let e, f, g be the distances from D to BC, CA, and AB respectively. Then 5e + 12f + 13g = 60.
-/
theorem triangle_distance_weighted_sum
    (A B C D : EuclideanPlane)
    (hAB : dist A B = 13)
    (hBC : dist B C = 12)
    (hCA : dist C A = 5)
    (h_area : Triangle.area A B C = 30)
    (hDint : Triangle.interiorContains
               { points := trianglePoints A B C } D) :
    let e : ℝ := distPointLine D B C (by
      intro h; subst h
      rw [dist_self] at hBC
      norm_num at hBC )
    let f : ℝ := distPointLine D C A (by
      intro h; subst h
      rw [dist_self] at hCA
      norm_num at hCA )
    let g : ℝ := distPointLine D A B (by
      intro h; subst h
      rw [dist_self] at hAB
      norm_num at hAB )
    5 * e + 12 * f + 13 * g = 60 :=
by
  sorry

end TriangleProblem