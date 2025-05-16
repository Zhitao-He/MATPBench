theory CircleRadius
imports Complex_Main HOL.Real
begin
section "Circle Radius Problem"
text "Given AB is a diameter, AC = 8 inches, and BC = 15 inches, prove the radius is 8.5 inches."
locale circle_radius =
  fixes A B C O :: "real × real"
  assumes AB_diameter: "O = (A + B) / 2" 
  assumes AC_8: "dist A C = 8"
  assumes BC_15: "dist B C = 15"
context circle_radius
begin
(* The diameter is the distance between A and B *)
lemma diameter: "dist A B = 17"
proof -
  (* Using the Pythagorean Theorem in a circle:
     If AB is a diameter and C is any point on the circle,
     then AC² + BC² = AB² by Thales' theorem *)
  have "dist A C^2 + dist B C^2 = dist A B^2"
    using AB_diameter
    by (metis dist_commute dist_euclidean_pythagoras vector_add_divide_simps(1))
  hence "8^2 + 15^2 = dist A B^2"
    using AC_8 BC_15 by simp
  hence "64 + 225 = dist A B^2" by simp
  hence "289 = dist A B^2" by simp
  thus "dist A B = 17"
    by (simp add: real_sqrt_unique)
qed
theorem circle_radius: "dist A O = 8.5"
proof -
  have "dist A O = dist A B / 2"
    using AB_diameter
    by (simp add: dist_midpoint)
  also have "... = 17 / 2"
    using diameter by simp
  also have "... = 8.5"
    by simp
  finally show "dist A O = 8.5" .
qed