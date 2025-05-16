theory Ship_Navigation
  imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
definition A :: "real × real" where "A = (0, 0)"
definition speed :: "real" where "speed = 40"
definition t :: "real" where "t = 0.5"
definition AB_len :: "real" where "AB_len = speed * t"
definition B :: "real × real" where "B = (AB_len, 0)"
definition deg_to_rad :: "real ⇒ real" where "deg_to_rad deg = (deg * pi) / 180"
definition theta_A :: "real" where "theta_A = deg_to_rad 45"
definition theta_B :: "real" where "theta_B = deg_to_rad 15"
definition direction :: "real ⇒ real × real" where
  "direction theta = (cos theta, sin theta)"
definition line_from :: "(real × real) ⇒ (real × real) ⇒ real ⇒ (real × real)" where
  "line_from P v t = (fst P + t * fst v, snd P + t * snd v)"
definition M :: "real × real" where
  "M = (let
          dir_A = direction theta_A;
          dir_B = direction theta_B;
          a = fst dir_A;
          b = snd dir_A;
          c = fst dir_B;
          d = snd dir_B;
          x_B = fst B;
          t2 = (x_B * b) / (b * c - a * d);
          t1 = (x_B + t2 * c) / a
       in
         line_from A dir_A t1)"
definition distance :: "(real × real) ⇒ (real × real) ⇒ real" where
  "distance P1 P2 = sqrt((fst P1 - fst P2)² + (snd P1 - snd P2)²)"
theorem BM_distance: "distance B M = 20 * sqrt 2"
proof -
  have "AB_len = 20" unfolding AB_len_def speed_def t_def by simp
  hence B_eq: "B = (20, 0)" unfolding B_def by simp
  sorry
qed