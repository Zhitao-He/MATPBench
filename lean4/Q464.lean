import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Simplex 
import Mathlib.Analysis.InnerProductSpace.PiL2 
namespace ThreeSidedPyramidProblem
abbrev Point3D := EuclideanSpace ℝ (Fin 3)
def myListCount {α : Type*} [DecidableEq α] (a : α) : List α → Nat
  | [] => 0
  | x :: xs => (if x = a then 1 else 0) + myListCount a xs
def myListPerm {α : Type*} [DecidableEq α] (l1 l2 : List α) : Prop :=
  l1.length = l2.length ∧ ∀ a, myListCount a l1 = myListCount a l2
def isPositiveInteger (r : ℝ) : Prop := ∃ n : ℕ, r = (n : ℝ) ∧ n > 0
structure PyramidSetup where
  A : Point3D
  B : Point3D
  C : Point3D
  D : Point3D
  x : ℝ
  y : ℝ
  h_tetrahedron : AffineIndependent ℝ (
    fun i : Fin 4 =>
      match i with
      | ⟨0, _⟩ => A
      | ⟨1, _⟩ => B
      | ⟨2, _⟩ => C
      | ⟨3, _⟩ => D
  )
  hx_is_positive_integer : isPositiveInteger x
  hy_is_positive_integer : isPositiveInteger y
  h_lengths_set : myListPerm
    [dist A B, dist A C, dist A D, dist B C, dist B D, dist C D]
    [2, 3, 4, 7, x, y]
  h_sum_xy : x + y = 11
  h_tri_ABC1 : dist A B + dist A C > dist B C
  h_tri_ABC2 : dist A B + dist B C > dist A C
  h_tri_ABC3 : dist A C + dist B C > dist A B
  h_tri_ABD1 : dist A B + dist A D > dist B D
  h_tri_ABD2 : dist A B + dist B D > dist A D
  h_tri_ABD3 : dist A D + dist B D > dist A B
  h_tri_ACD1 : dist A C + dist A D > dist C D
  h_tri_ACD2 : dist A C + dist C D > dist A D
  h_tri_ACD3 : dist A D + dist C D > dist A C
  h_tri_BCD1 : dist B C + dist B D > dist C D
  h_tri_BCD2 : dist B C + dist C D > dist B D
  h_tri_BCD3 : dist B D + dist C D > dist B C
end ThreeSidedPyramidProblem
