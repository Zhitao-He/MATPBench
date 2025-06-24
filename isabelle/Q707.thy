theory Geometry_IFA_Angle
  imports Main
begin
typedecl Point
consts
  collinear :: "Point ⇒ Point ⇒ Point ⇒ bool"
  parallel  :: "Point ⇒ Point ⇒ Point ⇒ Point ⇒ bool"
consts
  angle :: "Point ⇒ Point ⇒ Point ⇒ real"
consts
  A B C D E F G H I J K L :: Point
axiomatization where
  collinear_I_F_E: "collinear I F E" and
  collinear_F_E_C: "collinear F E C" and
  collinear_G_D_H: "collinear G D H" and
  collinear_D_H_J: "collinear D H J" and
  parallel_DF_HE: "parallel D F H E" and
  parallel_FE_DH: "parallel F E D H" and
  angle_BEC_57: "angle B E C = 57"
definition IFA_angle_is_123 :: bool where
  "IFA_angle_is_123 ≡ angle I F A = 123"
end