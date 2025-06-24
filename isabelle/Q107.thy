theory Folded_Equilateral_Triangle
  imports Complex_Main
begin
type_synonym point = "real × real"
definition A :: point where "A = (6, 6 * sqrt 3)"
definition B :: point where "B = (0, 0)"
definition C :: point where "C = (12, 0)"
definition P :: point where "P = (9, 0)"
definition fold_line :: "point ⇒ point ⇒ (real × real)" where
  "fold_line A P = (
    let mx = (fst A + fst P) / 2;
        my = (snd A + snd P) / 2;
        dx = fst P - fst A;
        dy = snd P - snd A
    in (mx, my))"
definition reflect_over_line :: "point ⇒ point ⇒ point ⇒ point" where
  "reflect_over_line A P Q =
    (let
      -- 直线PQ的方向向量
      dx = fst Q - fst P;
      dy = snd Q - snd P;
      -- 单位方向向量
      len = sqrt (dx^2 + dy^2);
      ux = dx / len;
      uy = dy / len;
      -- AP向量
      ax = fst A - fst P;
      ay = snd A - snd P;
      -- 投影长度
      proj = ax * ux + ay * uy;
      -- 投影点
      px = fst P + proj * ux;
      py = snd P + proj * uy;
      -- 对称点
      rx = 2 * px - fst A;
      ry = 2 * py - snd A
    in (rx, ry))"
definition M :: point where
  "M = ((fst A + fst P) / 2, (snd A + snd P) / 2)"
definition AP_vec :: "point" where
  "AP_vec = (fst P - fst A, snd P - snd A)"
definition fold_dir :: "point" where
  "fold_dir = (snd A - snd P, fst P - fst A)"
definition fold_line_eq :: "real ⇒ real" where
  "fold_line_eq x = (
    let
      mx = fst M;
      my = snd M;
      dx = fst fold_dir;
      dy = snd fold_dir
    in
      if dx ≠ 0 then
        (dy / dx) * (x - mx) + my
      else
        0
  )"
definition Q :: point where
  "Q = (
    let
      mx = fst M;
      my = snd M;
      dx = fst fold_dir;
      dy = snd fold_dir
    in
      if dx ≠ 0 then
        let
          -- 直线BC: y = 0
          -- 折痕: y = (dy/dx)*(x - mx) + my
          -- 令y=0，解x
          xq = mx - my * dx / dy
        in (xq, 0)
      else
        (mx, 0)
  )"
definition R :: point where
  "R = (
    let
      mx = fst M;
      my = snd M;
      dx = fst fold_dir;
      dy = snd fold_dir
    in
      if dx ≠ 0 then
        let
          -- 直线AB: y = (sqrt 3) * x
          -- 折痕: y = (dy/dx)*(x - mx) + my
          -- 令 (dy/dx)*(x - mx) + my = (sqrt 3) * x
          -- (dy/dx)*x - (dy/dx)*mx + my = (sqrt 3) * x
          -- ((dy/dx) - sqrt 3) * x = (dy/dx)*mx - my
          x = ((dy/dx)*mx - my) / ((dy/dx) - sqrt 3)
          y = sqrt 3 * x
        in (x, y)
      else
        (mx, sqrt 3 * mx)
  )"
definition fold_length :: real where
  "fold_length = sqrt ((fst Q - fst R)^2 + (snd Q - snd R)^2)"
end