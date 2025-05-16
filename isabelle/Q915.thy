theory AngleProblem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle center p r ≡ (let (x₁,y₁) = center; (x₂,y₂) = p 
                           in (x₂-x₁)² + (y₂-y₁)² = r²)"
definition angle_deg :: "point ⇒ point ⇒ point ⇒ real" where
  "angle_deg A O B = (
    let (xₐ,yₐ) = A; (xₒ,yₒ) = O; (xᵦ,yᵦ) = B;
        vₐ = (xₐ-xₒ, yₐ-yₒ);
        vᵦ = (xᵦ-xₒ, yᵦ-yₒ);
        dot = fst vₐ * fst vᵦ + snd vₐ * snd vᵦ;
        mag_a = sqrt((fst vₐ)² + (snd vₐ)²);
        mag_b = sqrt((fst vᵦ)² + (snd vᵦ)²);
        cos_angle = dot / (mag_a * mag_b)
    in (180 / pi) * arccos(cos_angle))"
locale angle_problem =
  fixes H J K L M :: point
  assumes M_center: "∃r > 0. on_circle M H r ∧ on_circle M J r ∧ 
                            on_circle M K r ∧ on_circle M L r"
  assumes distinct: "H ≠ J ∧ J ≠ K ∧ K ≠ L ∧ L ≠ H ∧
                     M ≠ H ∧ M ≠ J ∧ M ≠ K ∧ M ≠ L"
  assumes angle_HMJ: "angle_deg H M J = 79"
  assumes angle_KML: "angle_deg K M L = 77"
context angle_problem
begin
theorem angle_JMK: "angle_deg J M K = 103"
  sorry