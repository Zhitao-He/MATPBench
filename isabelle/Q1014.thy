theory Geometry_Midpoint_F
  imports Complex_Main
begin
type_synonym point = "real × real"
definition line_through :: "point ⇒ point ⇒ (real ⇒ point)" where
  "line_through P Q = (λt. ((1 - t) * fst P + t * fst Q, (1 - t) * snd P + t * snd Q))"
definition foot_perp :: "point ⇒ point ⇒ point ⇒ point" where
  "foot_perp P A B = (
    let
      (x1, y1) = A;
      (x2, y2) = B;
      (x0, y0) = P;
      dx = x2 - x1;
      dy = y2 - y1;
      t = ((dx * (x0 - x1) + dy * (y0 - y1)) / (dx^2 + dy^2))
    in
      (x1 + t * dx, y1 + t * dy)
  )"
definition circumcenter :: "point ⇒ point ⇒ point ⇒ point" where
  "circumcenter A B C = (
    let
      (x1, y1) = A; (x2, y2) = B; (x3, y3) = C;
      d = 2 * (x1*(y2 - y3) + x2*(y3 - y1) + x3*(y1 - y2));
      ux = ((x1^2 + y1^2)*(y2 - y3) + (x2^2 + y2^2)*(y3 - y1) + (x3^2 + y3^2)*(y1 - y2)) / d;
      uy = ((x1^2 + y1^2)*(x3 - x2) + (x2^2 + y2^2)*(x1 - x3) + (x3^2 + y3^2)*(x2 - x1)) / d
    in (ux, uy)
  )"
definition orthocenter :: "point ⇒ point ⇒ point ⇒ point" where
  "orthocenter A B C = (
    let
      D = foot_perp A B C;
      E = foot_perp B A C;
      (x1, y1) = A; (x2, y2) = B; (x3, y3) = C;
      (xd, yd) = D; (xe, ye) = E;
      denom = (x2 - xe)*(y3 - yd) - (y2 - ye)*(x3 - xd);
      t = ((x1 - x2)*(y3 - yd) - (y1 - y2)*(x3 - xd)) / denom;
      xh = x2 + t * (xe - x2);
      yh = y2 + t * (ye - y2)
    in (xh, yh)
  )"
locale triangle =
  fixes A B C :: point
  assumes non_collinear: "¬ collinear {A, B, C}"
begin
definition O :: point where "O = circumcenter A B C"
definition H :: point where "H = orthocenter A B C"
definition D :: point where "D = foot_perp B A C"
definition E :: point where "E = foot_perp C A B"
definition line_OH :: "(real ⇒ point)" where
  "line_OH = line_through O H"
definition line_AG :: "(real ⇒ point)" where
  "line_AG = (λt. ((1 - t) * fst A + t * fst G, (1 - t) * snd A + t * snd G))"
definition line_DE :: "(real ⇒ point)" where
  "line_DE = line_through D E"
definition perp_OH_at_A :: "(real ⇒ point)" where
  "perp_OH_at_A = (
    let
      (xA, yA) = A;
      (xO, yO) = O;
      (xH, yH) = H;
      dx = xH - xO;
      dy = yH - yO
    in
      λt. (xA - t * dy, yA + t * dx)
  )"
definition G :: point where
  "G = (
    let
      (xA, yA) = A; (xB, yB) = B; (xC, yC) = C;
      (xO, yO) = O; (xH, yH) = H;
      dx = xH - xO; dy = yH - yO;
      denom = (-(dy)*(yC - yB) - dx*(xC - xB));
      t = ((xB - xA)*(yC - yB) - (yB - yA)*(xC - xB)) / denom;
      xG = xA - t*dy;
      yG = yA + t*dx
    in (xG, yG)
  )"
definition F :: point where
  "F = (
    let
      (xA, yA) = A;
      (xO, yO) = O; (xH, yH) = H;
      dx = xH - xO; dy = yH - yO;
      (xD, yD) = D; (xE, yE) = E;
      denom = (-(dy)*(yE - yD) - dx*(xE - xD));
      t = ((xD - xA)*(yE - yD) - (yD - yA)*(xE - xD)) / denom;
      xF = xA - t*dy;
      yF = yA + t*dx
    in (xF, yF)
  )"
definition is_midpoint :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_midpoint F A G ⟷ (fst F = (fst A + fst G)/2 ∧ snd F = (snd A + snd G)/2)"
theorem F_is_midpoint_AG:
  "is_midpoint F A G"
  sorry
end
end