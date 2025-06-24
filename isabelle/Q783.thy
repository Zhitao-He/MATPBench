theory Geometry_Problem_Intersecting_Chords
imports Complex_Main
begin
theorem value_of_x_is_half:
  fixes x :: real
  fixes EA :: real 
  fixes EC :: real 
  fixes BE :: real 
  fixes DE :: real 
  assumes x_is_positive: "x > 0"
  and EA_definition: "EA = x + 1"
  and EC_definition: "EC = x + 3"
  and BE_definition: "BE = x"
  and DE_definition: "DE = x + 10"
  and intersecting_chords_property: "EA * EC = BE * DE"
  shows "x = (1::real)/2"
oops 
end