theory Diamond_Problem_Definition
  imports Main
begin
typedecl Point
consts
  A :: Point
  B :: Point
  C_Geom :: Point 
  D :: Point
  O :: Point   
consts angle_at :: "Point ⇒ Point ⇒ Point ⇒ real"
consts Is_Rhombus :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool"
consts Is_Diagonal_Intersection :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool"
locale diamond_problem_context =
  fixes pA :: Point and pB :: Point and pC_Geom :: Point and pD :: Point and pO :: Point
  assumes
    abcd_is_rhombus: "Is_Rhombus pA pB pC_Geom pD" and
    o_is_intersection: "Is_Diagonal_Intersection pA pB pC_Geom pD pO" and
    angle_DAO_is_28: "angle_at pD pA pO = 28.0" and
    angle_OBC_is_62: "angle_at pO pB pC_Geom = 62.0" and
    distinct_vertices: "pA ≠ pB ∧ pB ≠ pC_Geom ∧ pC_Geom ≠ pD ∧ pD ≠ pA"
begin
definition Target_Angle_BCD :: real where
  "Target_Angle_BCD = angle_at pB pC_Geom pD"
end
end