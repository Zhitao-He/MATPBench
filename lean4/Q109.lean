import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Geometry.Euclidean.Basic

-- Use EuclideanSpace for 2D points
abbrev Point : Type := EuclideanSpace ℝ (Fin 2)

-- Structure encoding the problem data and geometric setup
structure HexagonProblemSetup where
  -- Rectangle width, variable, positive
  a : ℝ
  h_a_pos : 0 < a

  -- Rectangle length, fixed, hinges at both ends and at midpoints
  rectSideLong : ℝ := 36

  -- Area of original rectangle
  rectangleArea : ℝ := a * rectSideLong

  -- Desired distance between parallel sides after folding
  hexParallelSidesDistance : ℝ := 24

  -- Each bent segment after hinge: half the long side
  hexBentSegmentLen : ℝ := rectSideLong / 2
  
  -- Intermediate calculation: vertical pos. of parallel sides (centered at origin for symmetry)
  yCoordAbs : ℝ := hexParallelSidesDistance / 2

  -- Condition to ensure Real.sqrt argument is nonnegative
  sqrtArgNonneg : hexBentSegmentLen ^ 2 - yCoordAbs ^ 2 ≥ 0 := by
    -- 18^2 - 12^2 = 324 - 144 = 180 ≥ 0
    norm_num

  -- Horizontal projection from the hinged side
  triangleHorProj : ℝ := Real.sqrt (hexBentSegmentLen ^ 2 - yCoordAbs ^ 2)

  -- The ordered vertices of the hexagon (centered at origin)
  v1 : Point := ![-(a / 2), yCoordAbs]
  v2 : Point := ![a / 2, yCoordAbs]
  v3 : Point := ![a / 2 + triangleHorProj, 0]
  v4 : Point := ![a / 2, -yCoordAbs]
  v5 : Point := ![-(a / 2), -yCoordAbs]
  v6 : Point := ![-(a / 2) - triangleHorProj, 0]

  hexagonVertices : List Point := [v1, v2, v3, v4, v5, v6]

  -- Area: rectangle (width a, height D) + two triangles of base D, height = triangleHorProj
  hexagonArea : ℝ :=
    let areaCentralRect := a * hexParallelSidesDistance
    let areaTwoTriangles := hexParallelSidesDistance * triangleHorProj
    areaCentralRect + areaTwoTriangles

  -- The given: areas equal
  areasEqual : hexagonArea = rectangleArea

-- Main theorem: find a^2 in terms of setup
theorem find_a_squared (config : HexagonProblemSetup) : config.a ^ 2 = 720 := by sorry