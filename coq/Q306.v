####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry angle.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Putnam_Geo_Theorem.

Variable R : realType.
Implicit Types A B C P Q : 'rP[R]_2.

Theorem putnam_geo_2015_b2
    (A B C P Q : 'rP[R]_2)
    (Hdistinct : [/\ A <> B, B <> C, C <> A,
                   A <> P, Q <> P, Q <> B, Q <> C])
    (Hcol1 : ~ colinear A B C)
    (Hcol2 : ~ colinear P A Q)
    (Hcol3 : ~ colinear A B Q)
    (Hcol4 : ~ colinear Q C P)
    (Hsim1 : similar_triangle A B C P A Q)
    (Hsim2 : similar_triangle A B Q Q C P)
    (HangleA : angle B A C = radian (70 * PI / 180))
    :
    angle P Q C = radian (15 * PI / 180).
Proof. Admitted.

End Putnam_Geo_Theorem.
####