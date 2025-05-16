import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Geometry.Euclidean.Sphere.Basic

namespace EuclideanGeometryProblem

open EuclideanGeometry
open InnerProductGeometry
open AffineGeometry

-- Let P be the Euclidean plane, V its associated vector space
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
  [FiniteDimensional ℝ V] [Fact (FiniteDimensional.finrank ℝ V = 2)]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]

-- Points in the plane
variable (A B C D E F P_ Q : P)

-- ABCD is a convex quadrilateral:
-- No three distinct vertices are collinear.
variable (hABC : ¬Collinear ℝ ({A, B, C} : Set P))
variable (hBCD : ¬Collinear ℝ ({B, C, D} : Set P))
variable (hCDA : ¬Collinear ℝ ({C, D, A} : Set P))
variable (hDAB : ¬Collinear ℝ ({D, A, B} : Set P))
-- Vertices are distinct
variable (hAB : A ≠ B) (hBC : B ≠ C) (hCD : C ≠ D) (hDA : D ≠ A)
variable (hAC : A ≠ C) (hBD : B ≠ D)
-- Diagonals separate opposite vertices (ensuring convexity and standard ordering)
variable (h_diag_AC_sep_BD : ¬SameSide (affineSpan ℝ {A, C}) B D)
variable (h_diag_BD_sep_AC : ¬SameSide (affineSpan ℝ {B, D}) A C)

-- AC bisects angle BAD.
variable (h_angle_bisect :
  angle B A C hAB hAC = angle D A C hDA hAC)
variable (h_c_int1 : SameSide (affineSpan ℝ {A, B}) C D)
variable (h_c_int2 : SameSide (affineSpan ℝ {A, D}) C B)

-- E ∈ BC, F ∈ CD, EF ∥ BD
variable (hE_on_BC : E ∈ segment ℝ B C)
variable (hF_on_CD : F ∈ segment ℝ C D)
variable (hEF_ne : E ≠ F)
variable (hEF_parallel_BD : (affineSpan ℝ {E, F}) ∥ (affineSpan ℝ {B, D}))

-- Extend FA to P, EA to Q, with A between F and P, A between E and Q
variable (hSbtw_FAP : Sbtw ℝ F A P_)
variable (hSbtw_EAQ : Sbtw ℝ E A Q)

-- P ≠ A ≠ Q, F ≠ P, E ≠ Q (implied by Sbtw)
-- Each relevant triple is non-collinear for circles
variable (hNCL_ABP : ¬Collinear ℝ ({A, B, P_} : Set P))
variable (hNCL_ADQ : ¬Collinear ℝ ({A, D, Q} : Set P))

-- The circumcircle ω₁ of triangle ABP is tangent to line AC at A
variable (h_tangent_omega1 :
  Sphere.tangentLineAt (circumcircle (Triangle.mk A B P_ hNCL_ABP)) A
    (Triangle.mem_circumcircle_point₁ (Triangle.mk A B P_ hNCL_ABP)) = affineSpan ℝ {A, C})

-- The circumcircle ω₂ of triangle ADQ is tangent to line AC at A
variable (h_tangent_omega2 :
  Sphere.tangentLineAt (circumcircle (Triangle.mk A D Q hNCL_ADQ)) A
    (Triangle.mem_circumcircle_point₁ (Triangle.mk A D Q hNCL_ADQ)) = affineSpan ℝ {A, C})

-- Conclusion: B, P, Q, D are concyclic
theorem concyclic_BPQD : Concyclic ({B, P_, Q, D} : Set P) := by
  sorry

end EuclideanGeometryProblem