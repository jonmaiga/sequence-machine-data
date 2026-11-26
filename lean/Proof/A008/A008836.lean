import Prog.A008.A0088
import Proof.A001.A001222

/-- Liouville's lambda: (-1)^Ω(n), Ω the number of prime factors counted with multiplicity. -/
theorem A008836.anchor (n : ℕ) (hn : 1 ≤ n) :
    A008836 n = (-1) ^ ArithmeticFunction.cardFactors n := by
  simp only [A008836, A008836.P691704047226663751.a, SequenceMachineLib.memo_apply,
    show n - 1 + 1 = n by omega, A001222.anchor n hn, Int.toNat_natCast, A033999,
    A033999.P17703899380244199787.a]
