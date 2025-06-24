theory Small_Square_Area
  imports Complex_Main
begin
definition A :: "real × real" where "A = (0, 0)"
definition B :: "real × real" where "B = (1, 0)"
definition C :: "real × real" where "C = (1, 1)"
definition D :: "real × real" where "D = (0, 1)"
fixes n :: nat
assumes n_pos: "n > 0"
definition P_AB :: "real × real" where "P_AB = (1 / real n, 0)"
definition P_BC :: "real × real" where "P_BC = (1, 1 / real n)"
definition P_CD :: "real × real" where "P_CD = (1 - 1 / real n, 1)"
definition P_DA :: "real × real" where "P_DA = (0, 1 - 1 / real n)"
definition line_APBC :: "real ⇒ real" where
  "line_APBC x = (1 / real n) * x"
definition line_BPCD :: "real ⇒ real" where
  "line_BPCD x = (1 - x) * (real n / (real n - 1))"
definition line_CPDA :: "real ⇒ real" where
  "line_CPDA x = 1 - (1 / real n) * x"
definition line_DPAB :: "real ⇒ real" where
  "line_DPAB x = 1 - x * (real n / (real n - 1))"
definition S1 :: "real × real" where
  "S1 = (
    let x = (real n - 1) / (real n^2 - real n + 1)
    in (x, line_APBC x)
  )"
definition S2 :: "real × real" where
  "S2 = (
    let x = (real n) / (real n^2 - real n + 1)
    in (x, line_APBC x)
  )"
definition S3 :: "real × real" where
  "S3 = (
    let x = (real n^2 - 2 * real n + 1) / (real n^2 - real n + 1)
    in (x, line_BPCD x)
  )"
definition S4 :: "real × real" where
  "S4 = (
    let x = 0
    in (x, line_CPDA x)
  )"
definition small_square_area :: "nat ⇒ real" where
  "small_square_area n =
    (let
      n' = real n;
      x1 = (n' - 1) / (n'^2 - n' + 1);
      y1 = (1 / n') * x1;
      x2 = n' / (n'^2 - n' + 1);
      y2 = (1 / n') * x2;
      x3 = (n'^2 - 2 * n' + 1) / (n'^2 - n' + 1);
      y3 = (1 - x3) * (n' / (n' - 1));
      x4 = 0;
      y4 = 1
    in
      0.5 * abs (
        x1 * y2 + x2 * y3 + x3 * y4 + x4 * y1
        - y1 * x2 - y2 * x3 - y3 * x4 - y4 * x1
      )
    )"
definition n_answer :: nat where "n_answer = 32"
end