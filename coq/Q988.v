####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import euclidean_geometry reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section InscribedTriangleTheorem.

Variable R : realType.

(* Points of the plane *)
Variables A B C O I J K D F G : 'rV[R]_2.

Hypotheses
  (* A, B, C are distinct and non-collinear *)
  (h_ABC_distinct : A <> B /\ B <> C /\ C <> A)
  (h_ABC_noncollinear : ~ colinear A B C)

  (* O is the circumcenter of triangle ABC, and circle O passes through A, B, C *)
  (h_O_circum : on_circle O A /\ on_circle O B /\ on_circle O C)

  (* I is the incenter of triangle ABC; incircle centered at I is tangent to sides *)
  (h_I_incenter : incenter I A B C)
  (h_incircle_tangent : 
      tangent (incenter_circle I A B C) A B J /\
      tangent (incenter_circle I A C B) A C K)

  (* J = point of tangency of incircle with AB *)
  (h_J_on_AB : on_line J A B)
  (h_J_tangent : tangent (incenter_circle I A B C) A B J)

  (* K = point of tangency of incircle with AC *)
  (h_K_on_AC : on_line K A C)
  (h_K_tangent : tangent (incenter_circle I A C B) A C K)

  (* D is the second intersection of line AO with circle O (other than A) *)
  (h_AO_intersects_O : on_line D A O /\ D <> A /\ on_circle O D)

  (* DI is the line through D and I *)
  (h_line_DI : True) (* For notation; DI will be used below *)

  (* F is a point on the extension of CA such that AF = BJ *)
  (h_F_on_CA_ext : exists t : R, t > 1 /\ F = (1 - t) *: C + t *: A)
  (h_AF_eq_BJ : 
    distance A F = distance B J)

  (* G is the intersection point of: 
     the perpendicular from F to line DI, and the extension of BA past A *)
  (h_G_on_BA_ext : exists s : R, s < 0 /\ G = (1 - s) *: B + s *: A)
  (h_G_on_perp : 
    let l_DI := line_through D I in
    let l_perp := perpendicular_line_through F l_DI in
    on_line G l_perp)

  (* Arrangement: all points positioned as in the diagram and as described above *)
.

Theorem triangle_AG_eq_CK :
  distance A G = distance C K.
Proof. Admitted.

End InscribedTriangleTheorem.
####