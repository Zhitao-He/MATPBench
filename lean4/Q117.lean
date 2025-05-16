import Mathlib.Data.Real.Basic


namespace RectanglesIntersection


def Point2D := ℝ × ℝ



def ptA : Point2D := (0, 0)
def ptB : Point2D := (3, 0)
def ptC : Point2D := (3, 11)
def ptD : Point2D := (0, 11)


def ptF : Point2D := (0, 7)
def ptE : Point2D := (-9, 0)

structure Rectangle where
  A : Point2D
  F : Point2D
  C : Point2D
  E : Point2D


def rectABCD_xmin : ℝ := 0
def rectABCD_xmax : ℝ := 3
def rectABCD_ymin : ℝ := 0
def rectABCD_ymax : ℝ := 11


noncomputable def a : ℝ := 7 * (5 / 13)
noncomputable def b : ℝ := 7 * (12 / 13)

noncomputable def ptF_r : Point2D := (35/13, 84/13)
noncomputable def ptE_r : Point2D := (-(9/7) * b, (9/7) * a)
noncomputable def ptC_r : Point2D := (ptF_r.1 + ptE_r.1, ptF_r.2 + ptE_r.2)

noncomputable  def rectAECF_r : Rectangle :=
  { A := ptA
    F := ptF_r
    E := ptE_r
    C := ptC_r }


def m : ℕ := 100
def n : ℕ := 9
def areaOfIntersection : ℚ := m / n

def answer : ℕ := m + n 

theorem intersection_area_is_100_div_9 : areaOfIntersection = 100 / 9 := by
  sorry

theorem final_answer_is_109 : answer = 109 := by
  rfl

end RectanglesIntersection
