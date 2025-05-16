import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Triangle

open EuclideanGeometry

-- We work in an arbitrary Euclidean plane
variable {P : Type*} [EuclideanPlane P]

-- Given points (vertices of the triangle and centers of circles)
variable (a b c : P)           -- triangle vertices
variable (p : P)               -- center of circumcircle (P)
variable (o : P)               -- center of the second circle (O)

-- The circles
variable (circP : Sphere P ℝ)      -- The circumcircle P
variable (circO : Sphere P ℝ)      -- The circle O passing through A and B

-- Hypotheses of distinctness for triangle
variable (hab : a ≠ b)
variable (hac : a ≠ c)
variable (hbc : b ≠ c)

-- Circle P is the circumcircle of ABC, with center p
variable (hcircP_center : circP.center = p)
variable (ha_on_circP : a ∈ circP)
variable (hb_on_circP : b ∈ circP)
variable (hc_on_circP : c ∈ circP)
variable (hcircP_radius : circP.radius = dist a p)

-- Circle O has center o, passes through a and b
variable (hcircO_center : circO.center = o)
variable (ha_on_circO : a ∈ circO)
variable (hb_on_circO : b ∈ circO)
variable (hcircO_radius : circO.radius = dist a o)

-- Points E and F as intersections
variable (e f : P)
variable (he_on_ac : Collinear ℝ a e c)
variable (he_on_circO : e ∈ circO)
variable (he_ne_a : e ≠ a)
variable (he_ne_c : e ≠ c)
variable (hf_on_bc : Collinear ℝ b f c)
variable (hf_on_circO : f ∈ circO)
variable (hf_ne_b : f ≠ b)
variable (hf_ne_c : f ≠ c)

-- Point D intersection of lines AF and BE
variable (d : P)
variable (hd_on_af : Collinear ℝ a f d)
variable (hd_on_be : Collinear ℝ b e d)

-- Point K as the other intersection of line OD with the circumcircle P
variable (k : P)
variable (hk_on_od : Collinear ℝ o d k)
variable (hk_on_circP : k ∈ circP)
variable (hk_ne_o : k ≠ o)
variable (hk_ne_d : k ≠ d)
variable (hk_ne_a : k ≠ a)
variable (hk_ne_b : k ≠ b)
variable (hk_ne_c : k ≠ c)

-- Definitions of the triangles KBE and KAF (order given as in the problem)
def triangleKBE : Triangle P := ⟨![k, b, e]⟩
def triangleKAF : Triangle P := ⟨![k, a, f]⟩

-- Noncollinearity needed for incenter
variable (hKBE_noncol : (triangleKBE k b e).Noncollinear)
variable (hKAF_noncol : (triangleKAF k a f).Noncollinear)

-- THEOREM: Triangle KBE and KAF have the same incenter
theorem triangles_KBE_and_KAF_share_same_incenter :
  Triangle.incenter (triangleKBE k b e) = Triangle.incenter (triangleKAF k a f) := by
  sorry