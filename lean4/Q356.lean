import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
abbrev P2 := EuclideanSpace ℝ (Fin 2)


def sideOuter : ℝ := 4


def A : P2 := ![0, 0]
def B : P2 := ![sideOuter, 0]
def C : P2 := ![sideOuter, sideOuter]
def D : P2 := ![0, sideOuter]


def areaSquare (s : ℝ) : ℝ := s * s


def areaOuter : ℝ := areaSquare sideOuter


noncomputable def E := midpoint ℝ A B  
noncomputable def F := midpoint ℝ B C  
noncomputable def G := midpoint ℝ C D  
noncomputable def H := midpoint ℝ D A  



noncomputable def sideInner : ℝ := dist E F


noncomputable def areaInner : ℝ := areaSquare sideInner


noncomputable def shadedArea : ℝ := areaOuter - areaInner


theorem shaded_area_is_4 : shadedArea = 4 := by sorry
