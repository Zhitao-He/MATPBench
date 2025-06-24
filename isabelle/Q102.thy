theory Paper_Tray
  imports Complex_Main
begin
definition square_side :: real where
  "square_side = 100"
definition cut_distance :: real where
  "cut_distance = sqrt 17"
definition cut_angle :: real where
  "cut_angle = pi / 3"
definition A :: "real × real" where "A = (0, 0)"
definition B :: "real × real" where "B = (square_side, 0)"
definition C :: "real × real" where "C = (square_side, square_side)"
definition D :: "real × real" where "D = (0, square_side)"
definition A1 :: "real × real" where
  "A1 = (cut_distance, 0)"
definition A2 :: "real × real" where
  "A2 = (0, cut_distance)"
definition diag_vec :: "real × real" where
  "diag_vec = (square_side, square_side)"
definition unit_vec :: "real × real ⇒ real × real" where
  "unit_vec v = (let (x, y) = v in
    let n = sqrt (x^2 + y^2) in
      if n = 0 then (0, 0) else (x / n, y / n))"
definition dir1 :: "real × real" where
  "dir1 = unit_vec (square_side - cut_distance, square_side)"
definition dir2 :: "real × real" where
  "dir2 = unit_vec (square_side, square_side - cut_distance)"
definition tray_height :: real where
  "tray_height = sqrt (17 * 33) / 2"
end