import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open EuclideanGeometry InnerProductSpace

variable {V : Type*} [InnerProductSpace ℝ V] [FiniteDimensional ℝ V]
variable [Fact (FiniteDimensional.finrank ℝ V = 2)]
variable {Pt : Type*} [MetricSpace Pt] [NormedAddTorsor V Pt]

/--
**Simson Line Theorem (Collinear implies Concyclic):**
If the feet of the perpendiculars from a point `p` to the sides of triangle `abc` are collinear,
then `p` lies on the circumcircle of triangle `abc`.

- `a b c : Pt` — vertices of the triangle (distinct, noncollinear)
- `o : Pt` — center of the circumcircle
- `r : ℝ` — radius of the circumcircle
- `p : Pt` — the given point
- `d e f : Pt` — feet of perpendiculars from `p` to `BC`, `CA`, `AB` respectively

Hypotheses:
- each vertex lies on the circumcircle of center `o` and radius `r`
- the triangle is noncollinear
- `d`, `e`, `f` are the feet as described
- `d`, `e`, `f` are collinear

Conclusion: `p` lies on the circumcircle.
-/
theorem simsonLine_collinear_feet_concyclic
    {a b c o p d e f : Pt} {r : ℝ}
    (hr : 0 < r)
    (ha : dist a o = r) (hb : dist b o = r) (hc : dist c o = r)
    (h_ncol : ¬Collinear ℝ a b c)
    (hd : d ∈ affineSpan ℝ ({b, c} : Set Pt)) (hperp_d : (p -ᵥ d) ⟂ᵥ (c -ᵥ b))
    (he : e ∈ affineSpan ℝ ({c, a} : Set Pt)) (hperp_e : (p -ᵥ e) ⟂ᵥ (a -ᵥ c))
    (hf : f ∈ affineSpan ℝ ({a, b} : Set Pt)) (hperp_f : (p -ᵥ f) ⟂ᵥ (b -ᵥ a))
    (hcol : Collinear ℝ d e f) :
    dist p o = r := by
  sorry