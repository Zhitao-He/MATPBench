import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

noncomputable section

open EuclideanGeometry


abbrev EuclideanPlane : Type := EuclideanSpace ℝ (Fin 2)


variable {A B C X : EuclideanPlane}


def givenAC : ℝ := 21
def givenCB : ℝ := 14
def givenAB : ℝ := 45


variable (hNondeg : ¬ Collinear ℝ ({A, B, C} : Set EuclideanPlane))


variable (hXInSeg : X ∈ openSegment ℝ A B)


variable (hBisect : ∠ A C X = ∠ X C B)


variable (hAngleNeZero : ∠ X C B ≠ 0)


variable (hAC : dist A C = givenAC)
variable (hCB : dist C B = givenCB)
variable (hAB : dist A B = givenAB)


def lengthAX : ℝ := (givenAC * givenAB) / (givenAC + givenCB)


theorem distAXEqLengthAX
    (hNondeg : ¬ Collinear ℝ ({A, B, C} : Set EuclideanPlane))
    (hXInSeg : X ∈ openSegment ℝ A B)
    (hBisect : ∠ A C X = ∠ X C B)
    (hAngleNeZero : ∠ X C B ≠ 0)
    (hAC : dist A C = givenAC)
    (hCB : dist C B = givenCB)
    (hAB : dist A B = givenAB) :
    dist A X = lengthAX := by sorry


theorem distAXEq27
    (hNondeg : ¬ Collinear ℝ ({A, B, C} : Set EuclideanPlane))
    (hXInSeg : X ∈ openSegment ℝ A B)
    (hBisect : ∠ A C X = ∠ X C B)
    (hAngleNeZero : ∠ X C B ≠ 0)
    (hAC : dist A C = givenAC)
    (hCB : dist C B = givenCB)
    (hAB : dist A B = givenAB) :
    dist A X = 27 := by sorry

end