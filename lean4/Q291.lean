import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt

open Real

/-!
## Problem Statement (Lean 4 formalization)

Given a regular hexagon centered at the origin with side length 4, join every alternate vertex to form 
two equilateral triangles. What is the area (in square inches) of the region common to these two triangles? 
(Answer: 8√3)
-/

-- A point in 2D Euclidean space
abbrev EPoint := EuclideanSpace ℝ (Fin 2)

-- Side length of the outer hexagon
def sHex : ℝ := 4

-- The vertices of a regular hexagon centered at the origin, with first vertex on positive x-axis
def hexVert (k : Fin 6) : EPoint :=
  let θ : ℝ := (k : ℝ) * (π / 3)
  ![sHex * cos θ, sHex * sin θ]

-- Define two triangles, each joining alternate vertices
def triangle1_pts : Fin 3 → EPoint := fun
  | ⟨0, _⟩ => hexVert 0
  | ⟨1, _⟩ => hexVert 2
  | ⟨2, _⟩ => hexVert 4

def triangle2_pts : Fin 3 → EPoint := fun
  | ⟨0, _⟩ => hexVert 1
  | ⟨1, _⟩ => hexVert 3
  | ⟨2, _⟩ => hexVert 5

def triangle1 : Triangle ℝ EPoint := ⟨triangle1_pts⟩
def triangle2 : Triangle ℝ EPoint := ⟨triangle2_pts⟩

-- The common intersection is a regular hexagon of side sHex / sqrt(3)
def sInnerHex : ℝ := sHex / sqrt 3

-- The area formula for a regular hexagon of side a: (3 * sqrt 3 / 2) * a^2
def regHexArea (a : ℝ) : ℝ := (3 * sqrt 3 / 2) * a ^ 2

-- The area of the common region
def commonRegionArea : ℝ := regHexArea sInnerHex

-- The answer (theorem statement placeholder)
theorem commonRegion_area_8sqrt3 : commonRegionArea = 8 * sqrt 3 := by
  sorry

/-!
### Numeric Verification
sHex = 4  
sInnerHex = 4 / √3  
commonRegionArea = (3 * √3 / 2) * (4 / √3)^2  
                 = (3 * √3 / 2) * (16 / 3)  
                 = (√3 / 2) * 16  
                 = 8 * √3
-/