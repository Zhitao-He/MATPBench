theory Square_Inscribed_Circle
  imports Complex_Main
begin
type_synonym point = complex
locale circle =
  fixes K :: point and r :: real
  assumes r_pos: "r > 0"
locale square_inscribed_circle = circle +
  fixes A B C D :: point
  assumes square: 
    "dist A B = dist B D"
    "dist B D = dist D C"
    "dist D C = dist C A"
    "dist C A = dist A B"
    "Arg (B - A) - Arg (D - B) = pi/2"
    "Arg (D - B) - Arg (C - D) = pi/2"
    "Arg (C - D) - Arg (A - C) = pi/2"
    "Arg (A - C) - Arg (B - A) = pi/2"
    "dist K A = r"
    "dist K B = r"
    "dist K C = r"
    "dist K D = r"
definition central_angle :: "point ⇒ point ⇒ point ⇒ real" where
  "central_angle K P Q = abs (Arg ((P - K) / (Q - K)))"
theorem (in square_inscribed_circle)
  "central_angle K A B = pi/2"
  "central_angle K B D = pi/2"
  "central_angle K D C = pi/2"
  "central_angle K C A = pi/2"
  unfolding central_angle_def
  by (auto simp: square)
end