import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A323900: Sum of A287896 and its Dirichlet inverse.

The programs for A323900, there is no canonical definition to state claims against.
-/

/-! ## A323900.P2335948085139681030

`A287896(n+1)+A323899(n+1)`
-/

namespace A323900.P2335948085139681030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) + A323899 (n + 1)

end

end A323900.P2335948085139681030

/-! ## A323900.P4551026549755550549

`A323899(n+1)+A001511(n+1)*A002487(n+1)`
-/

namespace A323900.P4551026549755550549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323899 (n + 1) + A001511 (n + 1) * A002487 (n + 1)

end

end A323900.P4551026549755550549

/-! ## A323900.P11708952472694578672

`A287896(n+1)+∑{d}[n+1, A154955(#)*A317843((n+1)/#)]`
-/

namespace A323900.P11708952472694578672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A154955 d * A317843 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323900.P11708952472694578672

/-! ## A323900.P5059866162533522405

`A323899(n+1)+A001511(n+1)*A323365(4*(n+1))`
-/

namespace A323900.P5059866162533522405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323899 (n + 1) + A001511 (n + 1) * A323365 (4 * (n + 1))

end

end A323900.P5059866162533522405

/-! ## A323900.P8954014481052305116

`A181988(n+1)+A349346(n+1)-A108563(A058875(n+1))`
-/

namespace A323900.P8954014481052305116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181988 (n + 1) + (A349346 (n + 1) - A108563 (A058875 (n + 1)).toNat)

end

end A323900.P8954014481052305116

/-!
# A323901: a(n) = A002487(A163511(n)).

The programs for A323901, the canonical program `A323901.P12439125084005686553` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323901 has offset 0).

The definition of A323901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323901.P12439125084005686553

`A002487(A163511(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A323901

/-- `A002487(A163511(n))` -/
def P12439125084005686553.Spec : Prop :=
  ∀ n, P12439125084005686553.a n = A323901 n

theorem P12439125084005686553.correct : P12439125084005686553.Spec := by
  intro n
  simp only [A323901]

end A323901

/-! ## A323901.P4894537183960313879

`A331749(n)+A002487(n)`
-/

namespace A323901.P4894537183960313879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 n + A002487 n

end

end A323901.P4894537183960313879

namespace A323901

/-- `A331749(n)+A002487(n)` -/
def P4894537183960313879.Spec : Prop :=
  ∀ n, P4894537183960313879.a n = A323901 n

theorem P4894537183960313879.correct : P4894537183960313879.Spec := by
  intro n
  simp only [A323901, Nat.add_sub_cancel, A323901.P4894537183960313879.a, A323901.P12439125084005686553.a, A002487, A002487.P14011177000981426228.a, A163511, A163511.P5635496813650871695.a, A331749, A331749.P3262571390583388432.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P8520361847049590329.a, A003557, A003557.P6364735403900941810.a, A057335, A057335.P1378643245781663048.a, A145341, A145341.P17834554394848515737.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A030101, A030101.P16184294017372777612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323901

/-! ## A323901.P5520983434008816566

`xor(A002487(n), A331748(n))`
-/

namespace A323901.P5520983434008816566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002487 n) (A331748 n)

end

end A323901.P5520983434008816566

namespace A323901

/-- `xor(A002487(n), A331748(n))` -/
def P5520983434008816566.Spec : Prop :=
  ∀ n, P5520983434008816566.a n = A323901 n

end A323901

/-! ## A323901.P4102308823140974225

`A331749(n)+n-A284013(n)`
-/

namespace A323901.P4102308823140974225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 n + ((n : ℤ) - A284013 n)

end

end A323901.P4102308823140974225

namespace A323901

/-- `A331749(n)+n-A284013(n)` -/
def P4102308823140974225.Spec : Prop :=
  ∀ n, P4102308823140974225.a n = A323901 n

theorem P4102308823140974225.correct : P4102308823140974225.Spec := by
  intro n
  simp only [A323901, Nat.add_sub_cancel, A323901.P4102308823140974225.a, A323901.P12439125084005686553.a, A002487, A002487.P14011177000981426228.a, A163511, A163511.P5635496813650871695.a, A284013, A284013.P1136611558935881771.a, A331749, A331749.P3262571390583388432.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P8520361847049590329.a, A003557, A003557.P6364735403900941810.a, A057335, A057335.P1378643245781663048.a, A145341, A145341.P17834554394848515737.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A030101, A030101.P16184294017372777612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323901

/-! ## A323901.P17894116332144079291

`xor(n-A284013(n), A331748(n))`
-/

namespace A323901.P17894116332144079291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - A284013 n) (A331748 n)

end

end A323901.P17894116332144079291

namespace A323901

/-- `xor(n-A284013(n), A331748(n))` -/
def P17894116332144079291.Spec : Prop :=
  ∀ n, P17894116332144079291.a n = A323901 n

end A323901

/-! ## A323901.P633641310557162142

`A331749(n)+A324337(xor(n, floor(n/2)))`
-/

namespace A323901.P633641310557162142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 n + A324337 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A323901.P633641310557162142

namespace A323901

/-- `A331749(n)+A324337(xor(n, floor(n/2)))` -/
def P633641310557162142.Spec : Prop :=
  ∀ n, P633641310557162142.a n = A323901 n

end A323901

/-! ## A323901.P11368413611432454150

`A331749(n)+A324337(A003188(n))`
-/

namespace A323901.P11368413611432454150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 n + A324337 (A003188 n).toNat

end

end A323901.P11368413611432454150

namespace A323901

/-- `A331749(n)+A324337(A003188(n))` -/
def P11368413611432454150.Spec : Prop :=
  ∀ n, P11368413611432454150.a n = A323901 n

end A323901

/-! ## A323901.P8029191032202913074

`xor(A324337(A003188(n)), A331748(n))`
-/

namespace A323901.P8029191032202913074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324337 (A003188 n).toNat) (A331748 n)

end

end A323901.P8029191032202913074

namespace A323901

/-- `xor(A324337(A003188(n)), A331748(n))` -/
def P8029191032202913074.Spec : Prop :=
  ∀ n, P8029191032202913074.a n = A323901 n

end A323901

/-! ## A323901.P10585950064992389850

`A283976(n)+A331749(n)+A283978(n)`
-/

namespace A323901.P10585950064992389850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 n + (A331749 n + A283978 n)

end

end A323901.P10585950064992389850

namespace A323901

/-- `A283976(n)+A331749(n)+A283978(n)` -/
def P10585950064992389850.Spec : Prop :=
  ∀ n, P10585950064992389850.a n = A323901 n

theorem P10585950064992389850.correct : P10585950064992389850.Spec := by
  intro n
  simp only [A323901, Nat.add_sub_cancel, A323901.P10585950064992389850.a, A323901.P12439125084005686553.a, A002487, A002487.P14011177000981426228.a, A163511, A163511.P5635496813650871695.a, A283976, A283976.P17238727065902708821.a, A283978, A283978.P12954739794367481226.a, A331749, A331749.P3262571390583388432.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P8520361847049590329.a, A295515, A295515.P11785583445350184235.a, A003557, A003557.P6364735403900941810.a, A057335, A057335.P1378643245781663048.a, A145341, A145341.P17834554394848515737.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A030101, A030101.P16184294017372777612.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323901

/-! ## A323901.P8663520028347719144

`A287896(n+1)+A331749(n)-A288003(n+1)`
-/

namespace A323901.P8663520028347719144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (n + 1) + (A331749 n - A288003 (n + 1))

end

end A323901.P8663520028347719144

namespace A323901

/-- `A287896(n+1)+A331749(n)-A288003(n+1)` -/
def P8663520028347719144.Spec : Prop :=
  ∀ n, P8663520028347719144.a n = A323901 n

end A323901

/-! ## A323901.P12340078116318722666

`xor(A287896(n+1)-A288003(n+1), A331748(n))`
-/

namespace A323901.P12340078116318722666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A287896 (n + 1) - A288003 (n + 1)) (A331748 n)

end

end A323901.P12340078116318722666

namespace A323901

/-- `xor(A287896(n+1)-A288003(n+1), A331748(n))` -/
def P12340078116318722666.Spec : Prop :=
  ∀ n, P12340078116318722666.a n = A323901 n

end A323901

/-! ## A323901.P422259898794691764

`A331749(n)+A283976(2*n)`
-/

namespace A323901.P422259898794691764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 n + A283976 (2 * n)

end

end A323901.P422259898794691764

namespace A323901

/-- `A331749(n)+A283976(2*n)` -/
def P422259898794691764.Spec : Prop :=
  ∀ n, P422259898794691764.a n = A323901 n

end A323901

/-! ## A323901.P17753981048163642151

`A331749(n)+A283977(2*n)`
-/

namespace A323901.P17753981048163642151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 n + A283977 (2 * n)

end

end A323901.P17753981048163642151

namespace A323901

/-- `A331749(n)+A283977(2*n)` -/
def P17753981048163642151.Spec : Prop :=
  ∀ n, P17753981048163642151.a n = A323901 n

end A323901

/-! ## A323901.P16891175248270873588

`xor(A283976(2*n), A331748(n))`
-/

namespace A323901.P16891175248270873588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A283976 (2 * n)) (A331748 n)

end

end A323901.P16891175248270873588

namespace A323901

/-- `xor(A283976(2*n), A331748(n))` -/
def P16891175248270873588.Spec : Prop :=
  ∀ n, P16891175248270873588.a n = A323901 n

end A323901

/-! ## A323901.P3624731203259133014

`A331749(n)+A295515(2*n+1)`
-/

namespace A323901.P3624731203259133014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331749 n + A295515 (2 * n + 1)

end

end A323901.P3624731203259133014

namespace A323901

/-- `A331749(n)+A295515(2*n+1)` -/
def P3624731203259133014.Spec : Prop :=
  ∀ n, P3624731203259133014.a n = A323901 n

end A323901

/-! ## A323901.P3659079010383583126

`xor(A295515(2*n+1), A331748(n))`
-/

namespace A323901.P3659079010383583126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A295515 (2 * n + 1)) (A331748 n)

end

end A323901.P3659079010383583126

namespace A323901

/-- `xor(A295515(2*n+1), A331748(n))` -/
def P3659079010383583126.Spec : Prop :=
  ∀ n, P3659079010383583126.a n = A323901 n

end A323901

/-! ## A323901.P12885295948610052499

`A283976(2*n)-(A283978(2*n)-A331749(2*n))`
-/

namespace A323901.P12885295948610052499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * n) - (A283978 (2 * n) - A331749 (2 * n))

end

end A323901.P12885295948610052499

namespace A323901

/-- `A283976(2*n)-(A283978(2*n)-A331749(2*n))` -/
def P12885295948610052499.Spec : Prop :=
  ∀ n, P12885295948610052499.a n = A323901 n

end A323901

/-! ## A323901.P3412819551562601218

`A331601(A005940(n+1))`
-/

namespace A323901.P3412819551562601218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331601 (A005940 (n + 1)).toNat

end

end A323901.P3412819551562601218

namespace A323901

/-- `A331601(A005940(n+1))` -/
def P3412819551562601218.Spec : Prop :=
  ∀ n, P3412819551562601218.a n = A323901 n

end A323901

/-! ## A323901.P8851910094882172434

`A323903(A253565(n))`
-/

namespace A323901.P8851910094882172434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323903 (A253565 n).toNat

end

end A323901.P8851910094882172434

namespace A323901

/-- `A323903(A253565(n))` -/
def P8851910094882172434.Spec : Prop :=
  ∀ n, P8851910094882172434.a n = A323901 n

end A323901

/-! ## A323901.P13048241886084759851

`∑{d}[A163511(n), A317839(#)]`
-/

namespace A323901.P13048241886084759851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A323901.P13048241886084759851

namespace A323901

/-- `∑{d}[A163511(n), A317839(#)]` -/
def P13048241886084759851.Spec : Prop :=
  ∀ n, P13048241886084759851.a n = A323901 n

end A323901

/-!
# A323902: a(n) = A002487(A156552(n)).

The programs for A323902, the canonical program `A323902.P14626222904790933258` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323902 has offset 1).

The definition of A323902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323902.P9528083069527515022

`A002487(A322993(n+1))`
-/

namespace A323902.P9528083069527515022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A322993 (n + 1)).toNat

end

end A323902.P9528083069527515022

namespace A323902

/-- `A002487(A322993(n+1))` -/
def P9528083069527515022.Spec : Prop :=
  ∀ n, P9528083069527515022.a n = A323902 (n + 1)

end A323902

/-! ## A323902.P14626222904790933258

`A002487(A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A323902

/-- `A002487(A156552(n+1))` -/
def P14626222904790933258.Spec : Prop :=
  ∀ n, P14626222904790933258.a n = A323902 (n + 1)

theorem P14626222904790933258.correct : P14626222904790933258.Spec := by
  intro n
  simp only [A323902, Nat.add_sub_cancel]

end A323902

/-! ## A323902.P9724231674082331951

`A324286(A332462(n+1))`
-/

namespace A323902.P9724231674082331951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324286 (A332462 (n + 1)).toNat

end

end A323902.P9724231674082331951

namespace A323902

/-- `A324286(A332462(n+1))` -/
def P9724231674082331951.Spec : Prop :=
  ∀ n, P9724231674082331951.a n = A323902 (n + 1)

end A323902

/-! ## A323902.P15367807271942324720

`xor(A331601(n+1), A331748(A322993(n+1)))`
-/

namespace A323902.P15367807271942324720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A331601 (n + 1)) (A331748 (A322993 (n + 1)).toNat)

end

end A323902.P15367807271942324720

namespace A323902

/-- `xor(A331601(n+1), A331748(A322993(n+1)))` -/
def P15367807271942324720.Spec : Prop :=
  ∀ n, P15367807271942324720.a n = A323902 (n + 1)

end A323902

/-! ## A323902.P4868483902590967393

`A002487(∑{d}[n+1, A322994(#)])`
-/

namespace A323902.P4868483902590967393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ d ∈ Nat.divisors (f1 n), A322994 d).toNat

end

end A323902.P4868483902590967393

namespace A323902

/-- `A002487(∑{d}[n+1, A322994(#)])` -/
def P4868483902590967393.Spec : Prop :=
  ∀ n, P4868483902590967393.a n = A323902 (n + 1)

end A323902

/-! ## A323902.P7884191655895372982

`∑{d}[A322993(n+1), A317839(#)]`
-/

namespace A323902.P7884191655895372982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A323902.P7884191655895372982

namespace A323902

/-- `∑{d}[A322993(n+1), A317839(#)]` -/
def P7884191655895372982.Spec : Prop :=
  ∀ n, P7884191655895372982.a n = A323902 (n + 1)

end A323902

/-! ## A323902.P8378079044346318445

`A283976(2*A322993(n+1))`
-/

namespace A323902.P8378079044346318445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * A322993 (n + 1)).toNat

end

end A323902.P8378079044346318445

namespace A323902

/-- `A283976(2*A322993(n+1))` -/
def P8378079044346318445.Spec : Prop :=
  ∀ n, P8378079044346318445.a n = A323902 (n + 1)

end A323902

/-! ## A323902.P12334638225125012487

`∑{d}[A156552(n+1), A317839(#)]`
-/

namespace A323902.P12334638225125012487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A317839 d

end

end A323902.P12334638225125012487

namespace A323902

/-- `∑{d}[A156552(n+1), A317839(#)]` -/
def P12334638225125012487.Spec : Prop :=
  ∀ n, P12334638225125012487.a n = A323902 (n + 1)

end A323902

/-!
# A323903: a(n) = A002487(A122111(n)).

The programs for A323903, the canonical program `A323903.P885737941903642885` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323903 has offset 1).

The definition of A323903 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323903.P12981508251965473761

`A002487(A322865(n+1))`
-/

namespace A323903.P12981508251965473761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A322865 (n + 1)).toNat

end

end A323903.P12981508251965473761

namespace A323903

/-- `A002487(A322865(n+1))` -/
def P12981508251965473761.Spec : Prop :=
  ∀ n, P12981508251965473761.a n = A323903 (n + 1)

end A323903

/-! ## A323903.P885737941903642885

`A002487(A122111(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A323903

/-- `A002487(A122111(n+1))` -/
def P885737941903642885.Spec : Prop :=
  ∀ n, P885737941903642885.a n = A323903 (n + 1)

theorem P885737941903642885.correct : P885737941903642885.Spec := by
  intro n
  simp only [A323903, Nat.add_sub_cancel]

end A323903

/-! ## A323903.P3140037751362251376

`A283976(2*A322865(n+1))`
-/

namespace A323903.P3140037751362251376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (2 * A322865 (n + 1)).toNat

end

end A323903.P3140037751362251376

namespace A323903

/-- `A283976(2*A322865(n+1))` -/
def P3140037751362251376.Spec : Prop :=
  ∀ n, P3140037751362251376.a n = A323903 (n + 1)

end A323903

/-! ## A323903.P14739926380732813719

`A295515(2*A322865(n+1))`
-/

namespace A323903.P14739926380732813719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (2 * A322865 (n + 1)).toNat

end

end A323903.P14739926380732813719

namespace A323903

/-- `A295515(2*A322865(n+1))` -/
def P14739926380732813719.Spec : Prop :=
  ∀ n, P14739926380732813719.a n = A323903 (n + 1)

end A323903

/-! ## A323903.P7695627232250649751

`A323365(4*A322865(n+1))`
-/

namespace A323903.P7695627232250649751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323365 (4 * A322865 (n + 1)).toNat

end

end A323903.P7695627232250649751

namespace A323903

/-- `A323365(4*A322865(n+1))` -/
def P7695627232250649751.Spec : Prop :=
  ∀ n, P7695627232250649751.a n = A323903 (n + 1)

end A323903

/-! ## A323903.P16126301090941897311

`A295515(A322865(n+1)+A322865(n+1)+1)`
-/

namespace A323903.P16126301090941897311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A322865 (n + 1) + (A322865 (n + 1) + 1)).toNat

end

end A323903.P16126301090941897311

namespace A323903

/-- `A295515(A322865(n+1)+A322865(n+1)+1)` -/
def P16126301090941897311.Spec : Prop :=
  ∀ n, P16126301090941897311.a n = A323903 (n + 1)

end A323903

/-! ## A323903.P7646929297317994435

`A331601(A241909(A122111(A322820(n+1))))`
-/

namespace A323903.P7646929297317994435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331601 (A241909 (A122111 (A322820 (n + 1)).toNat).toNat).toNat

end

end A323903.P7646929297317994435

namespace A323903

/-- `A331601(A241909(A122111(A322820(n+1))))` -/
def P7646929297317994435.Spec : Prop :=
  ∀ n, P7646929297317994435.a n = A323903 (n + 1)

end A323903

/-! ## A323903.P8412694333812852081

`A323902(A322863(n+1))`
-/

namespace A323903.P8412694333812852081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (A322863 (n + 1)).toNat

end

end A323903.P8412694333812852081

namespace A323903

/-- `A323902(A322863(n+1))` -/
def P8412694333812852081.Spec : Prop :=
  ∀ n, P8412694333812852081.a n = A323903 (n + 1)

end A323903

/-! ## A323903.P9640261005557888549

`A331601(A241916(n+1))`
-/

namespace A323903.P9640261005557888549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331601 (A241916 (n + 1)).toNat

end

end A323903.P9640261005557888549

namespace A323903

/-- `A331601(A241916(n+1))` -/
def P9640261005557888549.Spec : Prop :=
  ∀ n, P9640261005557888549.a n = A323903 (n + 1)

end A323903

/-! ## A323903.P9884233305119217119

`A323901(A253566(n+1))`
-/

namespace A323903.P9884233305119217119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323901 (A253566 (n + 1)).toNat

end

end A323903.P9884233305119217119

namespace A323903

/-- `A323901(A253566(n+1))` -/
def P9884233305119217119.Spec : Prop :=
  ∀ n, P9884233305119217119.a n = A323903 (n + 1)

end A323903

/-!
# A323905: a(n) = A156552(n) - A048675(n).

The programs for A323905, the canonical program `A323905.P339970777162455812` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323905 has offset 1).

The definition of A323905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048675, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323905.P339970777162455812

`A156552(n+1)-A048675(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A323905

/-- `A156552(n+1)-A048675(n+1)` -/
def P339970777162455812.Spec : Prop :=
  ∀ n, P339970777162455812.a n = A323905 (n + 1)

theorem P339970777162455812.correct : P339970777162455812.Spec := by
  intro n
  simp only [A323905, Nat.add_sub_cancel]

end A323905

/-! ## A323905.P17731051659420247913

`A005941(n+1)-(A048675(n+1)+1)`
-/

namespace A323905.P17731051659420247913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1) - (A048675 (n + 1) + 1)

