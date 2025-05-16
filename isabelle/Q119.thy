theory SpheresProblem
imports
  Complex_Main
  "HOL-Analysis.Analysis"
begin
type_synonym point = "real × real × real"
definition vec_add :: "point ⇒ point ⇒ point" where
  "vec_add p1 p2 = (fst p1 + fst p2, fst (snd p1) + fst (snd p2), snd (snd p1) + snd (snd p2))"
definition vec_sub :: "point ⇒ point ⇒ point" where
  "vec_sub p1 p2 = (fst p1 - fst p2, fst (snd p1) - fst (snd p2), snd (snd p1) - snd (snd p2))"
definition scalar_mult :: "real ⇒ point ⇒ point" where
  "scalar_mult s p = (s * fst p, s * fst (snd p), s * snd (snd p))"
definition dot_product :: "point ⇒ point ⇒ real" where
  "dot_product p1 p2 = fst p1 * fst p2 + fst (snd p1) * fst (snd p2) + snd (snd p1) * snd (snd p2)"
definition norm :: "point ⇒ real" where
  "norm p = sqrt (dot_product p p)"
definition distance :: "point ⇒ point ⇒ real" where
  "distance p1 p2 = norm (vec_sub p1 p2)"
definition sphere :: "point ⇒ real ⇒ point set" where
  "sphere center radius = {p. distance p center = radius}"
definition plane :: "point ⇒ real ⇒ point set" where
  "plane normal d = {p. dot_product normal p = d}"
definition line :: "point ⇒ point ⇒ point set" where
  "line pt dir = {p. ∃t. p = vec_add pt (scalar_mult t dir)}"
definition externally_tangent_spheres :: "point ⇒ real ⇒ point ⇒ real ⇒ bool" where
  "externally_tangent_spheres c1 r1 c2 r2 = (distance c1 c2 = r1 + r2)"
definition sphere_tangent_to_plane :: "point ⇒ real ⇒ point ⇒ real ⇒ point" where
  "sphere_tangent_to_plane center radius normal d = 
    vec_sub center (scalar_mult (radius / norm normal) normal)"
definition dist_point_to_line :: "point ⇒ point ⇒ point ⇒ real" where
  "dist_point_to_line p line_pt line_dir = 
    norm (vec_sub p (vec_add line_pt (scalar_mult (dot_product (vec_sub p line_pt) line_dir / dot_product line_dir line_dir) line_dir)))"
theorem spheres_problem:
  "∃c1 c2 c3 normal1 normal2 d1 d2 line_pt line_dir.
    let r1 = 36; r2 = 36; r3 = 13;
        P = plane normal1 d1;
        Q = plane normal2 d2;
        S1 = sphere c1 r1;
        S2 = sphere c2 r2;
        S3 = sphere c3 r3;
        ℓ = line line_pt line_dir;
        tangent_point = sphere_tangent_to_plane c3 r3 normal1 d1
    in
    externally_tangent_spheres c1 r1 c2 r2 ∧
    externally_tangent_spheres c1 r1 c3 r3 ∧
    externally_tangent_spheres c2 r2 c3 r3 ∧
    (∃p∈P. p ∈ S1) ∧ (∃p∈P. p ∈ S2) ∧ (∃p∈P. p ∈ S3) ∧
    (∃q∈Q. q ∈ S1) ∧ (∃q∈Q. q ∈ S2) ∧ (∃q∈Q. q ∈ S3) ∧
    (∀p. p ∈ P ∧ p ∈ Q ↔ p ∈ ℓ) ∧
    dist_point_to_line tangent_point line_pt line_dir = 335/1"