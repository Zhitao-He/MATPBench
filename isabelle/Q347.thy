theory Triangle_Area_Theorem
imports Complex_Main Real
begin

theorem triangle_area_vertex_r:
  fixes r :: real
  defines "O ≡ (0 :: real, 0 :: real)"
  defines "A ≡ (0 :: real, 8 :: real)"
  defines "B ≡ (r, 0 :: real)"
  defines "area ≡ abs(fst A - fst O) * (snd A - snd O) - (fst O - fst B) * (snd O - snd A) / 2"
  shows "area = 40 ⟹ r = 10"
  
end