import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

-- In a 2-dimensional Euclidean space
variable {P : Type*} [MetricSpace P] [NormedAddCommGroup P] [InnerProductSpace ℝ P] 
  [FiniteDimensional ℝ P] [Fact (finrank ℝ P = 2)]

theorem two_intersecting_circles_equal_chords :
  ∃ (o₁ o₂ q p r : P),
    let r₁ : ℝ := 6
    let r₂ : ℝ := 8
    -- centers distance
    (dist o₁ o₂ = 12) ∧
    -- p is an intersection point
    (dist p o₁ = r₁) ∧ (dist p o₂ = r₂) ∧
    -- q is on circle o₁
    (dist q o₁ = r₁) ∧
    -- r is on circle o₂
    (dist r o₂ = r₂) ∧
    -- q, p, r are collinear with p strictly between q and r
    (Sbtw ℝ q p r) ∧
    -- equal chord lengths
    (dist q p = dist p r) ∧
    -- square of chord length is 130
    ((dist q p) ^ 2 = 130) :=
  by sorry