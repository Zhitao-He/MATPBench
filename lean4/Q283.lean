import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Pi.Definition

open Real EuclideanGeometry Affine EuclideanGeometry.Angle

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
variable [FiniteDimensional ℝ V] [Fact (finrank ℝ V = 2)]

noncomputable def degToRad (d : ℝ) : ℝ := d * (π / 180)

def IsFigureConfig (A B C D E F Pnt : P) : Prop :=
  (¬Collinear ℝ ({A, B, C} : Set P)) ∧
  (¬Collinear ℝ ({A, D, Pnt} : Set P)) ∧
  (¬Collinear ℝ ({B, C, F} : Set P)) ∧
  (¬Collinear ℝ ({E, Pnt, F} : Set P)) ∧
  Pnt ∈ openSegment ℝ E F ∧
  Pnt ∈ openSegment ℝ C D ∧
  ∠ C B E = degToRad 50 ∧
  ∠ B C F = degToRad 60 ∧
  ∠ E C Pnt = degToRad 90 ∧
  ∠ A E B = degToRad 50 ∧
  ∠ B F D = degToRad 60 ∧
  ∠ A D E = degToRad 45

theorem angle_x_indeterminate :
  ∃ (A₁ B₁ C₁ D₁ E₁ F₁ P₁ A₂ B₂ C₂ D₂ E₂ F₂ P₂ : P),
    IsFigureConfig A₁ B₁ C₁ D₁ E₁ F₁ P₁ ∧
    IsFigureConfig A₂ B₂ C₂ D₂ E₂ F₂ P₂ ∧
    ∠ E₁ C₁ D₁ ≠ ∠ E₂ C₂ D₂ := by sorry