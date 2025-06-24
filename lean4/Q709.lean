import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
open Real EuclideanGeometry
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
variable (U T V R S : PPoint)
variable (hU_ne_T : U ≠ T) (hV_ne_T : V ≠ T)
variable (hR_ne_U : R ≠ U) (hS_ne_U : S ≠ U)
variable (hT_ne_V : T ≠ V) (hU_ne_V : U ≠ V)
variable (hV_ne_S : V ≠ S) (hR_ne_S : R ≠ S)
variable (hU_ne_S : U ≠ S)
variable (hUTV : EuclideanGeometry.angle U T V = (47 / 180 : ℝ) * Real.pi)
variable (hRUS_right : EuclideanGeometry.angle R U S = Real.pi / 2)
variable (hTVU_right : EuclideanGeometry.angle T V U = Real.pi / 2)
variable (hVSR_right : EuclideanGeometry.angle V S R = Real.pi / 2)
theorem angle_USR_eq_47_degrees : EuclideanGeometry.angle U S R = (47 / 180 : ℝ) * Real.pi := by
  sorry