end

end A323905.P17731051659420247913

namespace A323905

/-- `A005941(n+1)-(A048675(n+1)+1)` -/
def P17731051659420247913.Spec : Prop :=
  ∀ n, P17731051659420247913.a n = A323905 (n + 1)

theorem P17731051659420247913.correct : P17731051659420247913.Spec := by
  intro n
  simp only [A323905, Nat.add_sub_cancel, A323905.P17731051659420247913.a, A323905.P339970777162455812.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A156552, A156552.P4268073137713085227.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A297167, A297167.P13113550866660970867.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A049084, A049084.P10934933317972537770.a, A252464, A252464.P11274602121942962009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A323905

/-! ## A323905.P13104957133575535651

`A364559(n+1)+n-A048675(n+1)`
-/

namespace A323905.P13104957133575535651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364559 (n + 1) + (n : ℤ) - A048675 (n + 1)

end

end A323905.P13104957133575535651

namespace A323905

/-- `A364559(n+1)+n-A048675(n+1)` -/
def P13104957133575535651.Spec : Prop :=
  ∀ n, P13104957133575535651.a n = A323905 (n + 1)

theorem P13104957133575535651.correct : P13104957133575535651.Spec := by
  intro n
  simp only [A323905, Nat.add_sub_cancel, A323905.P13104957133575535651.a, A323905.P339970777162455812.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A156552, A156552.P4268073137713085227.a, A364559, A364559.P17766999660544483635.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A297108, A297108.P15990807296291497671.a, A131577, A131577.P3998309598604981540.a, A297109, A297109.P1496811488439761658.f1, A297109.P1496811488439761658.a, A364557, A364557.P16113127302810243144.a, A049084, A049084.P10934933317972537770.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A323905

/-! ## A323905.P5989265329339890816

`A156552(n+1)-A304735(A064664(n+1))`
-/

namespace A323905.P5989265329339890816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - A304735 (A064664 (n + 1)).toNat

end

end A323905.P5989265329339890816

namespace A323905

/-- `A156552(n+1)-A304735(A064664(n+1))` -/
def P5989265329339890816.Spec : Prop :=
  ∀ n, P5989265329339890816.a n = A323905 (n + 1)

end A323905

/-! ## A323905.P14569735771019556903

`A156552(n+1)-∑{p}[A097248(n+1), A156552(#)]`
-/

namespace A323905.P14569735771019556903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A156552 p

end

end A323905.P14569735771019556903

namespace A323905

/-- `A156552(n+1)-∑{p}[A097248(n+1), A156552(#)]` -/
def P14569735771019556903.Spec : Prop :=
  ∀ n, P14569735771019556903.a n = A323905 (n + 1)

end A323905

/-! ## A323905.P13439693250214852722

`A156552(n+1)+A048675(n+1)*A332814(A332812(n+1))`
-/

namespace A323905.P13439693250214852722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + A048675 (n + 1) * A332814 (A332812 (n + 1)).toNat

end

end A323905.P13439693250214852722

namespace A323905

/-- `A156552(n+1)+A048675(n+1)*A332814(A332812(n+1))` -/
def P13439693250214852722.Spec : Prop :=
  ∀ n, P13439693250214852722.a n = A323905 (n + 1)

end A323905

/-! ## A323905.P2356132022654102601

`A156552(n+1)-Δ[A336415(n)]`
-/

namespace A323905.P2356132022654102601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - (f1 (n + 1) - f1 n)

end

end A323905.P2356132022654102601

namespace A323905

/-- `A156552(n+1)-Δ[A336415(n)]` -/
def P2356132022654102601.Spec : Prop :=
  ∀ n, P2356132022654102601.a n = A323905 (n + 1)

end A323905

/-! ## A323905.P7843081874664038406

`A156552(n+1)+A336415(n)-A336415(n+1)`
-/

namespace A323905.P7843081874664038406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) + (A336415 n - A336415 (n + 1))

end

end A323905.P7843081874664038406

namespace A323905

/-- `A156552(n+1)+A336415(n)-A336415(n+1)` -/
def P7843081874664038406.Spec : Prop :=
  ∀ n, P7843081874664038406.a n = A323905 (n + 1)

end A323905

/-! ## A323905.P11244263979722794082

`A323243(n+1)-(A324865(n+1)+A048675(n+1))`
-/

namespace A323905.P11244263979722794082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1) - (A324865 (n + 1) + A048675 (n + 1))

end

end A323905.P11244263979722794082

namespace A323905

/-- `A323243(n+1)-(A324865(n+1)+A048675(n+1))` -/
def P11244263979722794082.Spec : Prop :=
  ∀ n, P11244263979722794082.a n = A323905 (n + 1)

end A323905

/-! ## A323905.P6637893227331350699

`A292380(n+1)+A292382(n+1)-A048675(n+1)`
-/

namespace A323905.P6637893227331350699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1) + (A292382 (n + 1) - A048675 (n + 1))

end

end A323905.P6637893227331350699

namespace A323905

/-- `A292380(n+1)+A292382(n+1)-A048675(n+1)` -/
def P6637893227331350699.Spec : Prop :=
  ∀ n, P6637893227331350699.a n = A323905 (n + 1)

end A323905

/-! ## A323905.P10119934560671488878

`A252754(A250245(n+1))-A048675(n+1)`
-/

namespace A323905.P10119934560671488878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A250245 (n + 1)).toNat - A048675 (n + 1)

end

end A323905.P10119934560671488878

namespace A323905

/-- `A252754(A250245(n+1))-A048675(n+1)` -/
def P10119934560671488878.Spec : Prop :=
  ∀ n, P10119934560671488878.a n = A323905 (n + 1)

end A323905

/-! ## A323905.P15313966356423949990

`A269388(A302025(n+1))-A048675(n+1)`
-/

namespace A323905.P15313966356423949990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A302025 (n + 1)).toNat - A048675 (n + 1)

end

end A323905.P15313966356423949990

namespace A323905

/-- `A269388(A302025(n+1))-A048675(n+1)` -/
def P15313966356423949990.Spec : Prop :=
  ∀ n, P15313966356423949990.a n = A323905 (n + 1)

end A323905

/-!
# A323906: Lexicographically earliest sequence such that a(i) = a(j) => A323905(i) = A323905(j), for all i, j >= 1.

The programs for A323906, there is no canonical definition to state claims against.
-/

/-! ## A323906.P8882805664710947555

`∏{e}[A097756(A032742(n+1)), #+1]`
-/

namespace A323906.P8882805664710947555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097756 (A032742 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A323906.P8882805664710947555

/-! ## A323906.P15896791103887135870

`A084556(2^A323905(n+1))`
-/

namespace A323906.P15896791103887135870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084556 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A323905 (n + 1) : ℤ))).toNat

end

end A323906.P15896791103887135870

/-! ## A323906.P4077536836274644635

`A000005(A097756(A032742(n+1)))`
-/

namespace A323906.P4077536836274644635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A097756 (A032742 (n + 1)).toNat).toNat

end

end A323906.P4077536836274644635

/-! ## A323906.P6652501209946499338

`A266977(A323905(n+1))%A175791(A152307(n+1))`
-/

namespace A323906.P6652501209946499338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266977 (A323905 (n + 1)).toNat) (A175791 (A152307 (n + 1)).toNat)

end

end A323906.P6652501209946499338

/-! ## A323906.P7825016050412241703

`A108103(A101208(n+1))*A266977(A323905(n+1))`
-/

namespace A323906.P7825016050412241703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (A101208 (n + 1)).toNat * A266977 (A323905 (n + 1)).toNat

end

end A323906.P7825016050412241703

/-!
# A323907: Lexicographically earliest positive sequence such that a(i) = a(j) => A004718(i) = A004718(j), for all i, j >= 0.

The programs for A323907, the canonical program `A323907.P3968160743008271599` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323907 has offset 0).

The definition of A323907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323907.P3968160743008271599

`A253146(A361020(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A323907

/-- `A253146(A361020(n))` -/
def P3968160743008271599.Spec : Prop :=
  ∀ n, P3968160743008271599.a n = A323907 n

theorem P3968160743008271599.correct : P3968160743008271599.Spec := by
  intro n
  simp only [A323907]

end A323907

/-! ## A323907.P3286926299005819141

`A006068(A323908(n))+1`
-/

namespace A323907.P3286926299005819141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A323908 n).toNat + 1

end

end A323907.P3286926299005819141

namespace A323907

/-- `A006068(A323908(n))+1` -/
def P3286926299005819141.Spec : Prop :=
  ∀ n, P3286926299005819141.a n = A323907 n

end A323907

/-! ## A323907.P7070071517063616561

`A066194(A323908(n)+1)`
-/

namespace A323907.P7070071517063616561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (A323908 n + 1).toNat

end

end A323907.P7070071517063616561

namespace A323907

/-- `A066194(A323908(n)+1)` -/
def P7070071517063616561.Spec : Prop :=
  ∀ n, P7070071517063616561.a n = A323907 n

end A323907

/-! ## A323907.P5257512270417680916

`A140266(A323909(n)+1)`
-/

namespace A323907.P5257512270417680916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140266 (A323909 n + 1).toNat

end

end A323907.P5257512270417680916

namespace A323907

/-- `A140266(A323909(n)+1)` -/
def P5257512270417680916.Spec : Prop :=
  ∀ n, P5257512270417680916.a n = A323907 n

end A323907

/-! ## A323907.P18170653290472739411

`1-A006068(A323908(n))*A057428(n)`
-/

namespace A323907.P18170653290472739411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A006068 (A323908 n).toNat * A057428 n

end

end A323907.P18170653290472739411

namespace A323907

/-- `1-A006068(A323908(n))*A057428(n)` -/
def P18170653290472739411.Spec : Prop :=
  ∀ n, P18170653290472739411.a n = A323907 n

end A323907

/-! ## A323907.P8440021009930623352

`2-(A033999(n)²-A006068(A323908(n)))`
-/

namespace A323907.P8440021009930623352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A033999 n ^ 2 - A006068 (A323908 n).toNat)

end

end A323907.P8440021009930623352

namespace A323907

/-- `2-(A033999(n)²-A006068(A323908(n)))` -/
def P8440021009930623352.Spec : Prop :=
  ∀ n, P8440021009930623352.a n = A323907 n

end A323907

/-!
# A323908: Reversing binary representation of A004718, Per Nørgård's "infinity sequence".

The programs for A323908, the canonical program `A323908.P4867872489218427352` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323908 has offset 0).

The definition of A323908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323908.P12743087940683108137

`A003188(A323907(n)-1)`
-/

namespace A323908.P12743087940683108137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A323907 n - 1).toNat

end

end A323908.P12743087940683108137

namespace A323908

/-- `A003188(A323907(n)-1)` -/
def P12743087940683108137.Spec : Prop :=
  ∀ n, P12743087940683108137.a n = A323908 n

end A323908

/-! ## A323908.P3868485418559762042

`A003188(A023443(A323907(n)))`
-/

namespace A323908.P3868485418559762042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A023443 (A323907 n).toNat).toNat

end

end A323908.P3868485418559762042

namespace A323908

/-- `A003188(A023443(A323907(n)))` -/
def P3868485418559762042.Spec : Prop :=
  ∀ n, P3868485418559762042.a n = A323908 n

end A323908

/-! ## A323908.P4867872489218427352

`xor(2*A004718(2*n), A004718(2*n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A323908

/-- `xor(2*A004718(2*n), A004718(2*n))` -/
def P4867872489218427352.Spec : Prop :=
  ∀ n, P4867872489218427352.a n = A323908 n

theorem P4867872489218427352.correct : P4867872489218427352.Spec := by
  intro n
  simp only [A323908]

end A323908

/-!
# A323909: Balanced ternary representation of A004718, Per Nørgård's "infinity sequence".

The programs for A323909, the canonical program `A323909.P4850629150660234518` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323909 has offset 0).

The definition of A323909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323909.P4850629150660234518

`A140265(A323907(n))-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A323909

/-- `A140265(A323907(n))-1` -/
def P4850629150660234518.Spec : Prop :=
  ∀ n, P4850629150660234518.a n = A323909 n

theorem P4850629150660234518.correct : P4850629150660234518.Spec := by
  intro n
  simp only [A323909]

end A323909

/-! ## A323909.P13107353514277964972

`(A140265(A323907(n))+A005843(n))%A005408(n)`
-/

namespace A323909.P13107353514277964972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140265 (A323907 n).toNat + A005843 n) (A005408 n)

end

end A323909.P13107353514277964972

namespace A323909

/-- `(A140265(A323907(n))+A005843(n))%A005408(n)` -/
def P13107353514277964972.Spec : Prop :=
  ∀ n, P13107353514277964972.a n = A323909 n

end A323909

/-! ## A323909.P10547040448515874070

`A293116(A020639(3*(n+1)))+A140265(A323907(n))`
-/

namespace A323909.P10547040448515874070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293116 (A020639 (3 * (n + 1))).toNat + A140265 (A323907 n).toNat

end

end A323909.P10547040448515874070

namespace A323909

/-- `A293116(A020639(3*(n+1)))+A140265(A323907(n))` -/
def P10547040448515874070.Spec : Prop :=
  ∀ n, P10547040448515874070.a n = A323909 n

end A323909

/-! ## A323909.P8635638570518542370

`A260196(n+2)+A140265(A323907(n))`
-/

namespace A323909.P8635638570518542370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A140265 (A323907 n).toNat

end

end A323909.P8635638570518542370

namespace A323909

/-- `A260196(n+2)+A140265(A323907(n))` -/
def P8635638570518542370.Spec : Prop :=
  ∀ n, P8635638570518542370.a n = A323909 n

end A323909

/-! ## A323909.P9402100850270736887

`abs(A140265(A323907(n))+A056594(4*n+2))`
-/

namespace A323909.P9402100850270736887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140265 (A323907 n).toNat + A056594 (4 * n + 2)|

end

end A323909.P9402100850270736887

namespace A323909

/-- `abs(A140265(A323907(n))+A056594(4*n+2))` -/
def P9402100850270736887.Spec : Prop :=
  ∀ n, P9402100850270736887.a n = A323909 n

end A323909

/-! ## A323909.P2943576992166721695

`A215029(A215032(n+1))+A140265(A323907(n))`
-/

namespace A323909.P2943576992166721695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215029 (A215032 (n + 1)).toNat + A140265 (A323907 n).toNat

end

end A323909.P2943576992166721695

namespace A323909

/-- `A215029(A215032(n+1))+A140265(A323907(n))` -/
def P2943576992166721695.Spec : Prop :=
  ∀ n, P2943576992166721695.a n = A323909 n

end A323909

/-!
# A323910: Dirichlet inverse of the deficiency of n, A033879.

The programs for A323910, there is no canonical definition to state claims against.
-/

/-! ## A323910.P5883480374372846997

`∑{d}[n+1, A046692(#)*A067824((n+1)/#)]`
-/

namespace A323910.P5883480374372846997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P5883480374372846997

/-! ## A323910.P587694744149390759

`∑{d}[n+1, A055615(#)*A074206((n+1)/#)]`
-/

namespace A323910.P587694744149390759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A074206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P587694744149390759

/-! ## A323910.P7390347234289264729

`∑{d}[n+1, A023900(#)*A174725((n+1)/#)]`
-/

namespace A323910.P7390347234289264729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P7390347234289264729

/-! ## A323910.P11706119445719980645

`∑{d}[n+1, A008683(#)*A323912((n+1)/#)]`
-/

namespace A323910.P11706119445719980645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A323912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P11706119445719980645

/-! ## A323910.P10220789949301332190

`∑{d}[n+1, A191161(#)*A327960((n+1)/#)]`
-/

namespace A323910.P10220789949301332190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191161 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P10220789949301332190

/-! ## A323910.P6555713257301424705

`∑{d}[n+1, A328722(#)*A330575((n+1)/#)]`
-/

namespace A323910.P6555713257301424705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328722 d * A330575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P6555713257301424705

/-! ## A323910.P708406505919459109

`∑{d}[n+1, A345182(#)*A349341((n+1)/#)]`
-/

namespace A323910.P708406505919459109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A345182 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P708406505919459109

/-! ## A323910.P15321759484866131419

`∑{d}[n+1, A346246(#)*A349387((n+1)/#)]`
-/

namespace A323910.P15321759484866131419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346246 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P15321759484866131419

/-! ## A323910.P14976106441358253138

`∑{d}[n+1, A002033(#-1)*A055615((n+1)/#)]`
-/

namespace A323910.P14976106441358253138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P14976106441358253138

/-! ## A323910.P8580451225077422242

`∑{d}[n+1, A378432(#)]`
-/

namespace A323910.P8580451225077422242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378432 d

end

end A323910.P8580451225077422242

/-! ## A323910.P4403129594356151038

`A323911(n+1)+A033880(n+1)`
-/

namespace A323910.P4403129594356151038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323911 (n + 1) + A033880 (n + 1)

end

end A323910.P4403129594356151038

/-! ## A323910.P13367955845403213984

`A323911(n+1)-A033879(n+1)`
-/

namespace A323910.P13367955845403213984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323911 (n + 1) - A033879 (n + 1)

end

end A323910.P13367955845403213984

/-! ## A323910.P3323439084354738581

`∑{d}[n+1, A326938(#)*A378223((n+1)/#)]`
-/

namespace A323910.P3323439084354738581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326938 d * A378223 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P3323439084354738581

/-! ## A323910.P6527860678605607501

`∑{d}[n+1, A346248(#)*A378754((n+1)/#)]`
-/

namespace A323910.P6527860678605607501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346248 d * A378754 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P6527860678605607501

/-! ## A323910.P13219643539841303915

`∑{d}[n+1, A378525(#)*A378533((n+1)/#)]`
-/

namespace A323910.P13219643539841303915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378525 d * A378533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P13219643539841303915

/-! ## A323910.P15946518791587830925

`∑{d}[n+1, A378531(#)*A378536((n+1)/#)]`
-/

namespace A323910.P15946518791587830925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378531 d * A378536 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P15946518791587830925

/-! ## A323910.P3791315441642742641

`∑{d}[n+1, A378990(#)*A379106((n+1)/#)]`
-/

namespace A323910.P3791315441642742641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378990 d * A379106 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323910.P3791315441642742641

/-! ## A323910.P2785982402818967877

`A323911(n+1)+A324044(n+1)-A003958(n+1)`
-/

namespace A323910.P2785982402818967877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323911 (n + 1) + (A324044 (n + 1) - A003958 (n + 1))

end

end A323910.P2785982402818967877

/-! ## A323910.P6959771724200096217

`A323911(n+1)-(A297159(n+1)+A083254(n+1))`
-/

namespace A323910.P6959771724200096217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323911 (n + 1) - (A297159 (n + 1) + A083254 (n + 1))

end

end A323910.P6959771724200096217

/-!
# A323911: Sum of deficiency of n (A033879) and its Dirichlet inverse.

The programs for A323911, there is no canonical definition to state claims against.
-/

/-! ## A323911.P14884266283860610142

`A033879(n+1)+A323910(n+1)`
-/

namespace A323911.P14884266283860610142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + A323910 (n + 1)

end

end A323911.P14884266283860610142

/-! ## A323911.P5217171770632059610

`A323910(n+1)-A033880(n+1)`
-/

namespace A323911.P5217171770632059610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) - A033880 (n + 1)

end

end A323911.P5217171770632059610

/-! ## A323911.P15797285739433388601

`A323910(n+1)+∑{d}[n+1, A083254(#)]`
-/

namespace A323911.P15797285739433388601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A083254 d

end

end A323911.P15797285739433388601

/-! ## A323911.P4440312868533096971

`A323910(n+1)+n+1-A001065(n+1)`
-/

namespace A323911.P4440312868533096971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + ((n + 1 : ℤ) - A001065 (n + 1))

end

end A323911.P4440312868533096971

/-! ## A323911.P4578189450232019300

`A323910(n+1)+2*(n+1)-A000203(n+1)`
-/

namespace A323911.P4578189450232019300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + ((2 * (n + 1) : ℤ) - A000203 (n + 1))

end

end A323911.P4578189450232019300

/-! ## A323911.P915785387989531437

`A323910(n+1)+A004277(n+1)-∑{d}[n+1, #]`
-/

namespace A323911.P915785387989531437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + (A004277 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ))

end

end A323911.P915785387989531437

/-! ## A323911.P17826972126440235131

`A323910(n+1)+2*n-A064987(n+1)/(n+1)+2`
-/

namespace A323911.P17826972126440235131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323910 (n + 1) : ℚ) + ((2 * n : ℚ) - (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) + 2)

