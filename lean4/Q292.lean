import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace GreetingCardProblem
def cardWidth : ℝ := 6      
def cardHeight : ℝ := 8     
def radiusA : ℝ := 3        
def radiusB : ℝ := cardWidth 
noncomputable def openingAngleRad : ℝ := Real.pi / 4
theorem travelDifferenceValue :
    (radiusB - radiusA) * openingAngleRad = (3 / 4 : ℝ) * Real.pi :=
  by sorry
end GreetingCardProblem
