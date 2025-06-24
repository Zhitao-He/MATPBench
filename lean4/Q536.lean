import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Pi.Bounds
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry Affine AffineSubspace
open scoped EuclideanGeometry
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
abbrev P := EuclideanSpace ℝ (Fin 2)
namespace GeometryProblem
variable (C F D E : P)
variable (x y : ℝ)
variable (hCF : C ≠ F) (hDF : D ≠ F) (hDE : D ≠ E) (hCE : C ≠ E)
axiom angleCFD : ∠ C F D = degreesToRadians (x + 36)
axiom angleDEC : ∠ D E C = degreesToRadians (2 * y)
axiom angleECF : ∠ E C F = degreesToRadians 78
axiom angleFDE : ∠ F D E = degreesToRadians 110
axiom parallelCEFD : line[ℝ, C, E] ∥ line[ℝ, F, D]
theorem findYValue : y = 35 := by sorry
end GeometryProblem
