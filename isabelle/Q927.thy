theory Find_Angle_JFG
  imports Main
begin
lemma calculate_angle_JFG:
  fixes m_GFH :: real 
  fixes m_HFJ :: real 
  fixes m_GFJ :: real 
  fixes m_JFG :: real 
  assumes given_m_GFH: "m_GFH = 130"
  assumes given_m_HFJ: "m_HFJ = 90" 
  assumes angle_addition_postulate: "m_GFJ = m_GFH + m_HFJ"
  assumes angles_around_point_postulate: "m_GFJ + m_JFG = 360"
  shows "m_JFG = 140"
proof
  have m_GFJ_is_220: "m_GFJ = 220"
    using given_m_GFH given_m_HFJ angle_addition_postulate
    by simp 
  from angles_around_point_postulate m_GFJ_is_220
  have "220 + m_JFG = 360" by simp 
  then have "m_JFG = 360 - 220" by simp 
  then show ?thesis by simp 
qed
end