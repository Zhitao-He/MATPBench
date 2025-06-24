theory Geometry_Problem
  imports Main
begin
typedecl Point
consts
  angle :: "Point ⇒ Point ⇒ Point ⇒ real"  ("∠_ _ _")
consts
  parallel :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool"  ("_ _ ∥ _ _" [51,51,51,51] 50)
consts
  x :: real
  y :: real
consts
  G E O I H B :: Point
axiomatization where
  angle_GOI: "angle G O I = 3 * y + 1" and
  angle_HBI: "angle H B I = 3 * x + 11" and
  angle_OIE: "angle O I E = 4 * x - 5" and
  parallel_GE_OI: "parallel G E O I" and
  parallel_IB_OH: "parallel I B O H" and
  parallel_OI_HB: "parallel O I H B"
definition Value :: "real ⇒ bool" where
  "Value x ≡ x = 16"
end