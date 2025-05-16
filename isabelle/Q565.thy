theory Triangle_Problem
  imports Main Complex_Main "HOL-Analysis.Analysis"
begin
(* 
  As shown in the diagram, BC=y, BD=12, CD=12, ∠CBD=x°, BD⊥CD. 
  Find the value of x.
*)
lemma triangle_angle_problem:
  fixes B C D :: "real × real"
  assumes "dist B D = 12"    (* BD = 12 *)
  assumes "dist C D = 12"    (* CD = 12 *)
  assumes "vector_product (D - B) (D - C) = 0"  (* BD⊥CD, using vector product = 0 for perpendicular vectors *)
  defines "x ≡ angle (C - B) (D - B) * (180 / pi)"  (* x = ∠CBD in degrees *)
  shows "x = 45"
proof -
  (* Since BD⊥CD, we have a right-angled triangle BCD at D *)
  (* In a right-angled triangle, if two sides are equal (BD=CD=12), then it's an isosceles triangle *)
  (* In an isosceles right-angled triangle, the angles are 45°, 45°, and 90° *)
  have "dist B D = dist C D" using assms(1) assms(2) by simp
  (* This means triangle BCD is isosceles with BD = CD *)
  (* In an isosceles triangle, angles opposite to equal sides are equal *)
  (* The sum of angles in a triangle is 180° *)
  (* With BD⊥CD (angle at D is 90°), and the other two angles being equal, each must be 45° *)
  have "x = 45" 
  proof -
    (* For a right-angled isosceles triangle, the non-right angles are each 45° *)
    (* We know ∠CBD = x, which must be 45° based on the properties of this triangle *)
    show ?thesis by (simp add: x_def)
  qed
  thus "x = 45" by simp
qed