import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Projection

set_option autoImplicit false

namespace IsoscelesAngleProblem

open EuclideanGeometry

-- Fix points A, B, C in the Euclidean plane
variable (A B C : EuclideanPlane)

-- Assume: A, B, C are non-collinear (triangle)
variable (hNoncollinear : ¬ Collinear ℝ A B C)

-- Assume: Triangle is isosceles with AB = AC
variable (hIsosceles : dist A B = dist A C)

-- Point E is the midpoint of AC
def e (A C : EuclideanPlane) : EuclideanPlane := midpoint ℝ A C

-- Point D divides BC so that BD = 2 * CD
def d (B C : EuclideanPlane) : EuclideanPlane := AffineMap.lineMap B C (2/3 : ℝ)

-- Point F: projection of D onto BE (DF ⟂ BE at F)
def f (A B C : EuclideanPlane) : EuclideanPlane := 
  orthogonalProjection (affineSpan ℝ ![B, e A C]) (d B C)

-- The formal statement
theorem angleEFC_eq_angleABC
    (A B C : EuclideanPlane)
    (hNoncollinear : ¬ Collinear ℝ A B C)
    (hIsosceles : dist A B = dist A C)
    (hE_ne_F : e A C ≠ f A B C)
    (hC_ne_F : C ≠ f A B C)
    : angle (e A C) (f A B C) C = angle A B C := by
  sorry

end IsoscelesAngleProblem