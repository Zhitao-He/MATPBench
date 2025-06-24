import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
open Real EuclideanGeometry
namespace Problem
abbrev P := EuclideanSpace ℝ (Fin 2)
noncomputable def degreesToRadians (d : ℝ) : ℝ := d / 180 * Real.pi
theorem find_angle_WTZ
    (T Y Z X W : P)
    (hY_ne_T : Y ≠ T) (hY_ne_Z : Y ≠ Z) (hY_ne_X : Y ≠ X)
    (hW_ne_T : W ≠ T) (hW_ne_X : W ≠ X) (hZ_ne_T : Z ≠ T)
    (hTYZ_angle : angle T Y Z = degreesToRadians 52)
    (hZYX_angle : angle Z Y X = degreesToRadians 38)
    (hTY_perp_XY : angle T Y X = Real.pi / 2)
    (hTW_perp_XW : angle T W X = Real.pi / 2)
    (hYX_perp_WX : angle Y X W = Real.pi / 2)
    (hTZY_perp_YZ : angle T Z Y = Real.pi / 2) :
    angle W T Z = degreesToRadians 52 := by
  sorry
end Problem