end

end A323911.P17826972126440235131

/-! ## A323911.P7529071370447946782

`A000120(n+1)+A323910(n+1)+A294898(n+1)`
-/

namespace A323911.P7529071370447946782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A323910 (n + 1) + A294898 (n + 1))

end

end A323911.P7529071370447946782

/-! ## A323911.P9926011969377043891

`A083254(n+1)+A323910(n+1)+A297159(n+1)`
-/

namespace A323911.P9926011969377043891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + (A323910 (n + 1) + A297159 (n + 1))

end

end A323911.P9926011969377043891

/-! ## A323911.P920013847092662394

`A323910(n+1)+A326058(n+1)-A326059(n+1)`
-/

namespace A323911.P920013847092662394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + (A326058 (n + 1) - A326059 (n + 1))

end

end A323911.P920013847092662394

/-! ## A323911.P15709242022094275345

`A323910(n+1)+A326128(n+1)-A326127(n+1)`
-/

namespace A323911.P15709242022094275345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + (A326128 (n + 1) - A326127 (n + 1))

end

end A323911.P15709242022094275345

/-! ## A323911.P11195392519210720726

`A323910(n+1)+A336564(n+1)-A336563(n+1)`
-/

namespace A323911.P11195392519210720726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + (A336564 (n + 1) - A336563 (n + 1))

end

end A323911.P11195392519210720726

/-! ## A323911.P13462802423246497651

`A323910(n+1)+A000027(n+1)-A000203(n+1)+n+1`
-/

namespace A323911.P13462802423246497651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + (A000027 (n + 1) - A000203 (n + 1) + (n + 1 : ℤ))

end

end A323911.P13462802423246497651

/-! ## A323911.P14178672644930785678

`A323910(n+1)+n+1-(A007503(n+1)-A062249(n+1))`
-/

namespace A323911.P14178672644930785678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + ((n + 1 : ℤ) - (A007503 (n + 1) - A062249 (n + 1)))

end

end A323911.P14178672644930785678

/-! ## A323911.P13287598811694975283

`A323910(n+1)+n+1-(A326126(n+1)-A326128(n+1))`
-/

namespace A323911.P13287598811694975283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + ((n + 1 : ℤ) - (A326126 (n + 1) - A326128 (n + 1)))

end

end A323911.P13287598811694975283

/-! ## A323911.P13966028045145488095

`A326068(2*(n+1))+A323910(n+1)`
-/

namespace A323911.P13966028045145488095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (2 * (n + 1)) + A323910 (n + 1)

end

end A323911.P13966028045145488095

/-! ## A323911.P7055682671301090475

`A323910(n+1)+2*n-(A245093(∑[n+1])-2)`
-/

namespace A323911.P7055682671301090475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (n + 1) + ((2 * n : ℤ) - (A245093 (∑ j ∈ Finset.range (n + 1), f1 j) - 2))

end

end A323911.P7055682671301090475

/-!
# A323912: Dirichlet inverse of A083254(n), where A083254(n) = 2*phi(n) - n.

The programs for A323912, there is no canonical definition to state claims against.
-/

/-! ## A323912.P6600160376679199979

`∑{d}[n+1, A323910(#)]`
-/

namespace A323912.P6600160376679199979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d

end

end A323912.P6600160376679199979

/-! ## A323912.P16394901113469151055

`∑{d}[n+1, A023900(#)*A074206((n+1)/#)]`
-/

namespace A323912.P16394901113469151055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A074206 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P16394901113469151055

/-! ## A323912.P12179512559228301782

`∑{d}[n+1, A055615(#)*A067824((n+1)/#)]`
-/

namespace A323912.P12179512559228301782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A067824 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P12179512559228301782

/-! ## A323912.P14260490812862905946

`∑{d}[n+1, A046692(#)*A253249((n+1)/#)]`
-/

namespace A323912.P14260490812862905946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A253249 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P14260490812862905946

/-! ## A323912.P11612485604815169011

`∑{d}[n+1, A130054(#)*A174725((n+1)/#)]`
-/

namespace A323912.P11612485604815169011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P11612485604815169011

/-! ## A323912.P14449568197584010639

`∑{d}[n+1, A101035(#)*A330575((n+1)/#)]`
-/

namespace A323912.P14449568197584010639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A330575 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P14449568197584010639

/-! ## A323912.P13657849434906756629

`∑{d}[n+1, A191161(#)*A328722((n+1)/#)]`
-/

namespace A323912.P13657849434906756629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191161 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P13657849434906756629

/-! ## A323912.P2217723127266542971

`∑{d}[n+1, A002033(#-1)*A023900((n+1)/#)]`
-/

namespace A323912.P2217723127266542971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A023900 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P2217723127266542971

/-! ## A323912.P9159250289924082387

`A323913(n+1)-A083254(n+1)`
-/

namespace A323912.P9159250289924082387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323913 (n + 1) - A083254 (n + 1)

end

end A323912.P9159250289924082387

/-! ## A323912.P3026632921990360586

`2*A323910(n+1)-A055615(n+1)`
-/

namespace A323912.P3026632921990360586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A323910 (n + 1) - A055615 (n + 1)

end

end A323912.P3026632921990360586

/-! ## A323912.P12919980884373201554

`∑{d}[n+1, A000005(#)*A378432((n+1)/#)]`
-/

namespace A323912.P12919980884373201554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A378432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P12919980884373201554

/-! ## A323912.P3806802666647482219

`∑{d}[n+1, A349341(#)*A378223((n+1)/#)]`
-/

namespace A323912.P3806802666647482219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349341 d * A378223 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P3806802666647482219

/-! ## A323912.P6688087262497044129

`∑{d}[n+1, A376404(#)*A378754((n+1)/#)]`
-/

namespace A323912.P6688087262497044129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A376404 d * A378754 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P6688087262497044129

/-! ## A323912.P2860705422984893697

`∑{d}[n+1, A378533(#)*A378536((n+1)/#)]`
-/

namespace A323912.P2860705422984893697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378533 d * A378536 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P2860705422984893697

/-! ## A323912.P2021536580659415488

`∑{d}[n+1, A378989(#)*A379106((n+1)/#)]`
-/

namespace A323912.P2021536580659415488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378989 d * A379106 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323912.P2021536580659415488

/-!
# A323913: Sum of A083254 (2*phi(n) - n) and its Dirichlet inverse.

The programs for A323913, there is no canonical definition to state claims against.
-/

/-! ## A323913.P2520639222504081053

`A083254(n+1)+A323912(n+1)`
-/

namespace A323913.P2520639222504081053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + A323912 (n + 1)

end

end A323913.P2520639222504081053

/-! ## A323913.P736960303629818145

`A083254(n+1)+∑{d}[n+1, A323910(#)]`
-/

namespace A323913.P736960303629818145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A323910 d

end

end A323913.P736960303629818145

/-! ## A323913.P8492285170670785458

`A323912(n+1)+A117966(A297154(n+1))`
-/

namespace A323913.P8492285170670785458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323912 (n + 1) + A117966 (A297154 (n + 1)).toNat

end

end A323913.P8492285170670785458

/-! ## A323913.P7248646189197514923

`A179179(n+1)+A323912(n+1)-A057860(n+1)`
-/

namespace A323913.P7248646189197514923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179179 (n + 1) + (A323912 (n + 1) - A057860 (n + 1))

end

end A323913.P7248646189197514923

/-! ## A323913.P8850500424829228141

`A209187(n+1)+A323912(n+1)-A051612(n+1)`
-/

namespace A323913.P8850500424829228141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1) + (A323912 (n + 1) - A051612 (n + 1))

end

end A323913.P8850500424829228141

/-! ## A323913.P15361112578330945063

`A318441(n+1)+A323912(n+1)-A318442(n+1)`
-/

namespace A323913.P15361112578330945063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318441 (n + 1) + (A323912 (n + 1) - A318442 (n + 1))

end

end A323913.P15361112578330945063

/-!
# A323914: Lexicographically earliest sequence such that a(i) = a(j) => A322994(i) = A322994(j), for all i, j >= 1.

The programs for A323914, there is no canonical definition to state claims against.
-/

/-! ## A323914.P12034867697058218560

`A305900(A305897(n+1))%record[A002590(n)]`
-/

namespace A323914.P12034867697058218560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305900 (A305897 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A323914.P12034867697058218560

/-! ## A323914.P6373604654464997241

`A305900(A305897(n+1))+A000122(A005718(n))`
-/

namespace A323914.P6373604654464997241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (A305897 (n + 1)).toNat + A000122 (A005718 n).toNat

end

end A323914.P6373604654464997241

/-! ## A323914.P6510036093085838113

`A305900(A305897(n+1))+A000007(A172288(n))`
-/

namespace A323914.P6510036093085838113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (A305897 (n + 1)).toNat + A000007 (A172288 n).toNat

end

end A323914.P6510036093085838113

/-! ## A323914.P7732376044308284331

`A305900(A305897(n+1))+A000007(A228062(n+1))`
-/

namespace A323914.P7732376044308284331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (A305897 (n + 1)).toNat + A000007 (A228062 (n + 1)).toNat

end

end A323914.P7732376044308284331

/-! ## A323914.P15477859173184805913

`xor(A000005(n+1), A326702(A261044(n+1)))`
-/

namespace A323914.P15477859173184805913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000005 (n + 1)) (A326702 (A261044 (n + 1)).toNat)

end

end A323914.P15477859173184805913

/-!
# A323915: a(n) = A023900(A005940(1+n)).

The programs for A323915, the canonical program `A323915.P7457930734356691176` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323915 has offset 0).

The definition of A323915 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323915.P7457930734356691176

`A023900(A005940(1+n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A323915

/-- `A023900(A005940(1+n))` -/
def P7457930734356691176.Spec : Prop :=
  ∀ n, P7457930734356691176.a n = A323915 n

theorem P7457930734356691176.correct : P7457930734356691176.Spec := by
  intro n
  simp only [A323915]

end A323915

/-! ## A323915.P12201182728975899788

`∏{p}[A005940(n+1), 1-#]`
-/

namespace A323915.P12201182728975899788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - (p : ℤ))

end

end A323915.P12201182728975899788

namespace A323915

/-- `∏{p}[A005940(n+1), 1-#]` -/
def P12201182728975899788.Spec : Prop :=
  ∀ n, P12201182728975899788.a n = A323915 n

end A323915

/-! ## A323915.P12923474852085776773

`∏{p}[A332815(n), 1-A108548(#)]`
-/

namespace A323915.P12923474852085776773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A108548 p)

end

end A323915.P12923474852085776773

namespace A323915

/-- `∏{p}[A332815(n), 1-A108548(#)]` -/
def P12923474852085776773.Spec : Prop :=
  ∀ n, P12923474852085776773.a n = A323915 n

end A323915

/-! ## A323915.P13146996749183906844

`∏{p}[A332815(n), 1-A332808(#)]`
-/

namespace A323915.P13146996749183906844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (1 - A332808 p)

end

end A323915.P13146996749183906844

namespace A323915

/-- `∏{p}[A332815(n), 1-A332808(#)]` -/
def P13146996749183906844.Spec : Prop :=
  ∀ n, P13146996749183906844.a n = A323915 n

end A323915

/-! ## A323915.P6493116127978754747

`∑{d}[A005940(n+1), #*A008683(#)]`
-/

namespace A323915.P6493116127978754747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A008683 d

end

end A323915.P6493116127978754747

namespace A323915

/-- `∑{d}[A005940(n+1), #*A008683(#)]` -/
def P6493116127978754747.Spec : Prop :=
  ∀ n, P6493116127978754747.a n = A323915 n

end A323915

/-! ## A323915.P6089035994238703242

`∑{d}[A005940(n+1), A055615(#)]`
-/

namespace A323915.P6089035994238703242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055615 d

end

end A323915.P6089035994238703242

namespace A323915

/-- `∑{d}[A005940(n+1), A055615(#)]` -/
def P6089035994238703242.Spec : Prop :=
  ∀ n, P6089035994238703242.a n = A323915 n

end A323915

/-!
# A323916: Numbers k with exactly two distinct prime divisors and such that cototient(k) is a square.

The programs for A323916, there is no canonical definition to state claims against.
-/

/-! ## A323916.P11556277057163281987

`∪[A323917(n+1), A323918(n+1)]`
-/

namespace A323916.P11556277057163281987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A323916.P11556277057163281987

/-! ## A323916.P2071033026137427298

`filter[A007774(n+1), A325321(#)]`
-/

namespace A323916.P2071033026137427298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325321 (f1 j).toNat = 1) n)

end

end A323916.P2071033026137427298

/-! ## A323916.P1875716498563365091

`∩[A007774(n+1), A063752(n+1)]`
-/

namespace A323916.P1875716498563365091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323916.P1875716498563365091

/-! ## A323916.P7378113712871205836

`filter[A063752(n+1), A215480(#)]`
-/

namespace A323916.P7378113712871205836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A323916.P7378113712871205836

/-! ## A323916.P14772374485282882701

`filter[A100658(n+1), A325321(#)]`
-/

namespace A323916.P14772374485282882701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325321 (f1 j).toNat = 1) n)

end

end A323916.P14772374485282882701

/-!
# A323917: Numbers k with exactly two distinct prime divisors and such that cototient(k) is square, where k = p^(2s+1) * q^(2t+1) with s,t >=0, p, q primes and p + q - 1 = M^2.

The programs for A323917, there is no canonical definition to state claims against.
-/

/-! ## A323917.P13358560786680142448

`filter[A323916(n+1), A065043(#)]`
-/

namespace A323917.P13358560786680142448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A323917.P13358560786680142448

/-! ## A323917.P5740811866477242652

`filter[A323916(n+1), A295316(#)]`
-/

namespace A323917.P5740811866477242652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A323917.P5740811866477242652

/-! ## A323917.P16534347872879146554

`filter[A323916(n+1), A353669(#)]`
-/

namespace A323917.P16534347872879146554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A323917.P16534347872879146554

/-! ## A323917.P729363426233015650

`∩[A067340(n+1), A323916(n+1)]`
-/

namespace A323917.P729363426233015650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323917.P729363426233015650

/-! ## A323917.P14694969886138720684

`∩[A279458(n+1), A323916(n+1)]`
-/

namespace A323917.P14694969886138720684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323917.P14694969886138720684

/-! ## A323917.P3727358535816518535

`∩[A119899(n+1), A323916(n+1)]`
-/

namespace A323917.P3727358535816518535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323917.P3727358535816518535

/-! ## A323917.P13287137083777859872

`∩[A028260(n+1), A323916(n+1)]`
-/

namespace A323917.P13287137083777859872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323917.P13287137083777859872

/-! ## A323917.P14731679510233871098

`∩[A323916(n+1), A347450(n+1)]`
-/

namespace A323917.P14731679510233871098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323917.P14731679510233871098

/-! ## A323917.P2991672066839830458

`∩[A323916(n+1), A365535(n+1)]`
-/

namespace A323917.P2991672066839830458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323917.P2991672066839830458

/-! ## A323917.P16562187418946236470

`record[A331737(A323916(n+1))]`
-/

