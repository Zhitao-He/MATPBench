import Mathlib.Data.Real.Basic -- For ℝ, basic algebra, etc.
import Mathlib.Data.Fin.Basic  -- For Fin n
import Mathlib.Data.Fintype.Basic -- For Fintype and Nat.card

namespace IcosahedronProblem

-- The 12 vertices of the regular icosahedron are labeled as follows:
-- - one "top" vertex
-- - five "upper" pentagonal vertices (adjacent to the top)
-- - five "lower" pentagonal vertices (adjacent to the bottom)
-- - one "bottom" vertex
inductive IcosahedronVertex where
  | top : IcosahedronVertex
  | upper : Fin 5 → IcosahedronVertex
  | lower : Fin 5 → IcosahedronVertex
  | bottom : IcosahedronVertex
  deriving DecidableEq, Repr, Fintype

open IcosahedronVertex

/--
Returns the vertical "level" of a vertex:
- 0 : top
- 1 : upper ring
- 2 : lower ring
- 3 : bottom
-/
def vertexLevel : IcosahedronVertex → Nat
  | top     => 0
  | upper _ => 1
  | lower _ => 2
  | bottom  => 3

/--
Adjacency relation of vertices in a regular icosahedron according to the described structure.
-/
def isAdjacent (v₁ v₂ : IcosahedronVertex) : Prop :=
  match v₁, v₂ with
  | top, upper _ => True
  | upper _, top => True
  | bottom, lower _ => True
  | lower _, bottom => True
  -- upper ring: cycle of 5
  | upper i, upper j =>
      (j.val = (i.val + 1) % 5) ∨ (i.val = (j.val + 1) % 5)
  -- lower ring: cycle of 5
  | lower i, lower j =>
      (j.val = (i.val + 1) % 5) ∨ (i.val = (j.val + 1) % 5)
  -- upper i connects to lower i and lower (i-1 mod 5)
  | upper i, lower j =>
      (i.val = j.val) ∨ (j.val = (i.val + 4) % 5)
  | lower j, upper i =>
      (i.val = j.val) ∨ (j.val = (i.val + 4) % 5)
  | _, _ => False

/--
A step from vertex u to vertex v is valid if:
- u and v are adjacent,
- the move is horizontal (same level) or downward (to a greater level).
-/
def isValidStep (u v : IcosahedronVertex) : Prop :=
  isAdjacent u v ∧ vertexLevel v ≥ vertexLevel u

/--
A list of vertices is a valid path from top to bottom if:
- starts at top
- ends at bottom
- no repeated vertices
- each consecutive pair is a valid step (downward or horizontal along an edge)
-/
def isValidIcosahedronPath (p : List IcosahedronVertex) : Prop :=
  p.head? = some top ∧
  p.getLast? = some bottom ∧
  p.Nodup ∧
  p.Pairwise isValidStep

/--
The main combinatorial claim: the number of such valid paths is 810.
-/
theorem numberOfPathsFromTopToBottom_is_810 :
  Nat.card { p : List IcosahedronVertex // isValidIcosahedronPath p } = 810 := by
  sorry

end IcosahedronProblem