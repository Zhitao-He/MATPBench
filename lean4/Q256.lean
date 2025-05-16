import Mathlib.Data.Real.Basic

namespace CompositeSolidSurfaceArea

-- Dimensions of the boxes and cylinder.
def boxLength : ℝ := 33
def boxWidth  : ℝ := 25
def boxHeight : ℝ := 20

def cylinderRadius : ℝ := 6
def cylinderHeight : ℝ := 11

/-- Surface area of a rectangular prism (box). -/
def boxSurfaceArea (l w h : ℝ) : ℝ := 2*(l*w + l*h + w*h)

/-- Area of a circle (for cylinder base). -/
def circleArea (r : ℝ) : ℝ := Real.pi * r^2

/-- Lateral surface area of a cylinder (excluding the bases). -/
def cylinderLateralSurfaceArea (r h : ℝ) : ℝ := 2 * Real.pi * r * h

/--
The solid consists of two identical boxes joined by a cylinder.
The connecting cylinder "removes" a circle from each box and exposes its lateral surface.
-/
def surfaceAreaOfOneBox : ℝ := boxSurfaceArea boxLength boxWidth boxHeight
def areaOfCylinderBase : ℝ := circleArea cylinderRadius
def lateralSurfaceAreaOfCylinder : ℝ := cylinderLateralSurfaceArea cylinderRadius cylinderHeight

/--
Total external surface area of the composite solid:
- area from two boxes,
- subtract two cylinder base areas (the joins),
- add lateral (side) surface area of the cylinder.
-/
def totalSurfaceArea : ℝ :=
  2 * surfaceAreaOfOneBox
  - 2 * areaOfCylinderBase
  + lateralSurfaceAreaOfCylinder

/--
Round a real number to two decimal places.
We use standard rounding: multiply by 100, add 0.5, take the floor, then divide by 100.
-/
def roundToTwoDecimal (x : ℝ) : ℝ :=
  (↑(Real.floor (x * 100 + 0.5)) : ℝ) / 100

/-- Given target value from the original (incorrect) natural language statement. -/
def targetRoundedValue : ℝ := 8128.50

/--
Formalized version of the problem statement:

"Round your answer to two decimal places is Surface Area = 812850 units^2."

Note: Given the provided dimensions, the actual (rounded) surface area is approximately 8128.50,
NOT 812850.00. We formalize the corrected claim.
-/
theorem problemStatementAsTheorem :
    roundToTwoDecimal totalSurfaceArea = targetRoundedValue := by sorry

end CompositeSolidSurfaceArea