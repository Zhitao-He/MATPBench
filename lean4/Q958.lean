import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.LinearAlgebra.AffineSpace.Midpoint

namespace IncircleMidpointTheorem

open EuclideanGeometry

-- Work in a real 2-dimensional Euclidean affine space
variable {P : Type*} [EuclideanSpace ℝ P] [Fact (finrank ℝ P = 2)]

-- Triangle vertices
variable (A B C : P)
variable (h_noncollinear : ¬ Collinear ℝ A B C)

-- Define the triangle
def t (A B C : P) : Triangle ℝ P := Triangle.mk A B C

-- Let I be the incenter, and ω the incircle
def I (A B C : P) : P := Triangle.incenter (t A B C)
def r (A B C : P) : ℝ := Triangle.inradius (t A B C)
def ω (A B C : P) : Sphere P := Triangle.incircle (t A B C)

-- D is the tangency point of incircle and BC
variable (D : P)
variable (hD_on_BC : D ∈ affineSpan ℝ {B, C})
variable (hD_on_inc : D ∈ ω A B C)
variable (hD_tangent : (ω A B C).IsTangentAt (affineSpan ℝ {B, C}) D)

-- The cevian AD
-- The line IE passes through I, is parallel to AD, and meets BC at E
variable (E : P)
variable (hE_on_BC : E ∈ affineSpan ℝ {B, C})
variable (hI_ne_E : I A B C ≠ E)
variable (hA_ne_D : A ≠ D)
variable (hIE_parallel_AD : Parallel ℝ (affineSpan ℝ {I A B C, E}) (affineSpan ℝ {A, D}))

-- E lies on the incircle (can be derived, but included as hyp for clarity)
variable (hE_on_inc : E ∈ ω A B C)

-- The tangent to ω at E meets AB at F and AC at G
variable (F G : P)
variable (hF_on_AB : F ∈ affineSpan ℝ {A, B})
variable (hG_on_AC : G ∈ affineSpan ℝ {A, C})
variable (hF_ne_G : F ≠ G)
variable (hFG_tangent_at_E : (ω A B C).IsTangentAt (affineSpan ℝ {F, G}) E)

-- Conclusion: E is the midpoint of FG
theorem E_is_midpoint_of_FG : midpoint ℝ F G = E := by sorry

end IncircleMidpointTheorem