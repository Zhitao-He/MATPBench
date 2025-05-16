import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Projection

open EuclideanGeometry

-- For brevity and clarity, define the Euclidean plane we work in.
abbrev EuclideanPlane := EuclideanSpace ℝ (Fin 2)

/--
In acute triangle ABC with ∠B > ∠C, F is the midpoint of BC.
BE and CD are altitudes. G and H are the midpoints of FD and FE respectively.
A line through A parallel to BC intersects GH at I.
Prove that IA = IF.
-/
theorem geometry_IA_eq_IF
    (A B C D E F G H I : EuclideanPlane)
    -- ABC is an acute triangle.
    (h_acute : (⟨A, B, C⟩ : Triangle ℝ EuclideanPlane).IsAcute)
    -- ∠ABC > ∠BCA (angles at B, C of triangle)
    (h_angleB_gt_angleC : ∠ A B C > ∠ B C A)
    -- F is the midpoint of BC.
    (hF : F = midpoint ℝ B C)
    -- E is the foot of the altitude from B to AC.
    (hE : E = perpFoot B (affineLine ℝ A C))
    -- D is the foot of the altitude from C to AB.
    (hD : D = perpFoot C (affineLine ℝ A B))
    -- G is the midpoint of FD.
    (hG : G = midpoint ℝ F D)
    -- H is the midpoint of FE.
    (hH : H = midpoint ℝ F E)
    -- I is the intersection of:
    --  (i) the line through A parallel to BC,
    --      i.e., I -ᵥ A = k • (C -ᵥ B) for some k,
    --  (ii) the line GH, i.e., I is collinear with G, H.
    (hI_parallel : ∃ k : ℝ, I -ᵥ A = k • (C -ᵥ B))
    (hI_on_GH : Collinear G H I)
    : dist I A = dist I F := by
  sorry