namespace A323917.P16562187418946236470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (A323916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323917.P16562187418946236470

/-!
# A323918: Numbers k with exactly two distinct prime divisors and such that cototient(k) is a square, where: k = p^(2s) * q^(2t+1) with s >= 1, t >= 0, p <> q primes and such that p * (p+q-1) = M^2.

The programs for A323918, there is no canonical definition to state claims against.
-/

/-! ## A323918.P18278817168943254340

`∩[A187039(n+1), A323916(n+1)]`
-/

namespace A323918.P18278817168943254340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323918.P18278817168943254340

/-! ## A323918.P10655262481817558052

`∩[A228056(n+1), A323916(n+1)]`
-/

namespace A323918.P10655262481817558052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323918.P10655262481817558052

/-! ## A323918.P3870654744556998663

`∩[A323916(n+1), A388983(n+1)]`
-/

namespace A323918.P3870654744556998663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323918.P3870654744556998663

/-! ## A323918.P13471478511097005973

`∩[A323916(n+1), A376715(n+1)]`
-/

namespace A323918.P13471478511097005973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323918.P13471478511097005973

/-! ## A323918.P12113344629641569918

`filter[A323916(n+1), A066829(#)]`
-/

namespace A323918.P12113344629641569918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A323918.P12113344629641569918

/-! ## A323918.P14996282351241180794

`filter[A323916(n+1), A358769(#)]`
-/

namespace A323918.P14996282351241180794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A323918.P14996282351241180794

/-! ## A323918.P14715271044114299164

`filter[A323916(n+1), A358770(#)]`
-/

namespace A323918.P14715271044114299164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358770 (f1 j).toNat = 1) n)

end

end A323918.P14715271044114299164

/-! ## A323918.P14654340148350839662

`∩[A323916(n+1), A346635(n+1)]`
-/

namespace A323918.P14654340148350839662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323918.P14654340148350839662

/-! ## A323918.P6034799939098940389

`∩[A229125(n+1), A323916(n+1)]`
-/

namespace A323918.P6034799939098940389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323918.P6034799939098940389

/-! ## A323918.P481535553847327514

`∩[A265640(n+1), A323916(n+1)]`
-/

namespace A323918.P481535553847327514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A323918.P481535553847327514

/-!
# A323919: Hexagon-rooted catafusenes (see Cyvin et al. for precise definition).

The programs for A323919, there is no canonical definition to state claims against.
-/

/-! ## A323919.P16088293850574257962

`A085858((n+1)!+5)`
-/

namespace A323919.P16088293850574257962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085858 (Nat.factorial (n + 1) + 5)

end

end A323919.P16088293850574257962

/-! ## A323919.P13092157250884078571

`A240123(C(abs(1-n)+1, (n+1)/∏{p}[n+1, #]))`
-/

namespace A323919.P13092157250884078571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240123 (Nat.choose (|1 - (n : ℤ)| + 1).toNat (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat)

end

end A323919.P13092157250884078571

/-! ## A323919.P11427259520168092019

`A039001(2*4^n+7)%floor(-(3^(n-1)/2))`
-/

namespace A323919.P11427259520168092019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039001 (2 * 4 ^ n + 7)) ⌊-((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 2)⌋

end

end A323919.P11427259520168092019

/-!
# A323920: Nonisomorphic catafusenes with symmetry C_{2v}(a).

The programs for A323920, there is no canonical definition to state claims against.
-/

/-! ## A323920.P17922710116150482651

`A044044(n)-A044045(ceil(n/2))`
-/

namespace A323920.P17922710116150482651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044044 n - A044045 ⌈(n : ℚ) / 2⌉.toNat

end

end A323920.P17922710116150482651

/-!
# A323921: a(n) = (4^(valuation(n, 4) + 1) - 1) / 3.

The programs for A323921, the canonical program `A323921.P8620096806486934226` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323921 has offset 1).

The definition of A323921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323921.P8620096806486934226

`(4^(val(n+1, 4)+1)-1)/3`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323921

/-- `(4^(val(n+1, 4)+1)-1)/3` -/
def P8620096806486934226.Spec : Prop :=
  ∀ n, P8620096806486934226.a n = (A323921 (n + 1) : ℚ)

end A323921

/-! ## A323921.P12747027344785670687

`∑{d}[2^val(n+1, 4), #²]`
-/

namespace A323921.P12747027344785670687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A323921.P12747027344785670687

namespace A323921

/-- `∑{d}[2^val(n+1, 4), #²]` -/
def P12747027344785670687.Spec : Prop :=
  ∀ n, (P12747027344785670687.a n : ℤ) = A323921 (n + 1)

end A323921

/-! ## A323921.P5907428441679542175

`A052992(val(n+1, 2))`
-/

namespace A323921.P5907428441679542175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 (SequenceMachineLib.valuation (n + 1) 2)

end

end A323921.P5907428441679542175

namespace A323921

/-- `A052992(val(n+1, 2))` -/
def P5907428441679542175.Spec : Prop :=
  ∀ n, P5907428441679542175.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P5276095481668715187

`A279750(val(n+1, 2))`
-/

namespace A323921.P5276095481668715187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279750 (SequenceMachineLib.valuation (n + 1) 2)

end

end A323921.P5276095481668715187

namespace A323921

/-- `A279750(val(n+1, 2))` -/
def P5276095481668715187.Spec : Prop :=
  ∀ n, P5276095481668715187.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P16190349030918490393

`A035316(2^val(n+1, 2))`
-/

namespace A323921.P16190349030918490393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A323921.P16190349030918490393

namespace A323921

/-- `A035316(2^val(n+1, 2))` -/
def P16190349030918490393.Spec : Prop :=
  ∀ n, P16190349030918490393.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P9188044533891387238

`A035316(A006519(n+1))`
-/

namespace A323921.P9188044533891387238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A006519 (n + 1)).toNat

end

end A323921.P9188044533891387238

namespace A323921

/-- `A035316(A006519(n+1))` -/
def P9188044533891387238.Spec : Prop :=
  ∀ n, P9188044533891387238.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P4720108192557288492

`A052992(A007814(n+1))`
-/

namespace A323921.P4720108192557288492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 (A007814 (n + 1)).toNat

end

end A323921.P4720108192557288492

namespace A323921

/-- `A052992(A007814(n+1))` -/
def P4720108192557288492.Spec : Prop :=
  ∀ n, P4720108192557288492.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P6211808875107801564

`A078181(A065331(n+1))`
-/

namespace A323921.P6211808875107801564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A065331 (n + 1)).toNat

end

end A323921.P6211808875107801564

namespace A323921

/-- `A078181(A065331(n+1))` -/
def P6211808875107801564.Spec : Prop :=
  ∀ n, P6211808875107801564.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P1970696505936820836

`A078181(A065338(n+1))`
-/

namespace A323921.P1970696505936820836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A065338 (n + 1)).toNat

end

end A323921.P1970696505936820836

namespace A323921

/-- `A078181(A065338(n+1))` -/
def P1970696505936820836.Spec : Prop :=
  ∀ n, P1970696505936820836.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P8319298403646983608

`A063694(A088840(n+1))`
-/

namespace A323921.P8319298403646983608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 (A088840 (n + 1)).toNat

end

end A323921.P8319298403646983608

namespace A323921

/-- `A063694(A088840(n+1))` -/
def P8319298403646983608.Spec : Prop :=
  ∀ n, P8319298403646983608.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P3991291503804039589

`A078181(A079065(n+1))`
-/

namespace A323921.P3991291503804039589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078181 (A079065 (n + 1)).toNat

end

end A323921.P3991291503804039589

namespace A323921

/-- `A078181(A079065(n+1))` -/
def P3991291503804039589.Spec : Prop :=
  ∀ n, P3991291503804039589.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P6032420159658709979

`A296306(A000188(n+1))`
-/

namespace A323921.P6032420159658709979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296306 (A000188 (n + 1)).toNat

end

end A323921.P6032420159658709979

namespace A323921

/-- `A296306(A000188(n+1))` -/
def P6032420159658709979.Spec : Prop :=
  ∀ n, P6032420159658709979.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P16530199469715145531

`xor(A063694(n+1), A063694(n))`
-/

namespace A323921.P16530199469715145531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063694 (n + 1)) (A063694 n)

end

end A323921.P16530199469715145531

namespace A323921

/-- `xor(A063694(n+1), A063694(n))` -/
def P16530199469715145531.Spec : Prop :=
  ∀ n, P16530199469715145531.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P15104606341064195690

`A035316(n+1)/A360159(n+1)`
-/

namespace A323921.P15104606341064195690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035316 (n + 1) : ℚ) / (A360159 (n + 1) : ℚ)

end

end A323921.P15104606341064195690

namespace A323921

/-- `A035316(n+1)/A360159(n+1)` -/
def P15104606341064195690.Spec : Prop :=
  ∀ n, P15104606341064195690.a n = (A323921 (n + 1) : ℚ)

end A323921

/-! ## A323921.P11330923426998322932

`A373188(n+1)/A065883(n+1)`
-/

namespace A323921.P11330923426998322932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373188 (n + 1) : ℚ) / (A065883 (n + 1) : ℚ)

end

end A323921.P11330923426998322932

namespace A323921

/-- `A373188(n+1)/A065883(n+1)` -/
def P11330923426998322932.Spec : Prop :=
  ∀ n, P11330923426998322932.a n = (A323921 (n + 1) : ℚ)

end A323921

/-! ## A323921.P2360282144041108606

`∑{d}[n+1, A007429(#)*A379497((n+1)/#)]`
-/

namespace A323921.P2360282144041108606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A379497 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323921.P2360282144041108606

namespace A323921

/-- `∑{d}[n+1, A007429(#)*A379497((n+1)/#)]` -/
def P2360282144041108606.Spec : Prop :=
  ∀ n, P2360282144041108606.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P16206290126218901476

`A000975(A035263(n+1)+A007814(n+1))`
-/

namespace A323921.P16206290126218901476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (A035263 (n + 1) + A007814 (n + 1)).toNat

end

end A323921.P16206290126218901476

namespace A323921

/-- `A000975(A035263(n+1)+A007814(n+1))` -/
def P16206290126218901476.Spec : Prop :=
  ∀ n, P16206290126218901476.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P7745131958777593561

`A000265(A042968((n+1)/A000265(n+1)))`
-/

namespace A323921.P7745131958777593561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A042968 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000265 (n + 1) : ℚ))).toNat).toNat

end

end A323921.P7745131958777593561

namespace A323921

/-- `A000265(A042968((n+1)/A000265(n+1)))` -/
def P7745131958777593561.Spec : Prop :=
  ∀ n, P7745131958777593561.a n = A323921 (n + 1)

end A323921

/-! ## A323921.P9648231337347958120

`A035316(n+1)/A035316(A000265(n+1))`
-/

namespace A323921.P9648231337347958120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035316 (n + 1) : ℚ) / (A035316 (A000265 (n + 1)).toNat : ℚ)

end

end A323921.P9648231337347958120

namespace A323921

/-- `A035316(n+1)/A035316(A000265(n+1))` -/
def P9648231337347958120.Spec : Prop :=
  ∀ n, P9648231337347958120.a n = (A323921 (n + 1) : ℚ)

end A323921

/-! ## A323921.P7152470051089888282

`A035316(n+1)/A035316(A065883(n+1))`
-/

namespace A323921.P7152470051089888282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035316 (n + 1) : ℚ) / (A035316 (A065883 (n + 1)).toNat : ℚ)

end

end A323921.P7152470051089888282

namespace A323921

/-- `A035316(n+1)/A035316(A065883(n+1))` -/
def P7152470051089888282.Spec : Prop :=
  ∀ n, P7152470051089888282.a n = (A323921 (n + 1) : ℚ)

end A323921

/-!
# A323922: Nonisomorphic catafusenes with symmetry C_s.

The programs for A323922, there is no canonical definition to state claims against.
-/

/-! ## A323922.P12941623773103497518

`A084510(A369421(n))`
-/

namespace A323922.P12941623773103497518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084510 (A369421 n).toNat

end

end A323922.P12941623773103497518

/-! ## A323922.P12651511483267154006

`A368835(n)+A248805(A300335(n))`
-/

namespace A323922.P12651511483267154006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368835 n + A248805 (A300335 n).toNat

end

end A323922.P12651511483267154006

/-! ## A323922.P16208542348351668210

`A368835(n)-A085974(A003480(n))`
-/

namespace A323922.P16208542348351668210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368835 n - A085974 (A003480 n).toNat

end

end A323922.P16208542348351668210

/-! ## A323922.P13430147946424428829

`A368835(n)-A122841(A038080(n))`
-/

namespace A323922.P13430147946424428829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368835 n - A122841 (A038080 n).toNat

end

end A323922.P13430147946424428829

/-!
# A323923: Branched catafusenes without helicenes (cata-condensed benzenoids), symmetry C_s.

The programs for A323923, there is no canonical definition to state claims against.
-/

/-! ## A323923.P15398755625479902008

`A358638(A150840(n+1))`
-/

namespace A323923.P15398755625479902008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358638 (A150840 (n + 1)).toNat

end

end A323923.P15398755625479902008

/-!
# A323924: Number of peri-condensed or cyclic peri-condensed Kekuléan planar polycyclic aromatic hydrocarbons with n hexagons.

The programs for A323924, there is no canonical definition to state claims against.
-/

/-! ## A323924.P3973704697305738550

`A242222(A107597(n))`
-/

namespace A323924.P3973704697305738550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242222 (A107597 n).toNat

end

end A323924.P3973704697305738550

/-! ## A323924.P6728916702253803990

`A107852(A355193(n))`
-/

namespace A323924.P6728916702253803990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107852 (A355193 n).toNat

end

end A323924.P6728916702253803990

/-! ## A323924.P14691900353875491146

`A239833(A337484(n))`
-/

namespace A323924.P14691900353875491146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239833 (A337484 n).toNat

end

end A323924.P14691900353875491146

/-! ## A323924.P2639043384658534112

`A375576(A214916(n))`
-/

namespace A323924.P2639043384658534112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375576 (A214916 n).toNat

end

end A323924.P2639043384658534112

/-! ## A323924.P8987981115714528192

`A069767(Δ[A000628(n)])`
-/

namespace A323924.P8987981115714528192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069767 (f1 (n + 1) - f1 n).toNat

end

end A323924.P8987981115714528192

/-!
# A323925: Number of Kekuléan planar polycyclic aromatic hydrocarbons with n hexagons that are derived from peri-condensed, cyclic peri-condensed, or corona-condensed molecules.

The programs for A323925, there is no canonical definition to state claims against.
-/

/-! ## A323925.P5907077835584732432

`A051061(A133263(n*A306351(n)))`
-/

namespace A323925.P5907077835584732432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051061 (A133263 ((n : ℤ) * A306351 n).toNat).toNat

end

end A323925.P5907077835584732432

/-! ## A323925.P15649889362301887061

`A051061(A133263(n)^A306351(n))`
-/

namespace A323925.P15649889362301887061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051061 (SequenceMachineLib.roundAway ((A133263 n : ℚ) ^ (A306351 n : ℤ))).toNat

end

end A323925.P15649889362301887061

/-! ## A323925.P5633959496903754746

`A051061(lcm(A005709(n), A133263(n)))`
-/

namespace A323925.P5633959496903754746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051061 (Int.lcm (A005709 n) (A133263 n))

end

end A323925.P5633959496903754746

/-! ## A323925.P3807404996622579260

`A051061(C(A133263(n), A306351(n)))`
-/

namespace A323925.P3807404996622579260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051061 (Nat.choose (A133263 n).toNat (A306351 n).toNat)

end

end A323925.P3807404996622579260

/-!
# A323926: Number of Kekuléan polyhexes with n hexagons.

The programs for A323926, there is no canonical definition to state claims against.
-/

/-! ## A323926.P7621754497627644026

`A323930(n+1)-A323929(n+1)`
-/

namespace A323926.P7621754497627644026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323930 (n + 1) - A323929 (n + 1)

end

end A323926.P7621754497627644026

/-! ## A323926.P14683286967864842376

`A323930(n+1)-(A323928(n+1)+A323927(n+1))`
-/

namespace A323926.P14683286967864842376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323930 (n + 1) - (A323928 (n + 1) + A323927 (n + 1))

end

end A323926.P14683286967864842376

/-! ## A323926.P9577278771771050841

`A323930(n+1)-(A323928(n+1)+A029233(A032233(n)))`
-/

namespace A323926.P9577278771771050841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323930 (n + 1) - (A323928 (n + 1) + A029233 (A032233 n).toNat)

end

end A323926.P9577278771771050841

/-! ## A323926.P18336111244608106084

`A038140(A061013(n+1))+A018190(n+1)-A323929(n+1)`
-/

namespace A323926.P18336111244608106084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038140 (A061013 (n + 1)).toNat + A018190 (n + 1) - A323929 (n + 1)

end

end A323926.P18336111244608106084

/-!
# A323927: Number of peri-condensed or cyclic peri-condensed non-Kekuléan planar polycyclic aromatic hydrocarbons with n hexagons.

The programs for A323927, there is no canonical definition to state claims against.
-/

/-! ## A323927.P15961330654620617478

`A160522(9*a(n-2)+1)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=3, a(6)=9, a(7)=27`
-/

namespace A323927.P15961330654620617478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 0, 1, 3, 9, 27] fun n a =>
  A160522 (9 * a (n - 2) + 1).toNat

end

end A323927.P15961330654620617478

/-! ## A323927.P14445617750003718994

`A029233(A032233(n))`
-/

namespace A323927.P14445617750003718994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029233 (A032233 n).toNat

end

end A323927.P14445617750003718994

/-! ## A323927.P14296173585925536147

`Δ[A194621(A194630(n+1)+1)]`
-/

namespace A323927.P14296173585925536147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A194630 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323927.P14296173585925536147

/-! ## A323927.P7875131632794116517

`A323929(n+1)-A323928(n+1)`
-/

namespace A323927.P7875131632794116517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323929 (n + 1) - A323928 (n + 1)

end

end A323927.P7875131632794116517

/-! ## A323927.P5828900008908170722

`A006995(A191393(n)+A001631(n))`
-/

namespace A323927.P5828900008908170722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (A191393 n + A001631 n).toNat

end

end A323927.P5828900008908170722

/-!
# A323928: Number of non-Kekuléan planar polycyclic aromatic hydrocarbons with n hexagons that are derived from peri-condensed, cyclic peri-condensed, or corona-condensed molecules.

The programs for A323928, there is no canonical definition to state claims against.
-/

/-! ## A323928.P1128251529377332034

`A323929(n+1)-A323927(n+1)`
-/

namespace A323928.P1128251529377332034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323929 (n + 1) - A323927 (n + 1)

end

end A323928.P1128251529377332034

/-! ## A323928.P3044160357962465758

`A323929(n+1)-A029233(A032233(n))`
-/

namespace A323928.P3044160357962465758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323929 (n + 1) - A029233 (A032233 n).toNat

end

end A323928.P3044160357962465758

/-! ## A323928.P6099708547061681581

`A323929(n+1)-Δ[A194621(A194630(n+1)+1)]`
-/

namespace A323928.P6099708547061681581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A194630 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323929 (n + 1) - (f1 (n + 1) - f1 n)

end

end A323928.P6099708547061681581

/-! ## A323928.P14872467548974947230

`A323930(n+1)-(A323927(n+1)+A323926(n+1))`
-/

namespace A323928.P14872467548974947230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323930 (n + 1) - (A323927 (n + 1) + A323926 (n + 1))

