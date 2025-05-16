theory EquilateralTriangle
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
section ‹Triangle XWY is Equilateral›
text ‹As shown in the diagram, WY=6*x+3, WY=XY, XW=9*x, XW=WY, XY=4*x+5. 
      Prove that triangle XWY is an equilateral triangle.›
theorem triangle_XWY_is_equilateral:
  fixes x::real
  assumes "WY = 6*x + 3"
    and "WY = XY"
    and "XW = 9*x"
    and "XW = WY"
    and "XY = 4*x + 5"
  shows "XW = WY ∧ WY = XY"
proof -
  from assms(1,3,4) have "9*x = 6*x + 3" by simp
  hence "3*x = 3" by simp
  hence "x = 1" by simp
  from ‹x = 1› assms(3) have "XW = 9" by simp
  from ‹x = 1› assms(1) have "WY = 9" by simp
  from ‹x = 1› assms(5) have "XY = 9" by simp
  from ‹XW = 9› ‹WY = 9› ‹XY = 9› show ?thesis by simp
qed
theorem triangle_XWY_is_equilateral_alt:
  fixes x::real
  assumes "WY = 6*x + 3"
    and "WY = XY"
    and "XW = 9*x"
    and "XW = WY"
    and "XY = 4*x + 5"
  shows "XW = XY ∧ XY = WY" 
proof -
  from assms(3,4,1) have "9*x = 6*x + 3" by simp
  hence "3*x = 3" by simp
  hence "x = 1" by simp
  with assms show ?thesis by simp
qed