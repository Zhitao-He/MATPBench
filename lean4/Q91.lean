import Mathlib.Geometry.Euclidean.Basic
theorem tetrahedron_midpoints_distance_sq
    {V : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    {P : Type*} [MetricSpace P] [NormedAddTorsor V P]
    (A B C D : P)
    (hAB : dist A B = 41)
    (hAC : dist A C = 7)
    (hAD : dist A D = 18)
    (hBC : dist B C = 36)
    (hBD : dist B D = 27)
    (hCD : dist C D = 13) :
    let M := midpoint ℝ A B
    let N := midpoint ℝ C D
    dist M N ^ 2 = 137 := by sorry