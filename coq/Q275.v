####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.
Definition pi := Num.pi.

Theorem sphere_cylinder_radius
    (r_sphere r_cyl : R)
    (h_cyl : R)
    (Vol_cyl : R)
    (Hh : h_cyl = 5)
    (Hvol : Vol_cyl = 1375 * pi)
    (Hcylinder : r_cyl ^+ 2 * pi * h_cyl = Vol_cyl)
    (Hinscribed : r_sphere ^+ 2 = r_cyl ^+ 2 + (h_cyl / 2) ^+ 2)
    :
    r_sphere = 3.
Proof. Admitted.
####