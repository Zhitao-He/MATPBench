import Mathlib.Data.Real.Basic  
import Mathlib.Analysis.SpecialFunctions.Pow.Real

def vSmall : ℝ := 100





theorem cylindricalSheetsVolume :
  ∃ (r h : ℝ), r > 0 ∧ h > 0 ∧ Real.pi * r ^ 2 * h = vSmall ∧
    (
      let r' := 2 * r
      let h' := h
      let vLarge := Real.pi * r' ^ 2 * h'
      vLarge = 400
    )
:= by sorry
