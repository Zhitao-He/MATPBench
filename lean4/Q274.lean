import Mathlib.Data.Real.Basic

-- Structure for a cylinder with radius and height
structure Cylinder where
  radius : Real
  height : Real

-- Base (top) area of a cylinder
noncomputable def Cylinder.baseArea (c : Cylinder) : Real :=>
  Real.pi * c.radius ^ 2

-- Side (lateral) surface area of a cylinder
noncomputable def Cylinder.sideArea (c : Cylinder) : Real :=>
  2 * Real.pi * c.radius * c.height

-- Theorem about the iced surface area of the wedding cake (to nearest cm²)
theorem weddingCakeSurfaceArea_approx :
  let rTop : Real    := 20     -- top cylinder radius (cm)
  let hTop : Real    := 20     -- top cylinder height (cm)
  let hMid : Real    := 20     -- middle cylinder height (cm)
  let hBot : Real    := 40     -- bottom cylinder height (cm)

  let rMid : Real    := 2 * rTop   -- middle cylinder radius is double top
  let rBot : Real    := 3 * rTop   -- bottom cylinder radius is triple top

  let top : Cylinder := { radius := rTop, height := hTop }
  let mid : Cylinder := { radius := rMid, height := hMid }
  let bot : Cylinder := { radius := rBot, height := hBot }

  -- Parts to be iced:
  -- 1. Top surface of the top tier
  let topSurfaceTop : Real := Cylinder.baseArea top
  -- 2. Side of the top tier
  let topSurfaceSide : Real := Cylinder.sideArea top

  -- 3. Side of the middle tier
  let midSurfaceSide : Real := Cylinder.sideArea mid
  -- 4. The "exposed top" of the middle tier (outer ring around upper tier)
  let midSurfaceTopRing : Real := Cylinder.baseArea mid - Cylinder.baseArea top

  -- 5. Side of the bottom tier
  let botSurfaceSide : Real := Cylinder.sideArea bot
  -- 6. The "exposed top" of the bottom tier (outer ring around middle tier)
  let botSurfaceTopRing : Real := Cylinder.baseArea bot - Cylinder.baseArea mid

  -- Total surface area to be iced (no bottoms)
  let totalIcedArea : Real :=
    topSurfaceTop + topSurfaceSide +
    midSurfaceSide + midSurfaceTopRing +
    botSurfaceSide + botSurfaceTopRing

  -- The area should be (to nearest cm²): 33929 cm²
  abs (totalIcedArea - 33929) ≤ 0.5
  := by sorry