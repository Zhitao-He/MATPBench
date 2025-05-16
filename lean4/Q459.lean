import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Data.Real.Basic
import Mathlib.Geometry.Euclidean.Basic
import Mathlib.Geometry.Euclidean.Triangle

-- Use ℝ × ℝ as the model for the Euclidean plane.
local notation "EPlane" => EuclideanSpace ℝ (Fin 2)

namespace RectangleAreaProblem

/-!
We are given rectangle ABCD.
- D = (0, 0)
- A = (0, w)
- B = (l, w)
- C = (l, 0)

M is on AB:  AM = x, so M = (x, w)
N is on BC:  BN = y, so N = (l, w - y)
Areas:
- △ADM = 15
- △MBN = 20
- △NCD = 25

We are to find the area of △DMN.
-/

-- Parameters for rectangle and points
variable (l w x y : ℝ)

-- Rectangle must have positive length & width
variable (hl : 0 < l) (hw : 0 < w)
-- Points M and N must be strictly inside their respective edges
variable (hx : 0 < x) (hx' : x < l)
variable (hy : 0 < y) (hy' : y < w)

-- Define vertices
def D : EPlane := ![0, 0]
def A (w : ℝ) : EPlane := ![0, w]
def B (l w : ℝ) : EPlane := ![l, w]
def C (l : ℝ) : EPlane := ![l, 0]

-- Define moving points
def M (x w : ℝ) : EPlane := ![x, w]          -- On AB, AM = x
def N (l w y : ℝ) : EPlane := ![l, w - y]    -- On BC, BN = y

-- Define regions/triangles as Mathlib triangles
def tri_ADM (l w x y : ℝ) : Triangle EPlane := ⟨![A w, D, M x w]⟩
def tri_MBN (l w x y : ℝ) : Triangle EPlane := ⟨![M x w, B l w, N l w y]⟩
def tri_NCD (l w x y : ℝ) : Triangle EPlane := ⟨![N l w y, C l, D]⟩
def tri_DMN (l w x y : ℝ) : Triangle EPlane := ⟨![D, M x w, N l w y]⟩

-- Area specifications as hypotheses
variable (hA : tri_ADM l w x y |>.area = 15)
variable (hB : tri_MBN l w x y |>.area = 20)
variable (hC : tri_NCD l w x y |>.area = 25)

-- Question: Find area of △DMN
theorem area_DMN_is_10_sqrt_21 :
  tri_DMN l w x y |>.area = 10 * Real.sqrt 21 := by sorry

end RectangleAreaProblem