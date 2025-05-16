theory CirclePowerTheorem
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
typedecl Point
consts X :: Point    
consts A :: Point    
consts B :: Point    
consts C :: Point    
consts D :: Point    
consts E :: Point    
consts dist :: "Point ⇒ Point ⇒ real"
definition collinear :: "Point ⇒ Point ⇒ Point ⇒ bool" where
  "collinear P Q R ≡ ∃t. dist P R = dist P Q + dist Q R ∨ dist P Q = dist P R + dist R Q ∨ dist Q R = dist Q P + dist P R"
definition on_circle :: "Point ⇒ Point ⇒ bool" where
  "on_circle Center P ≡ ∃r>0. dist Center P = r"
axiomatization where
  dist_AE: "dist A E = x" and
  dist_BC: "dist B C = 4" and
  dist_BE: "dist B E = 3" and
  dist_CD: "dist C D = 2" and
  collinear_AEB: "collinear A E B" and
  collinear_DCB: "collinear D C B" and
  collinear_ACB: "collinear A C B" and
  on_circle_A: "on_circle X A" and
  on_circle_B: "on_circle X B" and
  on_circle_C: "on_circle X C" and
  on_circle_D: "on_circle X D" and
  on_circle_E: "on_circle X E"
theorem circle_power_theorem:
  assumes "collinear A E B"
      and "collinear D C B"
      and "on_circle X A"
      and "on_circle X B" 
      and "on_circle X C"
      and "on_circle X D"
      and "on_circle X E"
      and "dist A E = x"
      and "dist B E = 3"
      and "dist C D = 2"
      and "dist B C = 4"
  shows "x = 5"
  sorry  