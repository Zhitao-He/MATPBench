theory Trapezoidal_Prism_Surface_Area
  imports Complex_Main
begin
definition a :: real where "a = 13"   
definition b :: real where "b = 3"    
definition h_trap :: real where "h_trap = 10"  
definition H :: real where "H = 10"   
definition area_trapezoid :: real where
  "area_trapezoid = ((a + b) * h_trap) / 2"
definition surface_area_trapezoidal_prism :: real where
  "surface_area_trapezoidal_prism =
    2 * area_trapezoid
    + (a * H) + (b * H) + (h_trap * H)"
value "area_trapezoid"  
value "surface_area_trapezoidal_prism"  
end