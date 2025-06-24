theory GeometryProblem_LineSegments
imports Main
begin
lemma statement_of_geometry_problem:
  fixes A :: real 
  fixes D :: real 
  fixes C :: real 
  fixes B :: real 
  assumes point_order: "A < D ∧ D < C ∧ C < B"
  assumes length_CB_is_4: "B - C = 4.0"
  assumes length_DB_is_7: "B - D = 7.0"
  assumes D_is_midpoint_of_AC: "D - A = C - D"
  shows resulting_length_AC_is_6: "C - A = 6.0"
oops 
end