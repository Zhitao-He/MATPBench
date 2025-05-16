theory Putnam_Geometry_Problem
imports 
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
(* Define 2D vectors *)
type_synonym point = "real × real"
(* Basic vector operations *)
definition vec :: "point ⇒ point ⇒ real × real" where
  "vec A B = (fst B - fst A, snd B - snd A)"
definition midpoint :: "point ⇒ point ⇒ point" where
  "midpoint A B = ((fst A + fst B)/2, (snd A + snd B)/2)"
definition dotprod :: "real × real ⇒ real × real ⇒ real" where
  "dotprod u v = fst u * fst v + snd u * snd v"
definition normr :: "real × real ⇒ real" where
  "normr v = sqrt(dotprod v v)"
definition perp :: "real × real ⇒ real × real" where
  "perp v = (-(snd v), fst v)"
definition colinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "colinear A B C = (∃t. vec A C = scaleR t (vec A B) ∧ t ≠ 0)"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = arccos(dotprod (vec B A) (vec B C) / (normr (vec B A) * normr (vec B C)))"
definition foot_point :: "point ⇒ point ⇒ point ⇒ point" where
  "foot_point P A B = 
    (let AB = vec A B; 
         t = dotprod (vec A P) AB / dotprod AB AB
     in (fst A + t * fst AB, snd A + t * snd AB))"
locale putnam_geometry_problem =
  fixes A B C :: point
  assumes triangle: "¬ colinear A B C"
  assumes AB_gt_AC: "normr (vec A B) > normr (vec A C)"
begin
(* D is the foot of the perpendicular from B to AC *)
definition D :: point where
  "D = foot_point B A C"
(* E is the foot of the perpendicular from C to AB *)
definition E :: point where
  "E = foot_point C A B"
(* F is the midpoint of BC *)
definition F :: point where
  "F = midpoint B C"
(* G lies on the extension of DE such that AG is perpendicular to AF *)
definition G :: point where
  "G = (let AF = vec A F;
            pAF = perp AF;
            l = (if dotprod (vec A D) pAF = 0 then 1 
                 else dotprod (vec A D) pAF / dotprod (vec D E) pAF)
        in (fst A + l * fst pAF, snd A + l * snd pAF))"
(* The theorem: AF bisects angle GFC *)
theorem putnam_geometry_bisector:
  assumes "F ≠ A"
  assumes "¬ colinear D E A"
  assumes "G ≠ A"
  shows "angle G F A = angle A F C"
  sorry