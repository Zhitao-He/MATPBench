theory Angle2_39
imports Complex_Main
begin
type_synonym point = "real × real"
definition colinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "colinear P Q R ≡ 
    let (px,py) = P; (qx,qy) = Q; (rx,ry) = R in
    (qx - px) * (ry - py) = (qy - py) * (rx - px)"
definition between :: "point ⇒ point ⇒ point ⇒ bool" where
  "between P S R ≡ 
    let (px,py) = P; (sx,sy) = S; (rx,ry) = R in
    colinear P S R ∧
    (px ≤ sx ∧ sx ≤ rx ∨ rx ≤ sx ∧ sx ≤ px) ∧
    (py ≤ sy ∧ sy ≤ ry ∨ ry ≤ sy ∧ sy ≤ py)"
definition vector_angle :: "point ⇒ point ⇒ point ⇒ real" where
  "vector_angle O P Q ≡
    let (ox,oy) = O; (px,py) = P; (qx,qy) = Q;
        vp = (px - ox, py - oy);
        vq = (qx - ox, qy - oy);
        (vpx, vpy) = vp;
        (vqx, vqy) = vq;
        dot = vpx * vqx + vpy * vqy;
        magp = sqrt((vpx * vpx) + (vpy * vpy));
        magq = sqrt((vqx * vqx) + (vqy * vqy)) in
    if magp = 0 ∨ magq = 0 then 0
    else acos(dot / (magp * magq))"
definition angle_rad :: "real ⇒ real" where
  "angle_rad d = d * pi / 180"
lemma angle2_39:
  fixes P Q R S :: point
  assumes triangle_PQR: "¬ colinear P Q R"
  and S_on_PR: "colinear P S R"
  and S_between_PR: "between P S R"
  and angle_PQR_90: "vector_angle Q P R = angle_rad 90"
  and angle_QPS_51: "vector_angle P Q S = angle_rad 51" 
  and angle_QRS_33: "vector_angle R Q S = angle_rad 33"
  shows "vector_angle S Q R = angle_rad 39"
  sorry