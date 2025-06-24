import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
namespace PyramidOnCubeFaceVolume
abbrev Point3D := EuclideanSpace ℝ (Fin 3)
def cubeSideLength : ℝ := 2
def pyramidBaseArea (sideLength : ℝ) : ℝ := sideLength * sideLength
noncomputable def cubeCenter (sideLength : ℝ) : Point3D :=
  ![sideLength / 2, sideLength / 2, sideLength / 2]
noncomputable def pyramidApex (sideLength : ℝ) : Point3D := cubeCenter sideLength
noncomputable def pyramidHeight (sideLength : ℝ) : ℝ := sideLength / 2
noncomputable def pyramidVolume (baseArea : ℝ) (height : ℝ) : ℝ := (1 / 3) * baseArea * height
theorem volume_of_pyramid_equals_four_thirds :
  pyramidVolume (pyramidBaseArea cubeSideLength) (pyramidHeight cubeSideLength) = 4 / 3 :=
by sorry
end PyramidOnCubeFaceVolume
