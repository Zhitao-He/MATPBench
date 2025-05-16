####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section TriangleIncenterConcurrence.

Variable R : realType.

Record point := Point { px : R; py : R }.

Definition collinear (A B C : point) : Prop :=
  exists k l : R, (k, l) <> (0,0) /\ 
    (B.(px) - A.(px)) * l = (C.(px) - A.(px)) * k /\
    (B.(py) - A.(py)) * l = (C.(py) - A.(py)) * k.

Definition between (A B C : point) : Prop :=
  exists t : R, 0 < t < 1 /\
    B.(px) = (1 - t) * A.(px) + t * C.(px) /\
    B.(py) = (1 - t) * A.(py) + t * C.(py).

Definition eq_point (P Q : point) := P.(px) = Q.(px) /\ P.(py) = Q.(py).

Definition distance (P Q : point) : R :=
  sqrt ((P.(px) - Q.(px))^2 + (P.(py) - Q.(py))^2).

Record circle := Circle { center : point; radius : R }.

Definition on_circle (O : circle) (P : point) : Prop :=
  distance (center O) P = radius O.

Variable A B C D : point.
Hypothesis H_not_collinear : ~ collinear A B C.
Hypothesis H_D_on_BC : exists t : R, 0 < t < 1 /\
    D.(px) = (1 - t) * B.(px) + t * C.(px) /\
    D.(py) = (1 - t) * B.(py) + t * C.(py).

(* E = incenter of triangle ABD *)
Variable E : point.
Hypothesis H_E_incenter_ABD :
  exists rE : R,
    rE > 0 /\
    distance E A = rE /\
    distance E B = rE /\
    distance E D = rE /\
    (exists u v w : R, u > 0 /\ v > 0 /\ w > 0 /\
      u + v + w = 1 /\
      E.(px) = u * A.(px) + v * B.(px) + w * D.(px) /\
      E.(py) = u * A.(py) + v * B.(py) + w * D.(py)).

(* F = incenter of triangle ACD *)
Variable F : point.
Hypothesis H_F_incenter_ACD :
  exists rF : R,
    rF > 0 /\
    distance F A = rF /\
    distance F C = rF /\
    distance F D = rF /\
    (exists u v w : R, u > 0 /\ v > 0 /\ w > 0 /\
      u + v + w = 1 /\
      F.(px) = u * A.(px) + v * C.(px) + w * D.(px) /\
      F.(py) = u * A.(py) + v * C.(py) + w * D.(py)).

Definition circleE := Circle E (distance E D).
Definition circleF := Circle F (distance F D).

Variable G : point.
Hypothesis H_G_on_both_circles :
  on_circle circleE G /\ on_circle circleF G /\
  ~ eq_point G D.

Variable J K M N : point.
Hypothesis H_J_on_circleE : on_circle circleE J /\ ~ eq_point J D /\ ~ eq_point J K.
Hypothesis H_K_on_circleE : on_circle circleE K /\ ~ eq_point K D /\ between B K C.
Hypothesis H_J_on_AB : between A J B.
Hypothesis H_K_on_BC : between B K C.

Hypothesis H_M_on_circleF : on_circle circleF M /\ ~ eq_point M D /\ ~ eq_point M N.
Hypothesis H_N_on_circleF : on_circle circleF N /\ ~ eq_point N D /\ between B N C.
Hypothesis H_M_on_AC : between A M C.
Hypothesis H_N_on_BC : between B N C.

(* G = intersection point of circleE and circleF different from D *)
Hypothesis H_G_unique : on_circle circleE G /\ on_circle circleF G /\ ~ eq_point G D.

(* Statement: Lines JK, MN, and GD are concurrent *)
Theorem triangle_incenter_circles_concurrent :
  exists Q : point,
    (exists lamJ lamK : R, lamJ <> lamK /\
      Q.(px) = lamJ * J.(px) + (1-lamJ) * K.(px) /\
      Q.(py) = lamJ * J.(py) + (1-lamJ) * K.(py)) /\
    (exists lamM lamN : R, lamM <> lamN /\
      Q.(px) = lamM * M.(px) + (1-lamM) * N.(px) /\
      Q.(py) = lamM * M.(py) + (1-lamM) * N.(py)) /\
    (exists lamG lamD : R, lamG <> lamD /\
      Q.(px) = lamG * G.(px) + (1-lamG) * D.(px) /\
      Q.(py) = lamG * G.(py) + (1-lamG) * D.(py)).
Proof. Admitted.

End TriangleIncenterConcurrence.
####