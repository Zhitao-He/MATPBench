####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import reals euclideangeometry.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Local Open Scope ring_scope.

Variable R : realType.

Section ParallelogramProblem.

Variable W X Y Z : 'rV[R]_2.

Hypothesis parallelogram_WXYZ : is_parallelogram W X Y Z.
Hypothesis XZ_length : dist X Z = 10.

Theorem parallelogram_WY_length :
  dist W Y = 20.
Proof. Admitted.

End ParallelogramProblem.
####