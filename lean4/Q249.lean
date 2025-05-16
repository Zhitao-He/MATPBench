import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic



def R : Real := 6


def r : Real := 3


noncomputable def hemisphereVolume (x : Real) : Real :=
  (2 / 3) * Real.pi * x ^ 3


noncomputable def bigHemisphereVolume : Real := hemisphereVolume R


noncomputable def smallHemisphereVolume : Real := hemisphereVolume r


noncomputable def actualVolumeCm3 : Real := bigHemisphereVolume - smallHemisphereVolume


noncomputable def roundToNDecimalPlaces (r : Real) (n : Nat) : Real :=
  (round (r * (10 : Real)^n)) / (10 : Real)^n


def targetRoundedVolumeCm3 : Real := 50894


theorem volumeMatchesRoundedTarget :
    roundToNDecimalPlaces actualVolumeCm3 2 = targetRoundedVolumeCm3 := by sorry
