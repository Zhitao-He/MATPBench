theory Folded_Square
  imports Main
begin
definition square_vertices :: "(real × real) set" where
  "square_vertices = {(0,0), (8,0), (8,8), (0,8)}"
definition triangle_vertices :: "(real × real) set" where
  "triangle_vertices = {(0,0), (8,0), (8,8)}"
definition hypotenuse_midpoint :: "real × real" where
  "hypotenuse_midpoint = ((8 + 0) / 2, (8 + 0) / 2)"  
definition folded_triangle_vertices :: "(real × real) set" where
  "folded_triangle_vertices = {(4,4), (8,0), (8,8)}"
definition trapezoid_vertices :: "(real × real) set" where
  "trapezoid_vertices = {(4,4), (8,0), (8,8), (0,8)}"
definition area_trapezoid :: real where
  "area_trapezoid = 
    (let A = (4,4); B = (8,0); C = (8,8); D = (0,8) in
      1/2 * abs (
        fst A * snd B + fst B * snd C + fst C * snd D + fst D * snd A
      - fst B * snd A - fst C * snd B - fst D * snd C - fst A * snd D
      )
    )"
definition expected_area :: real where
  "expected_area = 24"
end