theory Shaded_Region_Area
  imports Complex_Main
begin
type_synonym point = complex
record circle =
  center :: point
  radius :: real
definition omega1 :: circle where
  "omega1 = ⦇ center = 0, radius = 4 ⦈"
definition A :: point where
  "A = 4"
definition B :: point where
  "B = 4 * exp (2 * pi * ii / 3)"
definition C :: point where
  "C = 4 * exp (4 * pi * ii / 3)"
definition omega2 :: circle where
  "omega2 = ⦇ center = 2, radius = 2 ⦈"
definition D :: point where
  "D = (let
      zA = A;
      zB = B;
      c2 = center omega2;
      r2 = radius omega2;
      v = zB - zA;
      t = (norm (c2 - zA)^2 - r2^2 + norm v^2) / (2 * Re (v * cnj (c2 - zA)))
    in zA + t * v
  )"
definition E :: point where
  "E = (let
      zA = A;
      zC = C;
      c2 = center omega2;
      r2 = radius omega2;
      v = zC - zA;
      t = (norm (c2 - zA)^2 - r2^2 + norm v^2) / (2 * Re (v * cnj (c2 - zA)))
    in zA + t * v
  )"
definition shaded_region :: "point set" where
  "shaded_region = 
    {z. 
      (norm (z - center omega1) ≤ radius omega1) ∧
      (Im z ≤ 0) ∧
      (let 
        θB = Arg (B - center omega1);
        θC = Arg (C - center omega1);
        θ = Arg (z - center omega1)
      in θB ≤ θ ∧ θ ≤ θC)
      ∧
      (norm (z - center omega2) ≥ radius omega2 ∨ Re z ≤ Re D ∨ Re z ≥ Re E)
    }"
definition shaded_area :: real where
  "shaded_area = 6 * sqrt 3 + 4 * pi"
end