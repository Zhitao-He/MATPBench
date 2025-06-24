theory Pyramid_Rectangle_ABCD
  imports Complex_Main
begin
type_synonym point = "real × real"
definition A :: point where "A = (0, 0)"
definition B :: point where "B = (12 * sqrt 3, 0)"
definition C :: point where "C = (12 * sqrt 3, 13 * sqrt 3)"
definition D :: point where "D = (0, 13 * sqrt 3)"
definition P :: point where
  "P = ((12 * sqrt 3) / 2, (13 * sqrt 3) / 2)"
definition V1 :: point where "V1 = C"
definition V2 :: point where "V2 = D"
definition V3 :: point where "V3 = P"
consts Q :: point
definition pyramid_volume :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "pyramid_volume A B C D =
    (1 / 6) * abs (det3 (fst A, snd A, 1)
                        (fst B, snd B, 1)
                        (fst C, snd C, 1)
                        - det3 (fst A, snd A, 1)
                               (fst B, snd B, 1)
                               (fst D, snd D, 1)
                        + det3 (fst A, snd A, 1)
                               (fst C, snd C, 1)
                               (fst D, snd D, 1)
                        - det3 (fst B, snd B, 1)
                               (fst C, snd C, 1)
                               (fst D, snd D, 1))"
definition pyramid_ABCD_volume :: real where
  "pyramid_ABCD_volume = 594"
end