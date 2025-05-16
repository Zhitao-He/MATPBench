import Mathlib.Data.Real.Basic




variable (x y : ℝ)


variable (angle_HGJ angle_IHG angle_GJI angle_JIH : ℝ)


variable (angle_NML angle_MLO angle_LON angle_ONM : ℝ)


def h_HGJ_val : angle_HGJ = 87 := by sorry              
def h_IHG_val : angle_IHG = 98 := by sorry              
def h_GJI_def : angle_GJI = y + 30 := by sorry          


def h_LON_val : angle_LON = 60 := by sorry              
def h_MLO_def : angle_MLO = x - 4 := by sorry           


def h_GJI_eq_LON : angle_GJI = angle_LON := by sorry    
def h_IHG_eq_NML : angle_IHG = angle_NML := by sorry    
def h_JIH_eq_ONM : angle_JIH = angle_ONM := by sorry    
def h_HGJ_eq_MLO : angle_HGJ = angle_MLO := by sorry    


def h_sum_HGJI : angle_HGJ + angle_IHG + angle_GJI + angle_JIH = 360 := by sorry
def h_sum_MLON : angle_NML + angle_MLO + angle_LON + angle_ONM = 360 := by sorry


theorem value_of_x : x = 91 := by sorry