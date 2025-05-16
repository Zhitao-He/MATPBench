theory Triangle_FG_Length
imports Complex_Main
begin
theorem triangle_FGH_FG_length_39:
  fixes F G H :: "real × real"
  defines "FG ≡ dist F G"
  defines "GH ≡ dist G H"
  defines "FH ≡ dist F H"
  assumes "FG = 9 * x - 6" and "GH = 7 * x + 4" and "FH = 17" and "FG = GH"
  shows "FG = 39"
begin
  from ‹FG = 9 * x - 6› and ‹GH = 7 * x + 4› and ‹FG = GH›
  have "9 * x - 6 = 7 * x + 4" by simp
  hence "2 * x = 10" by simp
  hence "x = 5" by simp
  with ‹FG = 9 * x - 6› have "FG = 9 * 5 - 6" by simp
  hence "FG = 45 - 6" by simp
  thus "FG = 39" by simp