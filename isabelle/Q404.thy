theory RegularHeptagonAngle
imports
  Complex_Main
  "HOL-Analysis.Topology_Euclidean_Space"
begin
theorem regular_heptagon_diagonal_angle:
  fixes n :: nat
  assumes "n = 7" 
  defines "vertices k ≡ Complex_of_Real (cos (2 * pi * real k / real n)) + 
                        Complex_of_Real (sin (2 * pi * real k / real n)) * \<i>"
  defines "v1 ≡ vertices 6 - vertices 0" 
  defines "v2 ≡ vertices 2 - vertices 0" 
  defines "angle v ≡ arg v * (180 / pi)" 
  shows "angle v2 - angle v1 = 360 / real n"
  oops