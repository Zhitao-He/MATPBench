theory Find_X_Problem
  imports Main
begin
definition len_CQ :: real where
  "len_CQ = 5.0"
definition len_CQ_prime :: real where
  "len_CQ_prime = 15.0"
definition x :: real where
  "x = len_CQ_prime - len_CQ"
end