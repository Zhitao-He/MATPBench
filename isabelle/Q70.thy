theory Grey_Squares_Wall
imports Complex_Main "HOL-Analysis.Analysis"
begin
theorem grey_squares_wall_area:
  fixes s::real
  assumes "s > 0"  
  defines "small_square_area ≡ s^2"  
  defines "large_square_side ≡ 16 - 2 * (s / sqrt 2)"  
  defines "large_square_area ≡ large_square_side^2"  
  defines "total_area ≡ 2 * small_square_area + large_square_area"  
  shows "∃s>0. total_area = 128"
begin
  have "total_area = 2 * s^2 + (16 - 2 * (s / sqrt 2))^2"
    unfolding total_area_def small_square_area_def large_square_area_def large_square_side_def
    by simp
  