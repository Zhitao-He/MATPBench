theory GeometryProblem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
text ‹As shown in the diagram, BE=15, CB=12, CE=x, the center of ⊙E is E, 
      the tangent to ⊙E is BC. Find the value of x.›
locale geometry_problem =
  fixes B C E :: "real^2"
  assumes BE_length: "dist B E = 15"
  and CB_length: "dist C B = 12"
  and BC_tangent: "let circle = {p. dist p E = dist C E} in
                   B ∈ {p. dist p E > dist C E} ∧
                   C ∈ {p. dist p E = dist C E}"
context geometry_problem
begin
lemma tangent_perpendicular:
  "⟨C - E, C - B⟩ = 0"
proof -
  have "C ∈ {p. dist p E = dist C E}" 
    by (simp add: BC_tangent)
  from BC_tangent have "B ∉ {p. dist p E = dist C E}" 
    by auto
  have "dist C E = dist C E" by simp
  have "C ∈ {p. dist p E = dist C E}" 
    by (simp add: BC_tangent)
  (* Tangent to a circle is perpendicular to the radius at the point of tangency *)
  thus "⟨C - E, C - B⟩ = 0"
    sorry
qed
lemma right_triangle_ECB:
  "⟨E - C, C - B⟩ = 0"
proof -
  from tangent_perpendicular have "⟨C - E, C - B⟩ = 0" by simp
  thus "⟨E - C, C - B⟩ = 0"
    by (simp add: inner_commute[of "C - E" "C - B"] inner_diff_left)
qed
lemma pythagoras:
  "dist E C^2 = dist E B^2 - dist C B^2"
proof -
  from right_triangle_ECB have "⟨E - C, C - B⟩ = 0" by simp
  have "dist E B^2 = dist E C^2 + dist C B^2 + 2 * ⟨E - C, C - B⟩"
    by (simp add: dist_triangle_eq)
  with ‹⟨E - C, C - B⟩ = 0› have "dist E B^2 = dist E C^2 + dist C B^2"
    by simp
  thus "dist E C^2 = dist E B^2 - dist C B^2"
    by simp
qed
theorem value_of_x:
  "let x = dist C E in x = 9"
proof -
  from pythagoras have "dist E C^2 = dist E B^2 - dist C B^2" by simp
  with BE_length CB_length have "dist E C^2 = 15^2 - 12^2"
    by (simp add: power2_eq_square)
  hence "dist E C^2 = 225 - 144" by simp
  hence "dist E C^2 = 81" by simp
  hence "dist E C = 9" by simp
  thus "let x = dist C E in x = 9"
    by simp
qed