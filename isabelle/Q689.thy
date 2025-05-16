theory TriangleProblem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin

(* 三角形TUV，其中TV=TU，∠VTU=74°，求∠TUV *)

locale triangle_problem =
  fixes T U V :: "real^2"
  assumes non_collinear: "~(collinear {T, U, V})"
  and TU_eq_TV: "dist T U = dist T V"
  and angle_VTU: "angle V T U = 74 * pi / 180"

context triangle_problem begin

(* 在等腰三角形中，底边两端的角相等 *)
lemma base_angles_equal:
  "angle T U V = angle T V U"
proof -
  have "dist T U = dist T V" by (rule TU_eq_TV)
  then show ?thesis
    by (simp add: euclidean_geometry.equal_angles_in_isosceles)
qed

(* 三角形内角和为180° *)
lemma triangle_angle_sum:
  "angle V T U + angle T U V + angle T V U = pi"
  by (simp add: euclidean_geometry.triangle_angle_sum non_collinear)

(* 证明∠TUV = 53° *)
theorem angle_TUV_is_53:
  "angle T U V = 53 * pi / 180"
proof -
  have "angle T U V = angle T V U" by (rule base_angles_equal)
  hence "2 * angle T U V + angle V T U = pi" 
    using triangle_angle_sum by simp
  hence "2 * angle T U V = pi - angle V T U" by simp
  hence "2 * angle T U V = pi - 74 * pi / 180" 
    using angle_VTU by simp
  hence "2 * angle T U V = pi * (1 - 74/180)" by (simp add: divide_right_mono)
  hence "2 * angle T U V = pi * 106/180" by simp
  hence "angle T U V = pi * 53/180" by (simp add: divide_right_mono)
  thus "angle T U V = 53 * pi / 180" by (simp add: mult.commute)
qed

end

end