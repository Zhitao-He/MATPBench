import Mathlib.Data.Real.Basic 
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace ShadedRegionProblem
structure Rectangle where
  width : ℝ
  height : ℝ
structure Circle where
  radius : ℝ
def Rectangle.area (r : Rectangle) : ℝ := r.width * r.height
noncomputable def Circle.area (c : Circle) : ℝ := Real.pi * c.radius ^ 2
def mainRectangle : Rectangle := {
  width := 10,
  height := 5
}
noncomputable def inscribedCircle : Circle := {
  radius := mainRectangle.height / 2
}
noncomputable def pinkLineLength : ℝ := 2 * inscribedCircle.radius
noncomputable def shadedArea : ℝ :=
  mainRectangle.area - 2 * inscribedCircle.area
end ShadedRegionProblem
