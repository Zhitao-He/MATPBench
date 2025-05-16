import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
open Real EuclideanSpace

namespace Trapezoid


abbrev Point := EuclideanSpace ℝ (Fin 2)


def height : ℝ := 12
def base₁ : ℝ := 16
def area : ℝ := 162


noncomputable def base₂ : ℝ := (2 * area / height) - base₁


def pointA : Point := ![0, 0]
def pointB : Point := ![base₁, 0]
def pointD : Point := ![0, height]
noncomputable def pointC : Point := ![base₂, height]


noncomputable def lengthAB : ℝ := dist pointA pointB
noncomputable def lengthBC : ℝ := dist pointB pointC
noncomputable def lengthCD : ℝ := dist pointC pointD
noncomputable def lengthDA : ℝ := dist pointD pointA


noncomputable def perimeter : ℝ :=
  lengthAB + lengthBC + lengthCD + lengthDA


theorem perimeter_is_52 :
  height = 12 ∧ base₁ = 16 ∧ area = 162 ∧
  base₂ = 11 ∧
  lengthAB = 16 ∧
  lengthCD = 11 ∧
  lengthDA = 12 ∧
  lengthBC = Real.sqrt ((base₁ - base₂) ^ 2 + height ^ 2) ∧
  perimeter = 52
:= by sorry

end Trapezoid
