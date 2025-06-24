import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt 
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev PPoint := EuclideanSpace ℝ (Fin 2)
open EuclideanGeometry 
namespace SquareAndTriangleProblem
def A : PPoint := ![(0 : ℝ), (10 : ℝ)]
def B : PPoint := ![(0 : ℝ), (0 : ℝ)]
def C : PPoint := ![(10 : ℝ), (0 : ℝ)]
def D : PPoint := ![(10 : ℝ), (10 : ℝ)] 
lemma side_length_AB : dist A B = 10 := by sorry
lemma side_length_BC : dist B C = 10 := by sorry
lemma side_length_CD : dist C D = 10 := by sorry
lemma side_length_DA : dist D A = 10 := by sorry
lemma ab_perp_bc : inner ℝ (B -ᵥ A) (C -ᵥ B) = 0 := by sorry
lemma bc_perp_cd : inner ℝ (C -ᵥ B) (D -ᵥ C) = 0 := by sorry
lemma cd_perp_da : inner ℝ (D -ᵥ C) (A -ᵥ D) = 0 := by sorry
lemma da_perp_ab : inner ℝ (A -ᵥ D) (B -ᵥ A) = 0 := by sorry
noncomputable def triangleArea (A B C : PPoint) : ℝ :=
  (1 / 2 : ℝ) * abs ((B -ᵥ A) 0 * (C -ᵥ A) 1 - (B -ᵥ A) 1 * (C -ᵥ A) 0)
theorem prove_length_BE
    (E : PPoint) 
    (h_E_on_BC : E ∈ segment ℝ B C) 
    (h_area_ABE : triangleArea A B E = 40) 
    : dist B E = 8 := by 
  sorry
end SquareAndTriangleProblem
