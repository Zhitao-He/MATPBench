theory QuadrilateralArea
  imports Main HOL.Real
begin
type_synonym point = "real × real"
definition Q :: "point" where "Q = (0, 12)"
definition A :: "point" where "A = (2, 12)"
definition B :: "point" where "B = (12, 0)"
definition O :: "point" where "O = (0, 0)"
definition area_quadrilateral :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "area_quadrilateral p1 p2 p3 p4 = 
    let (x1, y1) = p1;
        (x2, y2) = p2;
        (x3, y3) = p3;
        (x4, y4) = p4
    in
    ((x1*y2 - x2*y1) + (x2*y3 - x3*y2) + (x3*y4 - x4*y3) + (x4*y1 - x1*y4)) / 2"
theorem area_QABO: "area_quadrilateral Q A B O = 84"
  unfolding area_quadrilateral_def Q_def A_def B_def O_def
  by (simp add: Let_def)