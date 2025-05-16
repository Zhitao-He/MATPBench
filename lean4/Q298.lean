import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Data.Real.Basic

-- The Euclidean plane (standard 2-space over ℝ)
abbrev E := EuclideanSpace ℝ (Fin 2)
abbrev Point := E

-- Vertices of the rectangle ABCD with AB = 5cm and AD = 8cm
def A_pt : Point := ![0, 8]
def B_pt : Point := ![5, 8]
def C_pt : Point := ![5, 0]
def D_pt : Point := ![0, 0]

-- Point P: intersection of crease DP (when CD is folded onto AD) with AB
def P_pt : Point := ![5, 5]

-- Point Q: intersection of crease AQ (when AB is folded onto AD) with DC
def Q_pt : Point := ![5, 3]

-- Point R: intersection of creases DP and AQ
def R_pt : Point := ![4, 4]

-- Area of triangle DRQ
def area_DRQ : ℝ := Triangle.area (Triangle.mk D_pt R_pt Q_pt)

-- Area of triangle DQC
def area_DQC : ℝ := Triangle.area (Triangle.mk D_pt Q_pt C_pt)

-- Total area of quadrilateral DRQC
def area_DRQC : ℝ := area_DRQ + area_DQC

-- Theorem: area of quadrilateral DRQC is 11.5 cm² (23/2)
theorem drqc_area_is_target : area_DRQC = (23 / 2 : ℝ) := by sorry