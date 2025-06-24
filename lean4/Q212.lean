import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.PerpBisector
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
universe u v
open EuclideanGeometry 
abbrev P := EuclideanSpace ℝ (Fin 2) 
namespace EuclideanGeometryProblem
variable (p q r t : P)
variable (x y z : ℝ)
def lineL (q r : P) : AffineSubspace ℝ P := sorry 
def lineM (p r : P) : AffineSubspace ℝ P := sorry 
def lineN (p q : P) : AffineSubspace ℝ P := sorry 
structure ProblemSetup where
  noncollinear : ¬ Collinear ℝ ({p, q, r} : Set P)
  t_on_l : t ∈ lineL q r
  t_on_m : t ∈ lineM p r
  t_on_n : t ∈ lineN p q
  TQ_eq : dist t q = 2 * x
  PT_eq : dist p t = 3 * y - 1
  TR_eq : dist t r = 8
  z_eq : z = 3
end EuclideanGeometryProblem
