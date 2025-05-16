theory GeometryProblem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin

text ‹As shown in the diagram, PS=3, RY=5, WX=10, WY=8, XY=6, RP is parallel to XW, 
RQ is perpendicular to PQ, WY is perpendicular to XY, YS⊥PS. Find the length of line PQ.›

locale geometry_problem =
  fixes P S R Y W X Q :: "real^2"
  assumes PS: "dist P S = 3"
  and RY: "dist R Y = 5"
  and WX: "dist W X = 10"
  and WY: "dist W Y = 8"
  and XY: "dist X Y = 6"
  and RP_parallel_XW: "∃c. R - P = c *⇩R (X - W)"
  and RQ_perp_PQ: "(R - Q) • (P - Q) = 0"
  and WY_perp_XY: "(W - Y) • (X - Y) = 0"
  and YS_perp_PS: "(Y - S) • (P - S) = 0"

context geometry_problem
begin

theorem PQ_length: "dist P Q = 6"
  sorry

end

end