theory DiagramValueOfY
imports Main Real
begin
theorem diagram_value_of_y:
  fixes x y :: real
  defines "JT ≡ y + 4/5"
  defines "LM ≡ 2*y - 11/5"
  defines "TM ≡ 10 - 2*x"
  defines "MI ≡ 12 - 3*x"
  assumes "TM = MI"
  assumes "JT / TM = LM / MI" 
  shows "y = 3"
proof -
  from assms(3) assms(4) assms(5) have "10 - 2*x = 12 - 3*x" by simp
  hence "x = 2" by simp
  from this assms(3) have "TM = 6" by simp
  from this assms(4) have "MI = 6" by simp
  from assms(6) have "JT / TM = LM / MI" by simp
  hence "(y + 4/5) / 6 = (2*y - 11/5) / 6" by (simp add: `TM = 6` `MI = 6`)
  hence "y + 4/5 = 2*y - 11/5" by simp
  hence "y + 4/5 + 11/5 = 2*y" by simp
  hence "y + 15/5 = 2*y" by simp
  hence "y = 15/5" by simp
  hence "y = 3" by simp
  thus "y = 3" by simp
qed