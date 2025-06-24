theory Circle_Arc_GBA
  imports Main
begin
typedecl Point
record circle =
  center :: Point
  radius :: real
consts A B C D F G :: Point
definition circle_G :: circle where
  "circle_G = \<lparr>center = G, radius = r\<rparr>"
axiomatization where
  center_G: "center circle_G = G"
axiomatization where
  perp_CG_DG: "(\<exists>r1 r2. C \<noteq> G \<and> D \<noteq> G \<and> 
    (C = G \<longrightarrow> False) \<and> (D = G \<longrightarrow> False) \<and>
    (let v1 = (C, G); v2 = (D, G) in 
      (\<exists>f. f = (\<lambda>(P,Q). (P,Q)) \<and> 
        (let (P1,Q1) = v1; (P2,Q2) = v2 in
          (P1 \<noteq> Q1 \<and> P2 \<noteq> Q2 \<and>
           (\<exists>dot. dot = (\<lambda>(P,Q) (R,S). 0) \<and>
             dot (C,G) (D,G) = 0
           )
          )
        )
      )
    )
  )"
axiomatization where
  angle_AGB_30: "angle G A B = 30"
consts arc_GBA :: "Point \<Rightarrow> Point \<Rightarrow> Point \<Rightarrow> circle \<Rightarrow> real"
axiomatization where
  arc_measure_center_angle: 
    "\<forall>O X Y. arc_GBA O X Y (| center = O, radius = r |) = angle O X Y"
definition measure_of_arc_GBA :: real where
  "measure_of_arc_GBA = arc_GBA G B A circle_G"
lemma measure_of_arc_GBA_is_30:
  "measure_of_arc_GBA = 30"
  unfolding measure_of_arc_GBA_def circle_G_def
  using angle_AGB_30 arc_measure_center_angle center_G
  by simp
end