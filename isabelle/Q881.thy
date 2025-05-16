theory CircleAngleProblem
  imports Complex_Main HOL.Real
begin
type_synonym point = "real × real"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p q = sqrt((fst p - fst q)^2 + (snd p - snd q)^2)"
definition is_on_circle :: "point ⇒ point ⇒ real ⇒ bool" where
  "is_on_circle p center r = (distance p center = r)"
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product v1 v2 = (fst v1 * fst v2 + snd v1 * snd v2)"
definition vector_length :: "point ⇒ real" where
  "vector_length v = sqrt((fst v)^2 + (snd v)^2)"
definition vector_angle_cos :: "point ⇒ point ⇒ real" where
  "vector_angle_cos v1 v2 = dot_product v1 v2 / (vector_length v1 * vector_length v2)"
definition is_tangent :: "point ⇒ point ⇒ point ⇒ bool" where
  "is_tangent Q R D = (
    let v_QD = (fst D - fst Q, snd D - snd Q);
        v_QR = (fst R - fst Q, snd R - snd Q)
    in dot_product v_QD v_QR = 0)"
lemma angle_RQS_value:
  fixes D Q S R :: point
  assumes "∠DQS = 238" 
  and "is_tangent Q R D" 
  and "is_on_circle Q D r" 
  and "is_on_circle S D r" 
  and "r > 0" 
  shows "∠RQS = 61" 
  oops 