theory Parallelogram_Circle_Problem
imports
  Complex_Main
  "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition vec :: "point ⇒ point ⇒ point" where
  "vec p q = (fst q - fst p, snd q - snd p)"
definition add_vec :: "point ⇒ point ⇒ point" where
  "add_vec p v = (fst p + fst v, snd p + snd v)"
definition scale_vec :: "real ⇒ point ⇒ point" where
  "scale_vec s v = (s * fst v, s * snd v)"
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product v w = fst v * fst w + snd v * snd w"
definition angle :: "point ⇒ point ⇒ point ⇒ real" where
  "angle A B C = acos (dot_product (vec B A) (vec B C) / (dist B A * dist B C))"
definition line :: "point ⇒ point ⇒ point ⇒ bool" where
  "line p q r = (∃t. r = add_vec p (scale_vec t (vec p q)))"
definition circle :: "point ⇒ real ⇒ point set" where
  "circle center radius = {p. dist center p = radius}"
definition tangent :: "point set ⇒ point ⇒ point ⇒ bool" where
  "tangent C A B = (∃center radius. C = circle center radius ∧ 
                   (∃touch. touch ∈ C ∧ line A B touch ∧
                           (∀p. p ∈ C ∧ line A B p ⟹ p = touch)))"
locale parallelogram_circle_problem =
  fixes A B C D :: point
  fixes P Q :: point
  assumes parallelogram: "vec A B = vec D C ∧ vec A D = vec B C"
  assumes acute_angle: "angle B A D < pi/2"
  assumes circle_tangent: "∃O r. 
    let circ = circle O r in 
    tangent circ D A ∧ tangent circ A B ∧ tangent circ B C"
  assumes PQ_on_diagonal: "line A C P ∧ line A C Q"
  assumes AP_AQ_order: "dist A P < dist A Q"
  assumes lengths: "dist A P = 3 ∧ dist P Q = 9 ∧ dist Q C = 16"