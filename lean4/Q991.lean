import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

/-!
# Concurrency in Cyclic Quadrilateral Configuration

**Setup**:
- Cyclic quadrilateral `A B C D` inscribed in circle `O`.
- `E` = intersection of `AB` and `DC`.
- `F` = intersection of `AD` and `BC`.
- Circumcircle of triangle `E F C` (center `P`) meets `O` again at `G ≠ C, E, F`.
- Line `AG` meets `EF` at `H`.
- `HC` meets circle `O` again at `I ≠ C`.
- **Claim**: Lines `AI`, `GC`, and `FE` are concurrent.
-/

open EuclideanGeometry

abbrev Point := EuclideanSpace ℝ (Fin 2)

namespace GeometryProblem

-- Given distinct points A, B, C, D, O in the plane
variable (A B C D O : Point)

-- Given radius rO > 0 for circle O
variable (rO : ℝ) (hrO : 0 < rO)

-- A, B, C, D are co-cyclic: inscribed in circle O
variable (hA_onO : A ∈ Euclidean.Sphere O rO)
variable (hB_onO : B ∈ Euclidean.Sphere O rO)
variable (hC_onO : C ∈ Euclidean.Sphere O rO)
variable (hD_onO : D ∈ Euclidean.Sphere O rO)

-- Assume needed distinctness for well-defined lines
variable (hA_ne_B : A ≠ B)
variable (hD_ne_C : D ≠ C)
variable (hA_ne_D : A ≠ D)
variable (hB_ne_C : B ≠ C)

-- The intersection of lines AB and DC: E
noncomputable def E : Point :=
  Classical.choose (exists_inter_pt_of_ne A B D C hA_ne_B hD_ne_C)

variable (hE_def : (E A B C D ∈ affineSpan ℝ ({A, B} : Set Point)) ∧ 
                   (E A B C D ∈ affineSpan ℝ ({D, C} : Set Point)))

-- The intersection of lines AD and BC: F
noncomputable def F : Point :=
  Classical.choose (exists_inter_pt_of_ne A D B C hA_ne_D hB_ne_C)

variable (hF_def : (F A B C D ∈ affineSpan ℝ ({A, D} : Set Point)) ∧ 
                   (F A B C D ∈ affineSpan ℝ ({B, C} : Set Point)))

-- The circumcircle of triangle E F C: center P, radius rP > 0
variable (P : Point) (rP : ℝ) (hrP : 0 < rP)
variable (hE_onP : E A B C D ∈ Euclidean.Sphere P rP)
variable (hF_onP : F A B C D ∈ Euclidean.Sphere P rP)
variable (hC_onP : C ∈ Euclidean.Sphere P rP)
variable (hEFC_not_collinear : ¬ Collinear ℝ ({E A B C D, F A B C D, C} : Set Point))

-- The intersection point G ≠ C, E, F lying on both circumcircle P and circle O
variable (G : Point)
variable (hG_onP : G ∈ Euclidean.Sphere P rP)
variable (hG_onO : G ∈ Euclidean.Sphere O rO)
variable (hG_ne_C : G ≠ C)
variable (hG_ne_E : G ≠ E A B C D)
variable (hG_ne_F : G ≠ F A B C D)

-- AG meets EF at H (intersection point)
variable (hA_ne_G : A ≠ G)
variable (hE_ne_F : E A B C D ≠ F A B C D)
noncomputable def H : Point :=
  Classical.choose (exists_inter_pt_of_ne A G (E A B C D) (F A B C D) hA_ne_G hE_ne_F)

variable (hH_def : (H A B C D G ∈ affineSpan ℝ ({A, G} : Set Point)) ∧ 
                   (H A B C D G ∈ affineSpan ℝ ({E A B C D, F A B C D} : Set Point)))

-- HC meets circle O again at I ≠ C
variable (hH_ne_C : H A B C D G ≠ C)
noncomputable def I : Point :=
  Classical.choose
    (exists_point_on_line_and_circle_ne
      (H A B C D G) C O rO hrO hH_ne_C hC_onO)

variable (hI_onO : I A B C D G ∈ Euclidean.Sphere O rO)
variable (hI_onHC : I A B C D G ∈ affineSpan ℝ ({H A B C D G, C} : Set Point))
variable (hI_ne_C : I A B C D G ≠ C)

-- For lines AI, GC, FE proper definitions, need:
variable (hA_ne_I : A ≠ I A B C D G)

/-- **Concurrency Statement:** Lines AI, GC, FE are concurrent -/
def ConcurrencyProperty : Prop :=
  ∃ X : Point,
    X ∈ affineSpan ℝ ({A, I A B C D G} : Set Point) ∧
    X ∈ affineSpan ℝ ({G, C} : Set Point) ∧
    X ∈ affineSpan ℝ ({F A B C D, E A B C D} : Set Point)

/-- **Theorem:** The lines AI, GC, and FE concur -/
theorem lines_AI_GC_FE_are_concurrent :
    ConcurrencyProperty A B C D O rO hrO hA_onO hB_onO hC_onO hD_onO 
      hA_ne_B hD_ne_C hA_ne_D hB_ne_C
      (E A B C D) hE_def (F A B C D) hF_def P rP hrP 
      hE_onP hF_onP hC_onP hEFC_not_collinear G hG_onP hG_onO 
      hG_ne_C hG_ne_E hG_ne_F
      hA_ne_G hE_ne_F (H A B C D G) hH_def hH_ne_C 
      (I A B C D G) hI_onO hI_onHC hI_ne_C hA_ne_I :=
  by sorry

end GeometryProblem