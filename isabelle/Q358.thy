theory TriangleIsosceles
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
definition perimeter :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "perimeter A B C = norm(A - B) + norm(B - C) + norm(C - A)"
definition angle :: "real^2 ⇒ real^2 ⇒ real^2 ⇒ real" where
  "angle A B C = 
    let v1 = (A - B)/norm(A - B);
        v2 = (C - B)/norm(C - B)
    in arccos(v1 ⋅ v2)"
theorem triangle_iso_length_ab:
  fixes A B C :: "real^2"
  assumes "A ≠ B" and "B ≠ C" and "A ≠ C" 
    and "norm(B - C) = 12" 
    and "angle A B C = angle A C B" 
  shows "norm(A - B) = 10"
sorry