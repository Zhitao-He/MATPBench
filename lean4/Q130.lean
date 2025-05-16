import Mathlib.Data.Real.Basic


namespace RectangleInscribedCircleProblem


def problemRadius : ℝ := 5
def problemRatio : ℝ := 2  
def problemArea : ℝ := 200


def DescribesConfiguration (L W r : ℝ) : Prop :=
  
  L > 0 ∧
  W > 0 ∧
  r > 0 ∧

  
  r = problemRadius ∧

  
  L / W = problemRatio ∧

  
  L * W = problemArea ∧

  
  
  
  
  
  
  W = 2 * r


theorem configuration_exists : ∃ (L W r : ℝ), DescribesConfiguration L W r := by sorry



theorem specific_configuration_is_valid : DescribesConfiguration 20 10 5 := by sorry

end RectangleInscribedCircleProblem