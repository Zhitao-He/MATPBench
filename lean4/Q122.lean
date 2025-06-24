import Mathlib.Data.Int.Basic 
import Mathlib.Data.Fintype.Basic 
import Mathlib.Data.Finset.Basic 
inductive Vertex : Type where
  | N  
  | S  
  | E1 
  | E2 
  | E3 
  deriving DecidableEq 
instance : Fintype Vertex where
  elems := {Vertex.N, Vertex.S, Vertex.E1, Vertex.E2, Vertex.E3}
  complete := by
    intro x
    cases x <;> simp [Vertex.N, Vertex.S, Vertex.E1, Vertex.E2, Vertex.E3]
variable (vertexValue : Vertex → ℤ)
axiom val_N_is_1 : vertexValue N = 1
axiom val_E1_is_5 : vertexValue E1 = 5
variable (k : ℤ)
axiom face_N_E1_E2_eq_k : vertexValue N + vertexValue E1 + vertexValue E2 = k
axiom face_N_E2_E3_eq_k : vertexValue N + vertexValue E2 + vertexValue E3 = k
axiom face_N_E3_E1_eq_k : vertexValue N + vertexValue E3 + vertexValue E1 = k
axiom face_S_E1_E2_eq_k : vertexValue S + vertexValue E1 + vertexValue E2 = k
axiom face_S_E2_E3_eq_k : vertexValue S + vertexValue E2 + vertexValue E3 = k
axiom face_S_E3_E1_eq_k : vertexValue S + vertexValue E3 + vertexValue E1 = k
theorem sum_of_other_three_vertices_is_11 :
  vertexValue S + vertexValue E2 + vertexValue E3 = 11 := by sorry
