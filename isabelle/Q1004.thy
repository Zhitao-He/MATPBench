theory AJ_eq_AK_theorem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
  "HOL-Algebra.Algebra"
begin

(* 基本定义 *)
type_synonym point = complex

(* 距离函数 *)
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = cmod (p - q)"

(* 共线性 *)
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear A B C = (∃t. (C - A) = t *⇩C (B - A) ∧ t ∈ ℝ)"

(* 圆的定义 *)
record circle =
  center :: point
  radius :: real

(* 点在圆上 *)
definition on_circle :: "point ⇒ circle ⇒ bool" where
  "on_circle P c = (dist P (center c) = radius c)"

(* 点在线上 *)
definition incident :: "point ⇒ point × point ⇒ bool" where
  "incident P line = (let (A, B) = line in collinear A B P)"

(* 直线通过两点 *)
definition line_through :: "point ⇒ point ⇒ point × point" where
  "line_through A B = (A, B)"

(* 圆的切点 *)
definition is_tangent_at :: "circle ⇒ point ⇒ point × point ⇒ bool" where
  "is_tangent_at c P line = (on_circle P c ∧ incident P line ∧
    (∀Q. incident Q line ∧ Q ≠ P ⟶ dist Q (center c) > radius c))"

(* 外接圆 *)
definition is_circumcircle :: "circle ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_circumcircle c A B C = (on_circle A c ∧ on_circle B c ∧ on_circle C c)"

(* 内切圆 *)
definition is_incircle :: "circle ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_incircle c A B C = (∃D E F.
     is_tangent_at c D (line_through B C) ∧
     is_tangent_at c E (line_through C A) ∧
     is_tangent_at c F (line_through A B))"

(* 内切圆与边的切点 *)
definition is_intangent_point :: "circle ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "is_intangent_point c A B P = (is_tangent_at c P (line_through A B))"

(* 两个圆外切 *)
definition are_circles_tangent_ext :: "circle ⇒ circle ⇒ point ⇒ bool" where
  "are_circles_tangent_ext c1 c2 P = (
    on_circle P c1 ∧ on_circle P c2 ∧
    dist (center c1) (center c2) = radius c1 + radius c2)"

(* 定理声明 *)
theorem AJ_eq_AK:
  fixes A B C O I P :: point
  fixes circleO circleI circleP :: circle
  
  assumes noncollinear: "¬collinear A B C"
  
  assumes defO: "circleO = ⦇center = O, radius = cmod(A - O)⦇"
  assumes circumcircleO: "is_circumcircle circleO A B C"
  
  assumes defI: "circleI = ⦇center = I, radius = cmod(F - I)⦇"
  assumes incircleI: "is_incircle circleI A B C"
  
  assumes defD: "is_intangent_point circleI B C D"
  assumes defE: "is_intangent_point circleI C A E"
  assumes defF: "is_intangent_point circleI A B F"
  
  assumes defP: "circleP = ⦇center = P, radius = cmod(J - P)⦇"
  
  assumes tangent_OP: "are_circles_tangent_ext circleO circleP J"
  assumes J_on_O: "on_circle J circleO"
  assumes J_on_P: "on_circle J circleP"
  
  assumes G_on_AB: "incident G (line_through A B)"
  assumes H_on_AC: "incident H (line_through A C)"
  
  assumes P_tangent_AB: "is_tangent_at circleP G (line_through A B)"
  assumes P_tangent_AC: "is_tangent_at circleP H (line_through A C)"
  
  assumes K_on_AD: "incident K (line_through A D)"
  assumes K_on_P: "on_circle K circleP"
  assumes K_distinct_A: "K ≠ A"
  
  assumes K_unique: "⋀M. incident M (line_through A D) ⟹ on_circle M circleP ⟹ M ≠ A ⟹ M = K"
  
  shows "dist A J = dist A K"

end