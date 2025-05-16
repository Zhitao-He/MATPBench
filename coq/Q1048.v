####
From mathcomp Require Import all_ssreflect all_algebra.
From mathcomp Require Import euclid_geometry reals.

Set Implicit Arguments.
Unset Strict Implicit.
Unset Printing Implicit Defensive.

Section Putnam2021_A1.

Variable R : realType.

Record point := Point { px : R; py : R }.

Variable A B C O : point.

Hypothesis A_neq_B : A <> B.
Hypothesis B_neq_C : B <> C.
Hypothesis C_neq_A : C <> A.

(* O is the circumcenter of triangle ABC *)
Hypothesis circ_ABC : 
  exists r : R, 0 < r /\
    (\distance A O = r) /\
    (\distance B O = r) /\
    (\distance C O = r).

(* E is the midpoint of BC *)
Definition E : point :=
  Point ((px B + px C)/2) ((py B + py C)/2).

(* F is the midpoint of arc BC not containing A *)
Hypothesis F_on_circle : 
  (exists t : R, 0 < t < 1 /\
    let theta := t * 2%:R * PI in
    let u := (px B - px O) * cos theta - (py B - py O) * sin theta + px O in
    let v := (px B - px O) * sin theta + (py B - py O) * cos theta + py O in
    F = Point u v) /\
  (* F lies on the arc BC (circle through A,B,C), not equal to B or C, and such that arc BFC does not contain A *)
  F <> B /\ F <> C /\ (* further constraints to specify correct arc*).

(* I is the incenter of ABC *)
Definition I : point :=
  let a := sqrt ((px C - px B)^+2 + (py C - py B)^+2) in
  let b := sqrt ((px A - px C)^+2 + (py A - py C)^+2) in
  let c := sqrt ((px B - px A)^+2 + (py B - py A)^+2) in
  let pxI := (a * px A + b * px B + c * px C)/(a+b+c) in
  let pyI := (a * py A + b * py B + c * py C)/(a+b+c) in
  Point pxI pyI.

(* M is the midpoint of BI *)
Definition M : point :=
  Point ((px B + px I)/2) ((py B + py I)/2).

(* N is the midpoint of EF *)
Definition N : point :=
  Point ((px E + px F)/2) ((py E + py F)/2).

(* D is the intersection point of line MN and BC *)
Hypothesis MN_not_parallel_BC : 
  ~ colinear M N B /\ ~ colinear M N C.

Definition line_eq (P Q : point) (t : R) : point :=
  Point (px P + t * (px Q - px P)) (py P + t * (py Q - py P)).

Definition is_on_line (P A B : point) :=
  exists t : R, P = line_eq A B t.

Definition inter_point (A1 A2 B1 B2 : point) : point :=
  let '(x1, y1) := (px A1, py A1) in
  let '(x2, y2) := (px A2, py A2) in
  let '(x3, y3) := (px B1, py B1) in
  let '(x4, y4) := (px B2, py B2) in
  let d := (x1 - x2)*(y3 - y4) - (y1 - y2)*(x3 - x4) in
  let px_num := ((x1*y2 - y1*x2)*(x3 - x4) - (x1 - x2)*(x3*y4 - y3*x4)) in
  let py_num := ((x1*y2 - y1*x2)*(y3 - y4) - (y1 - y2)*(x3*y4 - y3*x4)) in
  Point (px_num/d) (py_num/d).

Definition D : point := inter_point M N B C.

(* DM bisects angle ADB, i.e., DM is the angle bisector of angle ADB at D *)

Definition angle (A O B : point) : R :=
  let u1 := (px A - px O, py A - py O) in
  let u2 := (px B - px O, py B - py O) in
  let dot := fst u1 * fst u2 + snd u1 * snd u2 in
  let norm1 := sqrt (fst u1 ^+2 + snd u1 ^+2) in
  let norm2 := sqrt (fst u2 ^+2 + snd u2 ^+2) in
  let cos_theta := dot / (norm1 * norm2) in
  acos cos_theta.

Definition on_angle_bisector (P A O B : point) :=
  angle A O P = angle P O B.

Theorem putnam2021_geometry
  (F : point)
  (H_F : F_on_circle)
  :
  on_angle_bisector M A D B.
Proof. Admitted.

End Putnam2021_A1.
####