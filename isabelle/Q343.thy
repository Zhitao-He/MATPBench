theory Quadrilateral_Area
  imports Main "HOL-Analysis.Cartesian_Euclidean_Space" Real_Vector_Spaces
begin
type_synonym point = "real × real"
definition A :: point where "A = (0, 1)"
definition B :: point where "B = (1, 3)"
definition C :: point where "C = (5, 2)"
definition D :: point where "D = (4, 0)"
definition shoelace4 :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "shoelace4 A B C D = 
    let (x1, y1) = A;
        (x2, y2) = B;
        (x3, y3) = C;
        (x4, y4) = D
    in (1/2) * abs (x1 * y2 + x2 * y3 + x3 * y4 + x4 * y1 - 
                    (y1 * x2 + y2 * x3 + y3 * x4 + y4 * x1))"
theorem area_ABCD_is_9: "shoelace4 A B C D = 9"
  sorry