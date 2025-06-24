theory Geometry_Problem_Find_TX
imports Main
begin
definition EX :: real where
  "EX = 24"
definition DE :: real where
  "DE = 7"
definition r :: real where
  "r = DE"
definition XD_sq :: real where
  "XD_sq = EX^2 + DE^2"
definition XD :: real where
  "XD = sqrt XD_sq"
definition DT :: real where
  "DT = r"
definition TX :: real where
  "TX = XD + DT"
end