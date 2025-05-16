import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Data.Real.Basic

noncomputable section

open scoped Real

-- We work in 2D Euclidean space
variable {E : Type} [NormedAddCommGroup E] [InnerProductSpace ℝ E]
variable [Fact (FiniteDimensional.finrank ℝ E = 2)]
variable [MetricSpace E] [CompleteSpace E]

-- Define points for the triangle vertices and centers of four circles
variable (A B C p q r s : E)

-- All four circles have radius 1
def radius : ℝ := 1

-- Hypothesis: A, B, C are not collinear (= triangle is non-degenerate)
def h_triangle_ABC : Prop := ¬ Collinear ℝ {A, B, C}

-- Hypothesis: The four centers are pairwise distinct
def h_distinct_centers : Prop :=
  p ≠ q ∧ p ≠ r ∧ p ≠ s ∧ q ≠ r ∧ q ≠ s ∧ r ≠ s

-- Define lines of triangle ABC as affine subspaces
def line_AB : AffineSubspace ℝ E := AffineSubspace.span ℝ {A, B}
def line_BC : AffineSubspace ℝ E := AffineSubspace.span ℝ {B, C}
def line_AC : AffineSubspace ℝ E := AffineSubspace.span ℝ {A, C}

-- Distance from a point to a line/subspace.
def dist_point_line (pt : E) (L : AffineSubspace ℝ E) [Nonempty L] : ℝ :=
  dist pt (orthogonalProjection L pt)

-- Side tangency conditions
def h_tan_P_AB : Prop := by
  haveI : Nonempty (line_AB A B) := ⟨⟨A, by simp [line_AB]⟩⟩
  exact dist_point_line p (line_AB A B) = radius

def h_tan_P_AC : Prop := by
  haveI : Nonempty (line_AC A C) := ⟨⟨A, by simp [line_AC]⟩⟩
  exact dist_point_line p (line_AC A C) = radius

def h_tan_Q_AB : Prop := by
  haveI : Nonempty (line_AB A B) := ⟨⟨A, by simp [line_AB]⟩⟩
  exact dist_point_line q (line_AB A B) = radius

def h_tan_Q_BC : Prop := by
  haveI : Nonempty (line_BC B C) := ⟨⟨B, by simp [line_BC]⟩⟩
  exact dist_point_line q (line_BC B C) = radius

def h_tan_R_BC : Prop := by
  haveI : Nonempty (line_BC B C) := ⟨⟨B, by simp [line_BC]⟩⟩
  exact dist_point_line r (line_BC B C) = radius

def h_tan_S_AC : Prop := by
  haveI : Nonempty (line_AC A C) := ⟨⟨A, by simp [line_AC]⟩⟩
  exact dist_point_line s (line_AC A C) = radius

def h_tan_S_BC : Prop := by
  haveI : Nonempty (line_BC B C) := ⟨⟨B, by simp [line_BC]⟩⟩
  exact dist_point_line s (line_BC B C) = radius

-- Circles Q, R, S are tangent: their centers are collinear and tangency distance
def h_collinear_QRS : Prop := Collinear ℝ {q, r, s}

-- R lies between Q and S
def h_R_between_QS : Prop := Affine.Btw ℝ q r s

-- Centers of tangent circles: distance between tangent centers is 2 (radii sum)
def h_tan_QR : Prop := dist q r = 2 * radius
def h_tan_RS : Prop := dist r s = 2 * radius
def h_tan_PQ : Prop := dist p q = 2 * radius
def h_tan_PS : Prop := dist p s = 2 * radius

-- Make sure p, q, s are not collinear (needed for triangle PQS)
def h_PQS_is_triangle : Prop := ¬ Collinear ℝ {p, q, s}

-- Define the internal angles of triangle PQS (absolute value for unoriented)
def angle_at_P_in_PQS : ℝ := (∠ q p s).abs
def angle_at_Q_in_PQS : ℝ := (∠ p q s).abs
def angle_at_S_in_PQS : ℝ := (∠ q s p).abs

def smallest_angle_PQS_is_30_degrees : Prop :=
  min (min angle_at_P_in_PQS angle_at_Q_in_PQS) angle_at_S_in_PQS = Real.pi / 6

-- Final formalization
theorem four_circle_tangency_problem
    (h_triangle : h_triangle_ABC A B C)
    (h_distinct : h_distinct_centers p q r s)
    (hP_AB : h_tan_P_AB A B p)
    (hP_AC : h_tan_P_AC A C p)
    (hQ_AB : h_tan_Q_AB A B q)
    (hQ_BC : h_tan_Q_BC B C q)
    (hR_BC : h_tan_R_BC B C r)
    (hS_AC : h_tan_S_AC A C s)
    (hS_BC : h_tan_S_BC B C s)
    (h_collinear : h_collinear_QRS q r s)
    (h_btw : h_R_between_QS q r s)
    (hQR : h_tan_QR q r)
    (hRS : h_tan_RS r s)
    (hPQ : h_tan_PQ p q)
    (hPS : h_tan_PS p s)
    (h_triangle_PQS : h_PQS_is_triangle p q s) :
    smallest_angle_PQS_is_30_degrees p q s := by
  sorry

end