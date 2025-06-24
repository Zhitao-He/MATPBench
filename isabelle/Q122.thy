theory Octahedron_Vertex_Sum
  imports Main
begin
datatype vertex = A | B | C | D | E
locale octahedron_vertex_sum =
  fixes f :: "vertex ⇒ int"
  assumes fA: "f A = 1"
    and fB: "f B = 5"
    and face_sum:
      "∃S. 
        f A + f B + f C = S ∧
        f A + f B + f D = S ∧
        f A + f C + f D = S ∧
        f B + f C + f D = S ∧
        f B + f D + f E = S ∧
        f A + f D + f E = S"
    and sum_CDE: "f C + f D + f E = 11"
end