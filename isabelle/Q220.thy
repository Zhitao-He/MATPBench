theory FencingCost
imports Main HOL.Real
begin

(* 定义围栏问题的数学模型 *)
(* 每米围栏的成本(英镑) *)
definition cost_per_meter :: "real" where
  "cost_per_meter = 37"

(* 计算总成本 = 单价 × 周长 *)
definition total_cost :: "real ⇒ real" where
  "total_cost perimeter = cost_per_meter * perimeter"

(* 根据题目，总成本为777英镑 *)
lemma "total_cost perimeter = 777 ⟹ perimeter = 777 / cost_per_meter"
  by (simp add: total_cost_def)

(* 计算所需围栏的长度 *)
lemma fence_length: "total_cost perimeter = 777 ⟹ perimeter = 21"
  by (simp add: total_cost_def cost_per_meter_def)

end