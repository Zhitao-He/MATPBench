import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Circumcenter

open EuclideanGeometry Real

-- We work in a 2-dimensional Euclidean plane.
variable {P : Type*} [MetricSpace P] [NormedAddTorsor (EuclideanSpace ℝ (Fin 2)) P]

/--
Definition for two circles (Spheres in Mathlib) being externally tangent at a point.
- `pt` is the point of tangency.
- `S1`, `S2` are the two circles.
Conditions:
1. `pt` lies on both circles.
2. The centers of the circles are distinct.
3. `pt` lies on the line segment connecting the centers of `S1` and `S2` (i.e., is between them or coincides with one of them in the sense of segment betweenness).
-/
def AreExternallyTangentAt (pt : P) (S1 S2 : Sphere P) : Prop :=
  pt ∈ S1.carrier ∧
  pt ∈ S2.carrier ∧
  S1.center ≠ S2.center ∧
  Sbtw ℝ S1.center pt S2.center

/-
Let points A, B, C, O, D, E, F : P.
We formalize the configuration and theorem statement for "tangent_circles_at_F" as follows:
-/
theorem tangent_circles_at_F
  (A B C O D E F : P)
  (rO : ℝ)
  (h_rO_pos : 0 < rO)
  (hAnB : A ≠ B) (hAnC : A ≠ C) (hBnC : B ≠ C)
  -- Points A, B, C lie on circle O.
  (hA_on_circO : A ∈ Sphere O rO)
  (hB_on_circO : B ∈ Sphere O rO)
  (hC_on_circO : C ∈ Sphere O rO)
  -- D ≠ C, for Line.mk D C
  (hCnD : C ≠ D)
  -- DC ⟂ AC
  (h_DC_perp_AC : Angle.IsPerpendicular (Line.mk D C) (Line.mk A C))
  -- D lies on the extension of AB, with B between A and D
  (hD_on_line_AB : D ∈ line[ℝ, A, B])
  (hD_on_extension_AB : Sbtw ℝ A B D)
  -- DE ⟂ AO
  (hDnE : D ≠ E)
  (hAnO : A ≠ O)
  (h_DE_perp_AO : Angle.IsPerpendicular (Line.mk D E) (Line.mk A O))
  -- F ∈ circle O ∧ F ∈ line DE
  (hF_on_circO : F ∈ Sphere O rO)
  (hF_on_line_DE : F ∈ line[ℝ, D, E])
  -- E ∈ AC
  (hE_on_line_AC : E ∈ line[ℝ, A, C])
  -- B, E, F not collinear, so circle through B, E, F is well-defined
  (hBEF_not_collinear : ¬ Collinear ℝ ({B, E, F}))
  -- C, D, F not collinear, so circle through C, D, F is well-defined
  (hCDF_not_collinear : ¬ Collinear ℝ ({C, D, F}))
  -- Distinction on F
  (hF_distinct_A : F ≠ A)
  (hF_distinct_B : F ≠ B)
  (hF_distinct_C : F ≠ C)
  (hF_distinct_D : F ≠ D)
  (hF_distinct_E : F ≠ E)
  :
  let P_center := circumcenter ℝ B E F
  let Q_center := circumcenter ℝ C D F
  let circP : Sphere P := { center := P_center, radius := dist P_center F }
  let circQ : Sphere P := { center := Q_center, radius := dist Q_center F }
  AreExternallyTangentAt F circP circQ
  := by sorry