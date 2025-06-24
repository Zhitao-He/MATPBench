theory Triangle_APC_Area
  imports Complex_Main
begin
type_synonym point = "real × real"
definition A :: point where "A = (0, 6)"
definition B :: point where "B = (0, 0)"
definition C :: point where "C = (8, 0)"
definition M :: point where "M = ((fst A + fst B) / 2, (snd A + snd B) / 2)"
definition N :: point where "N = ((fst B + fst C) / 2, (snd B + snd C) / 2)"
fun det :: "point ⇒ point ⇒ real" where
  "det (x1, y1) (x2, y2) = x1 * y2 - y1 * x2"
definition P :: point where
  "P = (
    let
      a1 = fst A; a2 = snd A;
      m1 = fst M; m2 = snd M;
      c1 = fst C; c2 = snd C;
      n1 = fst N; n2 = snd N;
      -- direction vectors
      dAM = (m1 - a1, m2 - a2);
      dCN = (n1 - c1, n2 - c2);
      -- solve: A + s*(M-A) = C + t*(N-C)
      -- i.e., (a1 + s*(m1-a1), a2 + s*(m2-a2)) = (c1 + t*(n1-c1), c2 + t*(n2-c2))
      -- two equations in s and t
      -- We solve for s:
      denom = dAM\<^sub>1 * (-dCN\<^sub>2) + dAM\<^sub>2 * dCN\<^sub>1;
      s = ((c1 - a1) * (-dCN\<^sub>2) + (c2 - a2) * dCN\<^sub>1) / denom
    in
      (a1 + s * dAM\<^sub>1, a2 + s * dAM\<^sub>2)
  )"
lemma M_coord: "M = (0, 3)"
  unfolding M_def A_def B_def by simp
lemma N_coord: "N = (4, 0)"
  unfolding N_def B_def C_def by simp
lemma P_coord: "P = (2, 2)"
proof -
  have A: "A = (0, 6)" by (simp add: A_def)
  have M: "M = (0, 3)" by (simp add: M_coord)
  have C: "C = (8, 0)" by (simp add: C_def)
  have N: "N = (4, 0)" by (simp add: N_coord)
  show ?thesis by (simp add: P_def A_def M_def C_def N_def)
qed
definition area_triangle :: "point ⇒ point ⇒ point ⇒ real" where
  "area_triangle P Q R = (1/2) * abs (det (Q - P) (R - P))"
lemma area_APC: "area_triangle A P C = 8"
proof -
  have A: "A = (0, 6)" by (simp add: A_def)
  have P: "P = (2, 2)" by (simp add: P_coord)
  have C: "C = (8, 0)" by (simp add: C_def)
  have "area_triangle A P C = (1/2) * abs (det (P - A) (C - A))"
    by (simp add: area_triangle_def)
  also have "P - A = (2 - 0, 2 - 6)" by simp
  also have "C - A = (8 - 0, 0 - 6)" by simp
  also have "det (2, -4) (8, -6) = 2 * (-6) - (-4) * 8"
    by simp
  also have "2 * (-6) - (-4) * 8 = -12 + 32" by simp
  also have "-12 + 32 = 20" by simp
  finally have "area_triangle A P C = (1/2) * abs 20" by simp
  thus ?thesis by simp
qed
end