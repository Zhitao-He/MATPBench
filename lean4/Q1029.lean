import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.PerpBisector
import Mathlib.Geometry.Euclidean.Sphere.Basic

/-!
Let $O$ be the circumcenter of $\triangle ABC$, and $D$ be a point on $BC$.
The perpendicular bisector of $BD$ intersects $AB$ at $F$,
and the perpendicular bisector of $CD$ intersects $AC$ at $E$.
Prove that the points $A$, $F$, $O$, and $E$ are concyclic.
-/

universe u v

open scoped EuclideanGeometry

variable {V : Type u} {P : Type v}
variable [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable [MetricSpace P] [NormedAddTorsor V P]
variable [Fact (finrank ℝ V = 2)]

open EuclideanGeometry

theorem concyclic_AFOE
    (A B C D F E : P)
    (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set P))
    (hD_on_BC : D ∈ line[ℝ, B, C])
    (hB_ne_D : B ≠ D)
    (hC_ne_D : C ≠ D)
    (hF_on : F ∈ line[ℝ, A, B] ∧ F ∈ perpBisector ℝ B D)
    (hE_on : E ∈ line[ℝ, A, C] ∧ E ∈ perpBisector ℝ C D) :
    let O := circumcenter ℝ A B C ((affineIndependent_iff_not_collinear_of_finrank_eq_two Fact.out).mpr h_noncollinear)
    Cospherical ℝ ({A, F, O, E} : Set P) :=
  by
    sorry