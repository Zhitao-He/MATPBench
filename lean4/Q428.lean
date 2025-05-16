import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic


abbrev P₂ := EuclideanSpace ℝ (Fin 2)


variable (P Q R S : P₂)


variable (rP rQ rR rS : ℝ)


variable (lineAB lineBC lineAC : AffineSubspace ℝ P₂)


def new_radii_conditions : Prop :=
  rP = 1 ∧ rQ = 1 ∧ rS = 1 ∧ rR > 0


def PQS_mutual_tangency : Prop :=
  dist P Q = rP + rQ ∧
  dist P S = rP + rS ∧
  dist Q S = rQ + rS


def R_tangent_to_PQS : Prop :=
  dist R P = rR + rP ∧
  dist R Q = rR + rQ ∧
  dist R S = rR + rS


def four_circles_mutually_tangent : Prop :=
  PQS_mutual_tangency P Q S rP rQ rS ∧
  R_tangent_to_PQS P Q R S rP rQ rR rS


axiom dist_point_line_exists : P₂ → AffineSubspace ℝ P₂ → ℝ

def tangent_to_line (point_center : P₂) (radius_val : ℝ) (line : AffineSubspace ℝ P₂) : Prop :=
  dist_point_line_exists point_center line = radius_val


def R_tangent_to_BC : Prop :=
  tangent_to_line R rR lineBC

def P_tangent_to_AB_AC : Prop :=
  tangent_to_line P rP lineAB ∧
  tangent_to_line P rP lineAC

def Q_tangent_to_AB_BC : Prop :=
  tangent_to_line Q rQ lineAB ∧
  tangent_to_line Q rQ lineBC

def S_tangent_to_AC_BC : Prop :=
  tangent_to_line S rS lineAC ∧
  tangent_to_line S rS lineBC

structure ProblemConfiguration where
  P_center : P₂
  Q_center : P₂
  R_center : P₂
  S_center : P₂
  p_radius : ℝ
  q_radius : ℝ
  r_radius : ℝ
  s_radius : ℝ
  AB_line : AffineSubspace ℝ P₂
  BC_line : AffineSubspace ℝ P₂
  AC_line : AffineSubspace ℝ P₂

  h_radii : new_radii_conditions p_radius q_radius r_radius s_radius
  h_mutual_tangency : four_circles_mutually_tangent P_center Q_center R_center S_center p_radius q_radius r_radius s_radius
  h_R_BC : R_tangent_to_BC R_center r_radius BC_line
  h_P_AB_AC : P_tangent_to_AB_AC P_center p_radius AB_line AC_line
  h_Q_AB_BC : Q_tangent_to_AB_BC Q_center q_radius AB_line BC_line
  h_S_AC_BC : S_tangent_to_AC_BC S_center s_radius AC_line BC_line

theorem new_radius_value : ∃ cfg : ProblemConfiguration, cfg.r_radius = (2 * Real.sqrt 3 - 3) / 3 := by sorry

def a : ℤ := -3
def b : ℤ := 12
def c : ℤ := 3

theorem rR_form_correct : rR = (a + Real.sqrt (b : ℝ)) / c := by sorry

theorem sum_a_b_c : a + b + c = 12 := by sorry