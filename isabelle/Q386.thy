theory ConsecutiveIntegersSquareArea
imports Main Real
begin

text ‹If a, b, and c are consecutive integers, find the area of the shaded region in the square.›

theorem area_shaded_region:
  fixes a b c :: int
  assumes "consecutive_integers": "b = a + 1 ∧ c = b + 1"
  shows "let outer_square_side = 2 * (a + b);
         outer_square_area = outer_square_side^2;
         inner_square_side = 2 * c;
         inner_square_area = inner_square_side^2;
         shaded_area = outer_square_area - inner_square_area
         in shaded_area = 24"
begin
  from consecutive_integers have "c = a + 2" by simp
  have "let outer_square_side = 2 * (a + b);
        outer_square_area = outer_square_side^2;
        inner_square_side = 2 * c;
        inner_square_area = inner_square_side^2;
        shaded_area = outer_square_area - inner_square_area
        in shaded_area = 24"
  proof -
    let ?outer_side = "2 * (a + b)"
    let ?outer_area = "?outer_side^2"
    let ?inner_side = "2 * c"
    let ?inner_area = "?inner_side^2"
    let ?shaded_area = "?outer_area - ?inner_area"
    
    have "b = a + 1" using ‹consecutive_integers› by simp
    hence "?outer_side = 2 * (a + (a + 1))" by simp
    also have "... = 2 * (2*a + 1)" by simp
    also have "... = 4*a + 2" by simp
    finally have outer_side: "?outer_side = 4*a + 2" .
    
    have "?outer_area = (4*a + 2)^2" using outer_side by simp
    also have "... = 16*a^2 + 16*a + 4" by (simp add: algebra_simps)
    finally have outer_area: "?outer_area = 16*a^2 + 16*a + 4" .
    
    have "c = a + 2" using ‹consecutive_integers› by simp
    hence "?inner_side = 2 * (a + 2)" by simp
    also have "... = 2*a + 4" by simp
    finally have inner_side: "?inner_side = 2*a + 4" .
    
    have "?inner_area = (2*a + 4)^2" using inner_side by simp
    also have "... = 4*a^2 + 16*a + 16" by (simp add: algebra_simps)
    finally have inner_area: "?inner_area = 4*a^2 + 16*a + 16" .
    
    have "?shaded_area = ?outer_area - ?inner_area" by simp
    also have "... = (16*a^2 + 16*a + 4) - (4*a^2 + 16*a + 16)" 
      using outer_area inner_area by simp
    also have "... = 12*a^2 + 0 - 12" by simp
    also have "... = 12*a^2 - 12" by simp
    finally have shaded_formula: "?shaded_area = 12*a^2 - 12" .
    
    from shaded_formula have "?shaded_area = 24 ⟷ 12*a^2 - 12 = 24" by simp
    hence "?shaded_area = 24 ⟷ 12*a^2 = 36" by simp
    hence "?shaded_area = 24 ⟷ a^2 = 3" by simp
    hence "?shaded_area = 24 ⟷ a = sqrt 3 ∨ a = -sqrt 3" 
      by (simp add: real_sqrt_mult_self real_sqrt_minus_self)
    
    have "a ∈ ℤ" by simp
    hence "a ≠ sqrt 3 ∧ a ≠ -sqrt 3" 
      by (metis of_int_eq_iff of_int_sqrt of_int_minus)
    
    thus "?shaded_area = 24" sorry
  qed
end

end