theory ParallelLinesAngles
imports Complex_Main Real
begin
lemma angle_problem:
  fixes x y z :: real
  assumes "angle ILR = 2*y + 8" 
    and "angle JME = z" 
    and "angle KIL = 4*x + 6" 
    and "angle RLP = 142" 
    and "parallel HK BR" 
    and "parallel JN HK" 
    and "angle ILR + angle RLP = 180" 
    and "angle ILR = angle KIL" 
  shows "y = 15"
proof -
  have "angle ILR + angle RLP = 180" using assms(7) by assumption
  hence "(2*y + 8) + 142 = 180" using assms(1) assms(4) by simp
  hence "2*y + 150 = 180" by simp
  hence "2*y = 30" by simp
  hence "y = 15" by simp
  thus "y = 15" by simp
qed