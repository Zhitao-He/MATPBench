import Mathlib.Geometry.Euclidean.Altitude
import Mathlib.Geometry.Euclidean.Circumcenter
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Analysis.Convex.Side
open scoped EuclideanGeometry
abbrev Point := EuclideanSpace ℝ (Fin 2)
theorem concyclic_iff_concyclic_of_altitudes_and_symmetric_points
  (A B C P_pt : Point)
  (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set Point))
  (hP_interior_BC : (line[ℝ, B, C]).WSameSide A P_pt)
  (hP_interior_CA : (line[ℝ, C, A]).WSameSide B P_pt)
  (hP_interior_AB : (line[ℝ, A, B]).WSameSide C P_pt) :
  let D := (EuclideanGeometry.orthogonalProjection (line[ℝ, B, C]) A : Point)
  let E := (EuclideanGeometry.orthogonalProjection (line[ℝ, C, A]) B : Point)
  let F := (EuclideanGeometry.orthogonalProjection (line[ℝ, A, B]) C : Point)
  let L := EuclideanGeometry.reflection (line[ℝ, B, C]) P_pt
  let M := EuclideanGeometry.reflection (line[ℝ, C, A]) P_pt
  let N := EuclideanGeometry.reflection (line[ℝ, A, B]) P_pt
  let G := midpoint ℝ A P_pt
  EuclideanGeometry.Concyclic (Set.insert (D : Point) (Set.insert (E : Point) (Set.insert G (Set.singleton (F : Point))))) ↔ EuclideanGeometry.Concyclic (Set.insert A (Set.insert M (Set.insert L (Set.singleton N)))) := by sorry
