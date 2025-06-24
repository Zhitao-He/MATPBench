import Mathlib.Data.Real.Basic
abbrev Point := ℝ × ℝ
def line1 (p : Point) : Prop := p.2 = -p.1 - 1
def line2 (p : Point) : Prop := p.1 = 2
def line3 (p : Point) : Prop := p.2 = (1/5 : ℝ) * p.1 + (13/5 : ℝ)
def vertA : Point := (2, -3)
noncomputable def vertB : Point := (2, (1/5 : ℝ) * 2 + (13/5 : ℝ)) 
def vertC : Point := (-3, 2)
lemma vertA_on_lines : line1 vertA ∧ line2 vertA := by sorry
lemma vertB_on_lines : line2 vertB ∧ line3 vertB := by sorry
lemma vertC_on_lines : line1 vertC ∧ line3 vertC := by sorry
theorem exists_circle_equation_is_13 :
  ∃ (D E F : ℝ),
    (vertA.1^2 + vertA.2^2 + D * vertA.1 + E * vertA.2 + F = 0) ∧
    (vertB.1^2 + vertB.2^2 + D * vertB.1 + E * vertB.2 + F = 0) ∧
    (vertC.1^2 + vertC.2^2 + D * vertC.1 + E * vertC.2 + F = 0) ∧
    (F = -13) :=
by sorry
def circleEquationFromImage (p : Point) : Prop :=
  p.1 ^ 2 + p.2 ^ 2 + p.1 - p.2 - 5 = 0
lemma imageEquationLHS_at_vertA_evaluates_to_13 :
  vertA.1 ^ 2 + vertA.2 ^ 2 + vertA.1 - vertA.2 - 5 = 13 :=
by sorry
