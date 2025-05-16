import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Basic -- Used for the reasoning about angles
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic -- For Real.pi
import Mathlib.Data.Real.Basic

noncomputable section

-- Define EucPlane as an alias for the 2-dimensional Euclidean space.
-- Points in the problem are elements of this type.
abbrev EucPlane := EuclideanSpace ℝ (Fin 2)

-- Section to bundle all definitions and hypotheses for this specific problem.
section ProblemSetup

  -- Declare the points involved in the problem.
  variable (A B C D O E : EucPlane)

  -- Hypotheses based on the problem's natural language description.
  -- These are the given lengths of the sides of the quadrilateral ACDB (vertices in order A, C, D, B).
  variable (h_AC_length : dist A C = 14)
  variable (h_CD_length : dist C D = 22)
  variable (h_DB_length : dist D B = 14) -- Length of side DB
  variable (h_BA_length : dist B A = 22) -- Length of side BA (same as AB)

  -- O is the center of a circle for which AC is a diameter.
  -- This implies O is the midpoint of the segment AC.
  variable (h_O_midpoint_AC : O = midpoint ℝ A C)

  -- E is the center of a circle for which BD is a diameter.
  -- This implies E is the midpoint of the segment BD.
  variable (h_E_midpoint_BD : E = midpoint ℝ B D)

  -- The segment OC is perpendicular to the segment DC.
  -- This is expressed as the dot product of vectors C-O and D-C being zero.
  -- Vector OC is C-O. Vector DC is D-C.
  variable (h_OC_perp_DC : inner (C - O) (D - C) = 0)


  -- Definitions of geometric quantities based on the problem statement.

  -- The radius of the circle centered at O, with AC as diameter.
  -- This uses the variable `A` and `C` which are in scope.
  def r_O : ℝ := (dist A C) / 2

  -- The radius of the circle centered at E, with BD as diameter.
  -- This uses the variable `D` and `B` which are in scope.
  def r_E : ℝ := (dist D B) / 2
    -- Note: dist D B is used, which is equal to dist B D.

  -- The area of the quadrilateral ACDB.
  -- Reasoning underpinning this definition:
  -- 1. The given side lengths (AC=DB, CD=BA) imply ACDB is a parallelogram,
  --    as pairs of opposite sides are equal in length.
  -- 2. O being the midpoint of AC (from `h_O_midpoint_AC`), means vector OC = (C-A)/2.
  --    The condition OC ⊥ DC (`h_OC_perp_DC`) then implies (C-A)/2 ⊥ (D-C),
  --    which means segment AC is perpendicular to segment CD (i.e., ∠ACD is a right angle).
  -- 3. A parallelogram (ACDB) with a right angle between adjacent sides (AC and CD) is a rectangle.
  -- The area of this rectangle is the product of the lengths of these adjacent sides, AC and CD.
  -- This uses variables `A`, `C`, `D` which are in scope.
  def areaQuadrilateralACDB : ℝ := (dist A C) * (dist C D)

  -- Generic definition for the area of a circular sector.
  -- radius: the radius of the circle.
  -- central_angle_rad: the central angle of the sector, in radians.
  def areaCircularSector (radius : ℝ) (central_angle_rad : ℝ) : ℝ :=
    (1 / 2) * radius ^ 2 * central_angle_rad

  -- The area of sector OCA.
  -- Center: O. Radius: r_O (defined above).
  -- Since O is the midpoint of diameter AC (`h_O_midpoint_AC`), points A, O, C are collinear
  -- with O positioned between A and C.
  -- Therefore, the central angle ∠AOC is π radians (a straight angle, forming a semicircle).
  def areaSectorOCA : ℝ := areaCircularSector r_O Real.pi

  -- The area of sector EBD.
  -- Center: E. Radius: r_E (defined above).
  -- Since E is the midpoint of diameter BD (`h_E_midpoint_BD`), points B, E, D are collinear
  -- with E positioned between B and D.
  -- Therefore, the central angle ∠BED is π radians (a straight angle, forming a semicircle).
  def areaSectorEBD : ℝ := areaCircularSector r_E Real.pi

  -- The problem asks for the value of:
  -- Area(Quadrilateral ACDB) - (Area(Sector OCA) + Area(Sector EBD)).
  -- The following theorem states that this value is 308 - 49π.
  -- All definitions (areaQuadrilateralACDB, areaSectorOCA, areaSectorEBD) implicitly use
  -- the points and hypotheses declared in the `ProblemSetup` section.
  theorem final_statement :
    areaQuadrilateralACDB - (areaSectorOCA + areaSectorEBD) = 308 - 49 * Real.pi :=
  by sorry -- The proof of this statement is omitted as per the requirement.

end ProblemSetup

end noncomputable