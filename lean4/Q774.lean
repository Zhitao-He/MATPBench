import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Analysis.Convex.Between
import Mathlib.Data.Real.Basic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Geometry.Euclidean.Angle.Unoriented.Affine
abbrev Plane := EuclideanSpace ℝ (Fin 2)
variable (P Q R S T : Plane)
axiom qp_length : dist Q P = 24
axiom rt_length : dist R T = 16
axiom st_length : dist S T = 9
axiom pst_collinear : Collinear ℝ ({P, S, T} : Set Plane)
axiom qsr_collinear : Collinear ℝ ({Q, S, R} : Set Plane)
axiom s_between_p_t : Sbtw ℝ P S T
axiom s_between_q_r : Sbtw ℝ Q S R
axiom pq_parallel_tr : (affineSpan ℝ ({P, Q} : Set Plane)).Parallel (affineSpan ℝ ({T, R} : Set Plane))
theorem find_ps_length (P Q R S T : Plane)
  (qp_length : dist Q P = 24) (rt_length : dist R T = 16) (st_length : dist S T = 9)
  (pst_collinear : Collinear ℝ ({P, S, T} : Set Plane)) (qsr_collinear : Collinear ℝ ({Q, S, R} : Set Plane))
  (s_between_p_t : Sbtw ℝ P S T) (s_between_q_r : Sbtw ℝ Q S R)
  (pq_parallel_tr : (affineSpan ℝ ({P, Q} : Set Plane)).Parallel (affineSpan ℝ ({T, R} : Set Plane))) :
  dist P S = 27 / (2 : ℝ) := by
  sorry
