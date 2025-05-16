From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclidean_geometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Section perpendicular_bisectors_problem.

Variable R : realType.

Variables P Q R_ T : 'e3(R).
Variables l m n : Line R.

Hypothesis l_perp_bisector : is_perpendicular_bisector l P Q R_.
Hypothesis m_perp_bisector : is_perpendicular_bisector m Q R_ P.
Hypothesis n_perp_bisector : is_perpendicular_bisector n R_ P Q.
Hypothesis intersection : meet3 l m n T.

Variables x y z : R.
Hypothesis HQT : dist T Q = 2 * x.
Hypothesis HPT : dist P T = 3 * y - 1.
Hypothesis HRT : dist T R_ = 8.
Hypothesis HPR : dist P R_ = z + 4.
Hypothesis HRP : dist R_ P = z + 4.
Hypothesis HQR : dist Q R_ = 7.

Theorem perpendicular_bisector_barycentric_solution :
  z = 3.
Proof.
admit.
Qed.

End perpendicular_bisectors_problem.
####