import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic


namespace HalfCylinderTrough


def troughRadius : Real := 0.92
def troughLength : Real := 2.49


noncomputable def surfaceArea (r l : Real) : Real :=
  (Real.pi * r * l) + (2 * r * l) + (Real.pi * r * r)


noncomputable def specificTroughSurfaceArea : Real :=
  surfaceArea troughRadius troughLength


def targetSurfaceArea : Real := 986


def approximationClaim : Prop :=
  abs (specificTroughSurfaceArea - targetSurfaceArea) < 0.05


def nonNegativeClaim : Prop :=
  specificTroughSurfaceArea ≥ 0


def overallClaim : Prop :=
  approximationClaim ∧ nonNegativeClaim


theorem surfaceAreaMatchesTarget : overallClaim := by sorry

end HalfCylinderTrough
