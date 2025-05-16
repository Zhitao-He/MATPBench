import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open Real

/-!
In right triangle ABC, with the right angle at C,
two types of inscribed squares S₁ and S₂ are considered.

S₁: One vertex at C, two edges along legs AC, CB, fourth vertex on hypotenuse AB.
    Side s₁ = (AC * CB) / (AC + CB)
S₂: One edge on hypotenuse AB, two opposite vertices on legs AC, CB.
    Side s₂ = (AC * CB * AB) / (AB² + AC * CB), where AB² = AC² + CB²
Given: area(S₁) = 441, area(S₂) = 440
Show: AC + CB = 462
-/

variable {P : Type*} [MetricSpace P] [NormedAddTorsor (EuclideanSpace ℝ (Fin 2)) P]

def lenAC (A C : P) : ℝ := dist A C
def lenCB (C B : P) : ℝ := dist C B

def s1SideLength (ac cb : ℝ) : ℝ := (ac * cb) / (ac + cb)
def areaS1 (ac cb : ℝ) : ℝ := (s1SideLength ac cb) ^ 2

def s2SideLength (ac cb : ℝ) : ℝ :=
  let abSq := ac^2 + cb^2
  let ab := sqrt abSq
  (ac * cb * ab) / (abSq + ac * cb)

def areaS2 (ac cb : ℝ) : ℝ := (s2SideLength ac cb) ^ 2

theorem sumOfLegsIs462 (A B C : P)
    (hA_ne_C : A ≠ C) (hB_ne_C : B ≠ C)
    (h_right_angle_C : ∠ A C B = π / 2)
    (h_lenAC_pos : lenAC A C > 0) (h_lenCB_pos : lenCB C B > 0)
    (h_area_s1 : areaS1 (lenAC A C) (lenCB C B) = 441)
    (h_area_s2 : areaS2 (lenAC A C) (lenCB C B) = 440) :
    lenAC A C + lenCB C B = 462 := by
  sorry