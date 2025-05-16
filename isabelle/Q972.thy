theory TangentCircleGeometry
imports Complex_Main "HOL-Analysis.Analysis"
begin
type_synonym point = "complex"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = cmod (p - q)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p q r ⟷ (∃t. (p ≠ q ∧ r = p + t * (q - p)) ∨ 
                         (p = q ∧ p = r))"
definition on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "on_circle p c r ⟷ distance p c = r"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = arg((A - B) / (C - B))"
definition angle_eq_mod_pi :: "real ⇒ real ⇒ bool" where
  "angle_eq_mod_pi a b ⟷ (∃k::int. a = b + k * pi ∨ a = b + k * pi + pi)"
definition is_tangent :: "point ⇒ point ⇒ point ⇒ real ⇒ bool" where
  "is_tangent P T O r ⟷ on_circle T O r ∧ 
                          (∀Q. on_circle Q O r ∧ collinear P Q T ⟶ Q = T)"
locale tangent_circle_problem =
  fixes O :: point      
    and r :: real       
    and A B C E F P D :: point   
  assumes r_pos: "r > 0"  
    and A_on_circle: "on_circle A O r"  
    and B_on_circle: "on_circle B O r"  
    and C_on_circle: "on_circle C O r"  
    and E_on_circle: "on_circle E O r"  
    and F_on_circle: "on_circle F O r"  
    and AB_diameter: "A - O = -(B - O)"  
    and PE_tangent: "is_tangent P E O r"  
    and PF_tangent: "is_tangent P F O r"  
    and C_on_PB: "collinear P B C ∧ C ≠ B"  
    and D_intersection: "∃t1 t2. t1 > 0 ∧ t2 > 0 ∧ 
                               D = A + t1 * (F - A) ∧ 
                               D = B + t2 * (E - B)"  
theorem angle_PCD_eq_PCE:
  assumes "tangent_circle_problem O r A B C E F P D"
  shows "angle_eq_mod_pi (angle P C D) (angle P C E)"
  oops