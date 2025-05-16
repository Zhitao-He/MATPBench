import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Polygon.Area

abbrev Point := EuclideanSpace ℝ (Fin 2)

namespace OctagonCentroidProblem

def A : Point := ![0, 17]
def B : Point := ![8, 23]
def C : Point := ![19, 23]
def D : Point := ![27, 17]
def E : Point := ![27, 6]
def F : Point := ![19, 0]
def G : Point := ![8, 0]
def H : Point := ![0, 6]

def J : Point := (H + A) / (2 : ℝ)

def triangle₁ : Triangle Point := Triangle.mk J A B
def triangle₂ : Triangle Point := Triangle.mk J B C
def triangle₃ : Triangle Point := Triangle.mk J C D
def triangle₄ : Triangle Point := Triangle.mk J D E
def triangle₅ : Triangle Point := Triangle.mk J E F
def triangle₆ : Triangle Point := Triangle.mk J F G
def triangle₇ : Triangle Point := Triangle.mk J G H

def K₁ : Point := triangle₁.centroid
def K₂ : Point := triangle₂.centroid
def K₃ : Point := triangle₃.centroid
def K₄ : Point := triangle₄.centroid
def K₅ : Point := triangle₅.centroid
def K₆ : Point := triangle₆.centroid
def K₇ : Point := triangle₇.centroid

def centroidPolygon : Polygon Point := Polygon.mk ![K₁, K₂, K₃, K₄, K₅, K₆, K₇]

def areaOfCentroidPolygon : ℝ := centroidPolygon.area

theorem findAreaProblem : ∃ areaValue : ℝ, areaValue = areaOfCentroidPolygon ∧ areaValue > 0 :=
  by sorry

end OctagonCentroidProblem