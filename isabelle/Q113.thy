theory IcosahedronPaths
imports Main HOL.Set HOL.Nat
begin
datatype vertex = 
  Top
  | Upper nat  
  | Lower nat  
  | Bottom
definition valid_vertex :: "vertex ⇒ bool" where
  "valid_vertex v = (case v of 
    Upper i ⇒ i < 5 
  | Lower i ⇒ i < 5 
  | _ ⇒ True)"
definition adjacent :: "vertex ⇒ vertex ⇒ bool" where
  "adjacent v1 v2 = (
    if valid_vertex v1 ∧ valid_vertex v2 then
      case (v1, v2) of
        (Top, Upper i) ⇒ i < 5
      | (Upper i, Top) ⇒ i < 5
      | (Upper i, Upper j) ⇒ j = (i + 1) mod 5 ∨ i = (j + 1) mod 5
      | (Upper i, Lower j) ⇒ i = j ∨ j = (i + 1) mod 5
      | (Lower i, Upper j) ⇒ i = j ∨ i = (j + 1) mod 5
      | (Lower i, Lower j) ⇒ j = (i + 1) mod 5 ∨ i = (j + 1) mod 5
      | (Lower i, Bottom) ⇒ i < 5
      | (Bottom, Lower i) ⇒ i < 5
      | _ ⇒ False
    else 
      False)"
definition downward_or_horizontal :: "vertex ⇒ vertex ⇒ bool" where
  "downward_or_horizontal v1 v2 = (
    case (v1, v2) of
      (Top, Upper _) ⇒ True
    | (Upper i, Upper j) ⇒ True
    | (Upper _, Lower _) ⇒ True
    | (Lower i, Lower j) ⇒ True
    | (Lower _, Bottom) ⇒ True
    | _ ⇒ False)"
definition valid_path :: "vertex list ⇒ bool" where
  "valid_path path = (
    length path ≥ 2 ∧
    (∀i < length path - 1. 
      adjacent (path ! i) (path ! (i + 1)) ∧
      downward_or_horizontal (path ! i) (path ! (i + 1))) ∧
    distinct path)"
definition top_to_bottom_path :: "vertex list ⇒ bool" where
  "top_to_bottom_path path = (
    valid_path path ∧
    hd path = Top ∧
    last path = Bottom)"
theorem num_of_top_to_bottom_paths:
  "card {p. top_to_bottom_path p} = 810"
  sorry