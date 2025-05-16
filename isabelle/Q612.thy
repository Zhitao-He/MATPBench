theory RightTriangle
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
text ‹As shown in the diagram, JK=33, LK=x, ∠KLJ=45°, JK⊥LK. Find the value of x.›
locale right_triangle =
  fixes J K L :: "real^2"
  assumes dist_JK: "dist J K = 33"
  and dist_LK: "dist L K = x"
  and angle_KLJ: "angle K L J = pi/4"  (* 45 degrees in radians *)
  and perpendicular: "orthogonal (J - K) (L - K)"  (* JK⊥LK *)
theorem find_x:
  fixes x :: real
  assumes "right_triangle J K L"
  shows "x = 33"  (* The value we're looking for *)