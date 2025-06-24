theory Problem_Statement
imports Main
begin
definition AD_length :: real where
  "AD_length = 11"
definition AE_height :: real where 
  "AE_height = 13"
definition Trapezoid_Area :: real where
  "Trapezoid_Area = 177"
definition is_BC_length_solution :: "real => bool" where
  "is_BC_length_solution x = (
    x > 0 ∧ 
    Trapezoid_Area = (AD_length + x) * AE_height / (2::real)
  )"
end