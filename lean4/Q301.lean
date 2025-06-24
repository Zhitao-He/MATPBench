import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Data.Real.Basic 
import Mathlib.Analysis.InnerProductSpace.PiL2
abbrev Point := EuclideanSpace ℝ (Fin 3)
namespace HotAirBalloonProblem
def oc_sq : ℝ := 12600
def od_sq : ℝ := 7000
def h_sq : ℝ := 9900
noncomputable def oc_val : ℝ := Real.sqrt oc_sq 
noncomputable def od_val : ℝ := Real.sqrt od_sq 
noncomputable def h_val  : ℝ := Real.sqrt h_sq  
def O_pt : Point := ![0, 0, 0]
noncomputable def C_pt : Point := ![0, -oc_val, 0]
noncomputable def D_pt : Point := ![od_val, 0, 0]
noncomputable def H_pt : Point := ![0, 0, h_val]
noncomputable def initial_rope_length : ℝ := dist H_pt C_pt + dist H_pt D_pt
noncomputable def new_rope_length (P : Point) : ℝ := dist H_pt P
noncomputable def rope_saved_at_P (P : Point) : ℝ := initial_rope_length - new_rope_length P
def segment_CD : Set Point := segment ℝ C_pt D_pt
def possible_saved_lengths : Set ℝ := { rs | ∃ P ∈ segment_CD, rs = rope_saved_at_P P }
theorem greatest_rope_saved : sSup possible_saved_lengths = 160 := by
  sorry 
end HotAirBalloonProblem
