import Mathlib.Data.Fin.Basic
import Mathlib.Data.List.Basic
import Mathlib.Data.List.Nodup
import Mathlib.Data.List.Chain
import Mathlib.Data.Set.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Finset.Card
namespace IcosahedronPaths
inductive IcosahedronVertex where
  | top
  | upper (i : Fin 5)
  | lower (i : Fin 5)
  | bottom
deriving DecidableEq, Repr
instance : Fintype IcosahedronVertex :=
  Fintype.ofList
    ([IcosahedronVertex.top] ++
     (List.map IcosahedronVertex.upper (List.finRange 5)) ++
     (List.map IcosahedronVertex.lower (List.finRange 5)) ++
     [IcosahedronVertex.bottom])
    (by intro x; cases x <;> simp [List.mem_append, List.mem_map, List.mem_finRange])
def level (v : IcosahedronVertex) : Nat :=
  match v with
  | .top      => 0
  | .upper _  => 1
  | .lower _  => 2
  | .bottom   => 3
def isAdjacent (v w : IcosahedronVertex) : Prop :=
  (v ≠ w) ∧
  match v, w with
  | .top, .upper _ => True
  | .upper _, .top => True
  | .upper i, .upper j =>
    (i.val + 1) % 5 = j.val ∨ (j.val + 1) % 5 = i.val
  | .upper i, .lower j =>
    i = j ∨ i.val = (j.val + 1) % 5
  | .lower j, .upper i =>
    i = j ∨ i.val = (j.val + 1) % 5
  | .lower i, .lower j =>
    (i.val + 1) % 5 = j.val ∨ (j.val + 1) % 5 = i.val
  | .lower _, .bottom => True
  | .bottom, .lower _ => True
  | _, _ => False
def isValidStep (v₁ v₂ : IcosahedronVertex) : Prop :=
  isAdjacent v₁ v₂ ∧ (level v₂ = level v₁ ∨ level v₂ = level v₁ + 1)
def isIcosahedronPath (p : List IcosahedronVertex) : Prop :=
  p.head? = some .top ∧
  p.getLast? = some .bottom ∧
  p.Nodup ∧
  List.Chain' isValidStep p
theorem numPathsFromTopToBottom_eq_810 :
  let PathsSet : Set (List IcosahedronVertex) :=
    { p | isIcosahedronPath p }
  ∃ (finitePaths : Finset (List IcosahedronVertex)),
    ↑finitePaths = PathsSet ∧ finitePaths.card = 810 := by sorry
end IcosahedronPaths
