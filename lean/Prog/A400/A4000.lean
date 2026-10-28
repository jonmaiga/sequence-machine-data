import SequenceMachineLib.Basic
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C030
import Seq.B001.C002
import Seq.B002.C006
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C009
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C024

/-!
# A400000: The city-building sequence: a(n) = the height h of the shortest building which can see exactly h earlier buildings.

The programs for A400000, there is no canonical definition to state claims against.
-/

/-! ## A400000.P6443244868483255649

`n-A400110(n+1)`
-/

namespace A400000.P6443244868483255649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A400110 (n + 1)

end

end A400000.P6443244868483255649

/-! ## A400000.P144954016226792459

`A057945(A007179(n))`
-/

namespace A400000.P144954016226792459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (A007179 n).toNat

end

end A400000.P144954016226792459

/-! ## A400000.P10008709228760686287

`A072410(A075426(n))`
-/

namespace A400000.P10008709228760686287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072410 (A075426 n).toNat

end

end A400000.P10008709228760686287

/-! ## A400000.P13834787757568634313

`A088239(A174354(n))`
-/

namespace A400000.P13834787757568634313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088239 (A174354 n).toNat

end

end A400000.P13834787757568634313

/-! ## A400000.P13417009082499720184

`A305831(A008823(n))`
-/

namespace A400000.P13417009082499720184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (A008823 n).toNat

end

end A400000.P13417009082499720184

/-!
# A400003: The sequence of binary decisions that defines the unique infinite path in the base-10 comma child graph.

The programs for A400003, there is no canonical definition to state claims against.
-/

/-! ## A400003.P15868608790378501780

`A189723(A274154(n+1))`
-/

namespace A400003.P15868608790378501780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189723 (A274154 (n + 1)).toNat

end

end A400003.P15868608790378501780

/-! ## A400003.P7923253815409206886

`A284505(A072520(n+2))`
-/

namespace A400003.P7923253815409206886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284505 (A072520 (n + 2)).toNat

end

end A400003.P7923253815409206886

