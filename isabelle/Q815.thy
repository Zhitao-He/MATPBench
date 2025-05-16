theory EquilateralTriangle
imports Main "HOL-Analysis.Real_Vector_Spaces"
begin

text ‹As shown in the diagram, AC=x-3, BA=2*x-7, BC=4*x-15, triangle ABC is an isosceles triangle. 
      We need to prove that triangle ABC is an equilateral triangle.›

lemma equilateral_triangle:
  fixes x :: real
  assumes "x > 0"
  defines "AC ≡ x - 3"
  defines "AB ≡ 2*x - 7"
  defines "BC ≡ 4*x - 15"
  assumes "AC > 0" "AB > 0" "BC > 0"
  assumes isosceles: "AB = AC ∨ AB = BC ∨ AC = BC"
  shows "AB = AC ∧ AC = BC"
proof -
  from isosceles have "AB = AC ∨ AB = BC ∨ AC = BC" by assumption
  
  consider (1) "AB = AC" | (2) "AB = BC" | (3) "AC = BC" using isosceles by blast
  
  then show ?thesis
  proof cases
    case 1
    have "2*x - 7 = x - 3" using 1 ‹AB = 2*x - 7› ‹AC = x - 3› by simp
    hence "x = 4" by simp
    
    have "AB = 2*4 - 7" using ‹AB = 2*x - 7› ‹x = 4› by simp
    hence "AB = 1" by simp
    
    have "AC = 4 - 3" using ‹AC = x - 3› ‹x = 4› by simp
    hence "AC = 1" by simp
    
    have "BC = 4*4 - 15" using ‹BC = 4*x - 15› ‹x = 4› by simp
    hence "BC = 1" by simp
    
    from ‹AB = 1› ‹AC = 1› ‹BC = 1› show ?thesis by simp
  next
    case 2
    have "2*x - 7 = 4*x - 15" using 2 ‹AB = 2*x - 7› ‹BC = 4*x - 15› by simp
    hence "x = 4" by simp
    
    have "AB = 2*4 - 7" using ‹AB = 2*x - 7› ‹x = 4› by simp
    hence "AB = 1" by simp
    
    have "AC = 4 - 3" using ‹AC = x - 3› ‹x = 4› by simp
    hence "AC = 1" by simp
    
    have "BC = 4*4 - 15" using ‹BC = 4*x - 15› ‹x = 4› by simp
    hence "BC = 1" by simp
    
    from ‹AB = 1› ‹AC = 1› ‹BC = 1› show ?thesis by simp
  next
    case 3
    have "x - 3 = 4*x - 15" using 3 ‹AC = x - 3› ‹BC = 4*x - 15› by simp
    hence "x = 4" by simp
    
    have "AB = 2*4 - 7" using ‹AB = 2*x - 7› ‹x = 4› by simp
    hence "AB = 1" by simp
    
    have "AC = 4 - 3" using ‹AC = x - 3› ‹x = 4› by simp
    hence "AC = 1" by simp
    
    have "BC = 4*4 - 15" using ‹BC = 4*x - 15› ‹x = 4› by simp
    hence "BC = 1" by simp
    
    from ‹AB = 1› ‹AC = 1› ‹BC = 1› show ?thesis by simp
  qed
qed

end