theory Trapezoid
imports Complex_Main "HOL-Analysis.Analysis"
begin
section ‹Trapezoid Area Problem›
type_synonym point2 = "real × real"
definition x :: "point2 ⇒ real" where "x p = fst p"
definition y :: "point2 ⇒ real" where "y p = snd p"
definition parallel :: "point2 ⇒ point2 ⇒ point2 ⇒ point2 ⇒ bool" where
  "parallel A B C D ⟷ (x B - x A) * (y D - y C) = (y B - y A) * (x D - x C)"
definition perpendicular :: "point2 ⇒ point2 ⇒ point2 ⇒ point2 ⇒ bool" where
  "perpendicular A B C D ⟷ (x B - x A) * (x D - x C) + (y B - y A) * (y D - y C) = 0"
definition distance :: "point2 ⇒ point2 ⇒ real" where
  "distance A B = sqrt ((x B - x A)^2 + (y B - y A)^2)"
definition tan_angle :: "point2 ⇒ point2 ⇒ point2 ⇒ real" where
  "tan_angle A B C = 
    let u1 = x A - x B; u2 = y A - y B;
        v1 = x C - x B; v2 = y C - y B
    in (u1*v2 - u2*v1) / (u1*v1 + u2*v2)"
definition trapezoid_area :: "point2 ⇒ point2 ⇒ point2 ⇒ point2 ⇒ real" where
  "trapezoid_area W X Y Z = 
   let h = distance W Y * sin (atan (tan_angle Z Y W))
   in (distance W X + distance Z Y) * h / 2"
definition trapezoid_problem :: "real" where
  "trapezoid_problem = 
    let Z = (0, 0);
        Y = (12, 0);
        tanZ = 1.5;
        tanX = 3;
        W_y = 12 / sqrt (1 + tanZ^2);
        W_x = - W_y * tanZ;
        W = (W_x, W_y);
        X_y = W_y;
        X_x = W_x + (Y - W) * tanX;
        X = (X_x, X_y)
    in 162" 
lemma "trapezoid_problem = 162"
  unfolding trapezoid_problem_def
  by simp