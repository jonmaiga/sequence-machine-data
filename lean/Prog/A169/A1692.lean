import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C028
import Seq.B000.C036
import Seq.B001.C001
import Seq.B002.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C012

/-!
# A169208: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^28 = I.

The programs for A169208, there is no canonical definition to state claims against.
-/

/-! ## A169208.P7772979645508632859

`floor(3*2^(n-1))-A002262(A210709(n+1))`
-/

namespace A169208.P7772979645508632859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A002262 (A210709 (n + 1)).toNat

end

end A169208.P7772979645508632859

/-! ## A169208.P6915910333102594131

`A003945(n)-A054899(A018843(n))`
-/

namespace A169208.P6915910333102594131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A054899 (A018843 n).toNat

end

end A169208.P6915910333102594131

/-! ## A169208.P7653476477049898029

`A003945(n)-A053827(A210709(n+1))`
-/

namespace A169208.P7653476477049898029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A053827 (A210709 (n + 1)).toNat

end

end A169208.P7653476477049898029

/-! ## A169208.P3240291878523221192

`A169352(n)-A053827(A210709(n+1))`
-/

namespace A169208.P3240291878523221192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169352 n - A053827 (A210709 (n + 1)).toNat

end

end A169208.P3240291878523221192

/-!
# A169209: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^28 = I.

The programs for A169209, there is no canonical definition to state claims against.
-/

/-! ## A169209.P6529165838878607403

`floor(4*3^(n-1))-A034432(A003105(n))`
-/

namespace A169209.P6529165838878607403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A003105 n).toNat

end

end A169209.P6529165838878607403

/-! ## A169209.P7624982031836389231

`xor(floor(4*3^(n-1)), A185255(A138234(n)))`
-/

namespace A169209.P7624982031836389231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A185255 (A138234 n).toNat)

end

end A169209.P7624982031836389231

/-! ## A169209.P18263972290933326490

`xor(A185255(A138234(n)), A326339(n+2))`
-/

namespace A169209.P18263972290933326490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185255 (A138234 n).toNat) (A326339 (n + 2))

end

end A169209.P18263972290933326490

/-! ## A169209.P8495320316188747368

`xor(A185255(A138234(n)), A211221(2*n+1))`
-/

namespace A169209.P8495320316188747368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185255 (A138234 n).toNat) (A211221 (2 * n + 1))

end

end A169209.P8495320316188747368

/-!
# A169256: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^29 = I.

The programs for A169256, there is no canonical definition to state claims against.
-/

/-! ## A169256.P8291494434253364722

`floor(3*2^(n-1))-A002262(A210709(n))`
-/

namespace A169256.P8291494434253364722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A002262 (A210709 n).toNat

end

end A169256.P8291494434253364722

/-! ## A169256.P6230074823745317084

`A042950(n)-A053827(A210709(n))`
-/

namespace A169256.P6230074823745317084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - A053827 (A210709 n).toNat

end

end A169256.P6230074823745317084

/-! ## A169256.P4752323818988520316

`A003945(n)-A082503(A185255(n+1))`
-/

namespace A169256.P4752323818988520316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A082503 (A185255 (n + 1)).toNat

end

end A169256.P4752323818988520316

