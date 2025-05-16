theory TriangleIncircleAngle
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
definition triangle_ABC :: "real × real ⇒ real × real ⇒ real × real ⇒ bool" where
  "triangle_ABC A B C ≡ ¬collinear A B C"
definition angle :: "real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "angle A B C = arccos (((B - A) • (C - B)) / (norm (B - A) * norm (C - B)))"
definition degrees_to_radians :: "real ⇒ real" where
  "degrees_to_radians d = d * pi / 180"
definition incircle :: "real × real ⇒ real × real ⇒ real × real ⇒ real × real × real" where
  "incircle A B C = 
    let
      a = dist B C;
      b = dist A C;
      c = dist A B;
      p = a + b + c;
      I = ((a * fst A + b * fst B + c * fst C) / p, (a * snd A + b * snd B + c * snd C) / p)
    in (I, dist I A * sin (angle B A C), I)"
definition tangent_point :: "real × real ⇒ real × real ⇒ real × real ⇒ real × real" where
  "tangent_point A B I = 
    let
      v = B - A;
      u = normalize v;
      d = dist I A * sin (angle (I - A) A (B - A))
    in A + u * d"
theorem
  assumes "triangle_ABC A B C"
  assumes "angle B A C = degrees_to_radians 72"
  assumes "(I, r, _) = incircle A B C"
  assumes "D = tangent_point B C I"
  assumes "E = tangent_point A C I"
  assumes "F = tangent_point A B I"
  shows "angle E D F = degrees_to_radians 54"
proof -
  have "angle E D F = degrees_to_radians 54"
    sorry 
  thus ?thesis by simp
qed