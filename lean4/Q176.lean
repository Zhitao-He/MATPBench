import Mathlib.Data.Real.Basic
def angle1 : ℝ := 68
def angle2 (x : ℝ) : ℝ := 2 * x
def angle3 (x : ℝ) : ℝ := 3 * x - 15
def triangle_angle_sum (x : ℝ) : Prop :=
  angle1 + angle2 x + angle3 x = 180
theorem find_x_is_34 (x : ℝ) :
    triangle_angle_sum x → x = 34 := by sorry