import Mathlib.Geometry.Euclidean.Basic

open EuclideanGeometry

/--
Let `A`, `B`, `C` be points in the Euclidean plane ℝ².  
Given:  
- `dist A B = 48`
- `dist A C = 20`
- Triangle `ABC` is right-angled at `A`  
Then:  
- `dist B C = 52`
-/
theorem rightTriangleSideLengthCalculation
    (A B C : EuclideanSpace ℝ (Fin 2))
    (hAB : dist A B = 48)
    (hAC : dist A C = 20)
    (hRightAngle : ⟪B -ᵥ A, C -ᵥ A⟫ = 0) :
    dist B C = 52 :=
  by sorry