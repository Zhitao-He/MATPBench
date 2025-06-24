theory GeometryProblem
imports "HOL-Analysis.Complex_Main"
begin
definition O_cplx :: complex where "O_cplx = 0"
axiomatization A_cplx B_cplx C_cplx E_cplx F_cplx :: complex and r_cplx :: real where
  r_cplx_pos: "r_cplx > 0" and
  on_circle_A: "abs (A_cplx - O_cplx) = r_cplx" and
  on_circle_B: "abs (B_cplx - O_cplx) = r_cplx" and
  on_circle_C: "abs (C_cplx - O_cplx) = r_cplx" and
  on_circle_E: "abs (E_cplx - O_cplx) = r_cplx" and
  on_circle_F: "abs (F_cplx - O_cplx) = r_cplx"
definition ccw_angle_rad :: "complex \<Rightarrow> complex \<Rightarrow> real" where
  "ccw_angle_rad u v = (let angle = arg (v / u) in if angle < 0 then angle + 2*pi else angle)"
definition ccw_angle_deg :: "complex \<Rightarrow> complex \<Rightarrow> real" where
  "ccw_angle_deg u v = (ccw_angle_rad u v * (180 / pi))"
axiomatization where
  angle_FOE_is_45: "ccw_angle_deg (F_cplx - O_cplx) (E_cplx - O_cplx) = 45" and
  angle_COA_is_90: "ccw_angle_deg (C_cplx - O_cplx) (A_cplx - O_cplx) = 90" and
  angle_EOB_is_90: "ccw_angle_deg (E_cplx - O_cplx) (B_cplx - O_cplx) = 90" and
  E_O_C_collinear_opposite: "(C_cplx - O_cplx) = - (E_cplx - O_cplx)"
definition MeasureOfArc_OAE :: real where
  "MeasureOfArc_OAE = ccw_angle_deg (E_cplx - O_cplx) (A_cplx - O_cplx)"
lemma problem_statement_to_prove:
  "MeasureOfArc_OAE = 270"
end