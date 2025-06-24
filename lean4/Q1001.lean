import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.PerpBisector
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
noncomputable def Sphere (O : Point) (r : ℝ) : Set Point := sorry
noncomputable def perpBisector (A B : Point) : Set Point := sorry
noncomputable def circumcenter (A B C : Point) : Point := sorry
noncomputable def circumradius (A B C : Point) : ℝ := sorry
theorem CG_eq_CD
  (A B C D E F G O : Point)
  (hNoncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hO : O = circumcenter A B C)
  (rCircum : ℝ)
  (hrCircum : rCircum = circumradius A B C)
  (hEOnCircum : E ∈ Sphere O rCircum)
  (hEOnPerpBisBC : E ∈ perpBisector B C)
  (hEPos : ¬ (line[ℝ, B, C]).WSameSide A E)
  (hD_is_antipodal_E : D = O + (O -ᵥ E))
  (hFDef : F = EuclideanGeometry.orthogonalProjection (line[ℝ, A, B]) C)
  (hDNeA : D ≠ A)
  (hGOnLineDA : G ∈ line[ℝ, D, A])
  (hENeF : E ≠ F)
  (hFNeG : F ≠ G)
  (hFGPerpEF : inner ℝ (G -ᵥ F) (F -ᵥ E) = 0)
  : dist C G = dist C D := by
  sorry
