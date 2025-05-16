import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic

variable {P : Type*} [MetricSpace P] [NormedAddTorsor ℝ P]
variable (A B C D E F : P)

-- Helper: degrees to radians
noncomputable def degreesToRadians (d : ℝ) : ℝ := d * (Real.pi / 180)

-- Assumptions from the diagram and problem statement
variable (hAngleEDF : (∠ E D F).value = degreesToRadians 39)
variable (hAngleFBA : (∠ F B A).value = degreesToRadians 48)
variable (hFcParallelEd : line[ℝ, F, C] ∥ line[ℝ, E, D])
variable (hAfPerpBf : (∠ A F B).value = degreesToRadians 90)
variable (hDcPerpFc : (∠ D C F).value = degreesToRadians 90)
variable (hFePerpDe : (∠ F E D).value = degreesToRadians 90)

-- The result to prove: measure of ∠FDC is 51°
theorem measureOfAngleFDC : (∠ F D C).value = degreesToRadians 51 := by sorry