end

end A323928.P14872467548974947230

/-! ## A323928.P7353350228719374737

`A323929(n+1)-A025868(A136336(n)-A163533(n))`
-/

namespace A323928.P7353350228719374737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323929 (n + 1) - A025868 (A136336 n - A163533 n).toNat

end

end A323928.P7353350228719374737

/-!
# A323929: Number of non-Kekuléan polyhexes with n hexagons.

The programs for A323929, there is no canonical definition to state claims against.
-/

/-! ## A323929.P5323248320201890453

`A323930(n+1)-A323926(n+1)`
-/

namespace A323929.P5323248320201890453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323930 (n + 1) - A323926 (n + 1)

end

end A323929.P5323248320201890453

/-! ## A323929.P857076604870919867

`A323928(n+1)+A323927(n+1)`
-/

namespace A323929.P857076604870919867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323928 (n + 1) + A323927 (n + 1)

end

end A323929.P857076604870919867

/-! ## A323929.P15380584025858086796

`A323928(n+1)+A029233(A032233(n))`
-/

namespace A323929.P15380584025858086796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323928 (n + 1) + A029233 (A032233 n).toNat

end

end A323929.P15380584025858086796

/-! ## A323929.P9573254270075684967

`A323928(n+1)+Δ[A194621(A194630(n+1)+1)]`
-/

namespace A323929.P9573254270075684967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194621 (A194630 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323928 (n + 1) + (f1 (n + 1) - f1 n)

end

end A323929.P9573254270075684967

/-! ## A323929.P8089560444231199251

`A323928(n+1)+A025868(A136336(n)-A163533(n))`
-/

namespace A323929.P8089560444231199251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323928 (n + 1) + A025868 (A136336 n - A163533 n).toNat

end

end A323929.P8089560444231199251

/-!
# A323930: Polycyclic aromatic hydrocarbons: polyhexes made of n hexagons that do not have holes of size 1.

The programs for A323930, there is no canonical definition to state claims against.
-/

/-! ## A323930.P16169415838102308761

`A018190(n+1)+A038140(n+1)+A038141(n+1)`
-/

namespace A323930.P16169415838102308761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018190 (n + 1) + A038140 (n + 1) + A038141 (n + 1)

end

end A323930.P16169415838102308761

/-! ## A323930.P10467747537755537360

`A323929(n+1)+A323926(n+1)`
-/

namespace A323930.P10467747537755537360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323929 (n + 1) + A323926 (n + 1)

end

end A323930.P10467747537755537360

/-! ## A323930.P4491477257150490096

`A038140(A061013(n+1))+A018190(n+1)`
-/

namespace A323930.P4491477257150490096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038140 (A061013 (n + 1)).toNat + A018190 (n + 1)

end

end A323930.P4491477257150490096

/-! ## A323930.P17853041787121830843

`A270436(A018190(n+1))+A038140(n+1)`
-/

namespace A323930.P17853041787121830843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270436 (A018190 (n + 1)).toNat + A038140 (n + 1)

end

end A323930.P17853041787121830843

/-! ## A323930.P6157786831400574011

`A323926(n+1)+A323928(n+1)+A323927(n+1)`
-/

namespace A323930.P6157786831400574011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323926 (n + 1) + (A323928 (n + 1) + A323927 (n + 1))

end

end A323930.P6157786831400574011

/-!
# A323931: Unbranched catacondensed benzenoids (strip polyhexes), mirror-symmetrical.

The programs for A323931, there is no canonical definition to state claims against.
-/

/-! ## A323931.P13191322164942189667

`A004273(A003104(n+1))-A151515(n+1)`
-/

namespace A323931.P13191322164942189667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A003104 (n + 1)).toNat - A151515 (n + 1)

end

end A323931.P13191322164942189667

/-! ## A323931.P11584174481561542704

`A224326(A215757(n))`
-/

namespace A323931.P11584174481561542704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224326 (A215757 n).toNat

end

end A323931.P11584174481561542704

/-! ## A323931.P17561549272364005405

`A352131(A062773(n+1)-((1-n)²+n))`
-/

namespace A323931.P17561549272364005405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352131 (A062773 (n + 1) - ((1 - (n : ℤ)) ^ 2 + (n : ℤ))).toNat

end

end A323931.P17561549272364005405

/-! ## A323931.P10820873119760614553

`A183203(n)-A056813(A098569(n))`
-/

namespace A323931.P10820873119760614553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183203 n - A056813 (A098569 n).toNat

end

end A323931.P10820873119760614553

/-!
# A323932: Unbranched catacondensed benzenoids (strip polyhexes), unsymmetrical.

The programs for A323932, there is no canonical definition to state claims against.
-/

/-! ## A323932.P6767921166472142671

`A073750(A151425(n))`
-/

namespace A323932.P6767921166472142671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073750 (A151425 n).toNat

end

end A323932.P6767921166472142671

/-! ## A323932.P15143338758015094300

`A172366(∑[A172405(n)])`
-/

namespace A323932.P15143338758015094300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172366 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323932.P15143338758015094300

/-! ## A323932.P7569030361418364578

`A011371(floor(sqrt(A231494(n))))`
-/

namespace A323932.P7569030361418364578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (Int.sqrt (A231494 n)).toNat

end

end A323932.P7569030361418364578

/-! ## A323932.P2317920503665714589

`∑[∑[A025428(A083583(n))]]`
-/

namespace A323932.P2317920503665714589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A083583 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323932.P2317920503665714589

/-!
# A323936: Isomers of deoxyalditols.

The programs for A323936, the canonical program `A323936.P11777817486946171275` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323936 has offset 1).

The definition of A323936 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323936.P13939125672126169829

`ogf((1-3x+x^2+4x^3-3x^4)/(1-4x+2x^2+8x^3-8x^4))`
-/

namespace A323936.P13939125672126169829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 1, 4, -3] [1, -4, 2, 8, -8] n

end

end A323936.P13939125672126169829

namespace A323936

/-- `ogf((1-3x+x^2+4x^3-3x^4)/(1-4x+2x^2+8x^3-8x^4))` -/
def P13939125672126169829.Spec : Prop :=
  ∀ n, P13939125672126169829.a n = A323936 (n + 1)

end A323936

/-! ## A323936.P11777817486946171275

`4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=6, a(4)=15`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323936

/-- `4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` -/
def P11777817486946171275.Spec : Prop :=
  ∀ n, P11777817486946171275.a n = A323936 (n + 1)

theorem P11777817486946171275.correct : P11777817486946171275.Spec := by
  intro n
  simp only [A323936, Nat.add_sub_cancel]

end A323936

/-! ## A323936.P17645866644051884081

`A084861(n)-A122742(n+4)`
-/

namespace A323936.P17645866644051884081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084861 n - A122742 (n + 4)

end

end A323936.P17645866644051884081

namespace A323936

/-- `A084861(n)-A122742(n+4)` -/
def P17645866644051884081.Spec : Prop :=
  ∀ n, P17645866644051884081.a n = A323936 (n + 1)

end A323936

/-! ## A323936.P10528485154972873278

`A084861(n)-(A121133(n+1)-A077957(A289207(n)))`
-/

namespace A323936.P10528485154972873278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084861 n - (A121133 (n + 1) - A077957 (A289207 n).toNat)

end

end A323936.P10528485154972873278

namespace A323936

/-- `A084861(n)-(A121133(n+1)-A077957(A289207(n)))` -/
def P10528485154972873278.Spec : Prop :=
  ∀ n, P10528485154972873278.a n = A323936 (n + 1)

end A323936

/-! ## A323936.P17340511006587720355

`Δ[A340732(2^(n+1))]`
-/

namespace A323936.P17340511006587720355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340732 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A323936.P17340511006587720355

namespace A323936

/-- `Δ[A340732(2^(n+1))]` -/
def P17340511006587720355.Spec : Prop :=
  ∀ n, P17340511006587720355.a n = A323936 (n + 1)

end A323936

/-!
# A323939: Number of unbranched tri-4-catafusenes under the symmetry point group C_{2v} as a function of the number of hexagons (see Cyvin et al. (1996) for precise definition).

The programs for A323939, the canonical program `A323939.P6861047846646589746` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323939 has offset 3).

The definition of A323939 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323939.P6861047846646589746

`ogf((2x+x^2-14x^3-x^4+22x^5-3x^6+2x^7-x^8)/(1-2x-7x^2+16x^3+14x^4-44x^5-2x^6+48x^7-15x^8-18x^9+9x^10))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323939

/-- `ogf((2x+x^2-14x^3-x^4+22x^5-3x^6+2x^7-x^8)/(1-2x-7x^2+16x^3+14x^4-44x^5-2x^6+48x^7-15x^8-18x^9+9x^10))` -/
def P6861047846646589746.Spec : Prop :=
  ∀ n, P6861047846646589746.a n = A323939 (n + 3)

theorem P6861047846646589746.correct : P6861047846646589746.Spec := by
  intro n
  simp only [A323939, Nat.add_sub_cancel]

end A323939

/-!
# A323940: Number of nonisomorphic systems (isomers) for the unsymmetrical schemes (group C_s) for unbranched tri-4-catafusenes as a function of the number of hexagons (see Cyvin et al. (1996) for precise definition).

The programs for A323940, there is no canonical definition to state claims against.
-/

/-! ## A323940.P13589417749332888724

`A008651(C(22, n))`
-/

namespace A323940.P13589417749332888724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (Nat.choose 22 n)

end

end A323940.P13589417749332888724

/-!
# A323941: Total number of isomers (nonisomorphic systems) of unbranched tri-4-catafusenes as a function of the number of hexagons (see Cyvin et al. (1996) for precise definition).

The programs for A323941, there is no canonical definition to state claims against.
-/

/-! ## A323941.P13786110859049360329

`A038766(∑[n+3]+n+3)`
-/

namespace A323941.P13786110859049360329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038766 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A323941.P13786110859049360329

/-! ## A323941.P11159379073607557745

`record[A038766(A160791(n+1)+n)]`
-/

namespace A323941.P11159379073607557745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038766 (A160791 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323941.P11159379073607557745

/-! ## A323941.P12604430066442282581

`A038766(A046691(n+2))+A000007(n+1)`
-/

namespace A323941.P12604430066442282581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038766 (A046691 (n + 2)).toNat + A000007 (n + 1)

end

end A323941.P12604430066442282581

/-! ## A323941.P10331499807846720428

`A038766(A046691(n+2))^(A040056(n)%3)`
-/

namespace A323941.P10331499807846720428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038766 (A046691 (n + 2)).toNat : ℚ) ^ (Int.tmod (A040056 n) 3 : ℤ)

end

end A323941.P10331499807846720428

/-! ## A323941.P7828623843821278586

`lcm(A038766(A046691(n+2)), A064179(2*(n+1)))`
-/

namespace A323941.P7828623843821278586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038766 (A046691 (n + 2)).toNat) (A064179 (2 * (n + 1)))

end

end A323941.P7828623843821278586

/-! ## A323941.P7454965432647627712

`A038766(A046691(n+2))+A008683(36*(n+1))`
-/

namespace A323941.P7454965432647627712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038766 (A046691 (n + 2)).toNat + A008683 (36 * (n + 1))

end

end A323941.P7454965432647627712

/-! ## A323941.P16481568385182081413

`A014963(A007365(n))*A038766(A046691(n+2))`
-/

namespace A323941.P16481568385182081413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A007365 n).toNat * A038766 (A046691 (n + 2)).toNat

end

end A323941.P16481568385182081413

/-! ## A323941.P16449120449661117397

`A001222(A002496(n+1))*A038766(A046691(n+2))`
-/

namespace A323941.P16449120449661117397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002496 (n + 1)).toNat * A038766 (A046691 (n + 2)).toNat

end

end A323941.P16449120449661117397

/-!
# A323942: Irregular triangle read by rows giving the total number of isomers (nonisomorphic systems) of unbranched k-4-catafusenes.

The programs for A323942, there is no canonical definition to state claims against.
-/

/-! ## A323942.P17005050244908986201

`A038766(A061579(n+3))`
-/

namespace A323942.P17005050244908986201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038766 (A061579 (n + 3)).toNat

end

end A323942.P17005050244908986201

/-! ## A323942.P10053000045753133807

`A038766(A038722(n+5))`
-/

namespace A323942.P10053000045753133807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038766 (A038722 (n + 5)).toNat

end

end A323942.P10053000045753133807

/-!
# A323943: Trapezoidal matrix T(n,k) (n>=1, 1<=k<=n+2) read by rows, arising in enumeration of unbranched k-4-catafusenes.

The programs for A323943, there is no canonical definition to state claims against.
-/

/-! ## A323943.P15221360186056411235

`A024462(A061579(n+3))`
-/

namespace A323943.P15221360186056411235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024462 (A061579 (n + 3)).toNat

end

end A323943.P15221360186056411235

/-! ## A323943.P3736891401357469448

`A024462(A038722(n+5))`
-/

namespace A323943.P3736891401357469448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024462 (A038722 (n + 5)).toNat

end

end A323943.P3736891401357469448

/-!
# A323945: Complexity of computing the Fourier transform on the symmetric group S_n.

The programs for A323945, there is no canonical definition to state claims against.
-/

/-! ## A323945.P2028817699667614909

`A004074(7^n+7)`
-/

namespace A323945.P2028817699667614909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004074 (7 ^ n + 7)

end

end A323945.P2028817699667614909

/-!
# A323946: Number of additions required for computing the Fourier transform on the symmetric group S_n.

The programs for A323946, there is no canonical definition to state claims against.
-/

/-! ## A323946.P18401362192638629220

`A138573(2*n*(n*(n-5)+5)²)`
-/

namespace A323946.P18401362192638629220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138573 (2 * ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2)).toNat

end

end A323946.P18401362192638629220

/-!
# A323947: Values of a sum arising in studying the Fourier transform on the symmetric group S_n.

The programs for A323947, there is no canonical definition to state claims against.
-/

/-! ## A323947.P8641452701340488005

`A280041(n+4)%(n+2)!`
-/

namespace A323947.P8641452701340488005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280041 (n + 4)) (Nat.factorial (n + 2) : ℤ)

end

end A323947.P8641452701340488005

/-!
# A323948: The numbers 2^n with 1's and 2's swapped, then sorted.

The programs for A323948, there is no canonical definition to state claims against.
-/

/-! ## A323948.P15838940223057609461

`eq[1, A000120(A035043(n))]`
-/

namespace A323948.P15838940223057609461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A323948.P15838940223057609461

/-! ## A323948.P8409083588443724977

`eq[A010122(n), A038573(A035043(n))]`
-/

namespace A323948.P8409083588443724977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323948.P8409083588443724977

/-! ## A323948.P1391887274655869836

`eq[A038573(A035043(n)), A054977(n)]`
-/

namespace A323948.P1391887274655869836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A035043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323948.P1391887274655869836

/-! ## A323948.P12936035700212612814

`eq[A006257(A035043(n)), A304042(n)]`
-/

namespace A323948.P12936035700212612814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A035043 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323948.P12936035700212612814

/-! ## A323948.P4001047234418804991

`eq[A057427(n), A335421(A035043(n))]`
-/

namespace A323948.P4001047234418804991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335421 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A323948.P4001047234418804991

/-!
# A323949: Number of set partitions of {1, ..., n} with no block containing three distinct cyclically successive vertices.

The programs for A323949, there is no canonical definition to state claims against.
-/

/-! ## A323949.P9468015166412823368

`A323955(C(n, 2)+2)`
-/

namespace A323949.P9468015166412823368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323955 (Nat.choose n 2 + 2)

end

end A323949.P9468015166412823368

/-! ## A323949.P17998379270545412716

`A323955(∑[n-1]+3)`
-/

namespace A323949.P17998379270545412716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323955 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A323949.P17998379270545412716

/-! ## A323949.P1702941824932416966

`A091529(A148039(n))`
-/

namespace A323949.P1702941824932416966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091529 (A148039 n).toNat

end

end A323949.P1702941824932416966

/-!
# A323950: Number of ways to split an n-cycle into connected subgraphs, none having exactly two vertices.

The programs for A323950, the canonical program `A323950.P9405962714025140105` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323950 has offset 0).

The definition of A323950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323950.P9405962714025140105

`ogf((1-3x+3x^2-x^3+2x^4-3x^5+3x^6-x^7)/(1-4x+6x^2-5x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323950

/-- `ogf((1-3x+3x^2-x^3+2x^4-3x^5+3x^6-x^7)/(1-4x+6x^2-5x^3+3x^4-x^5))` -/
def P9405962714025140105.Spec : Prop :=
  ∀ n, P9405962714025140105.a n = A323950 n

theorem P9405962714025140105.correct : P9405962714025140105.Spec := by
  intro n
  simp only [A323950]

end A323950

/-! ## A323950.P257255789282800434

`record[a(n-2)-a(n-3)]-n` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=1, a(5)=1, a(6)=3`
-/

namespace A323950.P257255789282800434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2, 1, 1, 3] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A323950.P257255789282800434

namespace A323950

/-- `record[a(n-2)-a(n-3)]-n` -/
def P257255789282800434.Spec : Prop :=
  ∀ n, P257255789282800434.a n = A323950 n

end A323950

/-! ## A323950.P3648555411208597461

`A323953(∑[abs(1-(char[2]+n))])`
-/

namespace A323950.P3648555411208597461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (((if ∃ j, f2 j = n then 1 else 0) + n : ℕ) : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323953 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323950.P3648555411208597461

namespace A323950

/-- `A323953(∑[abs(1-(char[2]+n))])` -/
def P3648555411208597461.Spec : Prop :=
  ∀ n, P3648555411208597461.a n = A323950 n

end A323950

/-! ## A323950.P12376824950016429951

`A028310(A259967(n)-A233583(n+1))`
-/

namespace A323950.P12376824950016429951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A259967 n - A233583 (n + 1)).toNat

end

end A323950.P12376824950016429951

namespace A323950

/-- `A028310(A259967(n)-A233583(n+1))` -/
def P12376824950016429951.Spec : Prop :=
  ∀ n, P12376824950016429951.a n = A323950 n

end A323950

/-! ## A323950.P13961682311523019606

`A028310(A001608(2*n)-A233583(n+1))`
-/

namespace A323950.P13961682311523019606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A001608 (2 * n) - A233583 (n + 1)).toNat

end

end A323950.P13961682311523019606

namespace A323950

/-- `A028310(A001608(2*n)-A233583(n+1))` -/
def P13961682311523019606.Spec : Prop :=
  ∀ n, P13961682311523019606.a n = A323950 n

end A323950

/-!
# A323951: Number of ways to split an n-cycle into connected subgraphs, all having at least three vertices.

The programs for A323951, the canonical program `A323951.P5739260274326413846` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323951 has offset 0).

The definition of A323951 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323951.P5739260274326413846

`ogf((1-3x+3x^2-x^3+2x^6-x^7)/(1-3x+3x^2-2x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323951

/-- `ogf((1-3x+3x^2-x^3+2x^6-x^7)/(1-3x+3x^2-2x^3+2x^4-x^5))` -/
def P5739260274326413846.Spec : Prop :=
  ∀ n, P5739260274326413846.a n = A323951 n

theorem P5739260274326413846.correct : P5739260274326413846.Spec := by
  intro n
  simp only [A323951]

end A323951

/-! ## A323951.P8813911197345809289

`A001609(abs(1-n)+1)+char[2]-n`
-/

namespace A323951.P8813911197345809289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 (|1 - (n : ℤ)| + 1).toNat + (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))

end

end A323951.P8813911197345809289

namespace A323951

/-- `A001609(abs(1-n)+1)+char[2]-n` -/
def P8813911197345809289.Spec : Prop :=
  ∀ n, P8813911197345809289.a n = A323951 n

end A323951

/-! ## A323951.P4678473566794262159

`A111660(A228645(n)+A049310(n+2))`
-/

namespace A323951.P4678473566794262159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A228645 n + A049310 (n + 2)).toNat

end

end A323951.P4678473566794262159

namespace A323951

/-- `A111660(A228645(n)+A049310(n+2))` -/
def P4678473566794262159.Spec : Prop :=
  ∀ n, P4678473566794262159.a n = A323951 n

end A323951

/-! ## A323951.P17311714083619606293

`A111660(A185646(2*n²)+A049310(n+2))`
-/

namespace A323951.P17311714083619606293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A185646 (2 * n ^ 2) + A049310 (n + 2)).toNat

end

end A323951.P17311714083619606293

namespace A323951

/-- `A111660(A185646(2*n²)+A049310(n+2))` -/
def P17311714083619606293.Spec : Prop :=
  ∀ n, P17311714083619606293.a n = A323951 n

end A323951

/-! ## A323951.P10416550079916123838

`A111660(A291652(∑[n+2]-1)+A049310(n+2))`
-/

namespace A323951.P10416550079916123838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A291652 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + A049310 (n + 2)).toNat

