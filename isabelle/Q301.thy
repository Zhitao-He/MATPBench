theory Balloon_Rope_Saving
  imports Complex_Main
begin
type_synonym point3 = "real × real × real"
definition O :: point3 where "O = (0, 0, 0)"
definition A :: point3 where "A = (0, 1, 0)"
definition B :: point3 where "B = (-1, 0, 0)"
definition C :: point3 where "C = (0, -1, 0)"
definition D :: point3 where "D = (1, 0, 0)"
definition C' :: point3 where "C' = (0, -70, 0)"
definition D' :: point3 where "D' = (70, 0, 0)"
definition h :: real where "h = sqrt(150^2 - 70^2)" 
definition H :: point3 where "H = (0, 0, h)"
definition dist3 :: "point3 ⇒ point3 ⇒ real" where
  "dist3 (x1, y1, z1) (x2, y2, z2) = sqrt ((x1 - x2)^2 + (y1 - y2)^2 + (z1 - z2)^2)"
definition HC :: real where "HC = dist3 H C'"
definition HD :: real where "HD = dist3 H D'"
definition P :: "real ⇒ point3" where
  "P t = (70 * t, -70 * (1 - t), 0)"
definition HP :: "real ⇒ real" where
  "HP t = dist3 H (P t)"
definition rope_saved :: "real ⇒ real" where
  "rope_saved t = HC + HD - HP t"
definition max_rope_saved :: real where
  "max_rope_saved = (SUP t∈{0..1}. rope_saved t)"
end