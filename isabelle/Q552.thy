theory CircleChordTheorem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
text ‹Problem: As shown in the diagram, BA=5, BC=12, DB=10, EB=x, O is the center of ⊙O. 
      Find the value of x.›
locale circle_with_chords =
  fixes O :: "real^2"    (* center of the circle *)
  fixes A B C D E :: "real^2"  (* points on the plane *)
  assumes on_circle_A: "dist A O = dist B O"  (* A is on circle with center O *)
  assumes on_circle_C: "dist C O = dist B O"  (* C is on circle with center O *)
  assumes on_circle_D: "dist D O = dist B O"  (* D is on circle with center O *)
  assumes on_circle_E: "dist E O = dist B O"  (* E is on circle with center O *)
  assumes BA_length: "dist B A = 5"
  assumes BC_length: "dist B C = 12"
  assumes DB_length: "dist D B = 10"
  assumes EB_length: "dist E B = x"
  assumes A_E_B_collinear: "∃t. 0 < t ∧ t < 1 ∧ B = (1 - t) *R A + t *R E"
  assumes A_D_B_collinear: "∃t. 0 < t ∧ t < 1 ∧ B = (1 - t) *R A + t *R D"
  assumes D_C_B_collinear: "∃t. 0 < t ∧ t < 1 ∧ B = (1 - t) *R D + t *R C"
  assumes distinct_points: "A ≠ B ∧ B ≠ E ∧ C ≠ D"
context circle_with_chords
begin
theorem circular_power_theorem:
  "x = 6"
proof -
  (* By power of a point theorem, if B lies on two chords AE and DC
     then BA * BE = BD * BC *)
  have "dist B A * dist B E = dist B D * dist B C" 
    using on_circle_A on_circle_C on_circle_D on_circle_E
    by (metis power_of_point_theorem[where ?O=O])
  (* Substitute the known lengths *)
  hence "5 * x = 10 * 12" 
    using BA_length BC_length DB_length EB_length by simp
  (* Solve for x *)
  hence "5 * x = 120" by simp
  hence "x = 120 / 5" by (simp add: field_simps)
  thus "x = 6" by simp
qed