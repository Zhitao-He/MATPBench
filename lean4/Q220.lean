import Mathlib.Data.Real.Basic

namespace FarmerFence


def lengthAB : ℝ := 5
def lengthBC : ℝ := 2
def lengthCD : ℝ := 3
def lengthDE : ℝ := 2
def lengthEF : ℝ := 4
def lengthFG : ℝ := 3
def lengthGA : ℝ := 2 


def perimeter : ℝ :=
  lengthAB + lengthBC + lengthCD + lengthDE + lengthEF + lengthFG + lengthGA


def pricePerMetre : ℝ := 37


def calculateTotalCost (p : ℝ) (costPerMetre : ℝ) : ℝ :=
  p * costPerMetre


theorem totalCostIs777 : calculateTotalCost perimeter pricePerMetre = 777 := by
  sorry 

end FarmerFence