import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Data.Real.Basic

namespace EuclideanGeometryProblem

open scoped EuclideanGeometry

-- Working in the Euclidean plane over ℝ
variables {V P : Type*}
variables [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variables [MetricSpace P] [NormedAddTorsor V P]
variables [FiniteDimensional ℝ V] (h_dim : FiniteDimensional.finrank ℝ V = 2)

-- Given points in the plane
variables (A B C D E F S T : P)

-- E ∈ segment A D, F ∈ segment B C
variable (hE_seg : E ∈ EuclideanGeometry.segment ℝ A D)
variable (hF_seg : F ∈ EuclideanGeometry.segment ℝ B C)

-- E ≠ D, F ≠ C
variable (hE_ne_D : E ≠ D)
variable (hF_ne_C : F ≠ C)

-- Ratio equality: dist A E / dist E D = dist B F / dist F C
variable (h_ratio : dist A E / dist E D = dist B F / dist F C)

-- S is intersection of line B A and line E F
variable (hB_ne_A : B ≠ A)
variable (hE_ne_F : E ≠ F)
variable (hS_on_BA : EuclideanGeometry.Collinear ℝ B A S)
variable (hS_on_EF : EuclideanGeometry.Collinear ℝ E F S)
variable (hS_ne_B : S ≠ B)
variable (hS_ne_A : S ≠ A)

-- T is intersection of line C D and line E F
variable (hC_ne_D : C ≠ D)
variable (hT_on_CD : EuclideanGeometry.Collinear ℝ C D T)
variable (hT_on_EF : EuclideanGeometry.Collinear ℝ E F T)
variable (hT_ne_D : T ≠ D)
variable (hT_ne_C : T ≠ C)

-- Non-collinearity for the circumcircles:
variable (hAES_nc : ¬ EuclideanGeometry.Collinear ℝ A E S)
variable (hBFS_nc : ¬ EuclideanGeometry.Collinear ℝ B F S)
variable (hCFT_nc : ¬ EuclideanGeometry.Collinear ℝ C F T)
variable (hDET_nc : ¬ EuclideanGeometry.Collinear ℝ D E T)

-- Definitions of the circumcircles
noncomputable def CO₂ : EuclideanGeometry.Sphere P :=
  EuclideanGeometry.circumcircle A E S

noncomputable def OP_circle : EuclideanGeometry.Sphere P :=
  EuclideanGeometry.circumcircle B F S

noncomputable def CO₃ : EuclideanGeometry.Sphere P :=
  EuclideanGeometry.circumcircle C F T

noncomputable def OR_circle : EuclideanGeometry.Sphere P :=
  EuclideanGeometry.circumcircle D E T

/--
Main theorem: There exists a point lying on all four circumcircles.
-/
theorem four_circles_concurrent :
  ∃ (P₀ : P),
    P₀ ∈ CO₂.carrier ∧
    P₀ ∈ OP_circle.carrier ∧
    P₀ ∈ CO₃.carrier ∧
    P₀ ∈ OR_circle.carrier := by
  sorry

end EuclideanGeometryProblem