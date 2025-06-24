theory Star_Area
  imports Complex_Main
begin
definition side_length :: real where
  "side_length = 3"
definition large_angle :: real where
  "large_angle = 210"
definition star_area :: real where
  "star_area = (9 * sqrt 3) / 2"
definition a :: nat where "a = 9"
definition b :: nat where "b = 3"
definition c :: nat where "c = 2"
definition answer :: nat where
  "answer = a + b + c"
end