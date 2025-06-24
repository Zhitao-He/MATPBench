import Mathlib.Analysis.Convex.Between 
import Mathlib.Analysis.SpecialFunctions.Sqrt 
import Mathlib.Data.Real.Basic 
import Mathlib.Geometry.Euclidean.Basic 
import Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic 
import Mathlib.Analysis.InnerProductSpace.PiL2 
open Real EuclideanGeometry Affine AffineSubspace 
namespace GeometryProblem
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def triangleAreaHeronFunc (p1 p2 p3 : P) : ℝ :=
  sorry 
theorem trapezoidAreaTheorem
    (A B C D O P_pt : P)
    (h_AD : dist A D = 10) (h_AO : dist A O = 10)
    (h_OB : dist O B = 10) (h_BC : dist B C = 10)
    (h_AB : dist A B = 12) (h_DO : dist D O = 12) (h_OC : dist O C = 12)
    (h_DOC_wbtw : Wbtw ℝ D O C)
    (h_AB_parallel_DC : line[ℝ, A, B] ∥ line[ℝ, D, C])
    (h_P_on_AB : P_pt ∈ segment ℝ A B)
    (h_OP_perp_AB : inner ℝ (O -ᵥ P_pt) (B -ᵥ A) = 0)
    :
    let area_DAO := triangleAreaHeronFunc D A O
    let area_AOB := triangleAreaHeronFunc A O B
    let area_OBC := triangleAreaHeronFunc O B C
    let area_trapezoid_ABCD := area_DAO + area_AOB + area_OBC
    area_trapezoid_ABCD = 144 :=
  by sorry
end GeometryProblem
