import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic 
namespace FigureAreaCalculation
def fig_height : ℝ := 4
def fig_top_width : ℝ := 6
def fig_bottom_width : ℝ := 14
noncomputable def area_of_trapezoid : ℝ := (fig_top_width + fig_bottom_width) / 2 * fig_height
def radius_of_quarter_circle : ℝ := fig_height
noncomputable def area_of_quarter_circle_removed : ℝ := (1/4) * Real.pi * radius_of_quarter_circle^2
noncomputable def area_of_shaded_figure : ℝ := area_of_trapezoid - area_of_quarter_circle_removed
theorem stated_area_is_549 : area_of_shaded_figure = 549 := by sorry
end FigureAreaCalculation
