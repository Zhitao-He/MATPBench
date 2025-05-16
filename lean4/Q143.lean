import Mathlib.Data.Real.Basic

namespace Is173LinkedRings

-- Problem constants (unit: centimeters)
def thickness : ℝ := 1.0
def odTop : ℝ := 20.0
def odBottom : ℝ := 3.0
def diameterDecreaseStep : ℝ := 1.0

-- Number of rings: compute how many steps from odTop to odBottom with 'step', inclusive
def numRings : Nat := (Real.toNat ((odTop - odBottom) / diameterDecreaseStep)) + 1

-- k-th ring's outside diameter (0 ≤ k < numRings)
def outsideDiameterOfRing (k : Nat) : ℝ :=
  odTop - (k : ℝ) * diameterDecreaseStep

-- Distance between centers of ring k and ring k+1
def centerToCenterDist (k : Nat) : ℝ :=
  (outsideDiameterOfRing k / 2) + (outsideDiameterOfRing (k + 1) / 2) - thickness

-- Sum f(i) for i = 0, ..., n-1
def sumNatRange (f : Nat → ℝ) : Nat → ℝ
  | 0     => 0
  | n + 1 => sumNatRange f n + f n

-- Total distance between centers of all successive rings (numRings-1 gaps)
def totalCenterDistances : ℝ :=
  if numRings ≤ 1 then 0
  else sumNatRange centerToCenterDist (numRings - 1)

-- The full height from the very top of the top ring, to the very bottom of the bottom ring
def totalChainHeight : ℝ :=
  if numRings = 0 then 0
  else totalCenterDistances + thickness

end Is173LinkedRings