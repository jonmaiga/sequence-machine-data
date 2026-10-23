import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C036
import Seq.B003.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C014

/-!
# A169016: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^24 = I.

The programs for A169016, there is no canonical definition to state claims against.
-/

/-! ## A169016.P14202561413969374201

`A003945(n)-3*val(A120397(n+1), 13)`
-/

namespace A169016.P14202561413969374201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - (3 * SequenceMachineLib.valuation (A120397 (n + 1)).toNat 13 : ℤ)

end

end A169016.P14202561413969374201

/-! ## A169016.P3437555173488304133

`floor(3*2^(n-1))-A185214(A185203(n))`
-/

namespace A169016.P3437555173488304133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185214 (A185203 n).toNat

end

end A169016.P3437555173488304133

/-! ## A169016.P11210595861823216764

`A003945(n)-A185238(A061451(n+1))`
-/

namespace A169016.P11210595861823216764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A185238 (A061451 (n + 1)).toNat

end

end A169016.P11210595861823216764

/-!
# A169017: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^24 = I.

The programs for A169017, there is no canonical definition to state claims against.
-/

/-! ## A169017.P2996641581652140201

`xor(floor(4*3^(n-1)), A010894(A029042(n)))`
-/

namespace A169017.P2996641581652140201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A010894 ((A029042 n).toNat + 21))

end

end A169017.P2996641581652140201

/-! ## A169017.P5763877983992224628

`xor(floor(4*3^(n-1)), A010893(A185191(n+2)))`
-/

namespace A169017.P5763877983992224628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A010893 ((A185191 (n + 2)).toNat + 13))

end

end A169017.P5763877983992224628

/-! ## A169017.P436028943907819419

`xor(floor(4*3^(n-1)), A185255(A138234(n+4)))`
-/

namespace A169017.P436028943907819419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A185255 (A138234 (n + 4)).toNat)

end

end A169017.P436028943907819419

/-! ## A169017.P12026373557089842909

`xor(A010894(A029042(n)), A052156(n+1))`
-/

namespace A169017.P12026373557089842909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010894 ((A029042 n).toNat + 21)) (A052156 (n + 1))

end

end A169017.P12026373557089842909

/-! ## A169017.P12080871629227897949

`xor(A010894(A029042(n)), A326339(n+2))`
-/

namespace A169017.P12080871629227897949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010894 ((A029042 n).toNat + 21)) (A326339 (n + 2))

end

end A169017.P12080871629227897949

/-!
# A169065: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^25 = I.

The programs for A169065, there is no canonical definition to state claims against.
-/

/-! ## A169065.P3821966716326714670

`A003946(n)-A240310(A034480(n+1)!)`
-/

namespace A169065.P3821966716326714670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A240310 (Nat.factorial (A034480 (n + 1)).toNat)

end

end A169065.P3821966716326714670

/-!
# A169066: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^25 = I.

The programs for A169066, there is no canonical definition to state claims against.
-/

/-! ## A169066.P11480195472655162666

`A003947(n)-A185255(A007843(n+1))`
-/

namespace A169066.P11480195472655162666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A185255 (A007843 (n + 1)).toNat

end

end A169066.P11480195472655162666

