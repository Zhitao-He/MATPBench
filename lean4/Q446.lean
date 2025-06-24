import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.InnerProductSpace.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
abbrev Point := EuclideanSpace ℝ (Fin 2)
abbrev Vec := EuclideanSpace ℝ (Fin 2)
def pointOnRay (p A₀ : Point) (vRay : Vec) : Prop :=
  ∃ (t : ℝ), t ≥ 0 ∧ p = A₀ + t • vRay
noncomputable def angleValConst : ℝ := Real.pi / 180
structure BlahajProblem (n : ℕ) where
  A : Fin (n + 1) → Point      
  vRay1 : Vec                  
  vRay2 : Vec                  
  hVRay1Norm : ‖vRay1‖ = 1
  hVRay2Norm : ‖vRay2‖ = 1
  hAngleRays : EuclideanGeometry.angle (0 : Point) vRay1 vRay2 = angleValConst
  hConditions :
    ∀ k : Fin n,
      let i := k.val + 1
      let APrev := A k.castSucc
      let ACurr := A (Fin.succ k)
      dist APrev ACurr = 1 ∧
      dist ACurr (A 0) > dist APrev (A 0) ∧
      (if Odd i then pointOnRay ACurr (A 0) vRay1 else pointOnRay ACurr (A 0) vRay2)
def isPossibleN (n : ℕ) : Prop := Nonempty (BlahajProblem n)
def targetNVal : ℕ := 90
theorem blahajMaxN :
    isPossibleN targetNVal ∧
    ∀ m : ℕ, m > targetNVal → ¬ isPossibleN m :=
  by sorry
