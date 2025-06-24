import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Geometry.Euclidean.Sphere.Basic
open Real
def sphereRadius : ℝ := 11
noncomputable def sphereSurfaceArea (r : ℝ) : ℝ := 4 * π * r ^ 2
noncomputable def thisSphereSurfaceArea : ℝ := sphereSurfaceArea sphereRadius
noncomputable def thisSphereSurfaceAreaValue : ℝ := 4 * π * (11 ^ 2)  
def thisSphereSurfaceAreaApprox : ℝ := 152053
