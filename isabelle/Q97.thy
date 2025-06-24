theory IMO2021_Area_Quadrilateral
  imports Complex_Main
begin
type_synonym point = "real × real"
definition vec_sub :: "point ⇒ point ⇒ point" (infixl "-v" 65) where
  "A -v B ≡ (fst A - fst B, snd A - snd B)"
definition cross :: "point ⇒ point ⇒ real" where
  "cross u v ≡ fst u * snd v - snd u * fst v"
definition area_triangle :: "point ⇒ point ⇒ point ⇒ real" where
  "area_triangle A B C ≡ (1/2) * cross (B -v A) (C -v A)"
definition area_quadrilateral :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "area_quadrilateral A B C D ≡ area_triangle A B C + area_triangle A C D"
definition A :: point where "A = (0,12)"
definition B :: point where "B = (0,0)"
definition C :: point where "C = (xC,0)"  
definition E :: point where "E = (0,9)"
definition F :: point where
  "F = (10 * xC / 37, 12 - 10 * 12 / 37)"
definition xC :: real where "xC = 37"
definition D :: point where "D = (12,0)"
definition line_param :: "point ⇒ point ⇒ real ⇒ point" where
  "line_param P Q t = (fst P + t * (fst Q - fst P), snd P + t * (snd Q - snd P))"
definition G :: point where
  "G = (
    let
      ex = fst E; ey = snd E;
      fx = fst F; fy = snd F;
      ax = fst A; ay = snd A;
      dx = fst D; dy = snd D;
      det = (fx - ex) * (ay - dy) - (fy - ey) * (ax - dx);
      s = ((ax - ex) * (ay - dy) - (ay - ey) * (ax - dx)) / det
    in
      (ex + s * (fx - ex), ey + s * (fy - ey))
  )"
definition area_DCFG :: real where
  "area_DCFG = abs (area_quadrilateral D C F G)"
end