end

end A323951.P10416550079916123838

namespace A323951

/-- `A111660(A291652(∑[n+2]-1)+A049310(n+2))` -/
def P10416550079916123838.Spec : Prop :=
  ∀ n, P10416550079916123838.a n = A323951 n

end A323951

/-!
# A323952: Regular triangle read by rows where if k > 1 then T(n, k) is the number of connected subgraphs of an n-cycle with any number of vertices other than 2 through k - 1, n >= 1, 1 <= k <= n - 1. Otherwise T(n, 1) = n.

The programs for A323952, the canonical program `A323952.P1977647580741173646` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323952 has offset 1).

The definition of A323952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323952.P3723454173373979417

`round(sqrt(2*n))*A193592(n)+1`
-/

namespace A323952.P3723454173373979417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * A193592 n + 1

end

end A323952.P3723454173373979417

namespace A323952

/-- `round(sqrt(2*n))*A193592(n)+1` -/
def P3723454173373979417.Spec : Prop :=
  ∀ n, P3723454173373979417.a n = A323952 (n + 1)

end A323952

/-! ## A323952.P10957579131610258955

`A095833(n+1)%Δ[n²]+1`
-/

namespace A323952.P10957579131610258955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095833 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 1

end

end A323952.P10957579131610258955

namespace A323952

/-- `A095833(n+1)%Δ[n²]+1` -/
def P10957579131610258955.Spec : Prop :=
  ∀ n, P10957579131610258955.a n = A323952 (n + 1)

end A323952

/-! ## A323952.P1977647580741173646

`A130296(n+1)+A095834(A028310(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A323952

/-- `A130296(n+1)+A095834(A028310(n))` -/
def P1977647580741173646.Spec : Prop :=
  ∀ n, P1977647580741173646.a n = A323952 (n + 1)

theorem P1977647580741173646.correct : P1977647580741173646.Spec := by
  intro n
  simp only [A323952, Nat.add_sub_cancel]

end A323952

/-! ## A323952.P4175674525472557342

`A008619(2*A123578(n)*A193592(n))`
-/

namespace A323952.P4175674525472557342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (A123578 n * A193592 n)).toNat

end

end A323952.P4175674525472557342

namespace A323952

/-- `A008619(2*A123578(n)*A193592(n))` -/
def P4175674525472557342.Spec : Prop :=
  ∀ n, P4175674525472557342.a n = A323952 (n + 1)

end A323952

/-! ## A323952.P7580547921460924107

`A008611(3*A123578(n)*A193592(n))`
-/

namespace A323952.P7580547921460924107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * (A123578 n * A193592 n)).toNat

end

end A323952.P7580547921460924107

namespace A323952

/-- `A008611(3*A123578(n)*A193592(n))` -/
def P7580547921460924107.Spec : Prop :=
  ∀ n, P7580547921460924107.a n = A323952 (n + 1)

end A323952

/-! ## A323952.P4143974658416664457

`A008624(4*A123578(n)*A193592(n))`
-/

namespace A323952.P4143974658416664457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * (A123578 n * A193592 n)).toNat

end

end A323952.P4143974658416664457

namespace A323952

/-- `A008624(4*A123578(n)*A193592(n))` -/
def P4143974658416664457.Spec : Prop :=
  ∀ n, P4143974658416664457.a n = A323952 (n + 1)

end A323952

/-! ## A323952.P3954274055600650551

`A130296(n+1)+A095834(A066182(n+1))`
-/

namespace A323952.P3954274055600650551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1) + A095834 (A066182 (n + 1)).toNat

end

end A323952.P3954274055600650551

namespace A323952

/-- `A130296(n+1)+A095834(A066182(n+1))` -/
def P3954274055600650551.Spec : Prop :=
  ∀ n, P3954274055600650551.a n = A323952 (n + 1)

end A323952

/-! ## A323952.P4768266891317862888

`A028242(A005843(A095833(n+1))%A016825(n))`
-/

namespace A323952.P4768266891317862888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.tmod (A005843 (A095833 (n + 1)).toNat) (A016825 n)).toNat

end

end A323952.P4768266891317862888

namespace A323952

/-- `A028242(A005843(A095833(n+1))%A016825(n))` -/
def P4768266891317862888.Spec : Prop :=
  ∀ n, P4768266891317862888.a n = A323952 (n + 1)

end A323952

/-! ## A323952.P14142905023757087807

`A053186(A095833(n+1)+A002522(n))`
-/

namespace A323952.P14142905023757087807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A095833 (n + 1) + A002522 n).toNat

end

end A323952.P14142905023757087807

namespace A323952

/-- `A053186(A095833(n+1)+A002522(n))` -/
def P14142905023757087807.Spec : Prop :=
  ∀ n, P14142905023757087807.a n = A323952 (n + 1)

end A323952

/-!
# A323953: Regular triangle read by rows where T(n, k) is the number of ways to split an n-cycle into singletons and connected subsequences of sizes > k.

The programs for A323953, there is no canonical definition to state claims against.
-/

/-! ## A323953.P968934213696467814

`A316843(lcm(A047848(n), A158815(n)))`
-/

namespace A323953.P968934213696467814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (Int.lcm (A047848 n) (A158815 n))

end

end A323953.P968934213696467814

/-!
# A323954: Regular triangle read by rows where T(n, k) is the number of ways to split an n-cycle into connected subsequences of sizes > k, n >=1, 0 <= k < n.

The programs for A323954, there is no canonical definition to state claims against.
-/

/-! ## A323954.P14304323582663099373

`A323953(n+1)/A082071(A022182(n))`
-/

namespace A323954.P14304323582663099373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323953 (n + 1) : ℚ) / (A082071 (A022182 n).toNat : ℚ)

end

end A323954.P14304323582663099373

/-!
# A323956: Triangle read by rows: T(n, k) = 1 + n * (n - k) for 1 <= k <= n.

The programs for A323956, the canonical program `A323956.P11197926771404492179` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323956 has offset 1).

The definition of A323956 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(row(n)+1)*(row(n)+1-(col(n)+1))` (program `A323956.P11197926771404492179`, by `A323956.P11197926771404492179.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A323956.P11197926771404492179

`1+(row(n)+1)*(row(n)+1-(col(n)+1))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323956

/-- `1+(row(n)+1)*(row(n)+1-(col(n)+1))` -/
def P11197926771404492179.Spec : Prop :=
  ∀ n, P11197926771404492179.a n = A323956 (n + 1)

theorem P11197926771404492179.correct : P11197926771404492179.Spec := by
  intro n
  simp only [A323956, Nat.add_sub_cancel]

end A323956

/-! ## A323956.P13322069916363531267

`(1+row(n))*(row(n)-col(n))+1`
-/

namespace A323956.P13322069916363531267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + SequenceMachineLib.triRow n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + 1

end

end A323956.P13322069916363531267

namespace A323956

/-- `(1+row(n))*(row(n)-col(n))+1` -/
def P13322069916363531267.Spec : Prop :=
  ∀ n, P13322069916363531267.a n = A323956 (n + 1)

theorem P13322069916363531267.correct : P13322069916363531267.Spec := by
  intro n
  simp only [A323956, Nat.add_sub_cancel, A323956.P13322069916363531267.a, A323956.P11197926771404492179.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A323956

/-! ## A323956.P14202704122055690796

`A095834(1+n)+1`
-/

namespace A323956.P14202704122055690796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095834 (1 + n) + 1

end

end A323956.P14202704122055690796

namespace A323956

/-- `A095834(1+n)+1` -/
def P14202704122055690796.Spec : Prop :=
  ∀ n, P14202704122055690796.a n = A323956 (n + 1)

end A323956

/-! ## A323956.P7251230568121788550

`A128140(n+1)-col(n)`
-/

namespace A323956.P7251230568121788550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) - (SequenceMachineLib.triCol n : ℤ)

end

end A323956.P7251230568121788550

namespace A323956

/-- `A128140(n+1)-col(n)` -/
def P7251230568121788550.Spec : Prop :=
  ∀ n, P7251230568121788550.a n = A323956 (n + 1)

end A323956

/-! ## A323956.P6989779823662968315

`A095833(n+1)-row(n)`
-/

namespace A323956.P6989779823662968315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) - (SequenceMachineLib.triRow n : ℤ)

end

end A323956.P6989779823662968315

namespace A323956

/-- `A095833(n+1)-row(n)` -/
def P6989779823662968315.Spec : Prop :=
  ∀ n, P6989779823662968315.a n = A323956 (n + 1)

theorem P6989779823662968315.correct : P6989779823662968315.Spec := by
  intro n
  simp only [A323956, Nat.add_sub_cancel, A323956.P6989779823662968315.a, A323956.P11197926771404492179.a, A095833, A095833.P14663800684524425914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323956

/-! ## A323956.P1834240971829429498

`∑[char[∑[n]]]*A025581(n)+1`
-/

namespace A323956.P1834240971829429498
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A025581 n + 1

end

end A323956.P1834240971829429498

namespace A323956

/-- `∑[char[∑[n]]]*A025581(n)+1` -/
def P1834240971829429498.Spec : Prop :=
  ∀ n, P1834240971829429498.a n = A323956 (n + 1)

end A323956

/-! ## A323956.P1127273941366970710

`A091435(n)+C(comp[∑[n]]-n, 2)-n`
-/

namespace A323956.P1127273941366970710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A323956.P1127273941366970710

namespace A323956

/-- `A091435(n)+C(comp[∑[n]]-n, 2)-n` -/
def P1127273941366970710.Spec : Prop :=
  ∀ n, P1127273941366970710.a n = A323956 (n + 1)

end A323956

/-! ## A323956.P9434673241971309788

`(A004736(n+1)-1)*round(sqrt(2*n+1))+1`
-/

namespace A323956.P9434673241971309788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) - 1) * SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) + 1

end

end A323956.P9434673241971309788

namespace A323956

/-- `(A004736(n+1)-1)*round(sqrt(2*n+1))+1` -/
def P9434673241971309788.Spec : Prop :=
  ∀ n, P9434673241971309788.a n = A323956 (n + 1)

end A323956

/-! ## A323956.P11946953431466852417

`(C(comp[∑[n]]-n, 2)-(n+1))*A002024(n+1)+1`
-/

namespace A323956.P11946953431466852417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) * A002024 (n + 1) + 1

end

end A323956.P11946953431466852417

namespace A323956

/-- `(C(comp[∑[n]]-n, 2)-(n+1))*A002024(n+1)+1` -/
def P11946953431466852417.Spec : Prop :=
  ∀ n, P11946953431466852417.a n = A323956 (n + 1)

end A323956

/-! ## A323956.P9477739614081299390

`A091435(n)+A004736(n+1)`
-/

namespace A323956.P9477739614081299390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n + A004736 (n + 1)

end

end A323956.P9477739614081299390

namespace A323956

/-- `A091435(n)+A004736(n+1)` -/
def P9477739614081299390.Spec : Prop :=
  ∀ n, P9477739614081299390.a n = A323956 (n + 1)

end A323956

/-! ## A323956.P4929624152306478838

`A025581(n)+A091435(n)+1`
-/

namespace A323956.P4929624152306478838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A091435 n + 1)

end

end A323956.P4929624152306478838

namespace A323956

/-- `A025581(n)+A091435(n)+1` -/
def P4929624152306478838.Spec : Prop :=
  ∀ n, P4929624152306478838.a n = A323956 (n + 1)

theorem P4929624152306478838.correct : P4929624152306478838.Spec := by
  intro n
  simp only [A323956, Nat.add_sub_cancel, A323956.P4929624152306478838.a, A323956.P11197926771404492179.a, A025581, A025581.P16112744757063613497.a, A091435, A091435.P4633070448187892032.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323956

/-! ## A323956.P18327400461361059377

`A095832(n+1)+A077028(n)`
-/

namespace A323956.P18327400461361059377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1) + A077028 n

end

end A323956.P18327400461361059377

namespace A323956

/-- `A095832(n+1)+A077028(n)` -/
def P18327400461361059377.Spec : Prop :=
  ∀ n, P18327400461361059377.a n = A323956 (n + 1)

theorem P18327400461361059377.correct : P18327400461361059377.Spec := by
  intro n
  simp only [A323956, Nat.add_sub_cancel, A323956.P18327400461361059377.a, A323956.P11197926771404492179.a, A077028, A077028.P18404356772921913843.a, A095832, A095832.P7706533872419013118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323956

/-! ## A323956.P18389091431773048163

`A095833(n+1)-A003056(n)`
-/

namespace A323956.P18389091431773048163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095833 (n + 1) - A003056 n

end

end A323956.P18389091431773048163

namespace A323956

/-- `A095833(n+1)-A003056(n)` -/
def P18389091431773048163.Spec : Prop :=
  ∀ n, P18389091431773048163.a n = A323956 (n + 1)

end A323956

/-! ## A323956.P12835403629199218610

`A128140(n+1)-A002262(n)`
-/

namespace A323956.P12835403629199218610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128140 (n + 1) - A002262 n

end

end A323956.P12835403629199218610

namespace A323956

/-- `A128140(n+1)-A002262(n)` -/
def P12835403629199218610.Spec : Prop :=
  ∀ n, P12835403629199218610.a n = A323956 (n + 1)

end A323956

/-! ## A323956.P3607044526844020877

`A185877(n+1)-A004247(n)`
-/

namespace A323956.P3607044526844020877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185877 (n + 1) - A004247 n

end

end A323956.P3607044526844020877

namespace A323956

/-- `A185877(n+1)-A004247(n)` -/
def P3607044526844020877.Spec : Prop :=
  ∀ n, P3607044526844020877.a n = A323956 (n + 1)

theorem P3607044526844020877.correct : P3607044526844020877.Spec := by
  intro n
  simp only [A323956, Nat.add_sub_cancel, A323956.P3607044526844020877.a, A323956.P11197926771404492179.a, A004247, A004247.P2751605162508615148.a, A185877, A185877.P15326369741140922360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323956

/-! ## A323956.P6797106328708198251

`A104587(n)+1-A271668(n)`
-/

namespace A323956.P6797106328708198251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104587 n + (1 - A271668 n)

end

end A323956.P6797106328708198251

namespace A323956

/-- `A104587(n)+1-A271668(n)` -/
def P6797106328708198251.Spec : Prop :=
  ∀ n, P6797106328708198251.a n = A323956 (n + 1)

end A323956

/-! ## A323956.P1337893741727658343

`A131784(n+1)-A294317(n)`
-/

namespace A323956.P1337893741727658343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131784 (n + 1) - A294317 n

end

end A323956.P1337893741727658343

namespace A323956

/-- `A131784(n+1)-A294317(n)` -/
def P1337893741727658343.Spec : Prop :=
  ∀ n, P1337893741727658343.a n = A323956 (n + 1)

theorem P1337893741727658343.correct : P1337893741727658343.Spec := by
  intro n
  simp only [A323956, Nat.add_sub_cancel, A323956.P1337893741727658343.a, A323956.P11197926771404492179.a, A131784, A131784.P3551853482120838731.a, A294317, A294317.P6597418737474744620.a, A063929, A063929.P16215468638992499542.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323956

/-! ## A323956.P9322942488691691337

`A095832(n+1)+A004247(n)+1`
-/

namespace A323956.P9322942488691691337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1) + (A004247 n + 1)

end

end A323956.P9322942488691691337

namespace A323956

/-- `A095832(n+1)+A004247(n)+1` -/
def P9322942488691691337.Spec : Prop :=
  ∀ n, P9322942488691691337.a n = A323956 (n + 1)

theorem P9322942488691691337.correct : P9322942488691691337.Spec := by
  intro n
  simp only [A323956, Nat.add_sub_cancel, A323956.P9322942488691691337.a, A323956.P11197926771404492179.a, A004247, A004247.P2751605162508615148.a, A095832, A095832.P7706533872419013118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323956

/-! ## A323956.P13841178451039558091

`A063657(n+1)-A154614(n+1)`
-/

namespace A323956.P13841178451039558091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063657 (n + 1) - A154614 (n + 1)

end

end A323956.P13841178451039558091

namespace A323956

/-- `A063657(n+1)-A154614(n+1)` -/
def P13841178451039558091.Spec : Prop :=
  ∀ n, P13841178451039558091.a n = A323956 (n + 1)

end A323956

/-! ## A323956.P12318077433265992748

`A185877(n+1)+1-A077028(n)`
-/

namespace A323956.P12318077433265992748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185877 (n + 1) + (1 - A077028 n)

end

end A323956.P12318077433265992748

namespace A323956

/-- `A185877(n+1)+1-A077028(n)` -/
def P12318077433265992748.Spec : Prop :=
  ∀ n, P12318077433265992748.a n = A323956 (n + 1)

theorem P12318077433265992748.correct : P12318077433265992748.Spec := by
  intro n
  simp only [A323956, Nat.add_sub_cancel, A323956.P12318077433265992748.a, A323956.P11197926771404492179.a, A077028, A077028.P18404356772921913843.a, A185877, A185877.P15326369741140922360.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A323956

/-!
# A323957: Number of defective (binary) heaps on n elements with exactly one defect.

The programs for A323957, there is no canonical definition to state claims against.
-/

/-! ## A323957.P3294419232528296606

`A057427(n)*A306343(A133263(n))`
-/

namespace A323957.P3294419232528296606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306343 (A133263 n).toNat

end

end A323957.P3294419232528296606

/-! ## A323957.P7713937419588229809

`and(A057428(n), A306343(A000217(n)+2))`
-/

namespace A323957.P7713937419588229809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A306343 (A000217 n + 2).toNat)

end

end A323957.P7713937419588229809

/-! ## A323957.P2866571577904440534

`A306343(A000096(n))-A000007(n)`
-/

namespace A323957.P2866571577904440534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A000096 n).toNat - A000007 n

end

end A323957.P2866571577904440534

/-! ## A323957.P2929086790520812736

`A306343(A000096(n))-A151933(n)`
-/

namespace A323957.P2929086790520812736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A000096 n).toNat - A151933 n

end

end A323957.P2929086790520812736

/-! ## A323957.P15241330141540524492

`A057427(n)*A306343(A000096(n))`
-/

namespace A323957.P15241330141540524492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306343 (A000096 n).toNat

end

end A323957.P15241330141540524492

/-! ## A323957.P6053729835866557054

`lcm(A294619(n), A306343(A000096(n)))`
-/

namespace A323957.P6053729835866557054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A294619 n) (A306343 (A000096 n).toNat)

