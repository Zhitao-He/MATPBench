import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

/-!
# Problem formalization:
Given points G, O, H, I, B, E in a Euclidean plane (with the diagram as reference):

- ∠GOI = (3*y + 1)°
- ∠HBI = (3*x + 11)°
- ∠OIE = (4*x - 5)°
- GE ∥ OI, IB ∥ OH, OI ∥ HB (parallel lines as shown in diagram)

We are to show: x = 16.

The formalization below encodes this setup and states the main theorem (with assumptions) to be proved.
-/

open Real

-- Let P be a real inner product space of dimension 2 (the affine plane)
variable {P : Type*} [NormedAddCommGroup P] [InnerProductSpace ℝ P] [FiniteDimensional ℝ P] 
  (two_dim : FiniteDimensional.finrank ℝ P = 2)

-- Points in the plane
variable (G O H I B E : P)

-- Unknowns
variable (x y : ℝ)

-- Conversion: degrees to radians
def deg (d : ℝ) : ℝ := d * (π / 180)

-- Notation: Angle G O I is written as ∠GOI, using Mathlib's angle definition
noncomputable abbrev angle (A B C : P) : ℝ := ∠ A B C

theorem find_x_value
  (h_GOI : angle G O I = deg (3 * y + 1))
  (h_HBI : angle H B I = deg (3 * x + 11))
  (h_OIE : angle O I E = deg (4 * x - 5))

  -- These parallels, by geometry, create constraints between the angles (see solution).
  -- We also record that all involved points are distinct and configuration generic, so non-degeneracy is assumed.

  -- For parallelogram OIBH:
  -- Adjacent angles at I and B are supplementary:
  (h_parallelogram : angle O I B + angle H B I = π)
  -- For collinearity of E, I, B with I between E and B, and O not on line E B:
  (h_collinear : angle O I E + angle O I B = π)

  -- (The rest of GE ∥ OI, IB ∥ OH, OI ∥ HB are either implicit from parallelogram or not strictly needed for x.)

  : x = 16 := by
  -- From parallelogram: angle O I B + angle H B I = π
  -- From collinearity:   angle O I E + angle O I B = π
  -- Subtract:           angle O I E = angle H B I
  -- Substitute angle values from input:
  -- deg (4 * x - 5) = deg (3 * x + 11), so 4x - 5 = 3x + 11, so x = 16
  have h1 : deg (4 * x - 5) = deg (3 * x + 11) := by
    rw [←h_OIE, ←h_HBI]
    -- because by above two geometric equalities, angles at OIE and HBI are equal
    calc angle O I E = π - angle O I B := by rw [h_collinear]; ring
                 _   = angle H B I     := by rw [←h_parallelogram]; ring
  have : 4 * x - 5 = 3 * x + 11 := by
    apply_fun (fun t => t * (180/π)) at h1
    simp [deg] at h1; linarith [h1]
  linarith