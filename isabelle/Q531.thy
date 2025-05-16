theory AngleEBC
  imports Main HOL.Real
begin
type_synonym point = "real × real"
definition angle :: "point → point → point → real"
  where "angle A B C = undefined"  
definition colinear :: "point → point → point → bool"
  where "colinear A B C = undefined"  
definition between :: "point → point → point → bool"
  where "between A B C = undefined"  
axiomatization
  A B C D E F G :: point
where
  angle_BCE_eq_EBC: "angle B C E = angle E B C" and
  angle_DAG: "angle D A G = 136" and
  angle_DEA: "angle D E A = 47" and
  angle_EFB: "angle E F B = 63" and
  angle_FED: "angle F E D = 69" and
  collinear_BEGA: "colinear B E G ∧ colinear E G A" and
  between_E_BG: "between B E G" and
  between_A_G_E: "between A G E"
theorem angle_EBC_32:
  "angle E B C = 32"
proof -
  have "angle F E A = angle F E D + angle D E A" by auto
  also have "... = 69 + 47" using angle_FED angle_DEA by simp
  also have "... = 116" by simp
  finally have FEA_116: "angle F E A = 116" .
  have "angle C E B = angle F E A" by auto
  hence CEB_116: "angle C E B = 116" using FEA_116 by simp
  have "angle E B C + angle B C E + angle C E B = 180" by auto
  also have "angle B C E = angle E B C" using angle_BCE_eq_EBC by simp
  hence "2 * angle E B C + angle C E B = 180" by simp
  hence "2 * angle E B C + 116 = 180" using CEB_116 by simp
  hence "2 * angle E B C = 64" by simp
  thus "angle E B C = 32" by simp
qed