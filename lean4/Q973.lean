import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

open EuclideanGeometry
open scoped Real

namespace GeometryProblem

variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ P]

-- Points in the Euclidean plane
variable (A B C D E F O P : P)

-- O is the midpoint of segment AB (O is the center of the circle with diameter AB)
axiom hO_midpoint_AB : O = midpoint ℝ A B

-- A and B are distinct (non-degenerate diameter)
axiom hA_ne_B : A ≠ B

-- Points C, E, F lie on the circle with center O, radius OA (= OB)
axiom hC_on_circ : C ∈ sphere O (dist A O)
axiom hE_on_circ : E ∈ sphere O (dist A O)
axiom hF_on_circ : F ∈ sphere O (dist A O)

-- PE and PF are tangent to the circle at E and F, respectively
axiom hP_ne_E : P ≠ E
axiom hP_ne_F : P ≠ F
axiom hPE_tangent : ⟪P -ᵥ E, O -ᵥ E⟫ = 0
axiom hPF_tangent : ⟪P -ᵥ F, O -ᵥ F⟫ = 0

-- PB meets the circle again at C (C ≠ B, C ≠ P)
axiom h_collinear_PCB : Collinear ℝ ({P, C, B} : Set P)
axiom hC_ne_B : C ≠ B
axiom hC_ne_P : C ≠ P

-- D is the intersection of lines AF and BE
axiom hA_ne_F : A ≠ F
axiom hB_ne_E : B ≠ E
axiom h_collinear_AFD : Collinear ℝ ({A, F, D} : Set P)
axiom h_collinear_BED : Collinear ℝ ({B, E, D} : Set P)

-- D ≠ P (needed for angle definition)
axiom hD_ne_P : D ≠ P

-- Additional distinctness hypotheses for angle definitions
axiom hA_ne_C : A ≠ C
axiom hD_ne_C : D ≠ C
axiom hE_ne_F : E ≠ F

/-
  Theorem: ∠DPE = 2·∠ACD
  ∠DPE denotes the angle at P between D and E.
  ∠ACD denotes the angle at C between A and D.
-/
theorem angle_DPE_eq_twice_angle_ACD :
    ∠ D P E = 2 * ∠ A C D := 
  by sorry

end GeometryProblem