import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic
import Mathlib.Geometry.Euclidean.Sphere.Basic

noncomputable section ProblemGeometry

open EuclideanGeometry

-- We work in a real Euclidean plane
variable {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
variable {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
-- Specify that V is 2-dimensional
variable (dimVEq2 : FiniteDimensional.finrank ℝ V = 2)

-- Points in the configuration
variable (O PPt C D E A B F G : P)
-- circle center O, radius r > 0
variable (r : ℝ) (hrPos : 0 < r)

-- C, D on circle O, and CD is diameter (so O is midpoint of CD, C ≠ D)
variable (hCOnCircle : C ∈ Metric.sphere O r)
variable (hDOnCircle : D ∈ Metric.sphere O r)
variable (hOMidpointCD : O = midpoint ℝ C D)
variable (hCNeD : C ≠ D)

-- E is also on the circle
variable (hEOnCircle : E ∈ Metric.sphere O r)

-- PC and PE tangent to the circle at C, E respectively
variable (hPPtNeC : PPt ≠ C)
variable (hPPtNeE : PPt ≠ E)
variable (hPCTangent : Angle PPt C O = Real.pi / 2)
variable (hPETangent : Angle PPt E O = Real.pi / 2)

-- Secant PBA through A, B (A, B ∈ circle O), A ≠ B, P, B, A collinear
variable (hAOnCircle : A ∈ Metric.sphere O r)
variable (hBOnCircle : B ∈ Metric.sphere O r)
variable (hPBACollinear : Collinear ℝ PPt B A)
variable (hANeB : A ≠ B)
-- P is outside the circle
variable (hPPtOutsideCircle : dist PPt O > r)

-- F = AC ∩ BD (F collinear with both AC and BD), A ≠ C, B ≠ D
variable (hFOnLineAC : Collinear ℝ A F C)
variable (hFOnLineBD : Collinear ℝ B F D)
variable (hANeC : A ≠ C)
variable (hBNeD : B ≠ D)

-- G = DE ∩ AB
variable (hGOnLineDE : Collinear ℝ D G E)
variable (hGOnLineAB : Collinear ℝ A G B)
variable (hDNeE : D ≠ E)

-- Angle G F E and angle A D E are well-defined (and non-degenerate: points not coincident)
variable (hGNeF : G ≠ F)
variable (hFNeE : F ≠ E)
variable (hANeD : A ≠ D)

-- The main statement: ∠GFE = ∠ADE
theorem angleGFEEqAngleADE : Angle G F E = Angle A D E := by
  sorry

end ProblemGeometry