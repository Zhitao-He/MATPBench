theory Tangent_Quadrilateral_Problem
  imports Main
begin
typedecl Point
consts J :: Point
consts S A T B U C R D :: Point
consts circleJ :: "Point ⇒ bool"
definition tangent_at :: "Point ⇒ Point ⇒ bool" where
  "tangent_at P Q ≡ (circleJ Q ∧ (∀ X. circleJ X ⟶ collinear P Q X ⟶ X = Q))"
consts length :: "Point ⇒ Point ⇒ real"
axiomatization where
  RD_eq_3: "length R D = 3" and
  SA_eq_3: "length S A = 3" and
  TA_eq_x: "length T A = x" and
  UC_eq_x: "length U C = x"
axiomatization where
  tangent_RD: "tangent_at R D" and
  tangent_SA: "tangent_at S A" and
  tangent_SD: "tangent_at S D" and
  tangent_TA: "tangent_at T A" and
  tangent_TB: "tangent_at T B" and
  tangent_UB: "tangent_at U B" and
  tangent_UC: "tangent_at U C" and
  tangent_RC: "tangent_at R C"
axiomatization where
  tangent_length_eq: "⟦tangent_at P Q; tangent_at P Q'; Q ≠ Q'⟧ ⟹ length P Q = length P Q'"
definition perimeter_TSRU :: real where
  "perimeter_TSRU = length T S + length S R + length R U + length U T"
axiomatization where
  perimeter_TSRU_eq_18: "perimeter_TSRU = 18"
definition Value :: "real ⇒ bool" where
  "Value x ≡ x = 3/2"
end