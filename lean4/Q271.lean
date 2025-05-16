import Mathlib.Data.Real.Basic
import Mathlib.Analysis.SpecialFunctions.Sqrt
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
namespace PrismSurfaceAreaProblem


def lDim : ℝ := 10    
def wDim : ℝ := 5     
def hDim : ℝ := 6     
def rhDim : ℝ := 3    


noncomputable def slopeLength : ℝ := Real.sqrt (rhDim ^ 2 + (wDim / 2) ^ 2)


noncomputable def totalSurfaceArea : ℝ :=
  
  let lateral := 2 * lDim * hDim
  
  let base := lDim * wDim
  
  let endWalls := 2 * wDim * hDim
  
  let gables := wDim * rhDim
  
  let roof := 2 * lDim * slopeLength
  lateral + base + endWalls + gables + roof

def targetSurfaceArea : ℝ := 323.10

theorem approx_surface_area :
  abs (totalSurfaceArea - targetSurfaceArea) < 0.01 := by sorry

end PrismSurfaceAreaProblem
