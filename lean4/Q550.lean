import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open Real
open Angle

noncomputable section

/-!
Formalization of the geometry problem:
As shown in the diagram, ∠BGE = x°, ∠CGD = 135°, ∠DGB = 145°, ∠EGC = x°,
center of circle is G. Find x.
The normalized answer is x = 40.
-/

variable {P : Type*} [EuclideanPlane P]
variable (G B E C D : P)
variable (x : ℝ)

def deg_to_rad (θ_deg : ℝ) : ℝ := θ_deg * (π / 180)

-- Points B, C, D, E lie on a circle with center G
hypothesis hB_on_circle : dist B G = dist C G
hypothesis hE_on_circle : dist E G = dist C G
hypothesis hD_on_circle : dist D G = dist C G

-- Given angle measurements
hypothesis h_BGE : ∠ B G E = deg_to_rad x
hypothesis h_EGC : ∠ E G C = deg_to_rad x
hypothesis h_CGD : ∠ C G D = deg_to_rad 135
hypothesis h_DGB : ∠ D G B = deg_to_rad 145

-- The sum of these angles around G should be 2π radians (a full turn)
hypothesis h_sum : (∠ B G E) + (∠ E G C) + (∠ C G D) + (∠ D G B) = 2 * π

theorem find_x_value : x = 40 := by
  -- Use h_sum to solve for x
  rw [h_BGE, h_EGC, h_CGD, h_DGB] at h_sum
  -- Substitute the angles into the sum equation
  have : deg_to_rad x + deg_to_rad x + deg_to_rad 135 + deg_to_rad 145 = 2 * π := h_sum
  -- Simplify
  have : 2 * deg_to_rad x + deg_to_rad 135 + deg_to_rad 145 = 2 * π := by rw [← add_assoc] at this; exact this
  -- Expand deg_to_rad definition
  simp only [deg_to_rad] at this
  -- Algebraic manipulation
  have : 2 * (x * (π / 180)) + 135 * (π / 180) + 145 * (π / 180) = 2 * π := this
  -- Factor out π/180
  have : (2 * x + 135 + 145) * (π / 180) = 2 * π := by 
    rw [mul_add, mul_add, mul_assoc, mul_assoc, mul_assoc]
    exact this
  -- Multiply both sides by 180/π
  have : 2 * x + 135 + 145 = 2 * π * (180 / π) := by
    have h_π_ne_0 : π ≠ 0 := pi_ne_zero
    field_simp [h_π_ne_0]
    exact this
  -- Simplify
  have : 2 * x + 280 = 360 := by 
    simp only [mul_div_cancel_right₀ _ (ne_of_gt pi_pos)] at this
    exact this
  -- Solve for x
  have : 2 * x = 80 := by linarith
  -- Divide by 2
  have : x = 40 := by linarith
  exact this
end