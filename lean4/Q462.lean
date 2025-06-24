import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2 
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine 
open EuclideanGeometry
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def triangleArea (p1 p2 p3 : P) : ℝ :=
  (1/2 : ℝ) * abs ( ((p2 -ᵥ p1) 0 * (p3 -ᵥ p1) 1) - ((p2 -ᵥ p1) 1 * (p3 -ᵥ p1) 0) )
def isRectangle (A B C D : P) : Prop :=
  (B -ᵥ A) = (C -ᵥ D) ∧ (D -ᵥ A) = (C -ᵥ B) ∧
  inner ℝ (B -ᵥ A) (D -ᵥ A) = 0 
theorem area_of_triangle_ACF_is_75
    (A B C D E F : P)
    (h_rect : isRectangle A B C D)
    (h_AB : dist A B = 16)
    (h_BC : dist B C = 12)
    (h_AC_perp_CE : inner ℝ (A -ᵥ C) (E -ᵥ C) = 0) 
    (h_CE : dist C E = 15)
    (h_F_on_AE : F ∈ segment ℝ A E)
    (h_F_on_CD : F ∈ segment ℝ C D) :
    triangleArea A C F = 75 := 
  by sorry
