import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Data.Real.Pi.Bounds
open Real EuclideanGeometry
open scoped EuclideanGeometry
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (A B C D E F G : P)
variable (h_D_ne_E : D ≠ E)
variable (h_D_ne_A : D ≠ A)
variable (h_F_ne_B : F ≠ B)
variable (h_B_ne_C : B ≠ C)
variable (h_sbtw_BEA : Sbtw ℝ B E A)
variable (h_sbtw_EAG : Sbtw ℝ E A G)
variable (h_sbtw_CEF : Sbtw ℝ C E F)
variable (h_ncol_FED : ¬ Collinear ℝ ({F, E, D} : Set P))
variable (h_ncol_DEA : ¬ Collinear ℝ ({D, E, A} : Set P))
variable (h_ncol_DAG : ¬ Collinear ℝ ({D, A, G} : Set P))
variable (h_ncol_EFB : ¬ Collinear ℝ ({E, F, B} : Set P))
variable (h_ncol_BCE : ¬ Collinear ℝ ({B, C, E} : Set P))
variable (h_ncol_FEA : ¬ Collinear ℝ ({F, E, A} : Set P))
variable (h_BCE_eq_EBC : ∠ E C B = ∠ C B E)
variable (h_DAG_val : ∠ D A G = degreesToRadians 136)
variable (h_DEA_val : ∠ D E A = degreesToRadians 47)
variable (h_EFB_val : ∠ E F B = degreesToRadians 63)
variable (h_FED_val : ∠ F E D = degreesToRadians 69)
theorem find_angle_EBC : ∠ E B C = degreesToRadians 32 := by
  sorry
