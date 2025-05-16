import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Projection
import Mathlib.Data.Real.Basic
import Mathlib.LinearAlgebra.AffineSpace.FiniteDimensional

-- 3D Euclidean space abbreviation
abbrev P₃ := EuclideanSpace ℝ (Fin 3)

/-- 
Two spheres with centers `c1` and `c2` and radii `r1` and `r2` are externally tangent 
if and only if their centers are distance r1 + r2 apart. 
-/
def SpheresExternallyTangent (c1 c2 : P₃) (r1 r2 : ℝ) : Prop :=
  dist c1 c2 = r1 + r2

/-- 
A sphere (center c, radius r) is tangent to a plane pl iff the distance from the center 
to the plane equals r. 
-/
def SphereTangentToPlane (c : P₃) (r : ℝ) (pl : AffineSubspace ℝ P₃) : Prop :=
  AffineSubspace.dist_pt_affineSubspace c pl = r

/--
Structure encoding the configuration of three mutually tangent spheres,
each tangent to two distinct planes.
-/
structure ThreeSpheresTwoPlanesProblem where
  r1 : ℝ
  r2 : ℝ
  r3 : ℝ
  c1 : P₃
  c2 : P₃
  c3 : P₃
  planeP : AffineSubspace ℝ P₃
  planeQ : AffineSubspace ℝ P₃

  -- Radii values:
  h_r1_val : r1 = 36
  h_r2_val : r2 = 36
  h_r3_val : r3 = 13
  -- Radii are positive:
  h_r_pos : r1 > 0 ∧ r2 > 0 ∧ r3 > 0 := by
    simp [h_r1_val, h_r2_val, h_r3_val]; norm_num

  -- Both planes are 2-dimensional (planes):
  h_planeP_dim : FiniteDimensional.finrank ℝ (AffineSubspace.direction planeP) = 2
  h_planeQ_dim : FiniteDimensional.finrank ℝ (AffineSubspace.direction planeQ) = 2
  h_planes_distinct : planeP ≠ planeQ

  -- Each pair of spheres are externally tangent:
  h_s1_s2_tangent : SpheresExternallyTangent c1 c2 r1 r2
  h_s1_s3_tangent : SpheresExternallyTangent c1 c3 r1 r3
  h_s2_s3_tangent : SpheresExternallyTangent c2 c3 r2 r3

  -- Each sphere is tangent to both planes:
  h_s1_tangent_P : SphereTangentToPlane c1 r1 planeP
  h_s1_tangent_Q : SphereTangentToPlane c1 r1 planeQ
  h_s2_tangent_P : SphereTangentToPlane c2 r2 planeP
  h_s2_tangent_Q : SphereTangentToPlane c2 r2 planeQ
  h_s3_tangent_P : SphereTangentToPlane c3 r3 planeP
  h_s3_tangent_Q : SphereTangentToPlane c3 r3 planeQ

namespace ThreeSpheresTwoPlanesProblem

  /-- 
  The intersection line ℓ of planeP and planeQ.
  -/
  def lineL (problem : ThreeSpheresTwoPlanesProblem) : AffineSubspace ℝ P₃ :=
    problem.planeP ⊓ problem.planeQ

  /--
  The point where sphere S3 (center c3, radius r3) is tangent to planeP:
  the orthogonal projection of c3 onto planeP.
  -/
  noncomputable def tangentPointS3P (problem : ThreeSpheresTwoPlanesProblem) : P₃ :=
    orthogonalProjection problem.planeP problem.c3

  /-- 
  The distance from line ℓ to the tangency point of sphere S3 with planeP.
  -/
  noncomputable def distanceTangentPointToLine (problem : ThreeSpheresTwoPlanesProblem) : ℝ :=
    AffineSubspace.dist_pt_affineSubspace (tangentPointS3P problem) (lineL problem)

end ThreeSpheresTwoPlanesProblem

/--
Two natural numbers m and n are coprime iff their only positive common divisor is 1.
-/
def AreCoprime (m n : ℕ) : Prop := ∀ k : ℕ, k > 0 → k ∣ m → k ∣ n → k = 1

/--
Formal statement of the existence of such a geometric configuration,
and the distance from ℓ to T is m/n in lowest terms.
-/
structure ProblemFormalization where
  config : ThreeSpheresTwoPlanesProblem
  m : ℕ
  n : ℕ
  h_m_pos : m > 0
  h_n_pos : n > 0
  h_coprime : AreCoprime m n
  h_distance_eq_m_div_n : 
    ThreeSpheresTwoPlanesProblem.distanceTangentPointToLine config = (m : ℝ) / (n : ℝ)

/--
Axiom: such a configuration and coprime m,n exist for the problem.
-/
axiom problem_existence : Nonempty ProblemFormalization

/--
The value to be determined by the problem: m + n.
-/
def resultValue (problem : ProblemFormalization) : ℕ := problem.m + problem.n

-- Example theorem statement (not required, just for context):
-- theorem final_answer : ∀ (p : ProblemFormalization), resultValue p = 335 := by sorry