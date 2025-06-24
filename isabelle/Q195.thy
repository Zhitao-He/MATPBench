theory StreetLampGeometry
imports Main
begin
definition person_height :: real where
  "person_height = 1.5"
definition distance_lamp_to_person :: real where
  "distance_lamp_to_person = 25.0"
definition distance_lamp_to_shadow_tip :: real where
  "distance_lamp_to_shadow_tip = 30.0"
definition shadow_length :: real where
  "shadow_length = distance_lamp_to_shadow_tip - distance_lamp_to_person"
definition lamp_height :: real where
  "lamp_height = person_height * (distance_lamp_to_shadow_tip / shadow_length)"
end