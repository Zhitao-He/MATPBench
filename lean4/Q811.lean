import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.LinearAlgebra.AffineSpace.Midpoint
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.Convex.Between
abbrev Plane := EuclideanSpace ℝ (Fin 2)
variable (F B O D E : Plane)
axiom hBD : dist B D = 7
axiom hFE : dist F E = 6
axiom hOE : dist O E = 9
axiom hFEO_collinear_Sbtw : Sbtw ℝ F E O
structure IsKite (p₁ p₂ p₃ p₄ : Plane) : Prop where
  adjSides1Eq : dist p₁ p₂ = dist p₁ p₄
  adjSides2Eq : dist p₃ p₂ = dist p₃ p₄
axiom hFBOD_is_kite : IsKite F B O D
noncomputable def areaFBOD (F B O D : Plane) : ℝ := (dist F O * dist B D) / 2
theorem target_theorem (F B O D E : Plane)
  (hBD : dist B D = 7) (hFE : dist F E = 6) (hOE : dist O E = 9)
  (hFEO_collinear_Sbtw : Sbtw ℝ F E O)
  (hFBOD_is_kite : IsKite F B O D) :
  areaFBOD F B O D = 105 / (2 : ℝ) := by
  sorry
