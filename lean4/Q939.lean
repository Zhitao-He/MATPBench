import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open Real
open scoped EuclideanGeometry

noncomputable def degToRad (deg : ℝ) : ℝ := deg * π / 180

theorem geometry_problem
    {P : Type*} [EuclideanPlane P]
    (C B D G E K : P)
    (h_radius_pos : dist G E > 0)
    (h_B_on_circle : dist G B = dist G E)
    (h_angle_CBD : ∠ C B D = degToRad 12)
    (h_angle_GEB : ∠ G E B = degToRad 28)
    (h_angle_GDB_from_GEB : ∠ G D B = (1/2) * ∠ G E B)
    (h_supplementary : ∠ D K B + ∠ B K E = π)
    (h_KBD_is_CBD : ∠ K B D = ∠ C B D)
    (h_KDB_is_GDB : ∠ K D B = ∠ G D B)
    (h_CB_ne_B : C ≠ B)
    (h_B_ne_E : B ≠ E)
    (h_G_ne_D : G ≠ D)
    (h_E_ne_K : E ≠ K)
    (h_KBD_not_collinear : ¬ Collinear P ({K, B, D} : Set P))
    : ∠ B K E = degToRad 26 :=
  by
    sorry