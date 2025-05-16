theory GeometryProblem
  imports 
    Complex_Main 
    "HOL-Analysis.Analysis"
begin
locale geometry_problem =
  fixes S P Q R A Z :: "real × real"  
  fixes x y z :: real                
  assumes AZ_length: "norm (A - Z) = y"
  and QZ_length: "norm (Q - Z) = z"
  and RQ_length: "norm (R - Q) = 12"
  and RS_length: "norm (R - S) = 10"
  and RZ_length: "norm (R - Z) = x"
  and angle_SPA: "angle (S - P) (A - P) = pi/4"  
  and SR_parallel_AZ: "is_parallel (S - R) (A - Z)"  
  and SPQR_trapezoid: "is_trapezoid S P Q R"
definition angle :: "real × real ⇒ real × real ⇒ real" where
  "angle v w = acos ((v ⋅ w) / (norm v * norm w))"
definition is_parallel :: "real × real ⇒ real × real ⇒ bool" where
  "is_parallel v w = (∃k. k ≠ 0 ∧ v = k *⋅ w)"
definition is_perpendicular :: "real × real ⇒ real × real ⇒ bool" where
  "is_perpendicular v w = (v ⋅ w = 0)"
definition is_trapezoid :: "real × real ⇒ real × real ⇒ real × real ⇒ real × real ⇒ bool" where
  "is_trapezoid A B C D = (is_parallel (A - B) (D - C) ∧ ¬is_parallel (A - D) (B - C))"
definition perimeter :: "real × real ⇒ real × real ⇒ real × real ⇒ real × real ⇒ real" where
  "perimeter A B C D = norm (B - A) + norm (C - B) + norm (D - C) + norm (A - D)"
theorem perimeter_SPQR: 
  assumes "geometry_problem S P Q R A Z x y z"
  shows "perimeter S P Q R = 6*sqrt 2 + 6*sqrt 3 + 38"
  oops