theory MVUB_Midsegment
  imports Main
begin
typedecl Point
definition Segment :: "Point ⇒ Point ⇒ (Point × Point)" where
  "Segment A B = (A, B)"
definition is_midpoint :: "Point ⇒ Point ⇒ Point ⇒ bool" where
  "is_midpoint M A B ⟷ (∃f::real. 0 < f ∧ f < 1 ∧ (M = (A, B) ∨ M = (B, A)))"
definition parallel :: "(Point × Point) ⇒ (Point × Point) ⇒ bool" where
  "parallel AB CD ≡ undefined"  
definition is_trapezoid :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool" where
  "is_trapezoid M V U B ≡ parallel (Segment M B) (Segment V U) ∧ ¬parallel (Segment M V) (Segment B U)"
definition is_midsegment_of_quadrilateral :: "(Point × Point) ⇒ (Point × Point × Point × Point) ⇒ bool" where
  "is_midsegment_of_quadrilateral (L, Q) (M, V, U, B) ≡ 
    (∃MB VU. MB = Segment M B ∧ VU = Segment V U ∧
      is_midpoint L M V ∧ is_midpoint Q B U)"
axiomatization
  J H L V M N B U Q O S Y C G P :: Point and
  x y :: real
where
  JH_def: "Segment J H ≠ undefined" and
  JH_len: "" and
  JH_eq: "" and
  LV_len: "" and
  ML_len: "" and
  ML_LV_eq: "" and
  MN_len: "" and
  QO_len: "" and
  Q_mid_BU: "is_midpoint Q B U" and
  MB_VU_parallel: "parallel (Segment M B) (Segment V U)" and
  MVUB_trapezoid: "is_trapezoid M V U B"
definition LQ_is_midsegment_MVUB :: bool where
  "LQ_is_midsegment_MVUB ≡ is_midsegment_of_quadrilateral (L, Q) (M, V, U, B)"
end