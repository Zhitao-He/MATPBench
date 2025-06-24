theory Geometry_Problem_BD_Length
imports
  "HOL-Analysis.Cartesian_Euclidean_Space"
  "HOL-Analysis.Convex"
begin
locale geometry_setup =
  fixes A B C D :: "real^2" 
  assumes AC_length: "dist A C = 13"
  assumes DC_length: "dist D C = 2"
  assumes D_on_segment_AC: "D ∈ segment A C"
  assumes angle_ABC_is_right: "orthogonal (A - B) (C - B)"
  assumes BD_is_perpendicular_to_AC: "orthogonal (B - D) (A - C)"
theorem (in geometry_setup) BD_length_is_sqrt_22:
  "dist B D = sqrt 22"
oops
end