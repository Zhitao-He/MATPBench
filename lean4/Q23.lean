import Mathlib.Data.Real.Basic
import Mathlib.Topology.Algebra.Order.Field
import Mathlib.Topology.MetricSpace.Basic
open Filter Topology
instance : TopologicalSpace ℝ := inferInstance
noncomputable def f (x : ℝ) : ℝ :=
  if x < 1 then x + 3 else (x - 2)^2
example : Tendsto f (nhdsWithin 1 (Set.Iio 1)) (nhds 4) := by
  have h : ∀ᶠ x in nhdsWithin 1 (Set.Iio 1), f x = x + 3 :=
    eventually_nhdsWithin_of_forall (fun x hx => by
      simp_rw [f];
      simp [hx])
  apply Filter.Tendsto.congr' h
  convert tendsto_add tendsto_id (tendsto_const_nhds 3)
  ext x
  simp
