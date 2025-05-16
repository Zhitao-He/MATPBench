import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

-- Define Point as Euclidean space point
abbrev Point := EuclideanSpace ℝ (Fin 2)

-- Declare variables for points and the real variable x
variable (A B D F : Point)
variable (x : ℝ)

-- Angle measure function
opaque angleMeasure : Point → Point → Point → ℝ 

-- Hypotheses from the problem statement:
-- The measure of angle ABD is x + 14 degrees
axiom h_angle_ABD_val : angleMeasure A B D = x + 14

-- The measure of angle ABF is (3 * x) - 8 degrees
axiom h_angle_ABF_val : angleMeasure A B F = (3 * x) - 8

-- BD bisects angle ABF:
-- (a) ∠ABD = ∠DBF
axiom h_BD_bisects_ABF_equality : angleMeasure A B D = angleMeasure D B F
-- (b) ∠ABF = ∠ABD + ∠DBF
axiom h_BD_bisects_ABF_addition : angleMeasure A B F = angleMeasure A B D + angleMeasure D B F

-- The required conclusion: measure of ∠ABD is 50°
theorem target_angle_measure_is_50 : angleMeasure A B D = 50 := by 
  -- From h_BD_bisects_ABF_equality, we know that angleMeasure A B D = angleMeasure D B F
  -- From h_BD_bisects_ABF_addition, we have angleMeasure A B F = angleMeasure A B D + angleMeasure D B F
  -- Substituting the first into the second: angleMeasure A B F = angleMeasure A B D + angleMeasure A B D = 2 * angleMeasure A B D
  
  have h1 : angleMeasure A B F = 2 * angleMeasure A B D := by
    rw [h_BD_bisects_ABF_addition, h_BD_bisects_ABF_equality]
  
  -- Using our hypotheses on the angle values:
  -- angleMeasure A B F = (3 * x) - 8
  -- angleMeasure A B D = x + 14
  -- Substituting into h1: (3 * x) - 8 = 2 * (x + 14) = 2x + 28
  
  -- (3 * x) - 8 = 2 * x + 28
  -- 3x - 8 = 2x + 28
  -- 3x - 2x = 28 + 8
  -- x = 36
  
  -- Now, angleMeasure A B D = x + 14 = 36 + 14 = 50
  
  have h2 : (3 * x) - 8 = 2 * (x + 14) := by
    rw [h_angle_ABF_val, h1]
  
  have h3 : (3 * x) - 8 = 2 * x + 28 := by
    rw [mul_add] at h2
    assumption
  
  have h4 : 3 * x - 2 * x = 28 + 8 := by
    rw [← sub_eq_iff_eq_add] at h3
    assumption
  
  have h5 : x = 36 := by
    rw [mul_sub_left_distrib] at h4
    rw [add_comm 28 8] at h4
    rw [← eq_sub_iff_add_eq] at h4
    assumption
  
  rw [h_angle_ABD_val, h5]
  rfl