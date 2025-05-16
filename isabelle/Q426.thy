theory RightTriangleCosines
  imports Complex_Main Euclidean_Geometry.Euclidean_Geometry
begin

theorem right_triangle_cosine_value:
  fixes A B C :: "real^2"
  assumes "A ≠ B" and "B ≠ C" and "A ≠ C"
    and "dist A B > 0" and "dist B C > 0" and "dist A C > 0"
    and "orthogonal (B - A) (C - A)" (* right angle at A *)
    and "cos(angle B A C) = 3/5"
  shows "cos(angle C A B) = 4/5"
begin
  (* This is just a statement without proof *)
end

end