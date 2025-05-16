theory PolygonConstruction
imports Main
begin
definition n_tri :: nat where "n_tri = 3"   
definition n_sqr :: nat where "n_sqr = 4"   
definition n_pent :: nat where "n_pent = 5" 
definition n_hex :: nat where "n_hex = 6"   
definition n_hept :: nat where "n_hept = 7" 
definition n_oct :: nat where "n_oct = 8"   
theorem polygon_number_of_sides:
  "n_tri + n_sqr + n_pent + n_hex + n_hept + n_oct - 2 * 5 = 23"
  unfolding n_tri_def n_sqr_def n_pent_def n_hex_def n_hept_def n_oct_def
  by simp