end

end A323957.P6053729835866557054

/-! ## A323957.P15375394164302857629

`A294619(n²)*A306343(A000096(n))`
-/

namespace A323957.P15375394164302857629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (n ^ 2) * A306343 (A000096 n).toNat

end

end A323957.P15375394164302857629

/-! ## A323957.P16420191863949292708

`A306343(A055998(n)-n)-A000007(n)`
-/

namespace A323957.P16420191863949292708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A055998 n - (n : ℤ)).toNat - A000007 n

end

end A323957.P16420191863949292708

/-! ## A323957.P270848633389734434

`A306343(A055998(n)-n)-A151933(n)`
-/

namespace A323957.P270848633389734434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A055998 n - (n : ℤ)).toNat - A151933 n

end

end A323957.P270848633389734434

/-! ## A323957.P2905141462082823593

`A057427(n)*A306343(A055998(n)-n)`
-/

namespace A323957.P2905141462082823593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306343 (A055998 n - (n : ℤ)).toNat

end

end A323957.P2905141462082823593

/-!
# A323958: Number of defective (binary) heaps on n elements with exactly two defects.

The programs for A323958, there is no canonical definition to state claims against.
-/

/-! ## A323958.P10510531249980785500

`A306343(A034856(n+1))-floor(acot(n))`
-/

namespace A323958.P10510531249980785500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A034856 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A323958.P10510531249980785500

/-! ## A323958.P11357753626625594700

`A306343(A034856(n+1))-A000007(n)`
-/

namespace A323958.P11357753626625594700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A034856 (n + 1)).toNat - A000007 n

end

end A323958.P11357753626625594700

/-! ## A323958.P7666015793561851164

`A306343(A055998(n)+1)-A000007(n)`
-/

namespace A323958.P7666015793561851164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A055998 n + 1).toNat - A000007 n

end

end A323958.P7666015793561851164

/-! ## A323958.P7605498277133233219

`A306343(A034856(n+1))-A151933(n)`
-/

namespace A323958.P7605498277133233219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A034856 (n + 1)).toNat - A151933 n

end

end A323958.P7605498277133233219

/-! ## A323958.P8590874510034594010

`A306343(A055998(n)+1)-A151933(n)`
-/

namespace A323958.P8590874510034594010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A055998 n + 1).toNat - A151933 n

end

end A323958.P8590874510034594010

/-! ## A323958.P12937781101950006733

`A057427(n)*A306343(A034856(n+1))`
-/

namespace A323958.P12937781101950006733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306343 (A034856 (n + 1)).toNat

end

end A323958.P12937781101950006733

/-! ## A323958.P1618989949050076363

`A057427(n)*A306343(A055998(n)+1)`
-/

namespace A323958.P1618989949050076363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306343 (A055998 n + 1).toNat

end

end A323958.P1618989949050076363

/-! ## A323958.P14780631214259011827

`A057427(n)*A306343(A052905(n)-n)`
-/

namespace A323958.P14780631214259011827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306343 (A052905 n - (n : ℤ)).toNat

end

end A323958.P14780631214259011827

/-! ## A323958.P11122930460650955877

`A178334(n)*A306343(A052905(n)-n)`
-/

namespace A323958.P11122930460650955877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A306343 (A052905 n - (n : ℤ)).toNat

end

end A323958.P11122930460650955877

/-! ## A323958.P14446592241000611824

`and(A057428(n), A306343(A052905(n)-n))`
-/

namespace A323958.P14446592241000611824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A306343 (A052905 n - (n : ℤ)).toNat)

end

end A323958.P14446592241000611824

/-!
# A323959: Number of defective (binary) heaps on n elements with exactly three defects.

The programs for A323959, there is no canonical definition to state claims against.
-/

/-! ## A323959.P2782948485081737562

`A306343(A055998(n+1))-A000007(n)`
-/

namespace A323959.P2782948485081737562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A055998 (n + 1)).toNat - A000007 n

end

end A323959.P2782948485081737562

/-! ## A323959.P4875353751095191314

`A306343(A055998(n+1))-A151933(n)`
-/

namespace A323959.P4875353751095191314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A055998 (n + 1)).toNat - A151933 n

end

end A323959.P4875353751095191314

/-! ## A323959.P4641549520891541346

`A057427(n)*A306343(A055998(n+1))`
-/

namespace A323959.P4641549520891541346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306343 (A055998 (n + 1)).toNat

end

end A323959.P4641549520891541346

/-! ## A323959.P11549995663015359583

`A057427(n)*A306343(A052905(n)+2)`
-/

namespace A323959.P11549995663015359583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306343 (A052905 n + 2).toNat

end

end A323959.P11549995663015359583

/-! ## A323959.P3587281672784917604

`A178334(n)*A306343(A052905(n)+2)`
-/

namespace A323959.P3587281672784917604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A306343 (A052905 n + 2).toNat

end

end A323959.P3587281672784917604

/-! ## A323959.P11467547915383882004

`and(A057428(n), A306343(A052905(n)+2))`
-/

namespace A323959.P11467547915383882004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A306343 (A052905 n + 2).toNat)

end

end A323959.P11467547915383882004

/-! ## A323959.P16198756947910622949

`A306343(A055998(n+1))%A042877(n)²`
-/

namespace A323959.P16198756947910622949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306343 (A055998 (n + 1)).toNat) (A042877 n ^ 2)

end

end A323959.P16198756947910622949

/-! ## A323959.P2106202140626835174

`A306343(A055998(n+1))*A323022(2*n+1)`
-/

namespace A323959.P2106202140626835174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A055998 (n + 1)).toNat * A323022 (2 * n + 1)

end

end A323959.P2106202140626835174

/-! ## A323959.P6299125687028375251

`A306343(A055998(n+1))-A008683(A008574(n))`
-/

namespace A323959.P6299125687028375251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (A055998 (n + 1)).toNat - A008683 (A008574 n).toNat

end

end A323959.P6299125687028375251

/-! ## A323959.P1358338767371188179

`A001222(A008578(n+1))*A306343(A055998(n+1))`
-/

namespace A323959.P1358338767371188179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008578 (n + 1)).toNat * A306343 (A055998 (n + 1)).toNat

end

end A323959.P1358338767371188179

/-!
# A323960: Number of defective (binary) heaps on n elements with exactly four defects.

The programs for A323960, there is no canonical definition to state claims against.
-/

/-! ## A323960.P10330717632266643149

`A306343(eq[4, A004736(n+1)])-A000038(n)`
-/

namespace A323960.P10330717632266643149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - A000038 n

end

end A323960.P10330717632266643149

/-! ## A323960.P5658027297967795506

`A057427(n)*A306343(eq[4, A004736(n+1)])`
-/

namespace A323960.P5658027297967795506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323960.P5658027297967795506

/-! ## A323960.P758837652553844610

`A011620(n²)*A306343(eq[4, A004736(n+1)])`
-/

namespace A323960.P758837652553844610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011620 (n ^ 2) * A306343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323960.P758837652553844610

/-! ## A323960.P9359350612439851291

`A057428(n)²*A306343(eq[4, A004736(n+1)])`
-/

namespace A323960.P9359350612439851291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A306343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323960.P9359350612439851291

/-! ## A323960.P18341909716339901526

`A306343(eq[4, A004736(n+1)])%A000770(n+6)²`
-/

namespace A323960.P18341909716339901526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A000770 (n + 6) ^ 2)

end

end A323960.P18341909716339901526

/-!
# A323961: Number of defective (binary) heaps on n elements with exactly five defects.

The programs for A323961, there is no canonical definition to state claims against.
-/

/-! ## A323961.P9118606548076657134

`-((floor(acot(n))-1)*A306343(A052905(n+2)))`
-/

namespace A323961.P9118606548076657134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1) * A306343 (A052905 (n + 2)).toNat)

end

end A323961.P9118606548076657134

/-! ## A323961.P3401820801028484806

`A057427(n)*A306343(A052905(n+2))`
-/

namespace A323961.P3401820801028484806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306343 (A052905 (n + 2)).toNat

end

end A323961.P3401820801028484806

/-! ## A323961.P16678203434050891969

`A178334(n)*A306343(A052905(n+2))`
-/

namespace A323961.P16678203434050891969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A306343 (A052905 (n + 2)).toNat

end

end A323961.P16678203434050891969

/-! ## A323961.P15328972481878844611

`lcm(A178771(n), A306343(A052905(n+2)))`
-/

namespace A323961.P15328972481878844611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178771 n) (A306343 (A052905 (n + 2)).toNat)

end

end A323961.P15328972481878844611

/-! ## A323961.P5107304006147762469

`and(A057428(n), A306343(A052905(n+2)))`
-/

namespace A323961.P5107304006147762469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A306343 (A052905 (n + 2)).toNat)

end

end A323961.P5107304006147762469

/-! ## A323961.P4469745883474244011

`A306343(A052905(n+2))%A001079(n)²`
-/

namespace A323961.P4469745883474244011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306343 (A052905 (n + 2)).toNat) (A001079 n ^ 2)

end

end A323961.P4469745883474244011

/-!
# A323962: Number of defective (binary) heaps on n elements with exactly six defects.

The programs for A323962, there is no canonical definition to state claims against.
-/

/-! ## A323962.P1556938626844056606

`A057427(n)*A306343(eq[6, A004736(n+1)])`
-/

namespace A323962.P1556938626844056606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323962.P1556938626844056606

/-! ## A323962.P17680097755621839597

`A306343(Δ[A026054(n+3)])%A057651(3*n)`
-/

namespace A323962.P17680097755621839597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306343 (f1 (n + 1) - f1 n).toNat) (A057651 (3 * n))

end

end A323962.P17680097755621839597

/-!
# A323966: Number of defective (binary) heaps on n elements with exactly ten defects.

The programs for A323966, there is no canonical definition to state claims against.
-/

/-! ## A323966.P8742388366796827878

`and(-n, A306343(eq[10, A004736(n+1)]))`
-/

namespace A323966.P8742388366796827878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (A306343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A323966.P8742388366796827878

/-! ## A323966.P18272481678477281346

`A178334(n)*A306343(eq[10, A004736(n+1)])`
-/

namespace A323966.P18272481678477281346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A306343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323966.P18272481678477281346

/-!
# A323967: Number of 3 X n integer matrices (m_{i,j}) such that m_{1,1}=0, m_{3,n}=2, and all rows, columns, and falling diagonals are (weakly) monotonic without jumps of 2.

The programs for A323967, the canonical program `A323967.P14868504444010200184` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323967 has offset 0).

The definition of A323967 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323967.P14868504444010200184

`ogf((1-6x+18x^2-17x^3+3x^4+7x^5-5x^6+x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323967

/-- `ogf((1-6x+18x^2-17x^3+3x^4+7x^5-5x^6+x^7)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P14868504444010200184.Spec : Prop :=
  ∀ n, P14868504444010200184.a n = A323967 n

theorem P14868504444010200184.correct : P14868504444010200184.Spec := by
  intro n
  simp only [A323967]

end A323967

/-! ## A323967.P16411371185259920023

`A323846(∑[n+1]+3)`
-/

namespace A323967.P16411371185259920023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A323967.P16411371185259920023

namespace A323967

/-- `A323846(∑[n+1]+3)` -/
def P16411371185259920023.Spec : Prop :=
  ∀ n, P16411371185259920023.a n = A323967 n

end A323967

/-! ## A323967.P10476083555331201957

`floor(A323846(A034856(n+1))+acot(n))`
-/

namespace A323967.P10476083555331201957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323846 (A034856 (n + 1)).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A323967.P10476083555331201957

namespace A323967

/-- `floor(A323846(A034856(n+1))+acot(n))` -/
def P10476083555331201957.Spec : Prop :=
  ∀ n, P10476083555331201957.a n = A323967 n

end A323967

/-! ## A323967.P13869052409296755451

`A323846(A034856(n+1))+A036987(2*n)`
-/

namespace A323967.P13869052409296755451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (A034856 (n + 1)).toNat + A036987 (2 * n)

end

end A323967.P13869052409296755451

namespace A323967

/-- `A323846(A034856(n+1))+A036987(2*n)` -/
def P13869052409296755451.Spec : Prop :=
  ∀ n, P13869052409296755451.a n = A323967 n

end A323967

/-! ## A323967.P17717938175813687741

`A323846(A000217(n+1)+3)^A178334(n)`
-/

namespace A323967.P17717938175813687741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323846 (A000217 (n + 1) + 3).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A323967.P17717938175813687741

namespace A323967

/-- `A323846(A000217(n+1)+3)^A178334(n)` -/
def P17717938175813687741.Spec : Prop :=
  ∀ n, P17717938175813687741.a n = (A323967 n : ℚ)

end A323967

/-! ## A323967.P6279927216868504060

`A323846(A000217(n+1)+3)^A057428(n)²`
-/

namespace A323967.P6279927216868504060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323846 (A000217 (n + 1) + 3).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A323967.P6279927216868504060

namespace A323967

/-- `A323846(A000217(n+1)+3)^A057428(n)²` -/
def P6279927216868504060.Spec : Prop :=
  ∀ n, P6279927216868504060.a n = (A323967 n : ℚ)

end A323967

/-! ## A323967.P15129516542835140703

`A323846(A000217(n+1)+3)%A323968(n+1)`
-/

namespace A323967.P15129516542835140703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323846 (A000217 (n + 1) + 3).toNat) (A323968 (n + 1))

end

end A323967.P15129516542835140703

namespace A323967

/-- `A323846(A000217(n+1)+3)%A323968(n+1)` -/
def P15129516542835140703.Spec : Prop :=
  ∀ n, P15129516542835140703.a n = A323967 n

end A323967

/-!
# A323968: Number of 4 X n integer matrices (m_{i,j}) such that m_{1,1}=0, m_{4,n}=2, and all rows, columns, and falling diagonals are (weakly) monotonic without jumps of 2.

The programs for A323968, there is no canonical definition to state claims against.
-/

/-! ## A323968.P10918655803222943365

`record[A323846(A000217(n)+4)]`
-/

namespace A323968.P10918655803222943365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (A000217 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323968.P10918655803222943365

/-! ## A323968.P11200180123860218490

`A323846(A340266(n+1)+2)`
-/

namespace A323968.P11200180123860218490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (A340266 (n + 1) + 2).toNat

end

end A323968.P11200180123860218490

/-! ## A323968.P15051340945539673987

`A323846(A027379(n)+3+n)`
-/

namespace A323968.P15051340945539673987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (A027379 n + 3 + (n : ℤ)).toNat

end

end A323968.P15051340945539673987

/-! ## A323968.P3754075729955035630

`A323846(A167614(n+1)+A057427(n))`
-/

namespace A323968.P3754075729955035630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (A167614 (n + 1) + A057427 n).toNat

end

end A323968.P3754075729955035630

/-! ## A323968.P2336317709534901340

`A323846(A167614(n+1)-A057428(n))`
-/

namespace A323968.P2336317709534901340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (A167614 (n + 1) - A057428 n).toNat

end

end A323968.P2336317709534901340

/-! ## A323968.P2435671768479375299

`A323846(A167614(n+1)+A057428(n)²)`
-/

namespace A323968.P2435671768479375299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (A167614 (n + 1) + A057428 n ^ 2).toNat

end

end A323968.P2435671768479375299

/-!
# A323969: Number of 5 X n integer matrices (m_{i,j}) such that m_{1,1}=0, m_{5,n}=2, and all rows, columns, and falling diagonals are (weakly) monotonic without jumps of 2.

The programs for A323969, there is no canonical definition to state claims against.
-/

/-! ## A323969.P12545302854326806863

`A323846(∑[n+3]+n+3)`
-/

namespace A323969.P12545302854326806863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A323969.P12545302854326806863

/-! ## A323969.P10067621383186185957

`abs(1-A323846(C(n+4, 2)+n))+1`
-/

namespace A323969.P10067621383186185957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A323846 (Nat.choose (n + 4) 2 + n)| + 1

end

end A323969.P10067621383186185957

/-! ## A323969.P10178652074833162800

`record[gcd(A071919(n+4), A323846(n+1))]`
-/

namespace A323969.P10178652074833162800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071919 (n + 4)) (A323846 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323969.P10178652074833162800

/-! ## A323969.P15564649726208322881

`A323846(A155212(n)+4)%A214829(3*n+4)`
-/

namespace A323969.P15564649726208322881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323846 (A155212 n + 4).toNat) (A214829 (3 * n + 4))

end

end A323969.P15564649726208322881

/-!
# A323970: Number of 6 X n integer matrices (m_{i,j}) such that m_{1,1}=0, m_{6,n}=2, and all rows, columns, and falling diagonals are (weakly) monotonic without jumps of 2.

The programs for A323970, there is no canonical definition to state claims against.
-/

/-! ## A323970.P6553993417805157692

`A323846(C(A057427(n)+4+n, 2)+n)`
-/

namespace A323970.P6553993417805157692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (Nat.choose (A057427 n + 4 + (n : ℤ)).toNat 2 + n)

end

end A323970.P6553993417805157692

/-! ## A323970.P2349610059517329468

`A323846(eq[4, A249822(n+1)])`
-/

namespace A323970.P2349610059517329468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A323970.P2349610059517329468

/-!
# A323971: Number of 7 X n integer matrices (m_{i,j}) such that m_{1,1}=0, m_{7,n}=2, and all rows, columns, and falling diagonals are (weakly) monotonic without jumps of 2.

The programs for A323971, there is no canonical definition to state claims against.
-/

/-! ## A323971.P7528924948929001587

`A323846(A167487(n+4)%A305123(n+8))`
-/

