import Mathlib.Data.Real.Basic
theorem compositeSolidVolume_eq_720 :
  let L : ℝ := 15
  let W : ℝ := 9
  let H : ℝ := 8
  let prismVol : ℝ := L * W * H
  let pyramidVol : ℝ := (1 / 3 : ℝ) * L * W * H
  let compositeVol : ℝ := prismVol - pyramidVol
  compositeVol = 720 :=
by
  sorry