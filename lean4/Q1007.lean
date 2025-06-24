import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.RightAngle
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.Convex.Segment
import Mathlib.Analysis.InnerProductSpace.PiL2
open scoped EuclideanGeometry Real
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def mkLine (p : P) (v : P) : AffineSubspace ℝ P := sorry
noncomputable def direction (l : AffineSubspace ℝ P) : P := sorry
noncomputable def intersection (l₁ l₂ : AffineSubspace ℝ P) : P := sorry
noncomputable def Perpendicular (l₁ l₂ : AffineSubspace ℝ P) : Prop := sorry
noncomputable def lineThrough (A B : P) : AffineSubspace ℝ P := sorry
noncomputable def D (_ B C : P) : P := midpoint ℝ B C
noncomputable def E (A _ C : P) : P := midpoint ℝ C A
noncomputable def F (A B _ : P) : P := midpoint ℝ A B
noncomputable def lineAD (A B C : P) : AffineSubspace ℝ P := lineThrough A (D A B C)
noncomputable def lineAC (A C : P) : AffineSubspace ℝ P := lineThrough A C
noncomputable def EI (A B C : P) : AffineSubspace ℝ P := mkLine (E A B C) (direction (lineAC A C))
noncomputable def M (A B C : P) : P := intersection (EI A B C) (lineAD A B C)
noncomputable def lineAB (A B : P) : AffineSubspace ℝ P := lineThrough A B
noncomputable def FI (A B C : P) : AffineSubspace ℝ P := mkLine (F A B C) (direction (lineAB A B))
noncomputable def N (A B C : P) : P := intersection (FI A B C) (lineAD A B C)
noncomputable def EM (A B C : P) : AffineSubspace ℝ P := lineThrough (E A B C) (M A B C)
noncomputable def FN (A B C : P) : AffineSubspace ℝ P := lineThrough (F A B C) (N A B C)
noncomputable def O (A B C : P) : P := intersection (EM A B C) (FN A B C)
noncomputable def CM (A B C : P) : AffineSubspace ℝ P := lineThrough C (M A B C)
noncomputable def BN (A B C : P) : AffineSubspace ℝ P := lineThrough B (N A B C)
noncomputable def K (A B C : P) : P := intersection (CM A B C) (BN A B C)
theorem OK_perp_AK (A B C : P) (h_noncollinear : ¬ Collinear ℝ ({A, B, C} : Set P)) :
  Perpendicular (lineThrough (O A B C) (K A B C))
                (lineThrough A (K A B C)) := by sorry
