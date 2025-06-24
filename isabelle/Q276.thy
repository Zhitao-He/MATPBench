theory Cube_AG_Length
  imports Complex_Main
begin
definition cube_vertices :: "((string × real × real × real) set)" where
  "cube_vertices = {
    (''A'', 0, 0, 0),
    (''B'', 7, 0, 0),
    (''C'', 7, 7, 0),
    (''D'', 0, 7, 0),
    (''E'', 0, 0, 7),
    (''F'', 7, 0, 7),
    (''G'', 7, 7, 7),
    (''H'', 0, 7, 7)
  }"
definition cube_edges :: "((string × string) set)" where
  "cube_edges = {
    (''A'', ''B''), (''B'', ''C''), (''C'', ''D''), (''D'', ''A''),
    (''E'', ''F''), (''F'', ''G''), (''G'', ''H''), (''H'', ''E''),
    (''A'', ''E''), (''B'', ''F''), (''C'', ''G''), (''D'', ''H'')
  }"
definition dist3 :: "real × real × real ⇒ real × real × real ⇒ real" where
  "dist3 p1 p2 = sqrt ((fst p1 - fst p2)^2 + (fst (snd p1) - fst (snd p2))^2 + (snd (snd p1) - snd (snd p2))^2)"
definition get_vertex :: "string ⇒ real × real × real" where
  "get_vertex v ≡ (THE (x, y, z). (v, x, y, z) ∈ cube_vertices)"
definition AG_length :: real where
  "AG_length = dist3 (get_vertex ''A'') (get_vertex ''G'')"
lemma AG_length_surd:
  "AG_length = sqrt 147"
proof -
  have "get_vertex ''A'' = (0, 0, 0)"
    unfolding get_vertex_def cube_vertices_def by (simp add: the_equality)
  moreover have "get_vertex ''G'' = (7, 7, 7)"
    unfolding get_vertex_def cube_vertices_def by (simp add: the_equality)
  ultimately have "AG_length = dist3 (0, 0, 0) (7, 7, 7)"
    unfolding AG_length_def by simp
  also have "... = sqrt ((7 - 0)^2 + (7 - 0)^2 + (7 - 0)^2)"
    unfolding dist3_def by simp
  also have "... = sqrt (49 + 49 + 49)"
    by simp
  also have "... = sqrt 147"
    by simp
  finally show ?thesis .
qed
end