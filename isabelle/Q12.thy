theory Function_Discontinuity_Analysis
  imports
    Main
    "HOL-Library.Floor_Ceil" 
    "HOL-Analysis.Topology"  
begin
definition f :: "real \<Rightarrow> real"
  where "f x = (if x \<ge> 0
                 then - (real_of_int (floor x))
                 else - (real_of_int (ceil x)))"
lemma statement_function_not_continuous_at_each_point:
  "\<forall>x :: real. \<not> (f continuous at x)"
end