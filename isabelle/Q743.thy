theory TriangleTanMeasure
imports Complex_Main HOL.Real
begin
lemma triangle_CAB_tan_measure:
  fixes a b c :: real
  assumes "a > 0" and "b > 0" and "c > 0"
  assumes "a = 14" and "b = 48" and "c = 50"
  assumes "a^2 + b^2 = c^2" (* BC perpendicular to AC implies Pythagorean theorem *)
  shows "tan(angle C A B) = 7/24"
proof -
  (* Define the points in Cartesian coordinates *)
  let ?A = "(b, 0)"
  let ?B = "(0, a)"
  let ?C = "(0, 0)"
  (* The angle CAB can be computed using arctangent of the ratio of sides *)
  have "tan(angle C A B) = a/b"
    by (simp add: assms)
  then have "tan(angle C A B) = 14/48"
    by (simp add: assms)
  then have "tan(angle C A B) = 7/24"
    by simp
  thus ?thesis by simp
qed