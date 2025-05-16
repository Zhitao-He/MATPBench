theory MirrorSimilarTriangle
imports Complex_Main "HOL-Analysis.Analysis"
begin
locale geometry =
  fixes A B C D E F G :: "complex"
  assumes B_def: "B = 0"  
  assumes A_def: "A = 0 + 3 * \<i>"  
  assumes AB_CB_perp: "(A - B) * (C - B) = 0"  
  assumes DE_FE_perp: "(D - E) * (F - E) = 0"  
  assumes BD_length: "cmod(B - D) = x - 1"
  assumes CE_length: "cmod(C - E) = x + 2"
  assumes EF_length: "cmod(E - F) = 8"
  assumes angle_GAB_EFG: "arg((G - A) / (B - A)) = arg((E - F) / (G - F))"
context geometry
begin
theorem EC_length:
  "cmod(E - C) = 24/5"
proof -
  have "cmod(E - C) = 24/5" sorry
  thus ?thesis by assumption
qed