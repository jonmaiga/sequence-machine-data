import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C011
import Seq.B001.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B010.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C004
import Seq.Opaque.C007
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C017
import Seq.Opaque.C024

/-!
# A169400: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^32 = I.

The programs for A169400, there is no canonical definition to state claims against.
-/

/-! ## A169400.P7075577627863392301

`Δ[A042950(n)-A195842(A034574(n+2)+1)]`
-/

namespace A169400.P7075577627863392301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - A195842 (A034574 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A169400.P7075577627863392301

/-! ## A169400.P5398071497369906726

`A042950(n)-A028240(n)%2-A055010(A185284(n))`
-/

namespace A169400.P5398071497369906726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - Int.tmod (A028240 n) 2 - A055010 (A185284 n).toNat

end

end A169400.P5398071497369906726

/-! ## A169400.P15261549766159521310

`A029744(n+1)/4*A029744(n+4)-A185225(A185238(n+2))`
-/

namespace A169400.P15261549766159521310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029744 (n + 1) : ℚ) / 4 * (A029744 (n + 4) : ℚ) - (A185225 (A185238 (n + 2)).toNat : ℚ)

end

end A169400.P15261549766159521310

/-!
# A169424: 

The programs for A169424, there is no canonical definition to state claims against.
-/

/-! ## A169424.P6722340284060498535

`26*a(n-1)*A001222(A273756(n))` with `a(0)=1, a(1)=27`
-/

namespace A169424.P6722340284060498535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 27] fun n a =>
  26 * (a (n - 1) * A001222 (A273756 n).toNat)

end

end A169424.P6722340284060498535

/-!
# A169432: 

The programs for A169432, there is no canonical definition to state claims against.
-/

/-! ## A169432.P3953126064087011002

`34*lcm(a(n-1), A124778(n))` with `a(0)=1, a(1)=35`
-/

namespace A169432.P3953126064087011002
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n a =>
  34 * Int.lcm (a (n - 1) : ℤ) (A124778 n)

end

end A169432.P3953126064087011002

/-!
# A169448: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^33 = I.

The programs for A169448, there is no canonical definition to state claims against.
-/

/-! ## A169448.P8389501966006122750

`A042950(n)-A028240(n)%2`
-/

namespace A169448.P8389501966006122750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n - Int.tmod (A028240 n) 2

end

end A169448.P8389501966006122750

/-! ## A169448.P3020774092346218067

`floor(3*2^(n-1))-A178798(A208447(n))`
-/

namespace A169448.P3020774092346218067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A178798 (A208447 n).toNat

end

end A169448.P3020774092346218067

/-! ## A169448.P4222245586017421219

`floor(3*2^(n-1))-A185284(A233569(n))`
-/

namespace A169448.P4222245586017421219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185284 (A233569 n).toNat

end

end A169448.P4222245586017421219

/-! ## A169448.P2392280321216384600

`A083329(n)+A081729(A028240(n))`
-/

namespace A169448.P2392280321216384600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n + A081729 (A028240 n).toNat

end

end A169448.P2392280321216384600

/-! ## A169448.P15915080701447021272

`A003945(n)-A121373(A000290(3*(n+1)))`
-/

namespace A169448.P15915080701447021272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A121373 (A000290 (3 * (n + 1))).toNat

end

end A169448.P15915080701447021272

/-!
# A169449: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^33 = I.

The programs for A169449, there is no canonical definition to state claims against.
-/

/-! ## A169449.P18098352696573812499

`A003946(n)-A187794(A361600(n))`
-/

namespace A169449.P18098352696573812499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A187794 (A361600 n).toNat

end

end A169449.P18098352696573812499

/-!
# A169478: 

The programs for A169478, there is no canonical definition to state claims against.
-/

/-! ## A169478.P7789879178909132738

`A009980(n)*A067428(n)/A067429(n)`
-/

namespace A169478.P7789879178909132738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009980 n * A067428 n : ℚ) / (A067429 n : ℚ)

end

end A169478.P7789879178909132738

/-!
# A169496: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^34 = I.

The programs for A169496, there is no canonical definition to state claims against.
-/

/-! ## A169496.P14409840927492627967

`A003945(n)-A185225(A185238(n))`
-/

namespace A169496.P14409840927492627967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A185225 (A185238 n).toNat

end

end A169496.P14409840927492627967

/-! ## A169496.P1227505780332415170

`A029744(n+1)/4*A029744(n+4)-A185225(A185238(n))`
-/

namespace A169496.P1227505780332415170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029744 (n + 1) : ℚ) / 4 * (A029744 (n + 4) : ℚ) - (A185225 (A185238 n).toNat : ℚ)

end

end A169496.P1227505780332415170

