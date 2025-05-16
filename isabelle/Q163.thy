theory PolygonArea
imports Complex_Main
begin
definition vertices :: "(real × real) list" where
  "vertices = [(0, 0), (0, 8), (6, 8), (6, 7), (8, 7), (8, 5), (11, 5), (11, 0)]"
(* Shoelace formula / Gauss's area formula for computing polygon area *)
definition shoelace_area :: "(real × real) list ⇒ real" where
  "shoelace_area vs = 
    let n = length vs in
    if n < 3 then 0 
    else 
      (1/2) * abs(
        sum_list (map (λi. 
          let (x1, y1) = vs ! i;
              (x2, y2) = vs ! ((i + 1) mod n)
          in x1 * y2 - x2 * y1) 
        [0..<n])
      )"
(* Compute the actual area *)
value "shoelace_area vertices"
(* Prove that the area equals 77 *)
theorem polygon_area: "shoelace_area vertices = 77"
  by eval