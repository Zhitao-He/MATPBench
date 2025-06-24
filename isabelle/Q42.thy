theory Non_Differentiable_Function
  imports Main "HOL-Analysis.Analysis"
begin
definition x1 :: real where "x1 = 1991"
definition y1 :: real where "y1 = 27.0"
definition x2 :: real where "x2 = 1993"
definition y2 :: real where "y2 = 30.5"
definition x3 :: real where "x3 = 1995"
definition y3 :: real where "y3 = 34.8"
definition x4 :: real where "x4 = 1997"
definition y4 :: real where "y4 = 36.5"
definition x5 :: real where "x5 = 1999"
definition y5 :: real where "y5 = 34.6"
definition x6 :: real where "x6 = 2002"
definition y6 :: real where "y6 = 28.5"
definition x7 :: real where "x7 = 2003"
definition y7 :: real where "y7 = 22.0"
definition x8 :: real where "x8 = 2005"
definition y8 :: real where "y8 = 22.8"
definition f :: "real => real" where
  "f x = (
    if x >= x1 and x < x2 then y1 + (y2 - y1) / (x2 - x1) * (x - x1)
    else if x >= x2 and x < x3 then y2 + (y3 - y2) / (x3 - x2) * (x - x2)
    else if x >= x3 and x < x4 then y3 + (y4 - y3) / (x4 - x3) * (x - x3)
    else if x >= x4 and x < x5 then y4 + (y5 - y4) / (x5 - x4) * (x - x4)
    else if x >= x5 and x < x6 then y5 + (y6 - y5) / (x6 - x5) * (x - x5)
    else if x >= x6 and x < x7 then y6 + (y7 - y6) / (x7 - x6) * (x - x6)
    else if x >= x7 and x <= x8 then y7 + (y8 - y7) / (x8 - x7) * (x - x7)
    else 0 
  )"
lemma function_is_not_differentiable_at_every_point:
  "∃x. ¬ differentiable (at x) f"
end