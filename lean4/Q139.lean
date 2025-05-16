import Mathlib.Data.Real.Basic

-- Areas of the five rectangular regions (in square feet)
def region1Area : ℝ := 4 * 5
def region2Area : ℝ := 7 * 3
def region3Area : ℝ := 6 * 1
def region4Area : ℝ := 2 * 2
def region5Area : ℝ := 5 * 3

def allRegionAreas : List ℝ := [region1Area, region2Area, region3Area, region4Area, region5Area]

-- Costs per square foot for each flower type
def costType1 : ℝ := 1.00  -- Asters
def costType2 : ℝ := 1.50  -- Begonias
def costType3 : ℝ := 2.00  -- Cannas
def costType4 : ℝ := 2.50  -- Dahlias
def costType5 : ℝ := 3.00  -- Easter lilies

def allFlowerCosts : List ℝ := [costType1, costType2, costType3, costType4, costType5]

-- To minimize total cost, assign smallest area to highest cost, etc. (Rearrangement inequality)
def sortedRegionAreas : List ℝ := List.sort (· ≤ ·) allRegionAreas
def sortedFlowerCostsDescending : List ℝ := List.sort (· ≥ ·) allFlowerCosts

def calculateTotalCost (areas : List ℝ) (costs : List ℝ) : ℝ :=
  (List.zipWith (·*·) areas costs).sum

def leastPossibleGardenCost : ℝ := calculateTotalCost sortedRegionAreas sortedFlowerCostsDescending

theorem leastCostIs108 : leastPossibleGardenCost = 108.0 := by sorry