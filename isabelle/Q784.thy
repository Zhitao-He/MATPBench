theory Triangle_Angle_Problem
  imports Main
begin
typedecl Point
consts J K L Q R S :: Point
consts
  KJ :: real
  KL :: real
  RQ :: real
  RS :: real
axiomatization where
  KJ_def: "KJ = 6" and
  KL_def: "KL = 12" and
  RQ_def: "RQ = 4" and
  RS_def: "RS = 8"
consts
  angle_JLK :: real
  angle_KJL :: real
  angle_LKJ :: real
  angle_QSR :: real
  angle_RQS :: real
  angle_SRQ :: real
  x :: real
  y :: real
axiomatization where
  angle_JLK_def: "angle_JLK = 30" and
  angle_JLK_QSR: "angle_JLK = angle_QSR" and
  angle_KJL_RQS: "angle_KJL = angle_RQS" and
  angle_LKJ_SRQ: "angle_LKJ = angle_SRQ" and
  angle_LKJ_y: "angle_LKJ = y" and
  angle_QSR_x: "angle_QSR = x" and
  angle_RQS_80: "angle_RQS = 80"
axiomatization where
  triangle_JKL_angle_sum: "angle_JLK + angle_KJL + angle_LKJ = 180" and
  triangle_QRS_angle_sum: "angle_QSR + angle_RQS + angle_SRQ = 180"
definition Value :: "real ⇒ real" where
  "Value y = y"
end