namespace A323971.P7528924948929001587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (Int.tmod (A167487 (n + 4)) (A305123 (n + 8))).toNat

end

end A323971.P7528924948929001587

/-! ## A323971.P14224819132011878997

`A323846(eq[6, A004736(n+1)]%A120354(n))`
-/

namespace A323971.P14224819132011878997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A120354 n)).toNat

end

end A323971.P14224819132011878997

/-! ## A323971.P2571897201792175233

`A323846((A000217(n+6)-6)%A108570(n+1))`
-/

namespace A323971.P2571897201792175233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323846 (Int.tmod (A000217 (n + 6) - 6) (A108570 (n + 1))).toNat

end

end A323971.P2571897201792175233

/-!
# A323974: Number of 10 X n integer matrices (m_{i,j}) such that m_{1,1}=0, m_{10,n}=2, and all rows, columns, and falling diagonals are (weakly) monotonic without jumps of 2.

The programs for A323974, there is no canonical definition to state claims against.
-/

/-! ## A323974.P14783911278426874360

`gcd(A151878(n), A323846(A056000(n+5)+1))`
-/

namespace A323974.P14783911278426874360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A323846 (A056000 (n + 5) + 1).toNat)

end

end A323974.P14783911278426874360

/-!
# A323978: Expansion of determinant of 24 X 24 matrix M_{u,v} = q^(maj(u*v^-1)) where u, v in S_4 and maj = MacMahon's major index (cf. A008302).

The programs for A323978, there is no canonical definition to state claims against.
-/

/-! ## A323978.P543223109893637465

`A122201(A280370(n))*A141125(n)`
-/

namespace A323978.P543223109893637465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 (A280370 n).toNat * A141125 n

end

end A323978.P543223109893637465

/-!
# A323988: a(n) = 2^(n - 1) + binomial(n, floor(n/2))*(n + 1)/2.

The programs for A323988, the canonical program `A323988.P18098786830316483337` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323988 has offset 0).

The definition of A323988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323988.P18098786830316483337

`2^(n-1)+C(n, floor(n/2))*(n+1)/2`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A323988

/-- `2^(n-1)+C(n, floor(n/2))*(n+1)/2` -/
def P18098786830316483337.Spec : Prop :=
  ∀ n, P18098786830316483337.a n = (A323988 n : ℚ)

end A323988

/-! ## A323988.P12818980749952273049

`A191386(n+2)`
-/

namespace A323988.P12818980749952273049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 (n + 2)

end

end A323988.P12818980749952273049

namespace A323988

/-- `A191386(n+2)` -/
def P12818980749952273049.Spec : Prop :=
  ∀ n, P12818980749952273049.a n = A323988 n

end A323988

/-! ## A323988.P17368384529317276731

`record[A191386(abs(2-n))]`
-/

namespace A323988.P17368384529317276731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323988.P17368384529317276731

namespace A323988

/-- `record[A191386(abs(2-n))]` -/
def P17368384529317276731.Spec : Prop :=
  ∀ n, P17368384529317276731.a n = A323988 n

end A323988

/-! ## A323988.P7201155864565726376

`A107373(n+1)+2^n`
-/

namespace A323988.P7201155864565726376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + (2 ^ n : ℤ)

end

end A323988.P7201155864565726376

namespace A323988

/-- `A107373(n+1)+2^n` -/
def P7201155864565726376.Spec : Prop :=
  ∀ n, P7201155864565726376.a n = A323988 n

end A323988

/-! ## A323988.P4595770791059397052

`record[A191386(n)^ceil(sin(n)²)]`
-/

namespace A323988.P4595770791059397052
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191386 n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323988.P4595770791059397052

namespace A323988

/-- `record[A191386(n)^ceil(sin(n)²)]` -/
def P4595770791059397052.Spec : Prop :=
  ∀ n, P4595770791059397052.a n = (A323988 n : ℚ)

end A323988

/-! ## A323988.P12033353516738991968

`A014314(n)+A001405(n)`
-/

namespace A323988.P12033353516738991968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 n + A001405 n

end

end A323988.P12033353516738991968

namespace A323988

/-- `A014314(n)+A001405(n)` -/
def P12033353516738991968.Spec : Prop :=
  ∀ n, P12033353516738991968.a n = A323988 n

end A323988

/-! ## A323988.P2545375521794848740

`A100071(n)+A027306(n)`
-/

namespace A323988.P2545375521794848740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 n + A027306 n

end

end A323988.P2545375521794848740

namespace A323988

/-- `A100071(n)+A027306(n)` -/
def P2545375521794848740.Spec : Prop :=
  ∀ n, P2545375521794848740.a n = A323988 n

end A323988

/-! ## A323988.P2283990904418289733

`A294175(n)+A189911(n)`
-/

namespace A323988.P2283990904418289733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294175 n + A189911 n

end

end A323988.P2283990904418289733

namespace A323988

/-- `A294175(n)+A189911(n)` -/
def P2283990904418289733.Spec : Prop :=
  ∀ n, P2283990904418289733.a n = A323988 n

end A323988

/-! ## A323988.P16545086439488996034

`A014314(n)+A014495(n)+1`
-/

namespace A323988.P16545086439488996034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 n + (A014495 n + 1)

end

end A323988.P16545086439488996034

namespace A323988

/-- `A014314(n)+A014495(n)+1` -/
def P16545086439488996034.Spec : Prop :=
  ∀ n, P16545086439488996034.a n = A323988 n

end A323988

/-! ## A323988.P5636097562525330676

`A210736(n+1)+A014314(n)`
-/

namespace A323988.P5636097562525330676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) + A014314 n

end

end A323988.P5636097562525330676

namespace A323988

/-- `A210736(n+1)+A014314(n)` -/
def P5636097562525330676.Spec : Prop :=
  ∀ n, P5636097562525330676.a n = A323988 n

end A323988

/-! ## A323988.P1271612007451437508

`A099325(n)-A100071(n)`
-/

namespace A323988.P1271612007451437508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099325 n - A100071 n

end

end A323988.P1271612007451437508

namespace A323988

/-- `A099325(n)-A100071(n)` -/
def P1271612007451437508.Spec : Prop :=
  ∀ n, P1271612007451437508.a n = A323988 n

end A323988

/-! ## A323988.P6270677428418752268

`A056040(n+1)*A152271(n)-A107373(n+1)`
-/

namespace A323988.P6270677428418752268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n + 1) * A152271 n - A107373 (n + 1)

end

end A323988.P6270677428418752268

namespace A323988

/-- `A056040(n+1)*A152271(n)-A107373(n+1)` -/
def P6270677428418752268.Spec : Prop :=
  ∀ n, P6270677428418752268.a n = A323988 n

end A323988

/-! ## A323988.P4187872546067931931

`2^n+abs(A194590(n))`
-/

namespace A323988.P4187872546067931931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + |A194590 n|

end

end A323988.P4187872546067931931

namespace A323988

/-- `2^n+abs(A194590(n))` -/
def P4187872546067931931.Spec : Prop :=
  ∀ n, P4187872546067931931.a n = A323988 n

end A323988

/-! ## A323988.P1356652237186847724

`A001792(n)-A130783(n)`
-/

namespace A323988.P1356652237186847724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A130783 n

end

end A323988.P1356652237186847724

namespace A323988

/-- `A001792(n)-A130783(n)` -/
def P1356652237186847724.Spec : Prop :=
  ∀ n, P1356652237186847724.a n = A323988 n

end A323988

/-! ## A323988.P5980630333530896246

`A099326(n)-A230137(n)`
-/

namespace A323988.P5980630333530896246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099326 n - A230137 n

end

end A323988.P5980630333530896246

namespace A323988

/-- `A099326(n)-A230137(n)` -/
def P5980630333530896246.Spec : Prop :=
  ∀ n, P5980630333530896246.a n = A323988 n

end A323988

/-! ## A323988.P16673527958115907158

`A245560(n)-A206603(n)`
-/

namespace A323988.P16673527958115907158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245560 n - A206603 n

end

end A323988.P16673527958115907158

namespace A323988

/-- `A245560(n)-A206603(n)` -/
def P16673527958115907158.Spec : Prop :=
  ∀ n, P16673527958115907158.a n = A323988 n

end A323988

/-! ## A323988.P4993226896287817079

`A185252(n+1)-2*A185251(n)`
-/

namespace A323988.P4993226896287817079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185252 (n + 1) - 2 * A185251 n

end

end A323988.P4993226896287817079

namespace A323988

/-- `A185252(n+1)-2*A185251(n)` -/
def P4993226896287817079.Spec : Prop :=
  ∀ n, P4993226896287817079.a n = A323988 n

end A323988

/-! ## A323988.P4597819573662928637

`∑{#}[floor(n/2), (n-2*#+1)*C(n, n-#)]`
-/

namespace A323988.P4597819573662928637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n : ℤ) - (2 * k : ℤ) + 1) * (Nat.choose n ((n : ℤ) - (k : ℤ)).toNat : ℤ)

end

end A323988.P4597819573662928637

namespace A323988

/-- `∑{#}[floor(n/2), (n-2*#+1)*C(n, n-#)]` -/
def P4597819573662928637.Spec : Prop :=
  ∀ n, P4597819573662928637.a n = A323988 n

end A323988

/-! ## A323988.P9245656298438826367

`A130265(A194274(n))`
-/

namespace A323988.P9245656298438826367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130265 (A194274 n).toNat

end

end A323988.P9245656298438826367

namespace A323988

/-- `A130265(A194274(n))` -/
def P9245656298438826367.Spec : Prop :=
  ∀ n, P9245656298438826367.a n = A323988 n

end A323988

/-! ## A323988.P4894326983291546960

`A130265(A007590(n+1))`
-/

namespace A323988.P4894326983291546960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130265 (A007590 (n + 1)).toNat

end

end A323988.P4894326983291546960

namespace A323988

/-- `A130265(A007590(n+1))` -/
def P4894326983291546960.Spec : Prop :=
  ∀ n, P4894326983291546960.a n = A323988 n

end A323988

/-!
# A323989: Partial alternating sums modulo 3 of the Kolakoski sequence A000002.

The programs for A323989, the canonical program `A323989.P17465591494244090833` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323989 has offset 1).

The definition of A323989 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323989.P18255974753587632479

`A158251(n+1)%3`
-/

namespace A323989.P18255974753587632479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158251 (n + 1)) 3

end

end A323989.P18255974753587632479

namespace A323989

/-- `A158251(n+1)%3` -/
def P18255974753587632479.Spec : Prop :=
  ∀ n, P18255974753587632479.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P10555577960024987677

`∑[A088570(n+1)]%3`
-/

namespace A323989.P10555577960024987677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A323989.P10555577960024987677

namespace A323989

/-- `∑[A088570(n+1)]%3` -/
def P10555577960024987677.Spec : Prop :=
  ∀ n, P10555577960024987677.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P2634658522732857391

`(A074272(n+1)+3)%3`
-/

namespace A323989.P2634658522732857391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074272 (n + 1) + 3) 3

end

end A323989.P2634658522732857391

namespace A323989

/-- `(A074272(n+1)+3)%3` -/
def P2634658522732857391.Spec : Prop :=
  ∀ n, P2634658522732857391.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P9016714324487538962

`∑[abs(A074290(n+1))+1]%3`
-/

namespace A323989.P9016714324487538962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074290 (n + 1)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A323989.P9016714324487538962

namespace A323989

/-- `∑[abs(A074290(n+1))+1]%3` -/
def P9016714324487538962.Spec : Prop :=
  ∀ n, P9016714324487538962.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P3337606815191020653

`∑[dr(A088570(Δ[n²]-n))]%3`
-/

namespace A323989.P3337606815191020653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A088570 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 3

end

end A323989.P3337606815191020653

namespace A323989

/-- `∑[dr(A088570(Δ[n²]-n))]%3` -/
def P3337606815191020653.Spec : Prop :=
  ∀ n, (P3337606815191020653.a n : ℤ) = A323989 (n + 1)

end A323989

/-! ## A323989.P5885234725174832356

`∑[(n%2+1)*A000002(n+1)]%3`
-/

namespace A323989.P5885234725174832356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A323989.P5885234725174832356

namespace A323989

/-- `∑[(n%2+1)*A000002(n+1)]%3` -/
def P5885234725174832356.Spec : Prop :=
  ∀ n, P5885234725174832356.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P15679933312422211704

`∑[4/gcd(2, n)*A049705(n+1)]%3`
-/

namespace A323989.P15679933312422211704
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (Nat.gcd 2 n : ℚ) * (A049705 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) 3

end

end A323989.P15679933312422211704

namespace A323989

/-- `∑[4/gcd(2, n)*A049705(n+1)]%3` -/
def P15679933312422211704.Spec : Prop :=
  ∀ n, P15679933312422211704.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P16637967254066736836

`A010872(A158251(n+1))`
-/

namespace A323989.P16637967254066736836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A158251 (n + 1)).toNat

end

end A323989.P16637967254066736836

namespace A323989

/-- `A010872(A158251(n+1))` -/
def P16637967254066736836.Spec : Prop :=
  ∀ n, P16637967254066736836.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P11911055429519393023

`A010872(∑[A088570(n+1)])`
-/

namespace A323989.P11911055429519393023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323989.P11911055429519393023

namespace A323989

/-- `A010872(∑[A088570(n+1)])` -/
def P11911055429519393023.Spec : Prop :=
  ∀ n, P11911055429519393023.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P17628143434729052589

`A070176(13-A074272(n+1))`
-/

namespace A323989.P17628143434729052589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (13 - A074272 (n + 1)).toNat

end

end A323989.P17628143434729052589

namespace A323989

/-- `A070176(13-A074272(n+1))` -/
def P17628143434729052589.Spec : Prop :=
  ∀ n, P17628143434729052589.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P903533234092250281

`A054353(A054353(n+1))%3`
-/

namespace A323989.P903533234092250281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054353 (A054353 (n + 1)).toNat) 3

end

end A323989.P903533234092250281

namespace A323989

/-- `A054353(A054353(n+1))%3` -/
def P903533234092250281.Spec : Prop :=
  ∀ n, P903533234092250281.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P12192601283777045709

`A249093(A074272(n+1)+30)`
-/

namespace A323989.P12192601283777045709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (A074272 (n + 1) + 30).toNat

end

end A323989.P12192601283777045709

namespace A323989

/-- `A249093(A074272(n+1)+30)` -/
def P12192601283777045709.Spec : Prop :=
  ∀ n, P12192601283777045709.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P4225552774297376493

`∑[A000002(n+1)*A000034(n)]%3`
-/

namespace A323989.P4225552774297376493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A323989.P4225552774297376493

namespace A323989

/-- `∑[A000002(n+1)*A000034(n)]%3` -/
def P4225552774297376493.Spec : Prop :=
  ∀ n, P4225552774297376493.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P17465591494244090833

`∑[A000079(n+1-A156253(n+1))]%3`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A323989

/-- `∑[A000079(n+1-A156253(n+1))]%3` -/
def P17465591494244090833.Spec : Prop :=
  ∀ n, P17465591494244090833.a n = A323989 (n + 1)

theorem P17465591494244090833.correct : P17465591494244090833.Spec := by
  intro n
  simp only [A323989, Nat.add_sub_cancel]

end A323989

/-! ## A323989.P13684419351221405573

`∑[(A123594(n+3)+1)*A000034(n)]%3`
-/

namespace A323989.P13684419351221405573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123594 (n + 3) + 1) * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A323989.P13684419351221405573

namespace A323989

/-- `∑[(A123594(n+3)+1)*A000034(n)]%3` -/
def P13684419351221405573.Spec : Prop :=
  ∀ n, P13684419351221405573.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P9468831871234149684

`∑[(3-A049705(n+1))*A000034(n)]%3`
-/

namespace A323989.P9468831871234149684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - A049705 (n + 1)) * A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A323989.P9468831871234149684

namespace A323989

/-- `∑[(3-A049705(n+1))*A000034(n)]%3` -/
def P9468831871234149684.Spec : Prop :=
  ∀ n, P9468831871234149684.a n = A323989 (n + 1)

end A323989

/-! ## A323989.P5374350504205579476

`∑[A000079((n+1)%A156253(n+1))]%3`
-/

namespace A323989.P5374350504205579476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (n + 1 : ℤ) (A156253 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3

end

end A323989.P5374350504205579476

namespace A323989

/-- `∑[A000079((n+1)%A156253(n+1))]%3` -/
def P5374350504205579476.Spec : Prop :=
  ∀ n, P5374350504205579476.a n = A323989 (n + 1)

end A323989

/-!
# A323993: Numerators of central difference coefficients M_{5}^(2n+1).

The programs for A323993, there is no canonical definition to state claims against.
-/

/-! ## A323993.P10652020697366027930

`A049690(A135570(n))`
-/

namespace A323993.P10652020697366027930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 (A135570 n).toNat

end

end A323993.P10652020697366027930

/-!
# A323995: Numerators of coefficients for central differences M_{6}^(2*n).

The programs for A323995, there is no canonical definition to state claims against.
-/

/-! ## A323995.P4377075025806380108

`∏{p}[A323997(n+2), #]`
-/

namespace A323995.P4377075025806380108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323997 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A323995.P4377075025806380108

/-! ## A323995.P9503751213996585743

`A007947(A323997(n+2))`
-/

namespace A323995.P9503751213996585743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A323997 (n + 2)).toNat

end

end A323995.P9503751213996585743

/-! ## A323995.P14558330845153769273

`gcd(A028961(n), A323997(n+2))`
-/

namespace A323995.P14558330845153769273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028961 n) (A323997 (n + 2))

end

end A323995.P14558330845153769273

/-! ## A323995.P12932571199524036462

`A323997(n+2)/A000688(2*n+3)`
-/

namespace A323995.P12932571199524036462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323997 (n + 2) : ℚ) / (A000688 (2 * n + 3) : ℚ)

end

end A323995.P12932571199524036462

/-!
# A323997: Numerators of coefficients for central differences M_{5}'^(2*n+1).

The programs for A323997, there is no canonical definition to state claims against.
-/

/-! ## A323997.P12045142653952656596

`xor(1, A323995(n+3))+1`
-/

namespace A323997.P12045142653952656596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A323995 (n + 3)) + 1

end

end A323997.P12045142653952656596

/-! ## A323997.P12313968589732868561

`A323995(n+3)^abs(A299432(n))`
-/

namespace A323997.P12313968589732868561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323995 (n + 3) : ℚ) ^ (|A299432 n| : ℤ)

end

end A323997.P12313968589732868561

/-! ## A323997.P15370936236539607118

`A028961(n)!*A323995(n+3)`
-/

namespace A323997.P15370936236539607118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A028961 n).toNat : ℤ) * A323995 (n + 3)

end

end A323997.P15370936236539607118

/-! ## A323997.P13451880055882107871

`runs[A324024(n)]*A323995(n+3)`
-/

namespace A323997.P13451880055882107871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) * A323995 (n + 3)

end

end A323997.P13451880055882107871

