theory SemicircleLogoArea
  imports Complex_Main "HOL-Analysis.Analysis"
begin
(* Four small semicircles each with the same radius, and one large semicircle *)
(* The perimeter of the whole shape is 14π units *)
(* The entire shape is to be enlarged by a factor of 5 to form a logo sticker *)
(* The area of the sticker is 1225π/2 square units *)
theorem semicircle_logo_area:
  "∃r::real. r > 0 ∧ 
   (* Four small semicircles plus one large semicircle have perimeter 14π *)
   (4 * (π * r) + π * (2 * r) = 14 * π) ∧
   (* After enlargement by factor 5, the area is 1225π/2 *)
   ((5^2) * ((π * (2*r)^2)/2 - 4 * (π * r^2)/2)) = 1225 * π / 2"
  oops