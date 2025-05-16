####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Theorem prism_volume_m_plus_n_is_5 :
  forall (A B C D E F : 'rV[R]_3),
    (* ABC and DEF are parallel congruent triangles, forming a right triangular prism *)
    (* The prism sides connect A <-> D, B <-> E, C <-> F *)
    colinear [::A;D] /\ colinear [::B;E] /\ colinear [::C;F] /\
    (* Base triangle ABC *)
    dist B C <> 0 /\ dist A B <> 0 /\ dist A C <> 0 /\
    angle A B C = acos 0 /\ (* angle ABC = 90 degrees *)
    angle E A B = acos (1%:R/2%:R) /\ (* EAB and CAB are 60 degrees *)
    angle C A B = acos (1%:R/2%:R) /\
    dist A E = 2 /\
    (* Triangles ABC and DEF are congruent and parallel *)
    (* Volume of prism can be written as m/n, m,n coprime, m+n=? *)
    exists m n : nat,
      coprime m n /\

####