theory Triangle_Area_Ratio
  imports Main
begin
locale similar_triangles =
  fixes h1 h2 :: real
  assumes h1_pos: "h1 > 0"
    and h2_pos: "h2 > 0"
    and ratio_base: "h1 / h2 = 4 / 10"
begin
definition base_small :: real where "base_small = 4"
definition base_large :: real where "base_large = 10"
definition area_small :: real where "area_small = (1/2) * base_small * h1"
definition area_large :: real where "area_large = (1/2) * base_large * h2"
definition area_ratio :: real where "area_ratio = area_small / area_large"
end
definition area_ratio_condition :: bool where
  "area_ratio_condition =
    (let h1 = 4; h2 = 10 in
      let area_small = (1/2) * 4 * h1;
          area_large = (1/2) * 10 * h2
      in (area_small / area_large = 4 / 25))"
end