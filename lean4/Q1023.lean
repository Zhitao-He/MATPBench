import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Geometry.Euclidean.Line
import Mathlib.Data.Real.Basic
import Mathlib.Data.Matrix.Notation   -- for ![]
import Mathlib.Data.Fin.VecNotation  -- for ![] with Fin n

-- The Euclidean plane as a 2-dimensional real Euclidean space.
abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)

section EqualChord

-- Three non-collinear points A, B, C in the plane
variable (A B C : EuclideanPlane)
variable (h_noncollinear : Noncollinear ℝ A B C)

-- The circumcenter of triangle ABC
def O : EuclideanPlane := circumcenter ℝ A B C

-- The orthocenter of triangle ABC
def H : EuclideanPlane := orthocenter ℝ A B C

-- The midpoint D of segment BC
def D : EuclideanPlane := midpoint ℝ B C

-- D ≠ H is required so DH is a line
variable (h_D_ne_H : D ≠ H)

-- The line DH
def lineDH : Line EuclideanPlane := Line.mk_pt_pt D H h_D_ne_H

-- The direction vector from D to H
def vecDH (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C) 
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear) : EuclideanPlane := 
  (H A B C h_noncollinear) -ᵥ (D A B C h_noncollinear)

lemma vecDH_ne_zero (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C)
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear) : 
    vecDH A B C h_noncollinear h_D_ne_H ≠ 0 := 
  sub_ne_zero_iff_ne.mpr h_D_ne_H

-- A perpendicular direction to vecDH in 2D: if v = (x,y), perp v = (-y, x)
def perpDir (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C)
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear) : EuclideanPlane := 
  let v := vecDH A B C h_noncollinear h_D_ne_H
  ![-(v 1), v 0]

lemma perpDir_ne_zero (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C)
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear) : 
    perpDir A B C h_noncollinear h_D_ne_H ≠ 0 := by
  intro h
  let v := vecDH A B C h_noncollinear h_D_ne_H
  have h₁ : perpDir A B C h_noncollinear h_D_ne_H 0 = 0 := by rw [h]; rfl
  have h₂ : perpDir A B C h_noncollinear h_D_ne_H 1 = 0 := by rw [h]; rfl
  simp only [perpDir] at h₁ h₂
  dsimp at h₁ h₂
  have : v 0 = 0 ∧ v 1 = 0 := by
    simp at h₁ h₂; constructor
    · exact h₂
    · rw [neg_eq_zero] at h₁; exact h₁
  have : v = 0 := by ext i; fin_cases i <;> simp [this]
  exact vecDH_ne_zero A B C h_noncollinear h_D_ne_H this

-- The point H + perpDir (used for constructing the perp line through H)
def H_perp (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C)
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear) : EuclideanPlane := 
  (H A B C h_noncollinear) +ᵥ perpDir A B C h_noncollinear h_D_ne_H

lemma H_ne_H_perp (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C)
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear) : 
    H A B C h_noncollinear ≠ H_perp A B C h_noncollinear h_D_ne_H := 
  (ne_add_self_iff_ne_zero _).mpr (perpDir_ne_zero A B C h_noncollinear h_D_ne_H)

-- The line EF through H perpendicular to DH
def lineEF (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C)
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear) : Line EuclideanPlane := 
  Line.mk_pt_pt (H A B C h_noncollinear) (H_perp A B C h_noncollinear h_D_ne_H) 
    (H_ne_H_perp A B C h_noncollinear h_D_ne_H)

-- Sides of the triangle
lemma h_A_ne_B (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C) : A ≠ B := 
  h_noncollinear.ne₁₂
  
lemma h_A_ne_C (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C) : A ≠ C := 
  h_noncollinear.ne₁₃

def lineAB (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C) : Line EuclideanPlane := 
  Line.mk_pt_pt A B (h_A_ne_B A B C h_noncollinear)
  
def lineAC (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C) : Line EuclideanPlane := 
  Line.mk_pt_pt A C (h_A_ne_C A B C h_noncollinear)

-- Intersections of EF with AB and AC
def E_data (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C)
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear) : PointWithIntersection EuclideanPlane := 
  (lineEF A B C h_noncollinear h_D_ne_H).intersectionWith (lineAB A B C h_noncollinear)
  
def F_data (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C)
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear) : PointWithIntersection EuclideanPlane := 
  (lineEF A B C h_noncollinear h_D_ne_H).intersectionWith (lineAC A B C h_noncollinear)

-- Hypotheses: intersections actually exist (are not parallel, etc)
variable (h_E_intersects : (E_data A B C h_noncollinear h_D_ne_H).intersects)
variable (h_F_intersects : (F_data A B C h_noncollinear h_D_ne_H).intersects)

-- The intersection points
def E (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C)
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear)
    (h_E_intersects : (E_data A B C h_noncollinear h_D_ne_H).intersects) : EuclideanPlane := 
  (E_data A B C h_noncollinear h_D_ne_H).pt
  
def F (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C)
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear)
    (h_F_intersects : (F_data A B C h_noncollinear h_D_ne_H).intersects) : EuclideanPlane := 
  (F_data A B C h_noncollinear h_D_ne_H).pt

-- The desired equality of distances
theorem dist_DE_eq_DF (A B C : EuclideanPlane) (h_noncollinear : Noncollinear ℝ A B C)
    (h_D_ne_H : D A B C h_noncollinear ≠ H A B C h_noncollinear)
    (h_E_intersects : (E_data A B C h_noncollinear h_D_ne_H).intersects)
    (h_F_intersects : (F_data A B C h_noncollinear h_D_ne_H).intersects) : 
    dist (D A B C h_noncollinear) (E A B C h_noncollinear h_D_ne_H h_E_intersects) = 
    dist (D A B C h_noncollinear) (F A B C h_noncollinear h_D_ne_H h_F_intersects) := by sorry

end EqualChord