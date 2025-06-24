theory TangramAreaCalculation
imports Main
begin
definition L :: real where
  "L = 12"
definition Total_Area :: real where
  "Total_Area = L * L"
definition Area_Small_Triangle :: real where
  "Area_Small_Triangle = Total_Area / 16"
definition Area_Square_Piece :: real where
  "Area_Square_Piece = Total_Area / 8"
definition Sum_Area_Three_Figures :: real where
  "Sum_Area_Three_Figures = Area_Small_Triangle + Area_Small_Triangle + Area_Square_Piece"
end