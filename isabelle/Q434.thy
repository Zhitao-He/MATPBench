theory HexagonGoldFraction
  imports Main
          "HOL-Library.List_Index" 
          "HOL-Analysis.Real"      
          "HOL-Analysis.Sqrt"        
begin
type_synonym point = "real × real"
definition x_coord :: "point ⇒ real" where "x_coord p = fst p"
definition y_coord :: "point ⇒ real" where "y_coord p = snd p"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint P Q = ((x_coord P + x_coord Q) / 2, (y_coord P + y_coord Q) / 2)"
definition val_s :: real where "val_s = 1.0"
definition hex_A :: point where "hex_A = (-val_s/2, val_s * sqrt 3 / 2)"
definition hex_B :: point where "hex_B = ( val_s/2, val_s * sqrt 3 / 2)"
definition hex_C :: point where "hex_C = ( val_s, 0)"
definition hex_D :: point where "hex_D = ( val_s/2, -(val_s * sqrt 3 / 2))"
definition hex_E :: point where "hex_E = (-val_s/2, -(val_s * sqrt 3 / 2))"
definition hex_F :: point where "hex_F = (-val_s, 0)"
definition R :: point where "R = midpoint hex_F hex_A" 
definition S :: point where "S = midpoint hex_B hex_C" 
definition T :: point where "T = midpoint hex_C hex_D" 
definition U :: point where "U = midpoint hex_E hex_F" 
definition shoelace_term :: "point ⇒ point ⇒ real" where
  "shoelace_term p1 p2 = x_coord p1 * y_coord p2 - y_coord p1 * x_coord p2"
definition shoelace_sum :: "point list ⇒ real" where
  "shoelace_sum ps =
    (if length ps < 3 then 0 
     else
       let n = length ps in
       let pts_cycle = ps @ [List.hd ps] in
       sum_list (map (λi. shoelace_term (pts_cycle ! i) (pts_cycle ! (i+1))) [0..<n]))"
definition polygon_area :: "point list ⇒ real" where
  "polygon_area ps = 0.5 * abs (shoelace_sum ps)"
definition hexagon_ABCDEF_vertices :: "point list" where
  "hexagon_ABCDEF_vertices = [hex_A, hex_B, hex_C, hex_D, hex_E, hex_F]"
definition area_hexagon_ABCDEF :: real where
  "area_hexagon_ABCDEF = polygon_area hexagon_ABCDEF_vertices"
definition gold_region_vertices :: "point list" where
  "gold_region_vertices = [R, S, hex_C, T, U, hex_F]" 
definition area_gold_region :: real where
  "area_gold_region = polygon_area gold_region_vertices"
definition gold_fraction :: real where
  "gold_fraction = area_gold_region / area_hexagon_ABCDEF"
end