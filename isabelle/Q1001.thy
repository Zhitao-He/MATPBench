theory Geometry_Circle_Arc
imports Main HOL.Euclidean_Space "HOL-Analysis.Norm_Vector"
begin
locale geo_problem =
  fixes A B C O D E F G :: "real^2"
  assumes 
    AB_neq_AC: "A ≠ B ∧ A ≠ C"
    and O_center: "dist O A = dist O B ∧ dist O B = dist O C"  