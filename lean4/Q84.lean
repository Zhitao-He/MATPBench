import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
noncomputable section
abbrev EPoint := Fin 2 → ℝ
def mkPt (x y : ℝ) : EPoint := ![x, y]
def dPt : EPoint := mkPt 0 0 
def cPt : EPoint := mkPt 1 0 
def bPt : EPoint := mkPt 1 1 
def aPt : EPoint := mkPt 0 1 
namespace InnerSquareConstruction
variable (nNat : ℕ)
variable (hnGe1 : nNat ≥ 1)
private def nRVal : ℝ := ↑nNat
lemma commonDenomPosLemma : 2 * nRVal^2 - 2 * nRVal + 1 > 0 :=
  by sorry
def dp1 (nNat : ℕ) : EPoint :=
  let nRVal := ↑nNat
  mkPt ((nRVal - 1) / nRVal) 1
def dp2 (nNat : ℕ) : EPoint :=
  let nRVal := ↑nNat
  mkPt 1 (1 / nRVal)
def dp3 (nNat : ℕ) : EPoint :=
  let nRVal := ↑nNat
  mkPt (1 / nRVal) 0
def dp4 (nNat : ℕ) : EPoint :=
  let nRVal := ↑nNat
  mkPt 0 ((nRVal - 1) / nRVal)
def lineFromD (nNat : ℕ) : AffineSubspace ℝ EPoint := affineSpan ℝ {dPt, dp1 nNat}
def lineFromA (nNat : ℕ) : AffineSubspace ℝ EPoint := affineSpan ℝ {aPt, dp2 nNat}
def lineFromB (nNat : ℕ) : AffineSubspace ℝ EPoint := affineSpan ℝ {bPt, dp3 nNat}
def lineFromC (nNat : ℕ) : AffineSubspace ℝ EPoint := affineSpan ℝ {cPt, dp4 nNat}
def v1 (nNat : ℕ) : EPoint :=
  let nRVal := ↑nNat
  let commonDenomVal := 2 * nRVal^2 - 2 * nRVal + 1
  mkPt (nRVal * (nRVal - 1) / commonDenomVal)
       (nRVal^2 / commonDenomVal)
def v2 (nNat : ℕ) : EPoint :=
  let nRVal := ↑nNat
  let commonDenomVal := 2 * nRVal^2 - 2 * nRVal + 1
  mkPt (nRVal^2 / commonDenomVal)
       ((nRVal^2 - nRVal + 1) / commonDenomVal)
def v3 (nNat : ℕ) : EPoint :=
  let nRVal := ↑nNat
  let commonDenomVal := 2 * nRVal^2 - 2 * nRVal + 1
  mkPt ((nRVal^2 - nRVal + 1) / commonDenomVal)
       (nRVal * (nRVal - 1) / commonDenomVal)
def v4 (nNat : ℕ) : EPoint :=
  let nRVal := ↑nNat
  let commonDenomVal := 2 * nRVal^2 - 2 * nRVal + 1
  mkPt ((nRVal - 1)^2 / commonDenomVal)
       (nRVal * (nRVal - 1) / commonDenomVal)
def smallSquareArea (nNat : ℕ) : ℝ :=
  let nRVal := ↑nNat
  let commonDenomVal := 2 * nRVal^2 - 2 * nRVal + (1 : ℝ)
  (1 : ℝ) / commonDenomVal
end InnerSquareConstruction
def givenSmallSquareArea : ℝ := (1:ℝ) / 1985
def nSolution : ℕ := 32
end
