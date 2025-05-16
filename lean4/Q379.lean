import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
abbrev E := EuclideanSpace ℝ (Fin 2)

def A_point : EuclideanSpace ℝ (Fin 2) :=
  fun i => match i with
    | 0 => (0 : ℝ)
    | 1 => (0 : ℝ)

def B_point : EuclideanSpace ℝ (Fin 2) :=
  fun i => match i with
    | 0 => (8 : ℝ)
    | 1 => (0 : ℝ)

def C_point : EuclideanSpace ℝ (Fin 2) :=
  fun i => match i with
    | 0 => (8 : ℝ)
    | 1 => (18 : ℝ)

def D_point : EuclideanSpace ℝ (Fin 2) :=
  fun i => match i with
    | 0 => (2 : ℝ)
    | 1 => (30 : ℝ)

def E_point : EuclideanSpace ℝ (Fin 2) :=
  fun i => match i with
    | 0 => (0 : ℝ)
    | 1 => (12 : ℝ)


def pentagonVertices : List (EuclideanSpace ℝ (Fin 2)) :=
  [A_point, B_point, C_point, D_point, E_point]


noncomputable def polygonArea (vertices : List (EuclideanSpace ℝ (Fin 2))) : ℝ :=
  let n := vertices.length
  if n < 3 then
    (0 : ℝ)
  else
    let sumVal :=
      Id.run do
        let mut s : ℝ := 0
        for i in [0:n] do
          let p1 := vertices.get! i
          let p2 := vertices.get! ((i + 1) % n)
          s := s + (p1 0 * p2 1 - p2 0 * p1 1)
        return s
    (1/2 : ℝ) * |sumVal|


theorem pentagon_area_is_144 : polygonArea pentagonVertices = (144 : ℝ) := by
  sorry
