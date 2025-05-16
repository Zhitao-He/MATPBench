import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Pi.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.NumberTheory.Primes

open Real EuclideanGeometry

/-!
# Twelve Tangent Disks in a Circle

Twelve congruent disks are placed inside a circle C of radius 1, so that:
- Each disk is tangent to C (internally),
- Each disk is tangent to its two neighbors (arranged in a regular 12-gon).
-/
abbrev Point := EuclideanSpace ℝ (Fin 2)

structure Disk where
  center : Point
  radius : ℝ
  h_radius_pos : radius > 0

-- The large circle has radius 1, center at origin
def C_large_radius : ℝ := 1
def C_large_center : Point := 0
def C_large : Disk := {
  center := C_large_center
  radius := C_large_radius
  h_radius_pos := by norm_num
}

-- Number of small disks
def N_disks : ℕ := 12

/-
The centers of the small disks form a regular 12-gon inscribed in a circle of radius (1 - r).
The central angle between centers is 2π/12 = π/6.
Tangency condition: sin(π/N) = r / (1 - r) ⇒ r = sin(π/N)/(1 + sin(π/N))
-/
def r_small_geom : ℝ :=
  (sin (π / (N_disks : ℝ))) / (1 + sin (π / (N_disks : ℝ)))

lemma r_small_geom_pos : r_small_geom > 0 := by
  have hN : (N_disks : ℝ) > 0 := by norm_num
  have h0 : π / (N_disks : ℝ) > 0 := div_pos Real.pi_pos hN
  have hlt : π / (N_disks : ℝ) < π := by
    have : (N_disks : ℝ) > 1 := by norm_num
    apply (div_lt_iff hN).mpr
    linarith [Real.pi_pos]
  have hsin : sin (π / (N_disks : ℝ)) > 0 := sin_pos_of_pos_of_lt_pi h0 hlt
  have hden := add_pos zero_lt_one hsin
  rw [r_small_geom]
  exact div_pos hsin hden

/-!
Formal statement: There exist a,b,c with a,b,c>0, c squarefree, and
12πr² = π(a - b√c) and a + b + c = 135,
where r = sin(π/12)/(1+sin(π/12))
-/
theorem twelve_disks_problem :
  ∃ (a b c : ℕ),
    (a > 0 ∧ b > 0 ∧ c > 0) ∧
    Squarefree c ∧
    ((N_disks : ℝ) * π * (r_small_geom^2) = π * ((a : ℝ) - (b : ℝ) * sqrt (c : ℝ))) ∧
    (a + b + c = 135) := by sorry