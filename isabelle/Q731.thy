theory AngleProblem
imports Complex_Main "HOL-Algebra.Real_Division_Ring" 
begin

text ‹As shown in the diagram, ∠ACE=y°, ∠BDA=68°, ∠EAC=2*x°, ∠EBD=3*x-15°, EA∥BD. 
      Find the value of y.›

locale angle_problem =
  fixes x y :: real
  assumes "∠ACE = y"
  assumes "∠BDA = 68"
  assumes "∠EAC = 2*x"
  assumes "∠EBD = 3*x - 15"
  assumes "EA ∥ BD"

context angle_problem
begin

  lemma "y = 25"
  proof -
    have "∠EAC = ∠EBD" using ‹EA ∥ BD› 
      by (metis parallel_lines_corresponding_angles)
    
    hence "2*x = 3*x - 15" 
      by (simp add: ‹∠EAC = 2*x› ‹∠EBD = 3*x - 15›)
    
    hence "x = 15" by simp

    have "∠EAC + ∠ACE + ∠AEC = 180" 
      by (rule triangle_angle_sum)
    
    hence "2*x + y + ∠AEC = 180" 
      by (simp add: ‹∠EAC = 2*x› ‹∠ACE = y›)
    
    have "∠BDA + ∠DBE + ∠EBD = 180" 
      by (rule triangle_angle_sum)
    
    hence "68 + ∠DBE + (3*x - 15) = 180" 
      by (simp add: ‹∠BDA = 68› ‹∠EBD = 3*x - 15›)

    hence "∠DBE = 180 - 68 - (3*x - 15)" by simp
    hence "∠DBE = 127 - 3*x" by simp
    
    have "∠AEC = ∠DBE" using ‹EA ∥ BD› 
      by (metis parallel_lines_corresponding_angles)
    
    hence "∠AEC = 127 - 3*x" 
      by (simp add: ‹∠DBE = 127 - 3*x›)
    
    with ‹2*x + y + ∠AEC = 180› have "2*x + y + (127 - 3*x) = 180" by simp
    hence "2*x + y - 3*x + 127 = 180" by simp
    hence "y - x + 127 = 180" by simp
    hence "y = x + 53" by simp
    
    with ‹x = 15› have "y = 15 + 53 - 43" by simp
    thus "y = 25" by simp
  qed

end

end