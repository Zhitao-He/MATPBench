theory Geometry_Problem_Formalization
imports Main
begin
typedecl point
type_synonym angle_measure = real
consts
  J :: point
  Q :: point
  R :: point
  T :: point
  S :: point
  C :: point
consts
  angle_measure_of :: "point ⇒ point ⇒ point ⇒ angle_measure"
consts
  is_parallel :: "point ⇒ point ⇒ point ⇒ point ⇒ bool"
consts
  are_collinear :: "point ⇒ point ⇒ point ⇒ bool"
axioms
  angle_JQR_def: "angle_measure_of J Q R = 131"  
  QR_parallel_TS_def: "is_parallel Q R T S"      
  TQ_parallel_SR_def: "is_parallel T Q S R"      
  JQT_collinear_def: "are_collinear J Q T"       
  QTC_collinear_def: "are_collinear Q T C"       
  S_not_on_line_QTC_def: "¬ are_collinear Q T S" 
  distinct_points_def: "J ≠ Q ∧ Q ≠ T ∧ T ≠ C ∧ Q ≠ R ∧ T ≠ S ∧ S ≠ C"
  corresponding_angles_postulate:
    "⟦ is_parallel Q R T S; are_collinear J Q T;
       J ≠ Q; Q ≠ T; Q ≠ R; T ≠ S 
    ⟧ ⟹ angle_measure_of J Q R = angle_measure_of Q T S"
  supplementary_angles_postulate:
    "⟦ are_collinear Q T C;
       Q ≠ T; T ≠ C; 
       ¬ are_collinear Q T S 
    ⟧ ⟹ angle_measure_of Q T S + angle_measure_of S T C = 180"
theorem measure_of_angle_STC_is_49:
  "angle_measure_of S T C = 49"
  oops 
end