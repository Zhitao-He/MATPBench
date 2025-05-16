import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic

open EuclideanGeometry

/-!
# Hexagon Area (Triangle Extensions) Problem

Given triangle $ABC$ with area $12$, the sides are extended to $P, Q, R, S, T, U$ such that:
- $PA = AB = BS$, $QA = AC = CT$, $RB = BC = CU$,
- $A$ is between $P$ and $B$, $B$ between $A$ and $S$, $A$ between $Q$ and $C$, $C$ between $A$ and $T$, $B$ between $R$ and $C$, $C$ between $B$ and $U$.
Compute the area of hexagon $PQRSTU$.
-/

variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [FiniteDimensional ℝ V] (fact_dim_eq_2 : FiniteDimensional.finrank ℝ V = 2)
include fact_dim_eq_2

-- Points in the Euclidean plane
variable (A B C : Point V)

-- Extended points as defined via relative positions
def PtP (A B : Point V) : Point V := A -ᵥ (B -ᵥ A)   -- P = 2A - B
def PtQ (A C : Point V) : Point V := A -ᵥ (C -ᵥ A)   -- Q = 2A - C
def PtR (B C : Point V) : Point V := B -ᵥ (C -ᵥ B)   -- R = 2B - C
def PtS (A B : Point V) : Point V := B +ᵥ (B -ᵥ A)   -- S = 2B - A
def PtT (A C : Point V) : Point V := C +ᵥ (C -ᵥ A)   -- T = 2C - A
def PtU (B C : Point V) : Point V := C +ᵥ (C -ᵥ B)   -- U = 2C - B

-- The area of triangle ABC is 12
variable (h_area_ABC : Triangle.area A B C = 12)
variable (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set (Point V)))

/--
Theorem:
Let `P = 2A - B`, `Q = 2A - C`, `R = 2B - C`, `S = 2B - A`, `T = 2C - A`, `U = 2C - B`.
Then the area of hexagon $PQRSTU$ is $156$.

We use the sum of four triangles method, with the order of vertices for triangles as:
- $\triangle PQR$
- $\triangle PSR$
- $\triangle PST$
- $\triangle PTU$
-/
theorem hexagon_area_eq_156 :
    let P := PtP A B
    let Q := PtQ A C
    let R := PtR B C
    let S := PtS A B
    let T := PtT A C
    let U := PtU B C
    Triangle.area P Q R + Triangle.area P S R + Triangle.area P S T + Triangle.area P T U = 156 := by
  -- Proof omitted; geometric calculations reduced to area sum and hypothesis h_area_ABC
  sorry

/--
For clarity, also provide the abstract version in terms of the area of $\triangle ABC$,
since the area always scales as $13$ times that of $\triangle ABC$ for this hexagon construction.
-/
theorem hexagon_area_is_13_times_ABC :
    let P := PtP A B
    let Q := PtQ A C
    let R := PtR B C
    let S := PtS A B
    let T := PtT A C
    let U := PtU B C
    Triangle.area P Q R + Triangle.area P S R + Triangle.area P S T + Triangle.area P T U = 13 * Triangle.area A B C := by
  sorry

/--
Plug in the specific value of area $\triangle ABC = 12$ to get area $156$.
-/
theorem hexagon_area_is_156_value (h_area_ABC_val : Triangle.area A B C = 12) :
    let P := PtP A B
    let Q := PtQ A C
    let R := PtR B C
    let S := PtS A B
    let T := PtT A C
    let U := PtU B C
    Triangle.area P Q R + Triangle.area P S R + Triangle.area P S T + Triangle.area P T U = 156 := by
  rw [hexagon_area_is_13_times_ABC A B C]
  rw [h_area_ABC_val]
  norm_num