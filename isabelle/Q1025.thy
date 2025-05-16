theory Triangle_Altitude_Midpoint
imports
  Complex_Main
  "HOL-Algebra.Real_Vector_Spaces"
begin

type_synonym point = "real × real"

definition dist :: "point ⇒ point ⇒ real" where
  "dist P Q = sqrt((fst P - fst Q)^2 + (snd P - snd Q)^2)"

definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = (∃t. (fst C = fst A + t * (fst B - fst A) ∧ 
                          snd C = snd A + t * (snd B - snd A)) ∨
                        (fst C = fst B + t * (fst A - fst B) ∧ 
                          snd C = snd B + t * (snd A - snd B)))"

definition line_point :: "point ⇒ point ⇒ real ⇒ point" where
  "line_point P Q t = (fst P + t * (fst Q - fst P), snd P + t * (snd Q - snd P))"

definition on_line :: "point ⇒ point ⇒ point ⇒ bool" where
  "on_line P Q R = (∃t. R = line_point P Q t)"

definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint P Q = ((fst P + fst Q)/2, (snd P + snd Q)/2)"

definition perp_bisector :: "point ⇒ point ⇒ point × (real × real)" where
  "perp_bisector P Q = (
    let mid = midpoint P Q;
        dx = fst Q - fst P;
        dy = snd Q - snd P
    in (mid, (-dy, dx))
  )"

definition det :: "real ⇒ real ⇒ real ⇒ real ⇒ real" where
  "det a b c d = a*d - b*c"

definition proj_point_on_line :: "point ⇒ point ⇒ point ⇒ point" where
  "proj_point_on_line A B C = 
    let v1 = (fst C - fst B, snd C - snd B);
        v2 = (fst A - fst B, snd A - snd B);
        t = ((fst v1) * (fst v2) + (snd v1) * (snd v2)) / 
            ((fst v1)^2 + (snd v1)^2)
    in line_point B C t"

definition circumcenter :: "point ⇒ point ⇒ point ⇒ point" where
  "circumcenter A B C =
    let (mAB, dAB) = perp_bisector A B;
        (mBC, dBC) = perp_bisector B C;
        a1 = fst dAB; b1 = -(fst dBC);
        c1 = snd dAB; d1 = -(snd dBC);
        e1 = fst mBC - fst mAB;
        f1 = snd mBC - snd mAB;
        det1 = det a1 b1 c1 d1
    in if det1 = 0 then A  (* fallback, shouldn't happen for non-collinear points *)
       else 
         let s = det e1 b1 f1 d1 / det1
         in (fst mAB + s * a1, snd mAB + s * c1)"

lemma triangle_altitude_midpoint:
  fixes A B C :: point
  assumes non_collinear: "¬collinear A B C"
  defines "D ≡ proj_point_on_line A B C"
  defines "M ≡ midpoint B C"
  defines "O ≡ circumcenter A B C"
  shows "dist O M = dist O D"
sorry

end