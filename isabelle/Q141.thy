theory SquareInSquare
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin
type_synonym point = "real × real"
definition square :: "point ⇒ point ⇒ point ⇒ point ⇒ bool" where
  "square A B C D ⇔ 
    let AB = (fst B - fst A, snd B - snd A);
        BC = (fst C - fst B, snd C - snd B);
        CD = (fst D - fst C, snd D - snd C);
        DA = (fst A - fst D, snd A - snd D) in
    (AB = (BC ⟂) ∧ CD = (DA ⟂) ∧
     norm AB = norm BC ∧ norm BC = norm CD ∧ norm CD = norm DA)"
definition line_through :: "point ⇒ point ⇒ point ⇒ bool" where
  "line_through P Q R ⇔ 
    ∃t. (1-t) *R P + t *R Q = R ∨ 
        (1-t) *R Q + t *R P = R"
definition collinear :: "point ⇒ point ⇒ point ⇒ bool" where
  "collinear P Q R ⇔ 
    ∃t. (P ≠ Q ∧ R = P + t *R (Q - P)) ∨ 
        (Q ≠ P ∧ R = Q + t *R (P - Q))"
definition extendable_to :: "point ⇒ point ⇒ point ⇒ bool" where
  "extendable_to P Q V ⇔ collinear P Q V ∧ P ≠ Q ∧ 
    (fst P - fst Q) * (fst V - fst Q) ≥ 0 ∧ 
    (snd P - snd Q) * (snd V - snd Q) ≥ 0"
definition area :: "point ⇒ point ⇒ point ⇒ point ⇒ real" where
  "area A B C D = 
    let AB = (fst B - fst A, snd B - snd A);
        BC = (fst C - fst B, snd C - snd B) in
    norm AB * norm BC"
theorem square_in_square_area:
  "let A = (0::real, 0::real);
       B = (sqrt 50, 0);
       C = (sqrt 50, sqrt 50);
       D = (0, sqrt 50) in
   ∃E F G H. 
     square E F G H ∧
     extendable_to E F A ∧
     extendable_to F G B ∧
     extendable_to G H C ∧
     extendable_to H E D ∧
     dist B E = 1 ∧
     area E F G H = 36"