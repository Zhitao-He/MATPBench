import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Sphere.Basic
open scoped EuclideanGeometry
abbrev EucPlane := EuclideanSpace ℝ (Fin 2)
namespace ThreeCirclesProblem
noncomputable def r : ℝ := 1
noncomputable def o1_center : EucPlane := ![r * Real.sqrt 3, r]
noncomputable def o2_center : EucPlane := ![r * Real.sqrt 3 + 2 * r, r]
noncomputable def o3_center : EucPlane := ![r * Real.sqrt 3 + r, r + r * Real.sqrt 3]
noncomputable def circle1 : EuclideanGeometry.Sphere EucPlane := EuclideanGeometry.Sphere.mk o1_center r
noncomputable def circle2 : EuclideanGeometry.Sphere EucPlane := EuclideanGeometry.Sphere.mk o2_center r
noncomputable def circle3 : EuclideanGeometry.Sphere EucPlane := EuclideanGeometry.Sphere.mk o3_center r
noncomputable def vertexB : EucPlane := ![0, 0]
noncomputable def base_length_BC : ℝ := 2 * r + 2 * r * Real.sqrt 3
noncomputable def vertexC : EucPlane := ![base_length_BC, 0]
noncomputable def vertexA : EucPlane := ![base_length_BC / 2, (base_length_BC / 2) * Real.sqrt 3]
noncomputable def triangleArea (p1 p2 p3 : EucPlane) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
noncomputable def area_of_triangleABC : ℝ := triangleArea vertexA vertexB vertexC
theorem triangle_area_eq_expected_value : area_of_triangleABC = 6 + 4 * Real.sqrt 3 := by
  sorry
end ThreeCirclesProblem
