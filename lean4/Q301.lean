import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Simplex
import Mathlib.Data.Real.Basic
import Mathlib.Data.Matrix.Notation

/-!
  Problem:
  Five points A, B, C, D, and O lie on a flat field. 
  A is directly north of O, B is directly west of O, C is directly south of O,
  and D is directly east of O. 
  The distance between C and D is 140 m. 
  A hot-air balloon H is positioned directly above O at some height.
  HC = 150, HD = 130.
  Replace HC and HD by a rope HP to a point P on CD (the segment joining C and D).
  What is the greatest rope length saved? (Answer is 160.)
-/

-- Define Euclidean 3-space
abbrev E := EuclideanSpace ℝ (Fin 3)

-- Define the (fixed) coordinates of the points
def O_pt : E := ![0, 0, 0]
def A_pt (a : ℝ) : E := ![0, a, 0]
def B_pt (b : ℝ) : E := ![-b, 0, 0]
def C_pt (c : ℝ) : E := ![0, -c, 0]
def D_pt (d : ℝ) : E := ![d, 0, 0]

-- H is above O at height h
def H_pt (h : ℝ) : E := ![0, 0, h]

namespace problem

variable {a b c d h : ℝ}
variable (hc_len : ℝ := 150) -- |HC| = 150
variable (hd_len : ℝ := 130) -- |HD| = 130

-- Hypotheses about positions
variable
  (h_pos : h > 0) 
  (c_pos : c > 0)
  (d_pos : d > 0)
  (cd_def : Real.sqrt (d ^ 2 + c ^ 2) = 140)
  (hc_def : Real.sqrt (c ^ 2 + h ^ 2) = hc_len)
  (hd_def : Real.sqrt (d ^ 2 + h ^ 2) = hd_len)

-- The segment [C D] as a set
def segment_CD : Set E := segment ℝ (C_pt c) (D_pt d)

-- For t in [0, 1], a generic point P on [C, D]
def P_pt (t : ℝ) : E := (1 - t) • C_pt c + t • D_pt d

-- The length of rope from H to P:
def rope_HP (t : ℝ) : ℝ := dist (H_pt h) (P_pt t)

-- The total length of HC + HD
def initial_rope : ℝ := hc_len + hd_len

-- The saving for given P is initial_rope - rope_HP (t)
def rope_saving (t : ℝ) : ℝ := initial_rope - rope_HP t

-- The maximal rope saving as we minimize |HP| along CD:
def max_rope_saving : ℝ := initial_rope - sInf (Set.range (rope_HP))

-- The problem's final answer:
theorem greatest_rope_saving_is_160 :
  max_rope_saving = 160 := by
  sorry

end problem