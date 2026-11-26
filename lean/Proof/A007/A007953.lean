import Prog.A007.A0079

/-- The sum of the decimal digits of n. -/
theorem A007953.anchor (n : ℕ) : A007953 n = ((Nat.digits 10 n).sum : ℤ) := by
  simp only [A007953, A007953.P17470406891730602483.a, A007953.P17470406891730602483.f1,
    SequenceMachineLib.memo_apply, SequenceMachineLib.digits10, List.map_id']
  split_ifs with h <;> simp [h]
