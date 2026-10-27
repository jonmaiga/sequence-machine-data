import Prog.A086.A0867

/-- A086746 lists the multiples of 3018. -/
theorem A086746.anchor (n : ℕ) (hn : 1 ≤ n) :
    A086746 n = 3018 * n := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  simp only [A086746, A086746.P15398261513163024000.a, SequenceMachineLib.memo_apply, Nat.add_sub_cancel]
  push_cast
  ring
