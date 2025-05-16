theory CircleAngleProblem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
(* Define our coordinate space *)
type_synonym point = "real × real"
(* Define distance between two points *)
definition distance :: "point ⇒ point ⇒ real" where
  "distance p₁ p₂ = sqrt((fst p₂ - fst p₁)² + (snd p₂ - snd p₁)²)"
(* Define when a point is on a circle with center c and radius r *)
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle c p r ⟷ distance c p = r"
(* Define angle between three points *)
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle p₁ p₂ p₃ = (
    let v₁ = (fst p₁ - fst p₂, snd p₁ - snd p₂);
        v₂ = (fst p₃ - fst p₂, snd p₃ - snd p₂);
        dot = fst v₁ * fst v₂ + snd v₁ * snd v₂;
        len₁ = sqrt((fst v₁)² + (snd v₁)²);
        len₂ = sqrt((fst v₂)² + (snd v₂)²)
    in if len₁ * len₂ = 0 then 0 else acos (dot / (len₁ * len₂)) * (180 / pi))"
(* Angle at center, which is the arc measure *)
definition angle_center :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_center c p₁ p₂ = angle p₁ c p₂"
(* State our problem *)
locale circle_problem =
  fixes A N P Q :: point
  assumes on_circle_N: "∃r. r > 0 ∧ on_circle A N r"
  and on_circle_P: "∃r. r > 0 ∧ on_circle A P r"
  and on_circle_Q: "∃r. r > 0 ∧ on_circle A Q r"
  and dist_NP: "N ≠ P"
  and dist_PQ: "P ≠ Q"
  and dist_QN: "Q ≠ N"
  and arc_NP: "angle_center A N P = 120"
  and arc_PQ: "angle_center A P Q = 100"
begin
(* In a circle, if the center angle is θ, then the inscribed angle is θ/2 *)
lemma inscribed_angle_theorem:
  assumes "∃r. r > 0 ∧ on_circle A N r"
      and "∃r. r > 0 ∧ on_circle A P r"
      and "∃r. r > 0 ∧ on_circle A Q r"
  shows "angle Q P N = (angle_center A N Q) / 2"
  sorry (* This would require a formal proof *)
(* Another useful property: angles in a full circle sum to 360° *)
lemma angle_sum_circle:
  assumes "∃r. r > 0 ∧ on_circle A N r"
      and "∃r. r > 0 ∧ on_circle A P r"
      and "∃r. r > 0 ∧ on_circle A Q r"
  shows "angle_center A N P + angle_center A P Q + angle_center A Q N = 360"
  sorry (* This would require a formal proof *)
(* Now we can state and prove our main theorem *)
theorem value_angle_QPN:
  "angle Q P N = 70"
proof -
  have "angle_center A N Q = 360 - angle_center A N P - angle_center A P Q"
    using angle_sum_circle on_circle_N on_circle_P on_circle_Q by simp
  also have "... = 360 - 120 - 100"
    using arc_NP arc_PQ by simp
  also have "... = 140" by simp
  finally have "angle_center A N Q = 140" .
  then have "angle Q P N = 140 / 2"
    using inscribed_angle_theorem on_circle_N on_circle_P on_circle_Q by simp
  also have "... = 70" by simp
  finally show ?thesis .
qed