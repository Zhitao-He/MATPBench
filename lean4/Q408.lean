import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Geometry.Euclidean.Incenter
import Mathlib.Data.Real.Basic

noncomputable section

open scoped Real EuclideanGeometry

/-- The incenter of triangle ABC. -/
def incenter (A B C : PPoint ℝ) : PPoint ℝ :=
  Triangle.incenter A B C

/-- The point where the incircle touches side BC. -/
def tangentPointD (A B C : PPoint ℝ) : PPoint ℝ :=
  Triangle.tangentPointIncircle₃ A B C

/-- The point where the incircle touches side AC. -/
def tangentPointE (A B C : PPoint ℝ) : PPoint ℝ :=
  Triangle.tangentPointIncircle₁ A B C

/-- The point where the incircle touches side AB. -/
def tangentPointF (A B C : PPoint ℝ) : PPoint ℝ :=
  Triangle.tangentPointIncircle₂ A B C

/-- The area of quadrilateral AEIF. -/
def areaAEIF (A B C : PPoint ℝ) (h : ¬ Collinear ℝ A B C) : ℝ :=
  let s := Triangle.semiperimeter A B C
  let r := Triangle.inradius A B C h
  (s - dist B C) * r

theorem problem_find_area_AEIF
    (A B C : PPoint ℝ)
    (h_noncollinear : ¬ Collinear ℝ A B C)
    (hAB : dist A B = 13)
    (hAC : dist A C = 15)
    (hBC : dist B C = 14) :
    areaAEIF A B C h_noncollinear = 28 :=
  by sorry