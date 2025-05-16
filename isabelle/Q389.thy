theory PentagonArea
imports Main Real
begin
definition pentagon_vertices :: "(real × real) list" where
  "pentagon_vertices = [(-1, -1), (-3, 4), (1, 7), (6, 5), (3, -1)]"
definition polygon_area :: "(real × real) list ⟶ real" where
  "polygon_area pts = 
    let n = length pts in
    if n < 3 then 0 else
    let sum = ∑i∈{0..<n}. 
      (let (xi, yi) = pts ! i;
           (xj, yj) = pts ! ((i + 1) mod n) in
       xi * yj - xj * yi) in
    abs sum / 2"
theorem pentagon_area_47:
  "polygon_area pentagon_vertices = 47"
  