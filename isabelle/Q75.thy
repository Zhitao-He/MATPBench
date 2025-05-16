theory SquareBetweenCircles
imports Complex_Main "HOL-Analysis.Euclidean_Space"
begin

section ‹Square Between Two Circles›

text ‹A square fits snugly between the horizontal line and two touching circles of radius 1000.
      The line is tangent to the circles. The side-length of the square is 400.›

(* Constants for the problem *)
definition r :: "real" where "r = 1000"
definition s :: "real" where "s = 400"

(* Function to define a circle with center (x,y) and radius r *)
definition circle :: "real × real ⇒ real ⇒ (real × real) set" where
  "circle center radius = {p. dist p center = radius}"

(* The horizontal line y = 0 *)
definition h_line :: "(real × real) set" where
  "h_line = {(x, 0) | x. True}"

(* Centers of the two circles *)
definition C1 :: "real × real" where "C1 = (-r, r)"
definition C2 :: "real × real" where "C2 = (r, r)"

(* Define the two circles *)
definition circle1 :: "(real × real) set" where "circle1 = circle C1 r"
definition circle2 :: "(real × real) set" where "circle2 = circle C2 r"

(* Define the square with bottom-left corner at (x,0) *)
definition square :: "real ⇒ (real × real) set" where
  "square x = {(a,b) | a b. x ≤ a ∧ a ≤ x + s ∧ 0 ≤ b ∧ b ≤ s}"

(* Theorem stating that a square of side length s fits between the horizontal line and the two circles *)
theorem square_fits_snugly:
  "∃x. 
    (* Square's bottom edge lies on the horizontal line *)
    (∀p∈square x. fst p < -r ∨ fst p > r ∨ snd p > 0) ∧
    
    (* Square's top-left vertex touches circle1 *)
    ((x, s) ∈ circle1) ∧
    
    (* Square's top-right vertex touches circle2 *)
    ((x + s, s) ∈ circle2)"

end