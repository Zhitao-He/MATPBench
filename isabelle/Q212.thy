theory CircumcenterProblem
  imports "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real ^ 2"
definition is_line :: "point set ⇒ bool" where
  "is_line s ≡ ∃A∈s. ∃B∈s. A≠B ∧ s = {X. collinear A B X}"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((1::real)/(2::real)) *⇩R (A + B)"
definition perpendicular_segment_line :: "point ⇒ point ⇒ point set ⇒ bool" where
  "perpendicular_segment_line A B line_set ≡
    ∀P1 ∈ line_set. ∀P2 ∈ line_set. P1 ≠ P2 ⟶ inner (P2 - P1) (B - A) = (0::real)"
definition is_perpendicular_bisector :: "point set ⇒ point ⇒ point ⇒ bool" where
  "is_perpendicular_bisector line_s A B ≡
    A ≠ B ∧                                   
    is_line line_s ∧                          
    midpoint A B ∈ line_s ∧                   
    perpendicular_segment_line A B line_s"    
locale TriangleCircumcenter =
  fixes P Q R T :: point  
  fixes x y z :: real     
  fixes l m n :: "point set" 
  assumes
    non_collinear_PQR: "¬ collinear P Q R" and
    l_is_pb_QR: "is_perpendicular_bisector l Q R" and 
    m_is_pb_PR: "is_perpendicular_bisector m P R" and 
    n_is_pb_PQ: "is_perpendicular_bisector n P Q" and 
    T_on_l: "T ∈ l" and
    T_on_m: "T ∈ m" and
    T_on_n: "T ∈ n" and
    TQ_len: "dist T Q = (2::real) * x" and
    PT_len: "dist P T = (3::real) * y - (1::real)" and
    TR_len: "dist T R = (8::real)" and
    z_val: "z = (3::real)"
begin
end 
end