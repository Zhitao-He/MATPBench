theory RegularPentagonRing
imports Complex_Main "HOL-Analysis.Analysis"
begin
text ‹Regular pentagons are arranged in a ring, each with a perimeter of 65.
The inner boundary forms a regular polygon (decagon) with perimeter P.
We want to show that P = 130.›
(* Number of pentagons in the ring *)
definition num_pentagons :: "nat" where
  "num_pentagons = 10"
(* Perimeter of each regular pentagon *)
definition pentagon_perimeter :: "real" where
  "pentagon_perimeter = 65"
(* Side length of each pentagon *)
definition pentagon_side :: "real" where
  "pentagon_side = pentagon_perimeter / 5"
(* The perimeter of the inner regular polygon (decagon) *)
definition inner_perimeter :: "real" where
  "inner_perimeter = num_pentagons * pentagon_side"
theorem inner_perimeter_value: "inner_perimeter = 130"
proof -
  have "inner_perimeter = num_pentagons * pentagon_side" 
    by (simp add: inner_perimeter_def)
  also have "... = 10 * (pentagon_perimeter / 5)"
    by (simp add: num_pentagons_def pentagon_side_def)
  also have "... = 10 * (65 / 5)"
    by (simp add: pentagon_perimeter_def)
  also have "... = 10 * 13"
    by simp
  also have "... = 130"
    by simp
  finally show ?thesis .
qed