theory Mirror_Similar_Triangle_Perimeter
  imports Main
begin
definition AB :: real where "AB = 13"
definition AC :: real where "AC = 7"
definition CB :: real where "CB = 10"
definition FE :: real where "FE = 14"
definition perimeter :: "real ⇒ real ⇒ real ⇒ real" where
  "perimeter a b c = a + b + c"
definition k :: real where "k = FE / CB"
definition DF :: real where "DF = k * AC"
definition DE :: real where "DE = k * AB"
definition perimeter_DFE :: real where
  "perimeter_DFE = perimeter DF DE FE"
lemma "perimeter_DFE = 42"
  unfolding perimeter_DFE_def perimeter_def DF_def DE_def k_def
  unfolding FE_def CB_def AC_def AB_def
  by simp
end