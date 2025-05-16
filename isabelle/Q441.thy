theory Segment_Product
  imports Complex_Main
begin
definition unit_circle :: "complex set" where
  "unit_circle = {z. cmod z = 1}"
definition O :: "complex" where
  "O = 0"
definition S :: "complex" where
  "S = Complex 0 (-1)"
definition A :: "nat ⇒ complex" where
  "A k = Complex (cos (real k * pi / 7)) (sin (real k * pi / 7))"
definition altitude_point :: "complex ⇒ complex" where
  "altitude_point z = Complex (Re z) 0"
definition away_from_S :: "complex ⇒ complex" where
  "away_from_S z = (let dir = z - S in
                    O + dir / cmod dir)"
definition segments_product :: "real" where
  "segments_product = 
    (∏k∈{0..6}. cmod (A k - O)) *
    (∏k∈{0..6}. cmod (altitude_point (A k) - A k)) *
    (∏k∈{0..6}. cmod (away_from_S (altitude_point (A k)) - altitude_point (A k)))"
theorem putnam_2012_a2:
  "segments_product = (7^3) / (2^12 * 13^2)"
  sorry