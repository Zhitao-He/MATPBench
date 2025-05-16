theory RectangleIntersection
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin

(* 定义矩形的坐标点 *)
definition A :: "real × real" where "A = (0, 0)"
definition B :: "real × real" where "B = (3, 0)"
definition C :: "real × real" where "C = (3, 11)"
definition D :: "real × real" where "D = (0, 11)"

(* 定义第二个矩形的坐标点 *)
definition E :: "real × real" where "E = (7, 0)"
definition F :: "real × real" where "F = (7, 9)"

(* 计算两个矩形的交集面积 *)
lemma "let rect1_x_min = fst A;
          rect1_x_max = fst C;
          rect1_y_min = snd A;
          rect1_y_max = snd C;
          rect2_x_min = fst A;
          rect2_x_max = fst E;
          rect2_y_min = snd A;
          rect2_y_max = snd F;
          intersection_x_min = max rect1_x_min rect2_x_min;
          intersection_x_max = min rect1_x_max rect2_x_max;
          intersection_y_min = max rect1_y_min rect2_y_min;
          intersection_y_max = min rect1_y_max rect2_y_max;
          intersection_width = max 0 (intersection_x_max - intersection_x_min);
          intersection_height = max 0 (intersection_y_max - intersection_y_min);
          intersection_area = intersection_width * intersection_height
      in intersection_area = 21/2"
  by (simp add: A_def B_def C_def D_def E_def F_def Let_def)

end