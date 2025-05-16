theory RegularDecagonAngle
  imports Complex_Main "HOL-Analysis.Polytope"
begin
definition decagon_vertex :: "real ⇒ (real × real)" where
  "decagon_vertex k = (cos (2 * pi * k / 10), sin (2 * pi * k / 10))"
definition angle :: "(real × real) ⇒ (real × real) ⇒ (real × real) ⇒ real" where
  "angle A B C = 
    let 
      vBA = (fst A - fst B, snd A - snd B);
      vBC = (fst C - fst B, snd C - snd B);
      dot_product = (fst vBA * fst vBC + snd vBA * snd vBC);
      mag_vBA = sqrt((fst vBA)^2 + (snd vBA)^2);
      mag_vBC = sqrt((fst vBC)^2 + (snd vBC)^2);
      cos_angle = dot_product / (mag_vBA * mag_vBC)
    in 
      acos cos_angle * 180 / pi"
theorem regular_decagon_angle:
  "angle (decagon_vertex 8) (decagon_vertex 9) (decagon_vertex 0) = 36"
  sorry