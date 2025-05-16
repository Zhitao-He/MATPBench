import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic

-- Definition for a geometric sector in a generic MetricSpace
structure Sector (PointType : Type u) [MetricSpace PointType] where
  center : PointType
  radius : ℝ
  h_radius_positive : radius > 0

-- Function to construct a sector from two points
def sectorConstructedFromFigurePoints {PointType : Type u} [MetricSpace PointType]
    (O A : PointType)
    (h_OA_distance_is_positive : dist O A > 0) : Sector PointType := 
  { center := O,
    radius := dist O A,
    h_radius_positive := h_OA_distance_is_positive }

-- Theorem statement
theorem radius_of_sector_from_figure_is_four
    (O A : EuclideanSpace ℝ (Fin 2))
    (h_dist_O_A_is_4 : dist O A = 4) :
    (sectorConstructedFromFigurePoints O A 
      (show dist O A > 0 from h_dist_O_A_is_4.symm ▸ Real.four_pos)).radius = 4 := by
  sorry