import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
abbrev P₂ := EuclideanSpace ℝ (Fin 2)
def pointA : P₂ := ![0,0]
def pointB : P₂ := ![2,0]
def pointC : P₂ := ![2,2]
def pointD : P₂ := ![0,2]
noncomputable def pointE : P₂ := ![2, (1/2 : ℝ)] 
noncomputable def pointF : P₂ := ![3, (1/2 : ℝ)] 
noncomputable def pointG : P₂ := ![3, (3/2 : ℝ)] 
noncomputable def pointH : P₂ := ![2, (3/2 : ℝ)] 
def pointP_apex : P₂ := ![6,1]
noncomputable def area_triangleTop : ℝ :=
  (1/2 : ℝ) * abs (((pointG -ᵥ pointC) 0 * (pointP_apex -ᵥ pointC) 1) - ((pointG -ᵥ pointC) 1 * (pointP_apex -ᵥ pointC) 0))
noncomputable def area_triangleBot : ℝ :=
  (1/2 : ℝ) * abs (((pointF -ᵥ pointB) 0 * (pointP_apex -ᵥ pointB) 1) - ((pointF -ᵥ pointB) 1 * (pointP_apex -ᵥ pointB) 0))
theorem shaded_area_is_one : area_triangleTop + area_triangleBot = 1 := by
  sorry
