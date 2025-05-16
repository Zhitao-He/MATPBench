theory GreetingCardTravel
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
text ‹A greeting card is 6 inches wide and 8 inches tall. Point A is 3 inches from the fold,
as shown. As the card is opened to an angle of 45 degrees, through how many more inches 
than point A does point B travel? Express your answer as a common fraction in terms of π.›
theorem greeting_card_travel_difference:
  fixes width :: real and height :: real and OA :: real and OB :: real and theta :: real
  assumes "width = 6" "height = 8" "OA = 3" "OB = width" "theta = pi/4"
  shows "(OB - OA) * theta = (3/4) * pi"
proof -
  have "OB - OA = 6 - 3" using assms by simp
  also have "... = 3" by simp
  finally have "OB - OA = 3" .
  have "(OB - OA) * theta = 3 * (pi/4)" using ‹OB - OA = 3› assms by simp
  also have "... = (3/4) * pi" by (simp add: mult.commute)
  finally show ?thesis .
qed