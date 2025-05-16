import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Pow.Real


theorem smallCircleArcLength
    (R_large r_small : ℝ)
    (h_pos : 0 < r_small)
    (h_radius : r_small = R_large / 2)
    (h_circumference : 2 * Real.pi * R_large = 36) :
    let angle_deg := 80
    let angle_rad := angle_deg * Real.pi / 180
    let arc_length := r_small * angle_rad
    arc_length = 4 :=
by sorry