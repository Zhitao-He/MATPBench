import Mathlib.Data.Real.Basic

namespace ShadedSquareProblem




structure Consecutive (a b c : ℕ) : Prop where
  h₁ : b = a + 1
  h₂ : c = b + 1


def sideOuter (a b : ℕ) : ℝ := (a + b : ℕ)


def areaOuter (a b : ℕ) : ℝ := (sideOuter a b) ^ 2


def sideInner (c : ℕ) : ℝ := (c : ℕ)


def areaInner (c : ℕ) : ℝ := (sideInner c) ^ 2


def areaShaded (a b c : ℕ) : ℝ := areaOuter a b - areaInner c


theorem shaded_area_24
    (a b c : ℕ)
    (H : Consecutive a b c)
    (pythag : (a : ℝ)^2 + (b : ℝ)^2 = (c : ℝ)^2) :
    areaShaded a b c = 24 := by
  sorry

end ShadedSquareProblem