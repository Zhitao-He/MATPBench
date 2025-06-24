import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
noncomputable section
namespace exGeo
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def angleBisectorLine (B A C : P) : AffineSubspace ℝ P := sorry
noncomputable def incenter (A B C : P) : P := sorry
noncomputable def excenter (A B C : P) : P := sorry
noncomputable def orthogonalProjection (l : AffineSubspace ℝ P) (p : P) : P := sorry
noncomputable def circumcenter (A B C : P) : P := sorry
noncomputable def Sphere (center : P) (radius : ℝ) : Set P := sorry
def pointOnExtendedLine (A C : P) : P := A -ᵥ (C -ᵥ A)
def exteriorAngleBisectorBACLine (A B C : P) : AffineSubspace ℝ P :=
  angleBisectorLine B A (pointOnExtendedLine A C)
def circumcircleOfTriangle (A B C O : P) (circumRadius : ℝ) : Set P :=
  Sphere O circumRadius
def lineThroughPoints (D E : P) : AffineSubspace ℝ P := affineSpan ℝ {D, E}
theorem problemStatement
    (A B C O I E D F G : P)
    (h_noncollinear : ¬ Collinear ℝ {A, B, C})
    (hA_ne_B : A ≠ B) (hA_ne_C : A ≠ C) (hB_ne_C : B ≠ C)
    (hO : O = circumcenter A B C)
    (circumRadius : ℝ) (hR_circum : circumRadius = dist A O)
    (hI : I = incenter A B C)
    (hE : E = excenter A B C)
    (hD_on_BC : D ∈ affineSpan ℝ {B, C})
    (hD_on_ext_bisector_A : D ∈ exteriorAngleBisectorBACLine A B C)
    (hD_on_extension_BC : D ∉ segment ℝ B C)
    (hD_ne_E : D ≠ E)
    (hF : F = orthogonalProjection (lineThroughPoints D E) I)
    (hG_on_line_IF : G ∈ lineThroughPoints I F)
    (hG_on_circum : G ∈ circumcircleOfTriangle A B C O circumRadius)
    (hG_sbtw_I_F : Sbtw ℝ I G F)
    : G = midpoint ℝ I F := by sorry
end exGeo
end noncomputable
