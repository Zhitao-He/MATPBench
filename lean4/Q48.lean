import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.PerpBisector
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
open EuclideanGeometry
open scoped RealInnerProductSpace
noncomputable abbrev PPoint := EuclideanSpace ℝ (Fin 2)
section ProblemSetup
  variable (p q r t : PPoint)
  variable (l m n : AffineSubspace ℝ PPoint)
  variable (x y z : ℝ)
  variable (hNoncollinear : ¬ Collinear ℝ ({p, q, r} : Set PPoint))
  variable (hlIsPerpBisectorPQ : l = AffineSubspace.perpBisector p q)
  variable (hmIsPerpBisectorQR : m = AffineSubspace.perpBisector q r)
  variable (hnIsPerpBisectorRP : n = AffineSubspace.perpBisector r p)
  variable (hTOnL : t ∈ l)
  variable (hTOnM : t ∈ m)
  variable (hTOnN : t ∈ n)
  variable (hTQis2x : dist t q = 2 * x)
  variable (hPTis3yMinus1 : dist p t = 3 * y - 1)
  variable (hTRis8 : dist t r = 8)
  variable (hZis3 : z = 3)
  theorem equationForX : 2 * x = 8 := by sorry
  theorem equationForY : 3 * y - 1 = 8 := by sorry
  theorem valueOfZ : z = 3 := by sorry
end ProblemSetup
