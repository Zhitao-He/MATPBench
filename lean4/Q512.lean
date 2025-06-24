import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
open EuclideanGeometry Real InnerProductSpace 
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (J M L K E : P)
axiom h_EJ : dist J E = 6
axiom h_LK : dist L K = 7
axiom h_ML : dist M L = 4
axiom h_JM_eq_KL_from_parallelogram : dist J M = dist K L
axiom h_ML_eq_JK_from_parallelogram : dist M L = dist J K
axiom h_JE_perp_LE : inner ℝ (J -ᵥ E) (L -ᵥ E) = 0
axiom h_E_on_ML : Wbtw ℝ M E L
noncomputable def perimeterQuadrilateral (A B C D_pt : P) : ℝ := 
  dist A B + dist B C + dist C D_pt + dist D_pt A
theorem perimeter_JMLK_eq_22 : perimeterQuadrilateral J M L K = 22 := by sorry
