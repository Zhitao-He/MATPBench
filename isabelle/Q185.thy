theory Problem_AE_Length
imports "HOL-Analysis.Analysis" 
begin
definition AD_length :: real where
  "AD_length = 12.0"
definition FE_length :: real where
  "FE_length = 18.0"
definition r :: real where
  "r = AD_length"
definition DF_length :: real where
  "DF_length = r"
definition DE_length :: real where
  "DE_length = DF_length + FE_length"
definition AE_length_squared :: real where
  "AE_length_squared = DE_length ^ (2::nat) - AD_length ^ (2::nat)"
definition AE_length :: real where
  "AE_length = sqrt(AE_length_squared)"
end