import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Sphere.Basic
import Mathlib.Data.Real.Basic
abbrev P₂ := EuclideanSpace ℝ (Fin 2)
def xCoord (p : P₂) : ℝ := p 0
def yCoord (p : P₂) : ℝ := p 1
def O : P₂ := ![-3, -3]
def r : ℝ := 3
noncomputable def cFigure : EuclideanGeometry.Sphere P₂ := {
  center := O,
  radius := r
}
theorem center_of_cFigure_is_O : cFigure.center = O := by
  rfl
