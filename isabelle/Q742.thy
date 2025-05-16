theory GeometryProblem
imports 
  Complex_Main
  "HOL-Analysis.Analysis"
begin
section "Circle and angle problem"
(* Define points in a plane *)
locale circle_angle_problem =
  fixes C D K L J A :: "real × real"
  fixes x :: real
  (* Circles with centers C and D *)
  assumes center_C: "C is the center of circle1"
  and center_D: "D is the center of circle2"
  (* Points K, L lie on circle1; points J, A lie on circle2 *)
  and on_circle1_K: "K lies on circle1"
  and on_circle1_L: "L lies on circle1"
  and on_circle2_J: "J lies on circle2"
  and on_circle2_A: "A lies on circle2"
  (* The radii of both circles are equal *)
  and equal_radii: "radius of circle1 = radius of circle2"
  (* KL = AJ as specified in the problem *)
  and KL_eq_AJ: "dist K L = dist A J"
  (* Angles as specified in the problem *)
  and angle_CKL: "angle C K L = 5 * x"
  and angle_DJA: "angle D J A = 3 * x + 54"
(* Theorem and proof *)
theorem (in circle_angle_problem) value_of_x: "x = 27"
proof -
  (* Since K, L lie on circle1 with center C *)
  have CK_eq_CL: "dist C K = dist C L" 
    using on_circle1_K on_circle1_L center_C by (rule points_on_circle_equidistant)
  (* Since J, A lie on circle2 with center D *)
  have DJ_eq_DA: "dist D J = dist D A"
    using on_circle2_J on_circle2_A center_D by (rule points_on_circle_equidistant)
  (* Triangles KLC and JAD are congruent by SSS *)
  have tri_cong: "triangles K L C and J A D are congruent"
    using KL_eq_AJ CK_eq_CL DJ_eq_DA equal_radii by (rule congruent_triangles_sss)
  (* Corresponding angles in congruent triangles are equal *)
  have angle_equal: "angle C K L = angle D J A"
    using tri_cong by (rule congruent_triangles_angles)
  (* Substitute the angle values *)
  have "5 * x = 3 * x + 54" 
    using angle_CKL angle_DJA angle_equal by simp
  (* Solve for x *)
  thus "x = 27" by simp
qed