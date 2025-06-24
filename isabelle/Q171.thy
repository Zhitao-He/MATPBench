theory Circle_Angle_Problem
  imports Complex_Main
begin
locale points =
  fixes F G H J :: "'a::euclidean_space"
locale cyclic_quadrilateral = points F G H J +
  assumes concyclic: "∃O r. dist O F = r ∧ dist O G = r ∧ dist O H = r ∧ dist O J = r"
definition angle :: "'a::euclidean_space ⇒ 'a ⇒ 'a ⇒ real" where
  "angle A B C = acos (((A - B) ⋅ (C - B)) / (norm (A - B) * norm (C - B)))"
locale circle_angle_problem = cyclic_quadrilateral F G H J +
  assumes GH_arc_angle: "angle G H F = (78 / 180) * pi"
  defines "angle3 ≡ angle F J H"
  assumes angle3_value: "angle3 = (39 / 180) * pi"
end