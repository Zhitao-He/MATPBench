import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic

-- Define the plane as EuclideanSpace ℝ (Fin 2)
abbrev P := EuclideanSpace ℝ (Fin 2)

/--
Describes points of tangency for the incircle of a triangle,
where `I` is the incenter and `D`, `E`, `F` are points of tangency
on sides `BC`, `CA`, and `AB` respectively.
-/
structure IncircleTouchPoints
  (A B C : P)
  (h_non_collinear : ¬ Collinear ℝ ({A, B, C} : Set P))
  (I D E F : P)
  where
  incenter_eq : I = EuclideanGeometry.incenter A B C h_non_collinear
  D_on_BC     : D = EuclideanGeometry.orthogonalProjection (lineThrough B C) I ∧ D ∈ segment ℝ B C
  E_on_CA     : E = EuclideanGeometry.orthogonalProjection (lineThrough C A) I ∧ E ∈ segment ℝ C A
  F_on_AB     : F = EuclideanGeometry.orthogonalProjection (lineThrough A B) I ∧ F ∈ segment ℝ A B

/--
Let △ABC have incircle I tangent to BC, CA, and AB at D, E, F respectively.
Let K be a point in the interior of △ABC. The incircle J of △KBC is tangent to
BC at D, KB at M, and KC at N. Then E, F, M, N are concyclic.
-/
theorem putnam_2024_geometry_cyclicity
  (A B C : P)
  (K : P)
  (I D E F : P)
  (J M N : P)
  (h_ABC_non_collinear : ¬ Collinear ℝ ({A, B, C} : Set P))
  (h_K_in_triangle : K ∈ (Triangle.mk A B C h_ABC_non_collinear).interior)
  (h_incircle_ABC : IncircleTouchPoints A B C h_ABC_non_collinear I D E F)
  (h_KBC_non_collinear : ¬ Collinear ℝ ({K, B, C} : Set P))
  (h_incircle_KBC :
    IncircleTouchPoints K B C h_KBC_non_collinear J D N M)
  : Cospherical ({E, F, M, N} : Set P) :=
by
  sorry