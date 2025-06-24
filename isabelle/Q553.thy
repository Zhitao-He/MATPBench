theory Line_Segment_Problem
imports Main
begin
definition BQ_len :: real where
  "BQ_len = 6"
definition QC_len :: real where
  "QC_len = 8"
consts x :: real
axiom segment_addition_property:
  "QC_len = BQ_len + x"
end