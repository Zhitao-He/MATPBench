theory FlowerGarden
imports Main Real
begin
definition region1_area :: "real" where "region1_area = 4 * 5"
definition region2_area :: "real" where "region2_area = 7 * 3"
definition region3_area :: "real" where "region3_area = 6 * 1"
definition region4_area :: "real" where "region4_area = 2 * 2"
definition region5_area :: "real" where "region5_area = 5 * 3"
definition aster_cost :: "real" where "aster_cost = 1"
definition begonia_cost :: "real" where "begonia_cost = 1.5"
definition canna_cost :: "real" where "canna_cost = 2"
definition dahlia_cost :: "real" where "dahlia_cost = 2.5"
definition lily_cost :: "real" where "lily_cost = 3"
definition flower_costs :: "real list" where "flower_costs = [aster_cost, begonia_cost, canna_cost, dahlia_cost, lily_cost]"
definition areas :: "real list" where "areas = [region1_area, region2_area, region3_area, region4_area, region5_area]"
definition calculate_cost :: "nat list ⇒ real" where
"calculate_cost perm = 
  (areas ! 0) * (flower_costs ! (perm ! 0)) +
  (areas ! 1) * (flower_costs ! (perm ! 1)) +
  (areas ! 2) * (flower_costs ! (perm ! 2)) +
  (areas ! 3) * (flower_costs ! (perm ! 3)) +
  (areas ! 4) * (flower_costs ! (perm ! 4))"
theorem minimal_garden_cost: "∃perm. set perm = {0,1,2,3,4} ∧ length perm = 5 ∧ distinct perm ∧ calculate_cost perm = 108"
  oops  