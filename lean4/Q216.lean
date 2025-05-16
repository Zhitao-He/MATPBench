import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Data.Real.Basic

namespace PhotographerProblem

abbrev Point : Type := EuclideanSpace ℝ (Fin 2)

variable (B S P : Point)

-- Distance from S to P is 916 meters
axiom dist_SP : dist S P = 916

-- Angle at S between B and P is 145 degrees (in radians)
axiom angle_BSP : ∠ B S P = (145 / 180 : ℝ) * Real.pi

-- Total journey distance is 21917 meters
axiom total_journey : dist B S + dist S P + dist P B = 21917

end PhotographerProblem