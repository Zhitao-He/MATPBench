theory GeometryProblem
  imports
    Main
    "HOL-Analysis.Euclidean_Space" 
    "HOL-Library.Log"             
begin
type_synonym point = "real^2" 
lemma find_x:
  fixes A B C D :: point
  fixes x y :: real
  assumes x_pos: "x > 0"
  assumes y_pos: "y > 0"
  assumes BC_len: "dist B C = y"
  assumes BD_len: "dist B D = x"
  assumes CD_len: "dist C D = 2 * sqrt 3"
  assumes DA_len: "dist D A = 2"
  assumes AC_perp_BC: "orthogonal (A - C) (B - C)" 
  assumes BD_perp_CD: "orthogonal (B - D) (C - D)" 
  assumes BDA_collinear: "collinear {B, D, A}"
  assumes D_between_B_A: "dist B A = dist B D + dist D A" 
  shows "x = 6"
proof -
  have B_neq_D: "B ≠ D" using BD_len x_pos dist_eq_0_iff by (simp add: gt_iff_neq)
  have D_neq_A: "D ≠ A" using DA_len dist_eq_0_iff by (simp add: zero_lt_numeral) 
  have C_neq_D: "C ≠ D" using CD_len dist_eq_0_iff by (simp add: zero_lt_mult_iff real_sqrt_gt_zero_iff zero_lt_numeral) 
  have C_neq_B: "C ≠ B" using BC_len y_pos dist_eq_0_iff by (simp add: gt_iff_neq)
  have pyth_BDC: "dist B C⇧<sup>2</sup> = dist B D⇧<sup>2</sup> + dist C D⇧<sup>2</sup>"
    using pythagorean_theorem[of B D C] BD_perp_CD B_neq_D C_neq_D C_neq_B
    by simp
  have eq1_subst: "y⇧<sup>2</sup> = x⇧<sup>2</sup> + (2 * sqrt 3)⇧<sup>2</sup>"
    using pyth_BDC BC_len BD_len CD_len by (simp add: pow2_eq_square)
  have term_CD_sq_val: "(2 * sqrt 3)⇧<sup>2</sup> = (12::real)" by simp
  have eq1_val: "y⇧<sup>2</sup> = x⇧<sup>2</sup> + 12"
    using eq1_subst term_CD_sq_val by simp
  have D_on_segment_BA: "D ∈ segment B A"
    using BDA_collinear D_between_B_A by (rule collinear_dist_sum_segment)
  have CD_perp_DA: "orthogonal (A - D) (C - D)"
  proof -
    from D_on_segment_BA B_neq_D D_neq_A
    obtain k :: real where k_def: "A - D = k⇩<sub>R</sub> * (D - B)"
      by (metis segment_neq_extremes_vector_mult_dist_ratio)
    have "real_inner (A - D) (C - D) = real_inner (k⇩<sub>R</sub> * (D - B)) (C - D)"
      by (simp only: k_def)
    also have "... = k * real_inner (D - B) (C - D)"
      by (rule real_inner_smul_left)
    also have "real_inner (D - B) (C - D) = - real_inner (B - D) (C - D)"
      by (simp add: real_inner_minus1_left) 
    also have "real_inner (B - D) (C - D) = 0"
      using BD_perp_CD by (simp add: orthogonal_def)
    finally have "real_inner (A - D) (C - D) = k * (-0)" .
    then have "real_inner (A - D) (C - D) = 0" by simp
    thus "orthogonal (A - D) (C - D)" by (simp add: orthogonal_def)
  qed
  have AC_sq_val_expr: "dist A C⇧<sup>2</sup> = dist C D⇧<sup>2</sup> + dist D A⇧<sup>2</sup>"
  proof (cases "C = A") 
    case C_eq_A_case: "C = A"
    then have "dist A C = 0" by simp
    then have lhs: "dist A C⇧<sup>2</sup> = 0" by simp
    from C_eq_A_case have "dist C D = dist A D" by simp
    then have rhs: "dist C D⇧<sup>2</sup> + dist D A⇧<sup>2</sup> = 2 * dist D A⇧<sup>2</sup>" by simp
    also have "dist D A = 2" by (rule DA_len)
    also have "2 * 2⇧<sup>2</sup> = 8" by simp
    finally have "rhs = 8".
    from lhs `rhs = 8` have "0 = 8" by (simp only: rhs)
    thus ?thesis by contradiction
  qed (insert pythagorean_theorem[of A D C] CD_perp_DA D_neq_A C_neq_D, simp)
  have C_neq_A_derived: "C ≠ A"
  proof
     assume "C = A"
     then have "dist A C = 0" by simp
     also have "dist A C⇧<sup>2</sup> = (dist C D)⇧<sup>2</sup> + (dist D A)⇧<sup>2</sup>"
        using pythagorean_theorem[of A D C] CD_perp_DA D_neq_A C_neq_D `C=A` by simp
     also have "(dist C D)⇧<sup>2</sup> + (dist D A)⇧<sup>2</sup> = (2*sqrt 3)⇧<sup>2</sup> + 2⇧<sup>2</sup>"
        by (simp add: CD_len DA_len)
     also have "... = 12 + 4" by simp
     also have "... = 16" by simp
     finally have "0 = 16" by (simp only: pow2_eq_square `dist A C = 0`) .
     thus False by contradiction
  qed then have C_neq_A: "C ≠ A" by this.
  have pyth_CDA: "dist A C⇧<sup>2</sup> = dist C D⇧<sup>2</sup> + dist D A⇧<sup>2</sup>"
    using pythagorean_theorem[of A D C] CD_perp_DA D_neq_A C_neq_D C_neq_A
    by simp
  have AC_sq_val: "dist A C⇧<sup>2</sup> = (2 * sqrt 3)⇧<sup>2</sup> + 2⇧<sup>2</sup>"
    using pyth_CDA CD_len DA_len by (simp add: pow2_eq_square)
  then have AC_sq_16: "dist A C⇧<sup>2</sup> = 16"
    by (simp add: term_CD_sq_val)
  have A_neq_B: "A ≠ B" 
  proof
    assume "A = B"
    then have "dist B A = 0" by simp
    also have "dist B A = dist B D + dist D A" by (rule D_between_B_A)
    also have "... = x + 2" by (simp add: BD_len DA_len)
    finally have "x + 2 = 0" .
    with x_pos have False by linarith 
    thus "A ≠ B" ..
  qed
  have pyth_BCA: "dist B A⇧<sup>2</sup> = dist A C⇧<sup>2</sup> + dist B C⇧<sup>2</sup>"
    using pythagorean_theorem[of B C A] AC_perp_BC C_neq_B C_neq_A A_neq_B
    by simp
  have AB_sq_expr: "dist B A⇧<sup>2</sup> = (x + 2)⇧<sup>2</sup>"
    by (simp add: D_between_B_A BD_len DA_len pow2_eq_square)
  have eq3_subst: "(x + 2)⇧<sup>2</sup> = dist A C⇧<sup>2</sup> + y⇧<sup>2</sup>"
    using pyth_BCA AB_sq_expr BC_len by (simp add: pow2_eq_square)
  have eq3: "(x + 2)⇧<sup>2</sup> = 16 + y⇧<sup>2</sup>"
    using eq3_subst AC_sq_16 by simp
  have "(x + 2)⇧<sup>2</sup> = x⇧<sup>2</sup> + 4*x + 4"
    by (simp add: add_power2) 
  then have alg_step1: "x⇧<sup>2</sup> + 4*x + 4 = 16 + y⇧<sup>2</sup>"
    using eq3 by simp
  subst eq1_val 
  then have alg_step2: "x⇧<sup>2</sup> + 4*x + 4 = 16 + (x⇧<sup>2</sup> + 12)" by simp
  have alg_step3: "x⇧<sup>2</sup> + 4*x + 4 = x⇧<sup>2</sup> + 28"
    using alg_step2 by arith 
  have alg_step4: "4*x + 4 = 28"
    using alg_step3 by linarith 
  have alg_step5: "4*x = 24"
    using alg_step4 by arith 
  have result: "x = 6"
    using alg_step5 by (simp add: field_simps) 
  thus "x = 6" by result
qed
end