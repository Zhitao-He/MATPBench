theory Four_Tangent_Circles
  imports Complex_Main
begin
type_synonym point = "real × real"
record circle =
  center :: point
  radius :: real
locale triangle =
  fixes A B C :: point
  assumes non_collinear: "¬ collinear {A, B, C}"
begin
definition P :: circle where "P ≡ ⦇center = P_c, radius = 1⦈"
definition Q :: circle where "Q ≡ ⦇center = Q_c, radius = 1⦈"
definition R :: circle where "R ≡ ⦇center = R_c, radius = 1⦈"
definition S :: circle where "S ≡ ⦇center = S_c, radius = 1⦈"
definition externally_tangent :: "circle ⇒ circle ⇒ bool" where
  "externally_tangent c1 c2 ≡
    dist (center c1) (center c2) = radius c1 + radius c2"
definition tangent_to_line :: "circle ⇒ point ⇒ point ⇒ bool" where
  "tangent_to_line c X Y ≡
    let (x0, y0) = center c; r = radius c;
        (x1, y1) = X; (x2, y2) = Y
    in
      abs ((y2 - y1) * x0 - (x2 - x1) * y0 + x2*y1 - y2*x1) /
      sqrt ((y2 - y1)^2 + (x2 - x1)^2) = r"
axiomatization
  P_c Q_c R_c S_c :: point
where
  PQ_tangent: "externally_tangent P Q"
and QR_tangent: "externally_tangent Q R"
and RS_tangent: "externally_tangent R S"
and SP_tangent: "externally_tangent S P"
and PR_tangent: "externally_tangent P R"
and QS_tangent: "externally_tangent Q S"
and P_tangent_AB: "tangent_to_line P A B"
and Q_tangent_AB: "tangent_to_line Q A B"
and Q_tangent_BC: "tangent_to_line Q B C"
and R_tangent_BC: "tangent_to_line R B C"
and R_tangent_CA: "tangent_to_line R C A"
and S_tangent_CA: "tangent_to_line S C A"
and S_tangent_AB: "tangent_to_line S A B"
and P_tangent_CA: "tangent_to_line P C A"
fixes r :: real
assumes r_pos: "r > 0"
definition R' :: circle where "R' ≡ ⦇center = R'_c, radius = r⦈"
axiomatization
  R'_c :: point
where
  RQ_tangent: "externally_tangent R' Q"
and RS_tangent': "externally_tangent R' S"
and RP_tangent: "externally_tangent R' P"
and R'_tangent_BC: "tangent_to_line R' B C"
axiomatization
where
  PQ_tangent': "externally_tangent P Q"
and PS_tangent': "externally_tangent P S"
and PR'_tangent: "externally_tangent P R'"
end
end