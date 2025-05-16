import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
abbrev E := EuclideanSpace ℝ (Fin 3)





def mkPoint (x y z : ℝ) : E := ![x, y, z]

namespace ProblemFormalization

def P : E := mkPoint 0 0 0
def A : E := mkPoint 3 0 0
def B : E := mkPoint 0 4 0
def C : E := mkPoint 0 4 5
def D : E := mkPoint 3 0 5


theorem pd_eq_sqrt34 : dist P D = Real.sqrt 34 := by
  sorry

end ProblemFormalization
