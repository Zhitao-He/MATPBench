theory RightPyramidVolume
imports Complex_Main
begin
theorem right_square_pyramid_volume:
  "let s = 11::real; h = 7::real in
   (1/3) * s * s * h = 847/3"
  by simp