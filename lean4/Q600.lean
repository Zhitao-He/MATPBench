import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

open Real EuclideanGeometry

-- We work in a 2-dimensional Euclidean affine space.
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [FiniteDimensional ℝ V] (dim_eq_2 : FiniteDimensional.finrank ℝ V = 2)

-- Declare points
variable (A D G H J K : P)

-- Given: ∠ADK = 96°
variable (h_A_ne_D : A ≠ D) (h_K_ne_D : K ≠ D)
variable (h_ADK_not_collinear : ¬ Collinear ℝ ({A, D, K} : Set P))
axiom h_angle_ADK : Angle.value (∠ A D K) = (96 : ℝ) * (π / 180)

-- Given: ∠HGJ = 42°
variable (h_H_ne_G : H ≠ G) (h_J_ne_G : J ≠ G)
variable (h_HGJ_not_collinear : ¬ Collinear ℝ ({H, G, J} : Set P))
axiom h_angle_HGJ : Angle.value (∠ H G J) = (42 : ℝ) * (π / 180)

-- Given: GA ∥ HD
variable (h_G_ne_A : G ≠ A) (h_H_ne_D : H ≠ D)
axiom h_GA_parallel_HD : (lineThrough ℝ G A).Parallel (lineThrough ℝ H D)

-- Collinearity properties
axiom h_KDH_collinear : Collinear ℝ ({K, D, H} : Set P)
axiom h_AGJ_collinear : Collinear ℝ ({A, G, J} : Set P)

-- For the angle to find, ∠GHD
variable (h_GHD_not_collinear : ¬ Collinear ℝ ({G, H, D} : Set P))

-- The problem to solve: Find ∠GHD.
theorem find_angle_GHD : Angle.value (∠ G H D) = (42 : ℝ) * (π / 180) := by sorry