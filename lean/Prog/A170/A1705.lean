import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C006
import Seq.B000.C011
import Seq.B000.C014
import Seq.B012.C000
import Seq.Opaque.C009
import Seq.Opaque.C012

/-!
# A170540: 

The programs for A170540, there is no canonical definition to state claims against.
-/

/-! ## A170540.P7103721995530173389

`A003945(n)-A080097(C(n, 47)²)`
-/

namespace A170540.P7103721995530173389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A080097 (Nat.choose n 47 ^ 2)

end

end A170540.P7103721995530173389

/-! ## A170540.P12236226957681572758

`A042950(n)-A090003(A151811(n))`
-/

namespace A170540.P12236226957681572758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - A090003 (A151811 n).toNat

end

end A170540.P12236226957681572758

/-! ## A170540.P16604858666869401566

`Δ[Δ[A103204(n+1)-A196222(A196222(2*n+3))]]`
-/

namespace A170540.P16604858666869401566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 1) - A196222 (A196222 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170540.P16604858666869401566

/-!
# A170588: 

The programs for A170588, there is no canonical definition to state claims against.
-/

/-! ## A170588.P14293611387266195741

`Δ[Δ[A103204(n+1)-A196222(A196222(2*n))]]`
-/

namespace A170588.P14293611387266195741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 1) - A196222 (A196222 (2 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170588.P14293611387266195741

