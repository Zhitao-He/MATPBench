import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Sphere.Basic 
open EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
variable (ptA ptB ptC ptD ptE ptF ptG ptJ ptK ptM ptN : P)
variable (h_ptA_ne_ptB : ptA ≠ ptB)
variable (h_ptB_ne_ptC : ptB ≠ ptC)
variable (h_ptA_ne_ptC : ptA ≠ ptC)
variable (h_ABC_noncollinear : ¬ Collinear ℝ ({ptA, ptB, ptC} : Set P))
variable (h_ptD_sbtw_BC : Sbtw ℝ ptB ptD ptC)
variable (h_ptE_is_incenter_ABD : ptE = sorry) 
variable (h_ptF_is_incenter_ACD : ptF = sorry) 
variable (h_ptG_on_circleE : ptG ∈ EuclideanGeometry.Sphere.mk ptE (dist ptE ptD))
variable (h_ptG_on_circleF : ptG ∈ EuclideanGeometry.Sphere.mk ptF (dist ptF ptD))
variable (h_ptG_ne_ptD : ptG ≠ ptD)
variable (h_ptJ_on_circleE : ptJ ∈ EuclideanGeometry.Sphere.mk ptE (dist ptE ptD))
variable (h_ptJ_sbtw_AB : Sbtw ℝ ptA ptJ ptB) 
variable (h_ptK_on_circleE : ptK ∈ EuclideanGeometry.Sphere.mk ptE (dist ptE ptD))
variable (h_ptK_sbtw_BD : Sbtw ℝ ptB ptK ptD) 
variable (h_ptM_on_circleF : ptM ∈ EuclideanGeometry.Sphere.mk ptF (dist ptF ptD))
variable (h_ptM_sbtw_AC : Sbtw ℝ ptA ptM ptC) 
variable (h_ptN_on_circleF : ptN ∈ EuclideanGeometry.Sphere.mk ptF (dist ptF ptD))
variable (h_ptN_sbtw_DC : Sbtw ℝ ptD ptN ptC) 
theorem lines_JK_MN_GD_concurrent :
  ∃ (ptL : P), ptL ∈ affineSpan ℝ ({ptJ, ptK} : Set P) ∧
                ptL ∈ affineSpan ℝ ({ptM, ptN} : Set P) ∧
                ptL ∈ affineSpan ℝ ({ptG, ptD} : Set P) := by sorry
