theory Tetrahedron_Labeling
  imports Main
begin
definition label_set :: "nat set" where
  "label_set = {1,2,3,4,5,6,7,8,9,11}"
datatype vertex = A | B | C | D
datatype edge = AB | AC | AD | BC | BD | CD
type_synonym labeling = "vertex ⇒ nat"
fun edge_of :: "edge ⇒ vertex × vertex" where
  "edge_of AB = (A,B)" |
  "edge_of AC = (A,C)" |
  "edge_of AD = (A,D)" |
  "edge_of BC = (B,C)" |
  "edge_of BD = (B,D)" |
  "edge_of CD = (C,D)"
definition edge_label :: "labeling ⇒ edge ⇒ nat" where
  "edge_label f e = (let (v1,v2) = edge_of e in f v1 + f v2)"
definition valid_labeling :: "labeling ⇒ bool" where
  "valid_labeling f ⟷
    (inj_on f {A,B,C,D} ∧
     {f A, f B, f C, f D} ⊆ label_set)"
definition ab_label_9 :: "labeling ⇒ bool" where
  "ab_label_9 f ⟷ edge_label f AB = 9"
definition possible_cd_labels :: "nat set" where
  "possible_cd_labels = 
    {edge_label f CD | f. valid_labeling f ∧ ab_label_9 f}"
end