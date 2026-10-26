import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C007
import Seq.B001.C003
import Seq.B011.C000
import Seq.Opaque.C002
import Seq.Opaque.C009
import Seq.Opaque.C010

/-!
# A170444: 

The programs for A170444, there is no canonical definition to state claims against.
-/

/-! ## A170444.P7045308395404814133

`Δ[Δ[A003945(n)-A080097(C(n, 47)²)]]`
-/

namespace A170444.P7045308395404814133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A080097 (Nat.choose n 47 ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170444.P7045308395404814133

/-! ## A170444.P1397524994510521543

`floor(3*2^(n-1))-A090003(A151811(n+2))`
-/

namespace A170444.P1397524994510521543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A090003 (A151811 (n + 2)).toNat

end

end A170444.P1397524994510521543

/-! ## A170444.P1153496345651644858

`Δ[Δ[A042950(n)-A090003(A151811(n))]]`
-/

namespace A170444.P1153496345651644858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - A090003 (A151811 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A170444.P1153496345651644858

/-! ## A170444.P11335892787767437956

`A003945(n)-3*A185284(Δ[A035382(n)])`
-/

namespace A170444.P11335892787767437956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - 3 * A185284 (f1 (n + 1) - f1 n).toNat

end

end A170444.P11335892787767437956

/-!
# A170492: 

The programs for A170492, there is no canonical definition to state claims against.
-/

/-! ## A170492.P13539934657307483430

`floor(3*2^(n-1))-A090003(A151811(n+1))`
-/

namespace A170492.P13539934657307483430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A090003 (A151811 (n + 1)).toNat

end

end A170492.P13539934657307483430

