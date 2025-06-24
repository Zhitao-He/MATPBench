import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle
import Mathlib.LinearAlgebra.AffineSpace.Midpoint
import Mathlib.Data.Real.Basic
abbrev Point := EuclideanSpace ℝ (Fin 2)
def mkPoint (x y : ℝ) : Point := ![(x : ℝ), (y : ℝ)]
def A : Point := mkPoint 0 17
def B : Point := mkPoint 8 23
def C : Point := mkPoint 19 23
def D : Point := mkPoint 27 17
def E : Point := mkPoint 27 6
def F : Point := mkPoint 19 0
def G : Point := mkPoint 8 0
def H : Point := mkPoint 0 6
def octagonVertices : List Point := [A, B, C, D, E, F, G, H]
noncomputable def J : Point := midpoint ℝ H A
noncomputable def triangle1 : Point × Point × Point := (A, J, B)
noncomputable def triangle2 : Point × Point × Point := (B, J, C)
noncomputable def triangle3 : Point × Point × Point := (C, J, D)
noncomputable def triangle4 : Point × Point × Point := (D, J, E)
noncomputable def triangle5 : Point × Point × Point := (E, J, F)
noncomputable def triangle6 : Point × Point × Point := (F, J, G)
noncomputable def triangle7 : Point × Point × Point := (G, J, H)
noncomputable def sevenTriangles : List (Point × Point × Point) :=
  [triangle1, triangle2, triangle3, triangle4, triangle5, triangle6, triangle7]
noncomputable def centroid (A B C : Point) : Point :=
  (1/3 : ℝ) • (A +ᵥ B +ᵥ C)
noncomputable def K1 : Point := centroid A J B
noncomputable def K2 : Point := centroid B J C
noncomputable def K3 : Point := centroid C J D
noncomputable def K4 : Point := centroid D J E
noncomputable def K5 : Point := centroid E J F
noncomputable def K6 : Point := centroid F J G
noncomputable def K7 : Point := centroid G J H
noncomputable def polygonOfCentroidsVertices : List Point := [K1, K2, K3, K4, K5, K6, K7]
def shoelaceTerm (p1 p2 : Point) : ℝ :=
  (p1 0) * (p2 1) - (p2 0) * (p1 1)
def shoelaceSum (vertices : List Point) : ℝ :=
  match vertices with
  | [] | [_] | [_, _] => 0 
  | v_head :: v_tail =>
    let first_v := v_head
    let rec loop (current_v : Point) (remaining_vs : List Point) (acc : ℝ) : ℝ :=
      match remaining_vs with
      | [] => acc + shoelaceTerm current_v first_v 
      | next_v :: rest_vs =>
        loop next_v rest_vs (acc + shoelaceTerm current_v next_v)
    loop v_head v_tail 0
def areaOfPolygon (vertices : List Point) : ℝ :=
  0.5 * abs (shoelaceSum vertices)
noncomputable def areaOfThePolygonOfCentroids : ℝ :=
  areaOfPolygon polygonOfCentroidsVertices
def R_v1 : Point := mkPoint 0 0    
def R_v2 : Point := mkPoint 27 0   
def R_v3 : Point := mkPoint 27 23  
def R_v4 : Point := mkPoint 0 23   
def rectangleDefiningOctagonVertices : List Point := [R_v1, R_v2, R_v3, R_v4]
def removedTriangleAtCorner1Vertices : List Point := [mkPoint 0 0, mkPoint 8 0, mkPoint 0 6]
def removedTriangleAtCorner2Vertices : List Point := [mkPoint 19 0, mkPoint 27 0, mkPoint 27 6]
def removedTriangleAtCorner3Vertices : List Point := [mkPoint 19 23, mkPoint 27 23, mkPoint 27 17]
def removedTriangleAtCorner4Vertices : List Point := [mkPoint 0 17, mkPoint 8 23, mkPoint 0 23] 
def fourRemovedTrianglesVertices : List (List Point) :=
  [removedTriangleAtCorner1Vertices, removedTriangleAtCorner2Vertices, removedTriangleAtCorner3Vertices, removedTriangleAtCorner4Vertices]
