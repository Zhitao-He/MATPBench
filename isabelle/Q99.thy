theory SquareEFProblem
imports Complex_Main
begin
(* Square ABCD has side length 13, and points E and F are exterior to the square
   such that BE=DF=5 and AE=CF=12. Find EF^2. *)
definition A :: "complex" where "A = 0"
definition B :: "complex" where "B = 13"
definition C :: "complex" where "C = 13 + 13 * \<i>"
definition D :: "complex" where "D = 13 * \<i>"
theorem square_ef_squared:
  "\<exists>E F. 
    cmod (B - E) = 5 \<and>
    cmod (A - E) = 12 \<and>
    cmod (D - F) = 5 \<and>
    cmod (C - F) = 12 \<and>
    E \<notin> {A, B, C, D} \<and>
    F \<notin> {A, B, C, D} \<and>
    (cmod (E - F))^2 = 578"
  sorry