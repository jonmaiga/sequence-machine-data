import Prog.A010.A0100

/-- The characteristic function of the squares. -/
theorem A010052.anchor (n : ℕ) : A010052 n = if IsSquare n then 1 else 0 := by
  have h : (∃ j, j ^ 2 = n) ↔ IsSquare n :=
    ⟨fun ⟨j, hj⟩ => ⟨j, by rw [← hj, sq]⟩, fun ⟨j, hj⟩ => ⟨j, by rw [hj, sq]⟩⟩
  simp only [A010052, A010052.P917763524850441347.a, A010052.P917763524850441347.f1,
    SequenceMachineLib.memo_apply]
  by_cases hs : IsSquare n
  · simp [hs, h.mpr hs]
  · simp [hs, mt h.mp hs]
