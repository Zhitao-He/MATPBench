import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Data.Matrix.Notation
import Mathlib.Data.Real.Basic

-- Work in 2D Euclidean space over the reals
abbrev Point := EuclideanSpace ℝ (Fin 2)
abbrev Vector := EuclideanSpace ℝ (Fin 2)

-- The fixed common vertex (origin)
def P : Point := 0

-- Rectangle based at the origin, described by 2 orthogonal vectors
structure RectangleFromOrigin where
  u : Vector    -- 1st side
  v : Vector    -- 2nd side
  h_ortho : ⟪u, v⟫_ℝ = 0

-- Area is the product of side lengths
def RectangleFromOrigin.area (rect : RectangleFromOrigin) : ℝ :=
  ‖rect.u‖ * ‖rect.v‖

-- Explicit side-vectors for R₀: sides of lengths 3, 4 along axes
def R0_u : Vector := ![3, 0]
def R0_v : Vector := ![0, 4]

lemma R0_ortho : ⟪R0_u, R0_v⟫_ℝ = 0 := by
  simp [R0_u, R0_v, inner, Pi.inner, EuclideanSpace.inner, Matrix.dotProduct]
  -- direct computation: 3*0 + 0*4 = 0

def R0 : RectangleFromOrigin where
  u := R0_u
  v := R0_v
  h_ortho := R0_ortho

-- 2D "determinant" (signed area) for vectors in ℝ²
def det2D (u v : Vector) : ℝ := u 0 * v 1 - u 1 * v 0

-- Normalize a vector, returning zero if the input is zero
def normalizeOrZero (w : Vector) : Vector :=
  if ‖w‖ = 0 then 0 else (‖w‖)⁻¹ • w

-- Construct Rₙ from Rₙ₋₁ according to the rules:
-- uₙ is the diagonal (uₙ₋₁ + vₙ₋₁), vₙ orthogonal, area preserved,
-- orientation chosen counterclockwise (+90°)
def buildNextRect (rect : RectangleFromOrigin) : RectangleFromOrigin :=
  let u := rect.u + rect.v
  let area := rect.area
  let norm_u := ‖u‖
  let norm_v := if norm_u = 0 then 0 else area / norm_u
  let v_dir := normalizeOrZero ![-(u 1), u 0]
  let v := norm_v • v_dir
  have ortho : ⟪u, v⟫_ℝ = 0 := by
    -- v_dir is u rotated +90°, so inner vanishes
    sorry
  { u := u, v := v, h_ortho := ortho }

-- Define rectangles iteratively
def R1 : RectangleFromOrigin := buildNextRect R0
def R2 : RectangleFromOrigin := buildNextRect R1
def R3 : RectangleFromOrigin := buildNextRect R2

-- Area of triangle OPQ, with O = 0, and two edge vectors
def areaTriangle (a b : Vector) : ℝ :=
  (1/2) * |det2D a b|

-- The geometric sum (area of union = R₀ + three triangles attached at the shared vertex)
def totalUnionArea : ℝ :=
  R0.area
  + areaTriangle R1.u (R1.u + R1.v)
  + areaTriangle R2.u (R2.u + R2.v)
  + areaTriangle R3.u (R3.u + R3.v)

-- Expected result for this configuration
def expected_total_area : ℝ := 30

-- Explicit points-in-rectangle set for further geometric reasoning
def pointsInRectangle (rect : RectangleFromOrigin) : Set Point :=
  { p | ∃ (t₁ t₂ : ℝ), 0 ≤ t₁ ∧ t₁ ≤ 1 ∧ 0 ≤ t₂ ∧ t₂ ≤ 1 ∧
      p = P + t₁ • rect.u + t₂ • rect.v }

def points_R0 : Set Point := pointsInRectangle R0
def points_R1 : Set Point := pointsInRectangle R1
def points_R2 : Set Point := pointsInRectangle R2
def points_R3 : Set Point := pointsInRectangle R3

def big_union : Set Point :=
  points_R0 ∪ points_R1 ∪ points_R2 ∪ points_R3