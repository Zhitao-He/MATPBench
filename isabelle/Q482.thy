theory Geometry_Problem
  imports Complex_Main
begin
locale geometry_setup =
  fixes J K M N P L :: "complex"
  assumes
    "dist(J, K) = 10"
    "dist(M, N) = 16"
    "K ≠ M" "K ≠ N" "K ≠ J" "K ≠ P" "K ≠ L"
    "J ≠ M" "J ≠ N" "J ≠ P" "J ≠ L"
    "M ≠ N" "M ≠ P" "M ≠ L"
    "N ≠ P" "N ≠ L"
    "P ≠ L"
    "dist(K, J) = dist(K, M)"
    "dist(K, J) = dist(K, N)"
    "dist(K, J) = dist(K, L)"
    "let θ = Arg ((M - K) / (N - K)) in θ = (98 * pi / 180)"
    "Re ((M - P) / (K - P)) = 0"
    "collinear M P L"
    "L ≠ M"
    "dist(K, L) = dist(K, J)"
begin
definition "LN = dist(L, N)"
theorem LN_value:
  "LN = 4 * sqrt 5"
  unfolding LN_def by simp 
end
end