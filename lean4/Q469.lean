import Mathlib.Data.Real.Basic
def vset : List ℕ := [1,2,3,4,5,6,7,8,9,11]
inductive Vertex where
  | A | B | C | D
  deriving DecidableEq, Repr
inductive Edge where
  | AB | AC | AD | BC | BD | CD
  deriving DecidableEq, Repr
def edgeEndpoints : Edge → (Vertex × Vertex)
  | Edge.AB => (Vertex.A, Vertex.B)
  | Edge.AC => (Vertex.A, Vertex.C)
  | Edge.AD => (Vertex.A, Vertex.D)
  | Edge.BC => (Vertex.B, Vertex.C)
  | Edge.BD => (Vertex.B, Vertex.D)
  | Edge.CD => (Vertex.C, Vertex.D)
def allVertices : List Vertex := [Vertex.A, Vertex.B, Vertex.C, Vertex.D]
def allEdges : List Edge := [Edge.AB, Edge.AC, Edge.AD, Edge.BC, Edge.BD, Edge.CD]
variable (vertexLabel : Vertex → ℕ)
variable (edgeLabel : Edge → ℕ)
def allVertexLabels (vertexLabel : Vertex → ℕ) : List ℕ :=
  allVertices.map vertexLabel
def allEdgeLabels (edgeLabel : Edge → ℕ) : List ℕ :=
  allEdges.map edgeLabel
def allLabels (vertexLabel : Vertex → ℕ) (edgeLabel : Edge → ℕ) : List ℕ :=
  allVertexLabels vertexLabel ++ allEdgeLabels edgeLabel
axiom h_labels_perm : List.Perm (allLabels vertexLabel edgeLabel) vset
axiom h_edge_sum : ∀ e : Edge, let (v1, v2) := edgeEndpoints e; edgeLabel e = vertexLabel v1 + vertexLabel v2
axiom h_AB_9 : edgeLabel Edge.AB = 9
theorem edgeCD_is_5 : edgeLabel Edge.CD = 5 := by
  sorry