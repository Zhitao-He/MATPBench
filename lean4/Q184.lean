import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def quadrilateralPerimeter (p1 p2 p3 p4 : P) : ℝ :=
  dist p1 p2 + dist p2 p3 + dist p3 p4 + dist p4 p1
structure IsSimilarQuadrilaterals (v1 v2 v3 v4 u1 u2 u3 u4 : P) : Prop where
  exists_k_positive_ratio : ∃ k : ℝ, k > 0 ∧
    dist v1 v2 = k * dist u1 u2 ∧
    dist v2 v3 = k * dist u2 u3 ∧
    dist v3 v4 = k * dist u3 u4 ∧
    dist v4 v1 = k * dist u4 u1
  angle_at_v1_eq_angle_at_u1 : EuclideanGeometry.angle v4 v1 v2 = EuclideanGeometry.angle u4 u1 u2
  angle_at_v2_eq_angle_at_u2 : EuclideanGeometry.angle v1 v2 v3 = EuclideanGeometry.angle u1 u2 u3
  angle_at_v3_eq_angle_at_u3 : EuclideanGeometry.angle v2 v3 v4 = EuclideanGeometry.angle u2 u3 u4
  angle_at_v4_eq_angle_at_u4 : EuclideanGeometry.angle v3 v4 v1 = EuclideanGeometry.angle u3 u4 u1
theorem perimeter_of_mnpq_is_34
    (m n p q x y z w : P)
    (h_mn : dist m n = 9)
    (h_np : dist n p = 10)
    (h_pq : dist p q = 7)
    (h_qm : dist q m = 8)
    (h_wx : dist w x = 4)
    (h_similar : IsSimilarQuadrilaterals m n p q x y z w) :
    quadrilateralPerimeter m n p q = 34 := by sorry
