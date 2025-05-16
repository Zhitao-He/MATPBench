theory CirclePowerTheorem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
definition on_circle :: "real^2 ⇒ real ⇒ real^2 ⇒ bool" where
  "on_circle O r P ⟷ dist P O = r"
definition collinear :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ bool" where
  "collinear P Q R ⟷ (∃t. Q - P = t • (R - P) ∨ R - P = t • (Q - P))"
theorem circle_power_theorem_example:
  "∃x::real > 0. 
    ∀A B C D E O r.
      on_circle O r A ∧ on_circle O r B ∧ on_circle O r C ∧ on_circle O r D ∧ on_circle O r E ∧
      collinear D E C ∧ collinear A E B ∧
      dist A E = 2 ∧ dist E C = 5 ∧ dist D E = 4 ∧ dist E B = x ⟶
      x = 10"