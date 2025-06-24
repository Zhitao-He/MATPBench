import Mathlib.Data.Real.Basic
noncomputable def ringThickness : ℝ := 1.0
noncomputable def topRingOutsideDiameter : ℝ := 20.0
noncomputable def outsideDiameterDecrement : ℝ := 1.0
noncomputable def bottomRingOutsideDiameter : ℝ := 3.0
noncomputable def numberOfRings_real : ℝ :=
  (topRingOutsideDiameter - bottomRingOutsideDiameter) / outsideDiameterDecrement + 1.0
noncomputable def numberOfRings : Nat := 18
noncomputable def totalVerticalDistance : ℝ :=
  (numberOfRings : ℝ) * ringThickness
structure MyRing where
  outsideDiameter : ℝ
  thickness : ℝ := ringThickness
noncomputable def getRing (k : Nat) : MyRing :=
  if k = 0 then { outsideDiameter := 0 }
  else
    let od_k : ℝ := topRingOutsideDiameter - ((k - 1 : Nat) : ℝ) * outsideDiameterDecrement
    { outsideDiameter := od_k }
