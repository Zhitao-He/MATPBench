import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev Point := EuclideanSpace ℝ (Fin 2)
theorem EFMN_concyclic
  (A B C K D E F M N I J : Point)
  (hABC_not_collinear : True)
  (hI_is_incenter_ABC : True)
  (hD_tangent_BC : True)
  (hD_on_segment_BC : True)
  (hE_tangent_CA : True)
  (hE_on_segment_CA : True)
  (hF_tangent_AB : True)
  (hF_on_segment_AB : True)
  (hK_inside_ABC : True)
  (hKBC_not_collinear : True)
  (hJ_is_incenter_KBC : True)
  (hD_tangent_BC_for_KBC : True)
  (hM_tangent_KB : True)
  (hM_on_segment_KB : True)
  (hN_tangent_KC : True)
  (hN_on_segment_KC : True)
  : True :=
by
  sorry
