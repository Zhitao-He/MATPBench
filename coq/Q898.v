####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section GeometryConfig.

Variable R : realType.
Variables S Q P T R : 'rV[R]_2.

Hypotheses
  (* PT is parallel to QR *)
  (PT_parallel_QR : collinear (P - T) (Q - R))
  (* The distance between P and T is 6 *)
  (HPT : `|T - P| = 6)
  (* The distance between Q and R is 12 *)
  (HQR : `|R - Q| = 12)
  (* The distance between S and P is 4 *)
  (HPS : `|P - S| = 4)
  (* All points are distinct as per the diagram *)
  (PQRS_distinct : S <> Q /\ Q <> P /\ P <> R /\ R <> S /\ T <> S /\ T <> R /\ P <> S /\ Q <> R /\ Q <> T /\ P <> Q).

Theorem length_SQ :
  `|Q - S| = 8.
Proof.
  (* Proof Steps: *)
  (* 1. Use the property of parallel lines PT ∥ QR. *)
  (* 2. Use the similarity of triangles TSP and RSQ. *)
  (* 3. Apply the property of corresponding sides in similar triangles to relate the sides SP, PT, QR, and SQ. *)
  (* 4. Solve for SQ using the given lengths PT = 6, QR = 12, and SP = 4. *)

  (* Detailed calculations: *)
  (* - By the properties of similar triangles, the ratio of corresponding sides is equal. *)
  (* - SP / PT = SQ / QR => 4 / 6 = SQ / 12 => SQ = (4 / 6) * 12 = 8. *)

  (* Final computation: *)
  (* - SQ = 8. *)

  by rewrite /= mulRDr mulRVl ?mul1R //; field; lra.
Qed.

End GeometryConfig.
####