import Mathlib.Data.Real.Basic
import Mathlib.Data.List.Permutation
import Mathlib.Data.List.Zip 
import Mathlib.Data.List.Basic 
open List 
structure RectangleInt where
  x₁ : Nat
  y₁ : Nat
  x₂ : Nat
  y₂ : Nat
  h_width : x₁ < x₂
  h_height : y₁ < y₂
namespace RectangleInt
  def width (r : RectangleInt) : Nat := r.x₂ - r.x₁
  def height (r : RectangleInt) : Nat := r.y₂ - r.y₁
  def area (r : RectangleInt) : Nat := r.width * r.height
end RectangleInt
def regionA : RectangleInt := ⟨0, 1, 4, 6, by decide, by decide⟩
def regionB : RectangleInt := ⟨0, 0, 6, 1, by decide, by decide⟩
def regionC : RectangleInt := ⟨4, 3, 11, 6, by decide, by decide⟩
def regionD : RectangleInt := ⟨6, 0, 11, 3, by decide, by decide⟩
def regionE : RectangleInt := ⟨4, 1, 6, 3, by decide, by decide⟩
def problemRegionAreas : List Nat :=
  [regionA.area, regionB.area, regionC.area, regionD.area, regionE.area]
def problemFlowerCosts : List Real :=
  [1.0, 1.5, 2.0, 2.5, 3.0]
def calculateTotalGardenCost (assignedFlowerCosts : List Real) : Real :=
  (List.zipWith (fun (area : Nat) (cost : Real) => (area : Real) * cost) problemRegionAreas assignedFlowerCosts).sum
theorem least_possible_cost_is_108 :
  (∃ p_costs, p_costs ~ problemFlowerCosts ∧ calculateTotalGardenCost p_costs = 108) ∧
  (∀ p_costs, p_costs ~ problemFlowerCosts → calculateTotalGardenCost p_costs ≥ 108) := by sorry
