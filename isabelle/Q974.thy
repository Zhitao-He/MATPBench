theory PutnamGeometryTheorem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real"
definition vadd :: "point ⇒ point ⇒ point" (infixl "+v" 60) where
  "p +v q = (fst p + fst q, snd p + snd q)"
definition vsub :: "point ⇒ point ⇒ point" (infixl "-v" 60) where
  "p -v q = (fst p - fst q, snd p - snd q)"
definition smult :: "real ⇒ point ⇒ point" (infixl "*v" 70) where
  "c *v p = (c * fst p, c * snd p)"
definition dot :: "point ⇒ point ⇒ real" (infixl "•" 70) where
  "p • q = fst p * fst q + snd p * snd q"
definition norm :: "point ⇒ real" where
  "norm p = sqrt((p • p))"
definition dist :: "point ⇒ point ⇒ real" where
  "dist p q = norm(p -v q)"
definition orthogonal :: "point ⇒ point ⇒ bool" where
  "orthogonal u v ⟷ (u • v) = 0"
definition on_circle :: "point ⇒ real ⇒ point ⇒ bool" where
  "on_circle center radius p = (dist center p = radius)"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear p q r ⟷ (∃t. r = p +v t *v (q -v p) ∨ r = p +v t *v (p -v q))"
definition tangent_line :: "point ⇒ point ⇒ point ⇒ real ⇒ bool" where
  "tangent_line p q center radius = (
    orthogonal (p -v center) (q -v p) ∧ on_circle center radius p)"
locale putnam_geometry =
  fixes A B C D E Y X J :: point
  fixes O :: point and r :: real
  assumes Habc_circum: "on_circle O r A ∧ on_circle O r B ∧ on_circle O r C"
  and distinct_points: "A ≠ B ∧ A ≠ C ∧ B ≠ C"
  and right_ABC: "orthogonal (C -v A) (B -v A)"
  and AD_tangent_circumABC: "tangent_line A D O r ∧ collinear B C D ∧ 
                             (∃t > 1. D = B +v t *v (C -v B) ∨ D = C +v t *v (B -v C))"
  and E_reflect_A_over_BC: "let proj = B +v ((A -v B) • (C -v B) / norm(C -v B)²) *v (C -v B) 
                            in E = 2 *v proj -v A"
  and AY_perp_BE: "orthogonal (Y -v A) (E -v B) ∧ 
                  (∃t. 0 ≤ t ∧ t ≤ 1 ∧ Y = A +v t *v (E -v A))"
  and X_mid_AY: "X = A +v 0.5 *v (Y -v A)"
  and BJ_inter_circumABC: "on_circle O r J ∧ (∃t > 1. J = B +v t *v (X -v B)) ∧ J ≠ B"
begin
theorem putnam_geometry_tangent_theorem:
  "let O1 = circumcenter A J D;
       r1 = dist O1 A
   in tangent_line B D O1 r1"
proof -
  sorry
qed