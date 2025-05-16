theory RectangleUnion
imports Main HOL.Real_Vector_Spaces 
begin
type_synonym vec2 = "real × real"
record rectangle =
  v1 :: vec2
  v2 :: vec2
  v3 :: vec2
  v4 :: vec2
definition rect_area :: "rectangle ⇒ real" where
  "rect_area R = norm (fst (v2 R) - fst (v1 R), snd (v2 R) - snd (v1 R)) * 
                 norm (fst (v4 R) - fst (v1 R), snd (v4 R) - snd (v1 R))"
definition rect_center :: "rectangle ⇒ vec2" where
  "rect_center R = ((fst (v1 R) + fst (v3 R))/2, (snd (v1 R) + snd (v3 R))/2)"
definition R0 :: rectangle where
  "R0 = ⦇v1 = (0, 0), v2 = (3, 0), v3 = (3, 4), v4 = (0, 4)⦈"
definition P :: vec2 where "P = v1 R0"
lemma R0_area: "rect_area R0 = 12"
  unfolding rect_area_def R0_def by auto
definition R1 :: rectangle where
  "R1 = ⦇v1 = P, v2 = v3 R0, v3 = (7, 3), v4 = (4, 7)⦈"
definition R2 :: rectangle where
  "R2 = ⦇v1 = P, v2 = v3 R1, v3 = (8, 8), v4 = (1, 8)⦈"
definition R3 :: rectangle where
  "R3 = ⦇v1 = P, v2 = v3 R2, v3 = (5, 10), v4 = (-3, 7)⦈"
theorem total_area: "rect_area R0 + rect_area R1 + rect_area R2 + rect_area R3 - 
                     = 30"
  sorry  