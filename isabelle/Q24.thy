theory CircleAngles
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
text ‹As shown in the figure, AB is the diameter of circle O, and points C and D are on circle O. 
If ∠BCD = 25°, the measure of angle ∠AOD is 130°.›
locale circle_geometry =
  fixes O A B C D :: "real^2"
  assumes 
    dist_OA: "dist O A = dist O B" and
    diam_AB: "O = midpoint A B" and
    circle_C: "dist O C = dist O A" and
    circle_D: "dist O D = dist O A" and
    angle_BCD: "angle B C D = 25"
theorem circle_diameter_angle:
  assumes "circle_geometry O A B C D"
  shows "angle A O D = 130"
  