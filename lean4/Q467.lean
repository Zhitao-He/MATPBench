import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
namespace CircleProblemSetup

abbrev Point := EuclideanSpace ℝ (Fin 2)


def side : ℝ := 2



def A : Point := ![0, side]
def B : Point := ![side, side]
def C : Point := ![side, 0]
def D : Point := ![0, 0]


def squareABCD_region : Set Point :=
  {p : Point | 0 ≤ p 0 ∧ p 0 ≤ side ∧ 0 ≤ p 1 ∧ p 1 ≤ side}


def semicircleAB_region : Set Point :=
  let center : Point := ![side/2, side]
  let radius := side/2
  {p : Point | (p 0 - center 0)^2 + (p 1 - center 1)^2 ≤ radius^2 ∧ p 1 ≤ side}


def semicircleAD_region : Set Point :=
  let center : Point := ![0, side/2]
  let radius := side/2
  {p : Point | (p 0 - center 0)^2 + (p 1 - center 1)^2 ≤ radius^2 ∧ p 0 ≥ 0}


def shaded_region : Set Point :=
  squareABCD_region \ (semicircleAB_region ∪ semicircleAD_region)


def areaOfSquare (s : ℝ) : ℝ := s * s
noncomputable def areaOfSemicircle (radius : ℝ) : ℝ := Real.pi * radius * radius / 2


theorem shaded_region_area_is_8 :
    let squareArea := areaOfSquare side
    let semicircleArea := areaOfSemicircle (side/2)
    squareArea - 2 * semicircleArea = 8 := by sorry
