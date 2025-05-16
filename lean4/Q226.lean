import Mathlib.Data.Real.Basic




def ellipseProp (x y : ℝ) : Prop :=
  x^2 / (81 : ℝ) + y^2 / (9 : ℝ) = (1 : ℝ)


theorem ellipse_equation_is_determined (C : ℝ → ℝ → Prop) :
    (∀ x y, C x y ↔ ellipseProp x y) ↔
    (∀ x y, C x y ↔ (x^2 / (81 : ℝ) + y^2 / (9 : ℝ) = (1 : ℝ))) :=
  by
    
    sorry