####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryConfig.

Variable R : realType.
Variable Point : Type.
Variable S Q P R T : Point.

Variable dist : Point -> Point -> R.

Hypotheses
  (* The distance between Q and R is 12 *)
  (HQR : dist Q R = 12)
  (* The distance between P and Q plus the distance between P and S equals the distance between Q and S *)
  (HPS : dist P S = 4)
  (* The distance between P and T is 6 *)
  (HPT : dist P T = 6)
  (* The distance between T and S plus the distance between T and R equals the distance between S and R *)
  (HTS : dist T S + dist T R = dist S R)
  (* All points are distinct as per the diagram *)
  (PQRS_distinct : S <> Q /\ Q <> P /\ P <> R /\ R <> S /\ T <> S /\ T <> R /\ P <> S /\ Q <> R /\ Q <> T /\ P <> Q).

Theorem length_SQ :
  dist S Q = 8.
Proof. Admitted.

End GeometryConfig.
####