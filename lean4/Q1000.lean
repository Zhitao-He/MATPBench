import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic    -- for Cospherical
import Mathlib.LinearAlgebra.AffineSpace.Midpoint -- for midpoint
import Mathlib.Analysis.InnerProductSpace.EuclideanDist -- for dist, inner

open Real InnerProductSpace Metric

-- General setting: P is a Euclidean affine space over the real inner product space V
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

/--
Let △ABC be inscribed in a circle centered at O.
Let D be the foot of the perpendicular from A to BC (so AD ⟂ BC at D).
Let E = AD ∩ CO.
Let F be the midpoint of AE.
Let H = FO ∩ BC.
Let G be the point on AO such that CG ⟂ AO at G.

Then points B, H, O, G are concyclic.
-/
theorem concyclic_BHOG_problem
    (A B C O D E F G H : P)
    (r : ℝ)
    -- 1. A, B, C lie on the circle centered at O, radius r > 0
    (hr : 0 < r)
    (hA : dist A O = r)
    (hB : dist B O = r)
    (hC : dist C O = r)
    -- 2. △ABC is non-degenerate (not collinear)
    (hABC : ¬ Collinear ℝ ({A, B, C} : Set P))
    -- 3. D is the foot of perpendicular from A to BC: D ∈ BC, AD ⟂ BC
    (hD_BC : D ∈ affineSpan ℝ ({B, C} : Set P))
    (hAD_perp_BC : inner (A -ᵥ D) (C -ᵥ B) = 0)
    -- 4. E = AD ∩ CO; E ∈ AD and E ∈ CO
    (hE_on_AD : E ∈ affineSpan ℝ ({A, D} : Set P))
    (hE_on_CO : E ∈ affineSpan ℝ ({C, O} : Set P))
    -- 5. F is the midpoint of AE
    (hF : F = midpoint ℝ A E)
    -- 6. H = FO ∩ BC
    (hF_ne_O : F ≠ O)
    (hH_on_FO : H ∈ affineSpan ℝ ({F, O} : Set P))
    (hH_on_BC : H ∈ affineSpan ℝ ({B, C} : Set P))
    -- 7. G ∈ AO and CG ⟂ AO at G
    (hG_on_AO : G ∈ affineSpan ℝ ({A, O} : Set P))
    (hCG_perp_AO : inner (C -ᵥ G) (O -ᵥ A) = 0)  -- 修正了perpendicular方向
    :
    Cospherical ({B, H, O, G} : Set P) :=
  by sorry