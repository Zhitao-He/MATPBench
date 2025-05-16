theory BeltAroundCircles
imports Complex_Main Real_Vector_Spaces "HOL-Analysis.Analysis"
begin
text ‹A belt is drawn tightly around three circles of radius 10 cm each.
The length of the belt, in cm, can be written in the form a + bπ for rational numbers a and b.
We need to find the value of a + b, which is 80.›
theorem belt_around_three_circles:
  fixes r :: real
  assumes "r = 10"
  shows "∃a b. ∃belt_length. 
          belt_length = a + b * pi ∧ 
          belt_length = 6 * r + 2 * pi * r ∧ 
          a + b = 80"
proof -
  let ?belt_length = "6 * r + 2 * pi * r"
  have "?belt_length = 6 * r + 2 * pi * r" by simp
  moreover have "?belt_length = 6 * 10 + 2 * pi * 10" using assms by simp
  moreover have "?belt_length = 60 + 20 * pi" by simp
  ultimately have "∃belt_length. belt_length = 60 + 20 * pi ∧ 
                             belt_length = 6 * r + 2 * pi * r" by blast
  moreover have "60 + 20 = 80" by simp
  ultimately show ?thesis by blast
qed