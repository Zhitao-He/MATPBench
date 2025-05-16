####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section GeometrySetting.

Variable R : realType.
Import EuclideanGeometry.

Variables A B C D E F P : Point R.

Hypothesis Hcol1 : collinear [:: A; D; C].
Hypothesis Hcol2 : collinear [:: A; B; C].
Hypothesis Hcol3 : collinear [:: A; F; E].
Hypothesis Hcol4 : collinear [:: D; P; A].
Hypothesis Hcol5 : collinear [:: E; P; C].
Hypothesis Hcol6 : collinear [:: F; P; B].

Hypothesis HAD : dist A D = 15.
Hypothesis HBF : dist B F = 6.

Theorem length_AP_is_10 : dist A P = 10.
Proof. Admitted.

End GeometrySetting.
####