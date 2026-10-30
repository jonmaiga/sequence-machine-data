import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C008
import Seq.B000.C018
import Seq.B001.C003
import Seq.B011.C000
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011

/-!
# A170540: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^47 = I.

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
# A170551: Number of reduced words of length n in Coxeter group on 14 generators S_i with relations (S_i)^2 = (S_i S_j)^47 = I.

The programs for A170551, there is no canonical definition to state claims against.
-/

/-! ## A170551.P13757534592263465391

`A170599(n+1)-Δ[A170733(n)]`
-/

namespace A170551.P13757534592263465391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170599 (n + 1) - (f1 (n + 1) - f1 n)

end

end A170551.P13757534592263465391

/-!
# A170559: Number of reduced words of length n in Coxeter group on 22 generators S_i with relations (S_i)^2 = (S_i S_j)^47 = I.

The programs for A170559, there is no canonical definition to state claims against.
-/

/-! ## A170559.P2689482466450034476

`A170607(n+1)-Δ[A170741(n)]`
-/

namespace A170559.P2689482466450034476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170607 (n + 1) - (f1 (n + 1) - f1 n)

end

end A170559.P2689482466450034476

/-!
# A170588: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^48 = I.

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

