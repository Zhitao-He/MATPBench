import Mathlib.Data.Real.Basic
import Mathlib.Data.List.Basic

def p0 : ℝ × ℝ := (0, 1)
def p1 : ℝ × ℝ := (1, 3)
def p2 : ℝ × ℝ := (2, 2)
def p3 : ℝ × ℝ := (3, 4)
def p4 : ℝ × ℝ := (4, 3)
def p5 : ℝ × ℝ := (3, 2)
def p6 : ℝ × ℝ := (4, 0)
def p7 : ℝ × ℝ := (1, 1)

def shadedPolygonPoints : List (ℝ × ℝ) := [p0, p1, p2, p3, p4, p5, p6, p7]

def polyAreaSum (pts : List (ℝ × ℝ)) : ℝ :=
  match pts with
  | [] => 0
  | pHead :: pTail =>
    let (pLast, sumIntermediate) := pTail.foldl
      (fun (acc : (ℝ × ℝ) × ℝ) (currentPoint : ℝ × ℝ) =>
        let (prevPoint, currentSum) := acc
        (currentPoint, currentSum + (prevPoint.1 * currentPoint.2 - currentPoint.1 * prevPoint.2))
      ) (pHead, 0)
    sumIntermediate + (pLast.1 * pHead.2 - pHead.1 * pLast.2)

def polyArea (pts : List (ℝ × ℝ)) : ℝ :=
  if pts.length < 3 then 0
  else (1/2 : ℝ) * polyAreaSum pts

theorem area_of_shaded_region_bmt_symbol : polyArea shadedPolygonPoints = 6 := by
  sorry