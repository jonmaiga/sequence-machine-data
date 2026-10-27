import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A338701: Sums of two odd-indexed primes.

The programs for A338701, there is no canonical definition to state claims against.
-/

/-! ## A338701.P7257613953254589971

`A328168(n+1)+A053164(A239076(n))`
-/

namespace A338701.P7257613953254589971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328168 (n + 1) + A053164 (A239076 n).toNat

end

end A338701.P7257613953254589971

/-! ## A338701.P10140359619049886635

`A330959(A266655(n+1))+A000027(3*(n+1))`
-/

namespace A338701.P10140359619049886635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330959 (A266655 (n + 1)).toNat + A000027 (3 * (n + 1))

end

end A338701.P10140359619049886635

/-! ## A338701.P15546312269184445764

`A055641(A060067(n+1))+3*n+4`
-/

namespace A338701.P15546312269184445764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A060067 (n + 1)).toNat + (3 * n + 4 : ℤ)

end

end A338701.P15546312269184445764

/-! ## A338701.P6470301995106631794

`A004198(A208059(n+2))+3*n+4`
-/

namespace A338701.P6470301995106631794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (A208059 (n + 2)).toNat + (3 * n + 4 : ℤ)

end

end A338701.P6470301995106631794

/-! ## A338701.P5635346766806252123

`A046643(A003037(2*n+3))+3*(n+1)`
-/

namespace A338701.P5635346766806252123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046643 (A003037 (2 * n + 3)).toNat + (3 * (n + 1) : ℤ)

end

end A338701.P5635346766806252123

/-!
# A338702: a(n) is the least k such that A060681(k) = n.

The programs for A338702, there is no canonical definition to state claims against.
-/

/-! ## A338702.P5012115615024536211

`A301977(or(2^n, ∏{p}[n+1, C(#%n, #)]))`
-/

namespace A338702.P5012115615024536211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301977 (Nat.lor (2 ^ n) (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p))

end

end A338702.P5012115615024536211

/-! ## A338702.P15795499714397811557

`A302291(A000740(n+1))+n`
-/

namespace A338702.P15795499714397811557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 (A000740 (n + 1)).toNat + (n : ℤ)

end

end A338702.P15795499714397811557

/-! ## A338702.P3129936127972745141

`A302291(A054432(n+1))+n`
-/

namespace A338702.P3129936127972745141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 (A054432 (n + 1)).toNat + (n : ℤ)

end

end A338702.P3129936127972745141

/-! ## A338702.P9675567131351001175

`A302291(A056278(n+1))+n`
-/

namespace A338702.P9675567131351001175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302291 (A056278 (n + 1)).toNat + (n : ℤ)

end

end A338702.P9675567131351001175

/-! ## A338702.P7740693501507843256

`A342241(A349570(n+1))+n`
-/

namespace A338702.P7740693501507843256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342241 (A349570 (n + 1)).toNat + (n : ℤ)

end

end A338702.P7740693501507843256

/-!
# A338703: Sums of two even-indexed primes.

The programs for A338703, there is no canonical definition to state claims against.
-/

/-! ## A338703.P880040509716762636

`eq[A003849(A323092(n)), A218859(n)]`
-/

namespace A338703.P880040509716762636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A323092 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338703.P880040509716762636

/-! ## A338703.P2874149921668702510

`A005835(n+1)-A001222(A057530(n+1))`
-/

namespace A338703.P2874149921668702510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1) - A001222 (A057530 (n + 1)).toNat

end

end A338703.P2874149921668702510

/-! ## A338703.P10800218671193137638

`lt[A060653(A003961(3*n+2)), A060653(3*n+1)]`
-/

namespace A338703.P10800218671193137638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (A003961 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060653 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338703.P10800218671193137638

/-! ## A338703.P9571642712835721549

`record[and(A085581(2*n+5), A085592(3*n+7))]`
-/

namespace A338703.P9571642712835721549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085581 (2 * n + 5)) (A085592 (3 * n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338703.P9571642712835721549

/-! ## A338703.P901710936076220344

`A350694(2*n+1)-A036453(A185133(n)+1)`
-/

namespace A338703.P901710936076220344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350694 (2 * n + 1) - A036453 (A185133 n + 1).toNat

end

end A338703.P901710936076220344

/-!
# A338706: Number of 2-linear trees on n nodes.

The programs for A338706, there is no canonical definition to state claims against.
-/

/-! ## A338706.P2371830792213596462

`∑[A000147(n+1)]`
-/

namespace A338706.P2371830792213596462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338706.P2371830792213596462

/-! ## A338706.P3357738907865260438

`A089867(A286209(n+1))`
-/

namespace A338706.P3357738907865260438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A286209 (n + 1)).toNat

end

end A338706.P3357738907865260438

/-! ## A338706.P497219262267812528

`A365138(A242738(n+1))`
-/

namespace A338706.P497219262267812528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365138 (A242738 (n + 1)).toNat

end

end A338706.P497219262267812528

/-! ## A338706.P16436907162044383456

`A380408(A329324(n+1))`
-/

namespace A338706.P16436907162044383456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380408 (A329324 (n + 1)).toNat

end

end A338706.P16436907162044383456

/-!
# A338707: Number of 3-linear trees on n nodes.

The programs for A338707, there is no canonical definition to state claims against.
-/

/-! ## A338707.P14108091448210108432

`A307230(A357291(n))`
-/

namespace A338707.P14108091448210108432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307230 (A357291 n).toNat

end

end A338707.P14108091448210108432

/-! ## A338707.P6416199834457601240

`A305820(A036597(n+1))`
-/

namespace A338707.P6416199834457601240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 (A036597 (n + 1)).toNat

end

end A338707.P6416199834457601240

/-! ## A338707.P4331020065913762208

`A005206(C(A062399(n), 7))`
-/

namespace A338707.P4331020065913762208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Nat.choose (A062399 n).toNat 7)

end

end A338707.P4331020065913762208

/-! ## A338707.P562283812225070970

`A005206(C(A107085(n+1), 7))`
-/

namespace A338707.P562283812225070970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Nat.choose (A107085 (n + 1)).toNat 7)

end

end A338707.P562283812225070970

/-! ## A338707.P2859979768731623998

`A159708(A343398(n)+A072963(n+1))`
-/

namespace A338707.P2859979768731623998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159708 (A343398 n + A072963 (n + 1)).toNat

end

end A338707.P2859979768731623998

/-!
# A338708: Number of 4-linear trees on n nodes.

The programs for A338708, there is no canonical definition to state claims against.
-/

/-! ## A338708.P10916964810237364262

`A174231(C(n, 9))`
-/

namespace A338708.P10916964810237364262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174231 (Nat.choose n 9)

end

end A338708.P10916964810237364262

/-! ## A338708.P12705409134869575365

`A212994(C(n, 9))`
-/

namespace A338708.P12705409134869575365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212994 (Nat.choose n 9)

end

end A338708.P12705409134869575365

/-! ## A338708.P14347754869216611247

`A111449(∑[C(n, 9)])`
-/

namespace A338708.P14347754869216611247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338708.P14347754869216611247

/-! ## A338708.P7722302947477920939

`A183652(C(n, 9)+1)%(C(n, 9)+1)`
-/

namespace A338708.P7722302947477920939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183652 (Nat.choose n 9 + 1)) (Nat.choose n 9 + 1 : ℤ)

end

end A338708.P7722302947477920939

/-! ## A338708.P16912281079587932139

`A185036(A107684(n))`
-/

namespace A338708.P16912281079587932139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185036 (A107684 n).toNat

end

end A338708.P16912281079587932139

/-!
# A338712: Numbers with all digits equal and from the set {1, 3, 7, 9}.

The programs for A338712, the canonical program `A338712.P12039758569408316340` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338712 has offset 1).

The definition of A338712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338712.P12039758569408316340

`11*a(n-4)-10*a(n-8)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=9, a(4)=11, a(5)=33, a(6)=77, a(7)=99`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A338712

/-- `11*a(n-4)-10*a(n-8)` -/
def P12039758569408316340.Spec : Prop :=
  ∀ n, P12039758569408316340.a n = A338712 (n + 1)

theorem P12039758569408316340.correct : P12039758569408316340.Spec := by
  intro n
  simp only [A338712, Nat.add_sub_cancel]

end A338712

/-! ## A338712.P9730893359391798644

`A010785(∑[A177002(n)])`
-/

namespace A338712.P9730893359391798644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338712.P9730893359391798644

namespace A338712

/-- `A010785(∑[A177002(n)])` -/
def P9730893359391798644.Spec : Prop :=
  ∀ n, P9730893359391798644.a n = A338712 (n + 1)

end A338712

/-! ## A338712.P4371587669343968936

`A010785(∑[dr(A061393(n))])`
-/

namespace A338712.P4371587669343968936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A061393 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338712.P4371587669343968936

namespace A338712

/-- `A010785(∑[dr(A061393(n))])` -/
def P4371587669343968936.Spec : Prop :=
  ∀ n, P4371587669343968936.a n = A338712 (n + 1)

end A338712

/-! ## A338712.P12760715496570829933

`A010785(A028836(n+2)-1)`
-/

namespace A338712.P12760715496570829933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A028836 (n + 2) - 1).toNat

end

end A338712.P12760715496570829933

namespace A338712

/-- `A010785(A028836(n+2)-1)` -/
def P12760715496570829933.Spec : Prop :=
  ∀ n, P12760715496570829933.a n = A338712 (n + 1)

end A338712

/-! ## A338712.P7472969734696580107

`A010785(A246552(char[2*n]+n)+2*n+1)`
-/

namespace A338712.P7472969734696580107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (A246552 ((if ∃ j, f1 j = n then 1 else 0) + n) + (2 * n + 1 : ℤ)).toNat

end

end A338712.P7472969734696580107

namespace A338712

/-- `A010785(A246552(char[2*n]+n)+2*n+1)` -/
def P7472969734696580107.Spec : Prop :=
  ∀ n, P7472969734696580107.a n = A338712 (n + 1)

end A338712

/-! ## A338712.P9501358545715156011

`A010785(∑[A070402(A000982(n))])`
-/

namespace A338712.P9501358545715156011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (A000982 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338712.P9501358545715156011

namespace A338712

/-- `A010785(∑[A070402(A000982(n))])` -/
def P9501358545715156011.Spec : Prop :=
  ∀ n, P9501358545715156011.a n = A338712 (n + 1)

end A338712

/-!
# A338713: Number of numbers of the form i*n with 1 <= i <= n and tau(i*n) = 4.

The programs for A338713, the canonical program `A338713.P15967198908333661238` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338713 has offset 1).

The definition of A338713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338713.P15967198908333661238

`A230980(n)^A024008(A072670(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A338713

/-- `A230980(n)^A024008(A072670(n))` -/
def P15967198908333661238.Spec : Prop :=
  ∀ n, P15967198908333661238.a n = (A338713 (n + 1) : ℚ)

end A338713

/-! ## A338713.P10048487177583729698

`A033270(n+1)^A024008(A072670(n))`
-/

namespace A338713.P10048487177583729698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033270 (n + 1) : ℚ) ^ (A024008 (A072670 n).toNat : ℤ)

end

end A338713.P10048487177583729698

namespace A338713

/-- `A033270(n+1)^A024008(A072670(n))` -/
def P10048487177583729698.Spec : Prop :=
  ∀ n, P10048487177583729698.a n = (A338713 (n + 1) : ℚ)

end A338713

/-! ## A338713.P15958778286203204099

`A048865(n+1)^A024008(A072670(n))`
-/

namespace A338713.P15958778286203204099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048865 (n + 1) : ℚ) ^ (A024008 (A072670 n).toNat : ℤ)

end

end A338713.P15958778286203204099

namespace A338713

/-- `A048865(n+1)^A024008(A072670(n))` -/
def P15958778286203204099.Spec : Prop :=
  ∀ n, P15958778286203204099.a n = (A338713 (n + 1) : ℚ)

end A338713

/-! ## A338713.P14195758249502704299

`floor(A230980(n)^A002321(A038548(n+1)))`
-/

namespace A338713.P14195758249502704299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230980 n : ℚ) ^ (A002321 (A038548 (n + 1)).toNat : ℤ)⌋

end

end A338713.P14195758249502704299

namespace A338713

/-- `floor(A230980(n)^A002321(A038548(n+1)))` -/
def P14195758249502704299.Spec : Prop :=
  ∀ n, P14195758249502704299.a n = A338713 (n + 1)

end A338713

/-! ## A338713.P6030211552215893449

`floor(A048865(n+1)^A002321(A038548(n+1)))`
-/

namespace A338713.P6030211552215893449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048865 (n + 1) : ℚ) ^ (A002321 (A038548 (n + 1)).toNat : ℤ)⌋

end

end A338713.P6030211552215893449

namespace A338713

/-- `floor(A048865(n+1)^A002321(A038548(n+1)))` -/
def P6030211552215893449.Spec : Prop :=
  ∀ n, P6030211552215893449.a n = A338713 (n + 1)

end A338713

/-! ## A338713.P9294970268386505278

`A230980(A166260(n+1))^A007599(A072670(n))`
-/

namespace A338713.P9294970268386505278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230980 (A166260 (n + 1)).toNat : ℚ) ^ (A007599 (A072670 n).toNat : ℤ)

end

end A338713.P9294970268386505278

namespace A338713

/-- `A230980(A166260(n+1))^A007599(A072670(n))` -/
def P9294970268386505278.Spec : Prop :=
  ∀ n, P9294970268386505278.a n = (A338713 (n + 1) : ℚ)

end A338713

/-!
# A338714: Number of numbers of the form i*n with 1 <= i <= n and tau(i*n) = 6.

The programs for A338714, there is no canonical definition to state claims against.
-/

/-! ## A338714.P10783040901380977283

`A326034(A002088(n)/A326297(n+1))`
-/

namespace A338714.P10783040901380977283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326034 (SequenceMachineLib.roundAway ((A002088 n : ℚ) / (A326297 (n + 1) : ℚ))).toNat

end

end A338714.P10783040901380977283

/-! ## A338714.P10822129664645548534

`A336123(A005709(n)*A336128(n))`
-/

namespace A338714.P10822129664645548534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336123 (A005709 n * A336128 n).toNat

end

end A338714.P10822129664645548534

/-! ## A338714.P9706979830335080410

`A072047(A080014(n))/A050330(n+1)`
-/

namespace A338714.P9706979830335080410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072047 (A080014 n).toNat : ℚ) / (A050330 (n + 1) : ℚ)

end

end A338714.P9706979830335080410

/-! ## A338714.P11404259484053742978

`A060128(and(A248436(n+1), A343577(n)))`
-/

namespace A338714.P11404259484053742978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (Int.land (A248436 (n + 1)) (A343577 n)).toNat

end

end A338714.P11404259484053742978

/-! ## A338714.P16353870397029978344

`A302031(or(A008794(n), A222654(n+1)))`
-/

namespace A338714.P16353870397029978344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302031 (Int.lor (A008794 n) (A222654 (n + 1))).toNat

end

end A338714.P16353870397029978344

/-!
# A338715: Smallest prime ending with decimal expansion of n, for n relatively prime to 10.

The programs for A338715, there is no canonical definition to state claims against.
-/

/-! ## A338715.P3628931179806545496

`A070277(A045572(n+1))`
-/

namespace A338715.P3628931179806545496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (A045572 (n + 1)).toNat

end

end A338715.P3628931179806545496

/-! ## A338715.P9563867581064102117

`A070277(sqrt(A028375(n+1)))`
-/

namespace A338715.P9563867581064102117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (SequenceMachineLib.roundAway (Real.sqrt (A028375 (n + 1) : ℝ))).toNat

end

end A338715.P9563867581064102117

/-! ## A338715.P2909262589359975745

`A070277(record[A078268(n+1)])`
-/

namespace A338715.P2909262589359975745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338715.P2909262589359975745

/-! ## A338715.P9906584493510711361

`A070277(record[A132740(n+1)])`
-/

namespace A338715.P9906584493510711361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338715.P9906584493510711361

/-! ## A338715.P12956878382606494927

`A070277(A074837(n+1)/6)`
-/

namespace A338715.P12956878382606494927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (SequenceMachineLib.roundAway ((A074837 (n + 1) : ℚ) / 6)).toNat

end

end A338715.P12956878382606494927

/-! ## A338715.P10574343578310551877

`p?[A070277(n+1)*A267587(n)]`
-/

namespace A338715.P10574343578310551877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (n + 1) * A267587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338715.P10574343578310551877

/-! ## A338715.P17936633886766479474

`A070277(eq[A040499(n), A057237(n+1)])`
-/

namespace A338715.P17936633886766479474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040499 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A338715.P17936633886766479474

/-! ## A338715.P3949444170599750273

`filter[A070277(2*n+1), A011558(#)]`
-/

namespace A338715.P3949444170599750273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A338715.P3949444170599750273

/-! ## A338715.P8941145196476270751

`p?[A106621(A070277(n+1))]`
-/

namespace A338715.P8941145196476270751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A070277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338715.P8941145196476270751

/-! ## A338715.P7217484635417890111

`filter[A070277(n+1), A023532(#)]`
-/

namespace A338715.P7217484635417890111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A338715.P7217484635417890111

/-!
# A338716: Smallest prime ending with decimal expansion of n, for n equal to 5 or relatively prime to 10.

The programs for A338716, there is no canonical definition to state claims against.
-/

/-! ## A338716.P10750404171031059826

`p?[A070277(2*n+1)]`
-/

namespace A338716.P10750404171031059826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338716.P10750404171031059826

/-! ## A338716.P11205198284742645879

`p?[A022998(A070277(n+1))]`
-/

namespace A338716.P11205198284742645879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A070277 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338716.P11205198284742645879

/-! ## A338716.P7706069675425141249

`filter[A070277(n+1), A000035(#)]`
-/

namespace A338716.P7706069675425141249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A338716.P7706069675425141249

/-! ## A338716.P15920733721668153688

`filter[A070277(n+1), A115971(#)]`
-/

namespace A338716.P15920733721668153688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A338716.P15920733721668153688

/-! ## A338716.P14343100961838959103

`filter[A070277(n+1), A252743(#)]`
-/

namespace A338716.P14343100961838959103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252743 (f1 j).toNat = 1) n)

end

end A338716.P14343100961838959103

/-! ## A338716.P10684372955071815583

`filter[A070277(n+1), A259044(#)]`
-/

namespace A338716.P10684372955071815583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A338716.P10684372955071815583

/-! ## A338716.P7862668388771226042

`filter[A070277(n+1), A316829(#)]`
-/

namespace A338716.P7862668388771226042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316829 (f1 j).toNat = 1) n)

end

end A338716.P7862668388771226042

/-! ## A338716.P9411184608073255156

`filter[A070277(n+1), A323239(#)]`
-/

namespace A338716.P9411184608073255156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A338716.P9411184608073255156

/-! ## A338716.P14524319161021729947

`p?[A175126(lcm(2, A070277(n+1)))]`
-/

namespace A338716.P14524319161021729947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.lcm 2 (A070277 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338716.P14524319161021729947

/-!
# A338717: a(n) = sum of 4th powers of entries in row n of Stern's triangle A337277.

The programs for A338717, there is no canonical definition to state claims against.
-/

/-! ## A338717.P481896483266835783

`ogf((-1+7x+2x^2)/(-1+10x+9x^2-2x^3))`
-/

namespace A338717.P481896483266835783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, -2] [1, -10, -9, 2] n

end

end A338717.P481896483266835783

/-!
# A338718: Define b(1)=1 and for n>1, b(n)=n/b(n-1); then a(n) = floor(b(n)).

The programs for A338718, there is no canonical definition to state claims against.
-/

/-! ## A338718.P17000704757501140248

`floor(ratio[n*a(n-2)])` with `a(0)=1, a(1)=1`
-/

namespace A338718.P17000704757501140248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A338718.P17000704757501140248

/-! ## A338718.P16868193317226212702

`floor(Δ[abs(∑[n/a(n-1)])])` with `a(0)=1`
-/

namespace A338718.P16868193317226212702
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A338718.P16868193317226212702

/-! ## A338718.P5027263457755577851

`floor(∏[(n+1)/(n*a(n-1))])` with `a(0)=1`
-/

namespace A338718.P5027263457755577851
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / ((n : ℚ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A338718.P5027263457755577851

/-! ## A338718.P1351631606794401157

`floor(∑[Δ[n/a(n-1)]+1]-n)` with `a(0)=1`
-/

namespace A338718.P1351631606794401157
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (n : ℚ)⌋

end

end A338718.P1351631606794401157

/-! ## A338718.P17539395354683438540

`abs(ceil(∏[(n+1)/(n*a(n-1))]))` with `a(0)=-1, a(1)=2`
-/

namespace A338718.P17539395354683438540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [-1, 2] fun n f1 =>
  (n + 1 : ℚ) / ((n : ℚ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈∏ j ∈ Finset.range (n + 1), f1 j⌉|

end

end A338718.P17539395354683438540

/-! ## A338718.P16746723115953579246

`floor(∑[a(n-2)-a(n-1)/n])+1` with `a(0)=0, a(1)=1`
-/

namespace A338718.P16746723115953579246
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) / (n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + 1

end

end A338718.P16746723115953579246

/-! ## A338718.P765185189007838564

`floor(Δ[a(n-1)-n/(a(n-2)-a(n-1))])` with `a(0)=0, a(1)=1`
-/

namespace A338718.P765185189007838564
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) - (n : ℚ) / (f1 (n - 2) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A338718.P765185189007838564

/-! ## A338718.P10684368373809501090

`floor(ratio[A006882(n)])`
-/

namespace A338718.P10684368373809501090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A338718.P10684368373809501090

/-! ## A338718.P17913722681209577299

`A338719(n+1)-A157928(n)`
-/

namespace A338718.P17913722681209577299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338719 (n + 1) - A157928 n

end

end A338718.P17913722681209577299

/-! ## A338718.P7935230942538587144

`floor(A006882(n+1)/A006882(n))`
-/

namespace A338718.P7935230942538587144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006882 (n + 1) : ℚ) / (A006882 n : ℚ)⌋

end

end A338718.P7935230942538587144

/-!
# A338719: Define b(1)=1 and for n>1, b(n)=n/b(n-1); then a(n) = ceiling(b(n)).

The programs for A338719, the canonical program `A338719.P2919498339619282739` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338719 has offset 1).

The definition of A338719 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338719.P2919498339619282739

`ceil(∏[(n+1)/(n*a(n-1))])` with `a(0)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A338719

/-- `ceil(∏[(n+1)/(n*a(n-1))])` -/
def P2919498339619282739.Spec : Prop :=
  ∀ n, P2919498339619282739.a n = A338719 (n + 1)

theorem P2919498339619282739.correct : P2919498339619282739.Spec := by
  intro n
  simp only [A338719, Nat.add_sub_cancel]

end A338719

/-! ## A338719.P3289593258460577350

`A157928(n)+floor(∏[(n+1)/(n*a(n-1))])` with `a(0)=1`
-/

namespace A338719.P3289593258460577350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / ((n : ℚ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A338719.P3289593258460577350

namespace A338719

/-- `A157928(n)+floor(∏[(n+1)/(n*a(n-1))])` -/
def P3289593258460577350.Spec : Prop :=
  ∀ n, P3289593258460577350.a n = A338719 (n + 1)

end A338719

/-! ## A338719.P1064846536724707950

`ceil(ratio[n*a(n-2)])` with `a(0)=1, a(1)=1`
-/

namespace A338719.P1064846536724707950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A338719.P1064846536724707950

namespace A338719

/-- `ceil(ratio[n*a(n-2)])` -/
def P1064846536724707950.Spec : Prop :=
  ∀ n, P1064846536724707950.a n = A338719 (n + 1)

end A338719

/-! ## A338719.P13665356144881270648

`ceil(ratio[A006882(n)])`
-/

namespace A338719.P13665356144881270648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A338719.P13665356144881270648

namespace A338719

/-- `ceil(ratio[A006882(n)])` -/
def P13665356144881270648.Spec : Prop :=
  ∀ n, P13665356144881270648.a n = A338719 (n + 1)

end A338719

/-! ## A338719.P16553813495348565013

`ceil(A006882(n+1)/A006882(n))`
-/

namespace A338719.P16553813495348565013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006882 (n + 1) : ℚ) / (A006882 n : ℚ)⌉

end

end A338719.P16553813495348565013

namespace A338719

/-- `ceil(A006882(n+1)/A006882(n))` -/
def P16553813495348565013.Spec : Prop :=
  ∀ n, P16553813495348565013.a n = A338719 (n + 1)

end A338719

/-! ## A338719.P15643484533882280540

`ceil(ratio[A172089(A000124(n))])`
-/

namespace A338719.P15643484533882280540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A338719.P15643484533882280540

namespace A338719

/-- `ceil(ratio[A172089(A000124(n))])` -/
def P15643484533882280540.Spec : Prop :=
  ∀ n, P15643484533882280540.a n = A338719 (n + 1)

end A338719

/-! ## A338719.P6836234753747267694

`ceil(ratio[A248809(A161680(n))])`
-/

namespace A338719.P6836234753747267694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A338719.P6836234753747267694

namespace A338719

/-- `ceil(ratio[A248809(A161680(n))])` -/
def P6836234753747267694.Spec : Prop :=
  ∀ n, P6836234753747267694.a n = A338719 (n + 1)

end A338719

/-! ## A338719.P8122872746612503620

`ceil(ratio[A230698(A000217(n))])`
-/

namespace A338719.P8122872746612503620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A338719.P8122872746612503620

namespace A338719

/-- `ceil(ratio[A230698(A000217(n))])` -/
def P8122872746612503620.Spec : Prop :=
  ∀ n, P8122872746612503620.a n = A338719 (n + 1)

end A338719

/-! ## A338719.P7582418198637951753

`floor(A338718(n+1)+atan(n))`
-/

namespace A338719.P7582418198637951753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A338718 (n + 1) : ℝ) + Real.arctan (n : ℝ)⌋

end

end A338719.P7582418198637951753

namespace A338719

/-- `floor(A338718(n+1)+atan(n))` -/
def P7582418198637951753.Spec : Prop :=
  ∀ n, P7582418198637951753.a n = A338719 (n + 1)

end A338719

/-! ## A338719.P18022093774094549386

`A338718(n+1)+A157928(n)`
-/

namespace A338719.P18022093774094549386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338718 (n + 1) + A157928 n

end

end A338719.P18022093774094549386

namespace A338719

/-- `A338718(n+1)+A157928(n)` -/
def P18022093774094549386.Spec : Prop :=
  ∀ n, P18022093774094549386.a n = A338719 (n + 1)

end A338719

/-!
# A338720: Define b(1)=1 and for n>1, b(n)=n/b(n-1); then a(n) = nearest integer to b(n).

The programs for A338720, there is no canonical definition to state claims against.
-/

/-! ## A338720.P7362143983753848736

`round(ratio[n*a(n-2)])` with `a(0)=1, a(1)=1`
-/

namespace A338720.P7362143983753848736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  n * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A338720.P7362143983753848736

/-! ## A338720.P8492655250081559999

`round(∏[(n+1)/(n*a(n-1))])` with `a(0)=1`
-/

namespace A338720.P8492655250081559999
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / ((n : ℚ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A338720.P8492655250081559999

/-! ## A338720.P14235438409418903929

`round(ratio[A006882(n)])`
-/

namespace A338720.P14235438409418903929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A338720.P14235438409418903929

/-! ## A338720.P2365173637909328062

`round(ratio[A172089(A000124(n))])`
-/

namespace A338720.P2365173637909328062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172089 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A338720.P2365173637909328062

/-! ## A338720.P17711151928359490673

`round(ratio[A230698(A000217(n))])`
-/

namespace A338720.P17711151928359490673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A338720.P17711151928359490673

/-! ## A338720.P4474406875087822781

`round(ratio[A248809(A161680(n))])`
-/

namespace A338720.P4474406875087822781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248809 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A338720.P4474406875087822781

/-! ## A338720.P5984613186801843363

`round(A006882(n+1)/A006882(n))`
-/

namespace A338720.P5984613186801843363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006882 (n + 1) : ℚ) / (A006882 n : ℚ))

end

end A338720.P5984613186801843363

/-!
# A338721: Irregular triangle read by rows: T(n,k), n >= 1, k >= 1, in which column k lists the odd numbers k times, and the first element of column k is in row k(k+1)/2.

The programs for A338721, there is no canonical definition to state claims against.
-/

/-! ## A338721.P9991091461909946041

`2*sqrt(A236104(n+1))-1`
-/

namespace A338721.P9991091461909946041
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A236104 (n + 1) : ℝ) - 1

end

end A338721.P9991091461909946041

/-! ## A338721.P8510353102445371538

`A004273(sqrt(A236104(n+1)))`
-/

namespace A338721.P8510353102445371538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway (Real.sqrt (A236104 (n + 1) : ℝ))).toNat

end

end A338721.P8510353102445371538

/-! ## A338721.P983154400797741078

`A005843(sqrt(A236104(n+1)))-1`
-/

namespace A338721.P983154400797741078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway (Real.sqrt (A236104 (n + 1) : ℝ))).toNat - 1

end

end A338721.P983154400797741078

/-! ## A338721.P1562559381930919641

`2*A235791(n+1)-1`
-/

namespace A338721.P1562559381930919641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A235791 (n + 1) - 1

end

end A338721.P1562559381930919641

/-! ## A338721.P3930689957406390483

`A004273(A235791(n+1))`
-/

namespace A338721.P3930689957406390483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A235791 (n + 1)).toNat

end

end A338721.P3930689957406390483

/-! ## A338721.P7041046790477389

`A005408(A235791(n+1)-1)`
-/

namespace A338721.P7041046790477389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A235791 (n + 1) - 1).toNat

end

end A338721.P7041046790477389

/-! ## A338721.P4953402093731788025

`A023443(2*A235791(n+1))`
-/

namespace A338721.P4953402093731788025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A235791 (n + 1)).toNat

end

end A338721.P4953402093731788025

/-! ## A338721.P14230256123455982992

`A023444(2*A235791(n+1)+1)`
-/

namespace A338721.P14230256123455982992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (2 * A235791 (n + 1) + 1).toNat

end

end A338721.P14230256123455982992

/-! ## A338721.P5744197930454565337

`A016825(A235791(n+1)-1)/2`
-/

namespace A338721.P5744197930454565337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A235791 (n + 1) - 1).toNat : ℚ) / 2

end

end A338721.P5744197930454565337

/-! ## A338721.P9542210147378171818

`A235791(n+1)+A235791(n+1)-A244971(A244971(n+1))`
-/

namespace A338721.P9542210147378171818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235791 (n + 1) + (A235791 (n + 1) - A244971 (A244971 (n + 1)).toNat)

end

end A338721.P9542210147378171818

/-! ## A338721.P8293848151378351213

`A001650(A236104(n+1))`
-/

namespace A338721.P8293848151378351213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (A236104 (n + 1)).toNat

end

end A338721.P8293848151378351213

/-! ## A338721.P5680272831594802836

`A000267(A236104(n+1)-1)`
-/

namespace A338721.P5680272831594802836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A236104 (n + 1) - 1).toNat

end

end A338721.P5680272831594802836

/-! ## A338721.P14700620627729531508

`abs(A008310(A235791(n+1)²))`
-/

namespace A338721.P14700620627729531508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008310 (A235791 (n + 1) ^ 2).toNat|

end

end A338721.P14700620627729531508

/-! ## A338721.P1996883256941238019

`A003056(2*A236104(n+1))`
-/

namespace A338721.P1996883256941238019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A236104 (n + 1)).toNat

end

end A338721.P1996883256941238019

/-! ## A338721.P2107971976860088424

`A003056(2*A235791(n+1)²)`
-/

namespace A338721.P2107971976860088424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A235791 (n + 1) ^ 2).toNat

end

end A338721.P2107971976860088424

/-! ## A338721.P8866951479664719104

`A339575(2*A236104(n+1))-1`
-/

namespace A338721.P8866951479664719104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339575 (2 * A236104 (n + 1)).toNat - 1

end

end A338721.P8866951479664719104

/-! ## A338721.P260582168771267955

`A003056(A005843(A235791(n+1)²))`
-/

namespace A338721.P260582168771267955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005843 (A235791 (n + 1) ^ 2).toNat).toNat

end

end A338721.P260582168771267955

/-! ## A338721.P1630320028818159800

`A003056(A236104(n+1)+A236104(n+1))`
-/

namespace A338721.P1630320028818159800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A236104 (n + 1) + A236104 (n + 1)).toNat

end

end A338721.P1630320028818159800

/-! ## A338721.P16075472539007630865

`A003056(2*A235791(n+1)*A235791(n+1))`
-/

namespace A338721.P16075472539007630865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A235791 (n + 1) * A235791 (n + 1)).toNat

end

end A338721.P16075472539007630865

/-! ## A338721.P13353084491828325490

`A003056(A005843(A236104(A008619(2*n))))`
-/

namespace A338721.P13353084491828325490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005843 (A236104 (A008619 (2 * n)).toNat).toNat).toNat

end

end A338721.P13353084491828325490

/-!
# A338722: Row sums in triangle A338721.

The programs for A338722, the canonical program `A338722.P15631712721895948208` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338722 has offset 1).

The definition of A338722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338722.P15631712721895948208

`∑[A335616(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A338722

/-- `∑[A335616(n+1)]` -/
def P15631712721895948208.Spec : Prop :=
  ∀ n, P15631712721895948208.a n = A338722 (n + 1)

theorem P15631712721895948208.correct : P15631712721895948208.Spec := by
  intro n
  simp only [A338722, Nat.add_sub_cancel]

end A338722

/-! ## A338722.P14539270039731666853

`A335616(-xor(n, -1))+a(n-1)` with `a(0)=1`
-/

namespace A338722.P14539270039731666853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335616 (-Int.xor (n : ℤ) (-1)).toNat + a (n - 1)

end

end A338722.P14539270039731666853

namespace A338722

/-- `A335616(-xor(n, -1))+a(n-1)` -/
def P14539270039731666853.Spec : Prop :=
  ∀ n, P14539270039731666853.a n = A338722 (n + 1)

end A338722

/-! ## A338722.P16112337535805523707

`∑[A054844(n+1)-A023531(n)]`
-/

namespace A338722.P16112337535805523707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) - A023531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338722.P16112337535805523707

namespace A338722

/-- `∑[A054844(n+1)-A023531(n)]` -/
def P16112337535805523707.Spec : Prop :=
  ∀ n, P16112337535805523707.a n = A338722 (n + 1)

end A338722

/-! ## A338722.P1110265756199761897

`∑[A054844(n+1)-∑[A103452(n)]]`
-/

namespace A338722.P1110265756199761897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338722.P1110265756199761897

namespace A338722

/-- `∑[A054844(n+1)-∑[A103452(n)]]` -/
def P1110265756199761897.Spec : Prop :=
  ∀ n, P1110265756199761897.a n = A338722 (n + 1)

end A338722

/-! ## A338722.P5196804992357940333

`∑[A136107(n+1)+A001227(n+1)]`
-/

namespace A338722.P5196804992357940333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136107 (n + 1) + A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338722.P5196804992357940333

namespace A338722

/-- `∑[A136107(n+1)+A001227(n+1)]` -/
def P5196804992357940333.Spec : Prop :=
  ∀ n, P5196804992357940333.a n = A338722 (n + 1)

theorem P5196804992357940333.correct : P5196804992357940333.Spec := by
  intro n
  simp only [A338722, Nat.add_sub_cancel, A338722.P5196804992357940333.f1, A338722.P5196804992357940333.a, A338722.P15631712721895948208.f1, A338722.P15631712721895948208.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A136107, A136107.P13068712617901272684.a, A335616, A335616.P11269408438136298047.a, A010054, A010054.P18347828677204923252.a, A054844, A054844.P10228147231781804913.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A338722

/-! ## A338722.P7467304835355846822

`∑[A054844(n+1)]-A003056(n+1)`
-/

namespace A338722.P7467304835355846822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003056 (n + 1)

end

end A338722.P7467304835355846822

namespace A338722

/-- `∑[A054844(n+1)]-A003056(n+1)` -/
def P7467304835355846822.Spec : Prop :=
  ∀ n, P7467304835355846822.a n = A338722 (n + 1)

end A338722

/-! ## A338722.P12980330968593146106

`∑[A054844(n+1)-A010054(n+1)]`
-/

namespace A338722.P12980330968593146106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) - A010054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338722.P12980330968593146106

namespace A338722

/-- `∑[A054844(n+1)-A010054(n+1)]` -/
def P12980330968593146106.Spec : Prop :=
  ∀ n, P12980330968593146106.a n = A338722 (n + 1)

end A338722

/-! ## A338722.P4544217982789791892

`∑[2*A001227(n+1)]-A003056(n+1)`
-/

namespace A338722.P4544217982789791892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003056 (n + 1)

end

end A338722.P4544217982789791892

namespace A338722

/-- `∑[2*A001227(n+1)]-A003056(n+1)` -/
def P4544217982789791892.Spec : Prop :=
  ∀ n, P4544217982789791892.a n = A338722 (n + 1)

end A338722

/-! ## A338722.P15754604410047463376

`2*A060831(n+1)-A003056(n+1)`
-/

namespace A338722.P15754604410047463376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060831 (n + 1) - A003056 (n + 1)

end

end A338722.P15754604410047463376

namespace A338722

/-- `2*A060831(n+1)-A003056(n+1)` -/
def P15754604410047463376.Spec : Prop :=
  ∀ n, P15754604410047463376.a n = A338722 (n + 1)

end A338722

/-! ## A338722.P9231062183719005130

`A060831(n+1)+A060831(n)-A238005(n+1)`
-/

namespace A338722.P9231062183719005130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (n + 1) + (A060831 n - A238005 (n + 1))

end

end A338722.P9231062183719005130

namespace A338722

/-- `A060831(n+1)+A060831(n)-A238005(n+1)` -/
def P9231062183719005130.Spec : Prop :=
  ∀ n, P9231062183719005130.a n = A338722 (n + 1)

end A338722

/-! ## A338722.P684685353563652879

`A006463(n+1)+A060831(n+1)-A347737(n+1)`
-/

namespace A338722.P684685353563652879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (n + 1) + (A060831 (n + 1) - A347737 (n + 1))

end

end A338722.P684685353563652879

namespace A338722

/-- `A006463(n+1)+A060831(n+1)-A347737(n+1)` -/
def P684685353563652879.Spec : Prop :=
  ∀ n, P684685353563652879.a n = A338722 (n + 1)

end A338722

/-! ## A338722.P11303085521067402564

`A005843(A060831(n+1))-A003056(n+1)`
-/

namespace A338722.P11303085521067402564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A060831 (n + 1)).toNat - A003056 (n + 1)

end

end A338722.P11303085521067402564

namespace A338722

/-- `A005843(A060831(n+1))-A003056(n+1)` -/
def P11303085521067402564.Spec : Prop :=
  ∀ n, P11303085521067402564.a n = A338722 (n + 1)

end A338722

/-!
# A338723: Alternating row sums in triangle A338721.

The programs for A338723, there is no canonical definition to state claims against.
-/

/-! ## A338723.P11033852056386989160

`A005843(A240542(n+1))-and(1, A003056(n+1))`
-/

namespace A338723.P11033852056386989160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A240542 (n + 1)).toNat - Int.land 1 (A003056 (n + 1))

end

end A338723.P11033852056386989160

/-!
# A338724: Number of matchings avoiding a certain pattern (see Cervetti-Ferrari, Cor. 3.1(i)).

The programs for A338724, there is no canonical definition to state claims against.
-/

/-! ## A338724.P13136610729046239028

`A240163(4*a(n-1)-n)` with `a(0)=1`
-/

namespace A338724.P13136610729046239028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A240163 (4 * a (n - 1) - (n : ℤ)).toNat

end

end A338724.P13136610729046239028

/-!
# A338725: Number of matchings avoiding a certain pattern (see Cervetti-Ferrari, Cor. 3.1(ii)).

The programs for A338725, there is no canonical definition to state claims against.
-/

/-! ## A338725.P72087947049609868

`A138311(A251598(n))+Δ[A251598(n)]`
-/

namespace A338725.P72087947049609868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (A251598 n).toNat + (f1 (n + 1) - f1 n)

end

end A338725.P72087947049609868

/-! ## A338725.P1645232466475703505

`A251598(n+1)+A241464(A051240(n))`
-/

namespace A338725.P1645232466475703505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251598 (n + 1) + A241464 (A051240 n).toNat

end

end A338725.P1645232466475703505

/-!
# A338726: a(n) = Catalan(n) + 2^n - n - 1.

The programs for A338726, the canonical program `A338726.P625375486744898584` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338726 has offset 0).

The definition of A338726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000108(n)+2^n-n-1` (program `A338726.P625375486744898584`, by `A338726.P625375486744898584.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A338726.P625375486744898584

`A000108(n)+2^n-n-1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A338726

/-- `A000108(n)+2^n-n-1` -/
def P625375486744898584.Spec : Prop :=
  ∀ n, P625375486744898584.a n = A338726 n

theorem P625375486744898584.correct : P625375486744898584.Spec := by
  intro n
  simp only [A338726]

end A338726

/-! ## A338726.P9146754565899168288

`A000108(n)+A000295(n)`
-/

namespace A338726.P9146754565899168288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + A000295 n

end

end A338726.P9146754565899168288

namespace A338726

/-- `A000108(n)+A000295(n)` -/
def P9146754565899168288.Spec : Prop :=
  ∀ n, P9146754565899168288.a n = A338726 n

theorem P9146754565899168288.correct : P9146754565899168288.Spec := by
  intro n
  simp only [A338726, Nat.add_sub_cancel, A338726.P9146754565899168288.a, A338726.P625375486744898584.a, A000108, A000108.P17551949696095299361.a, A000295, A000295.P9955939544913215267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338726

/-! ## A338726.P11846699211813783077

`A132807(n)-n`
-/

namespace A338726.P11846699211813783077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132807 n - (n : ℤ)

end

end A338726.P11846699211813783077

namespace A338726

/-- `A132807(n)-n` -/
def P11846699211813783077.Spec : Prop :=
  ∀ n, P11846699211813783077.a n = A338726 n

theorem P11846699211813783077.correct : P11846699211813783077.Spec := by
  intro n
  simp only [A338726, Nat.add_sub_cancel, A338726.P11846699211813783077.a, A338726.P625375486744898584.a, A000108, A000108.P17551949696095299361.a, A132807, A132807.P12743396962450466870.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338726

/-! ## A338726.P7378585437462005446

`2^n+A246604(n)-1`
-/

namespace A338726.P7378585437462005446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + (A246604 n - 1)

end

end A338726.P7378585437462005446

namespace A338726

/-- `2^n+A246604(n)-1` -/
def P7378585437462005446.Spec : Prop :=
  ∀ n, P7378585437462005446.a n = A338726 n

theorem P7378585437462005446.correct : P7378585437462005446.Spec := by
  intro n
  simp only [A338726, Nat.add_sub_cancel, A338726.P7378585437462005446.a, A338726.P625375486744898584.a, A000108, A000108.P17551949696095299361.a, A246604, A246604.P5603396420743086449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338726

/-! ## A338726.P7917168892989512149

`A246604(n)+A000225(n)`
-/

namespace A338726.P7917168892989512149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n + A000225 n

end

end A338726.P7917168892989512149

namespace A338726

/-- `A246604(n)+A000225(n)` -/
def P7917168892989512149.Spec : Prop :=
  ∀ n, P7917168892989512149.a n = A338726 n

theorem P7917168892989512149.correct : P7917168892989512149.Spec := by
  intro n
  simp only [A338726, Nat.add_sub_cancel, A338726.P7917168892989512149.a, A338726.P625375486744898584.a, A000108, A000108.P17551949696095299361.a, A000225, A000225.P6535533121115206393.a, A246604, A246604.P5603396420743086449.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338726

/-! ## A338726.P14061461948798279334

`A000108(n)+Δ[A002662(n)]`
-/

namespace A338726.P14061461948798279334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (f1 (n + 1) - f1 n)

end

end A338726.P14061461948798279334

namespace A338726

/-- `A000108(n)+Δ[A002662(n)]` -/
def P14061461948798279334.Spec : Prop :=
  ∀ n, P14061461948798279334.a n = A338726 n

theorem P14061461948798279334.correct : P14061461948798279334.Spec := by
  intro n
  simp only [A338726, Nat.add_sub_cancel, A338726.P14061461948798279334.f1, A338726.P14061461948798279334.a, A338726.P625375486744898584.a, A000108, A000108.P17551949696095299361.a, A002662, A002662.P6774456480096010218.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A338726

/-! ## A338726.P7023551053694048121

`A000108(n)+A000325(n)-1`
-/

namespace A338726.P7023551053694048121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A000325 n - 1)

end

end A338726.P7023551053694048121

namespace A338726

/-- `A000108(n)+A000325(n)-1` -/
def P7023551053694048121.Spec : Prop :=
  ∀ n, P7023551053694048121.a n = A338726 n

theorem P7023551053694048121.correct : P7023551053694048121.Spec := by
  intro n
  simp only [A338726, Nat.add_sub_cancel, A338726.P7023551053694048121.a, A338726.P625375486744898584.a, A000108, A000108.P17551949696095299361.a, A000325, A000325.P17729744711211405807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338726

/-! ## A338726.P17894524718164299809

`A141353(n)-A087156(n+1)`
-/

namespace A338726.P17894524718164299809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141353 n - A087156 (n + 1)

end

end A338726.P17894524718164299809

namespace A338726

/-- `A141353(n)-A087156(n+1)` -/
def P17894524718164299809.Spec : Prop :=
  ∀ n, P17894524718164299809.a n = A338726 n

end A338726

/-! ## A338726.P14320665894166110524

`A126120(2*n)+A000295(n)`
-/

namespace A338726.P14320665894166110524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) + A000295 n

end

end A338726.P14320665894166110524

namespace A338726

/-- `A126120(2*n)+A000295(n)` -/
def P14320665894166110524.Spec : Prop :=
  ∀ n, P14320665894166110524.a n = A338726 n

end A338726

/-! ## A338726.P17621007514838533906

`A208355(2*n)+A000295(n)`
-/

namespace A338726.P17621007514838533906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) + A000295 n

end

end A338726.P17621007514838533906

namespace A338726

/-- `A208355(2*n)+A000295(n)` -/
def P17621007514838533906.Spec : Prop :=
  ∀ n, P17621007514838533906.a n = A338726 n

end A338726

/-! ## A338726.P10612941211938247324

`A000108(n)+A000225(n)-n`
-/

namespace A338726.P10612941211938247324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (A000225 n - (n : ℤ))

end

end A338726.P10612941211938247324

namespace A338726

/-- `A000108(n)+A000225(n)-n` -/
def P10612941211938247324.Spec : Prop :=
  ∀ n, P10612941211938247324.a n = A338726 n

theorem P10612941211938247324.correct : P10612941211938247324.Spec := by
  intro n
  simp only [A338726, Nat.add_sub_cancel, A338726.P10612941211938247324.a, A338726.P625375486744898584.a, A000108, A000108.P17551949696095299361.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338726

/-! ## A338726.P18293196570663599168

`A000051(n)+A120304(n)-n`
-/

namespace A338726.P18293196570663599168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A120304 n - (n : ℤ))

end

end A338726.P18293196570663599168

namespace A338726

/-- `A000051(n)+A120304(n)-n` -/
def P18293196570663599168.Spec : Prop :=
  ∀ n, P18293196570663599168.a n = A338726 n

theorem P18293196570663599168.correct : P18293196570663599168.Spec := by
  intro n
  simp only [A338726, Nat.add_sub_cancel, A338726.P18293196570663599168.a, A338726.P625375486744898584.a, A000051, A000051.P14067217022188782580.a, A000108, A000108.P17551949696095299361.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338726

/-! ## A338726.P4325640550833502440

`A057428(n)+A141353(n)-n`
-/

namespace A338726.P4325640550833502440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A141353 n - (n : ℤ))

end

end A338726.P4325640550833502440

namespace A338726

/-- `A057428(n)+A141353(n)-n` -/
def P4325640550833502440.Spec : Prop :=
  ∀ n, P4325640550833502440.a n = A338726 n

theorem P4325640550833502440.correct : P4325640550833502440.Spec := by
  intro n
  simp only [A338726, Nat.add_sub_cancel, A338726.P4325640550833502440.a, A338726.P625375486744898584.a, A000108, A000108.P17551949696095299361.a, A057428, A057428.P2999489532230392221.a, A141353, A141353.P4681948747141418417.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338726

/-! ## A338726.P15513175042725473441

`A141353(n)-(A057427(n)+n)`
-/

namespace A338726.P15513175042725473441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141353 n - (A057427 n + (n : ℤ))

end

end A338726.P15513175042725473441

namespace A338726

/-- `A141353(n)-(A057427(n)+n)` -/
def P15513175042725473441.Spec : Prop :=
  ∀ n, P15513175042725473441.a n = A338726 n

theorem P15513175042725473441.correct : P15513175042725473441.Spec := by
  intro n
  simp only [A338726, Nat.add_sub_cancel, A338726.P15513175042725473441.a, A338726.P625375486744898584.a, A000108, A000108.P17551949696095299361.a, A057427, A057427.P3058147525557661423.a, A141353, A141353.P4681948747141418417.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338726

/-! ## A338726.P4253550281422713856

`A083329(n)+A125107(n)-n`
-/

namespace A338726.P4253550281422713856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083329 n + (A125107 n - (n : ℤ))

end

end A338726.P4253550281422713856

namespace A338726

/-- `A083329(n)+A125107(n)-n` -/
def P4253550281422713856.Spec : Prop :=
  ∀ n, P4253550281422713856.a n = A338726 n

end A338726

/-! ## A338726.P17526130880219390111

`A141364(n)+A155559(n)-n`
-/

namespace A338726.P17526130880219390111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141364 n + (A155559 n - (n : ℤ))

end

end A338726.P17526130880219390111

namespace A338726

/-- `A141364(n)+A155559(n)-n` -/
def P17526130880219390111.Spec : Prop :=
  ∀ n, P17526130880219390111.a n = A338726 n

end A338726

/-! ## A338726.P13789102865202555606

`A000108(n)+∑[A011782(n)-1]`
-/

namespace A338726.P13789102865202555606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338726.P13789102865202555606

namespace A338726

/-- `A000108(n)+∑[A011782(n)-1]` -/
def P13789102865202555606.Spec : Prop :=
  ∀ n, P13789102865202555606.a n = A338726 n

end A338726

/-! ## A338726.P1061803385932581353

`A000225(n)+abs(A168491(n))-n`
-/

namespace A338726.P1061803385932581353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (|A168491 n| - (n : ℤ))

end

end A338726.P1061803385932581353

namespace A338726

/-- `A000225(n)+abs(A168491(n))-n` -/
def P1061803385932581353.Spec : Prop :=
  ∀ n, P1061803385932581353.a n = A338726 n

end A338726

/-! ## A338726.P3803879132511674013

`A000108(n)+∑[A131577(n)]-n`
-/

namespace A338726.P3803879132511674013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A338726.P3803879132511674013

namespace A338726

/-- `A000108(n)+∑[A131577(n)]-n` -/
def P3803879132511674013.Spec : Prop :=
  ∀ n, P3803879132511674013.a n = A338726 n

end A338726

/-! ## A338726.P8749934847716606034

`A097331(2*n+1)+A000295(n)`
-/

namespace A338726.P8749934847716606034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) + A000295 n

end

end A338726.P8749934847716606034

namespace A338726

/-- `A097331(2*n+1)+A000295(n)` -/
def P8749934847716606034.Spec : Prop :=
  ∀ n, P8749934847716606034.a n = A338726 n

end A338726

/-!
# A338727: a(n) = C(n+1)^2 - 2*C(n+1)*C(n) + C(n)^2, where C() is a Catalan number; a(0) = 1.

The programs for A338727, there is no canonical definition to state claims against.
-/

/-! ## A338727.P5382033296432716393

`Δ[lcm(2, C(2*n, n))/(n+1)]²`
-/

namespace A338727.P5382033296432716393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (Nat.choose (2 * n) n) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A338727.P5382033296432716393

/-! ## A338727.P16083773494207934900

`Δ[(4-6/(n+1))*a(n-1)]²` with `a(0)=0, a(1)=1`
-/

namespace A338727.P16083773494207934900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A338727.P16083773494207934900

/-! ## A338727.P1180070637775661138

`A071724(n)²`
-/

namespace A338727.P1180070637775661138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n ^ 2

end

end A338727.P1180070637775661138

/-! ## A338727.P15665452299991557150

`A122919(∑[n])²`
-/

namespace A338727.P15665452299991557150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122919 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A338727.P15665452299991557150

/-! ## A338727.P13555889850772751613

`Δ[A141351(n)]²`
-/

namespace A338727.P13555889850772751613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A338727.P13555889850772751613

/-! ## A338727.P15875396250283703157

`Δ[A141364(n)]²`
-/

namespace A338727.P15875396250283703157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A338727.P15875396250283703157

/-! ## A338727.P7546308895045946608

`Δ[record[A329696(n)]]²`
-/

namespace A338727.P7546308895045946608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329696 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A338727.P7546308895045946608

/-! ## A338727.P9146859957800605518

`A039599(∑[n]+1)²`
-/

namespace A338727.P9146859957800605518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A338727.P9146859957800605518

/-! ## A338727.P10635919564578398307

`A050160(∑[n]+1)²`
-/

namespace A338727.P10635919564578398307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050160 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A338727.P10635919564578398307

/-! ## A338727.P17762790520950726690

`A100537(∑[n]+1)²`
-/

namespace A338727.P17762790520950726690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100537 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A338727.P17762790520950726690

/-!
# A338728: a(n) = number of binary increasing trees with labels from {1,2,...n} which are beth-avoiding.

The programs for A338728, there is no canonical definition to state claims against.
-/

/-! ## A338728.P5455576100108411533

`A022493(n)-char[7]`
-/

namespace A338728.P5455576100108411533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022493 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A338728.P5455576100108411533

/-! ## A338728.P231032540605728145

`A175579(∑[n]+1)-char[7]`
-/

namespace A338728.P231032540605728145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175579 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A338728.P231032540605728145

/-! ## A338728.P13725171749652051138

`A218579(∑[n+1])-char[7]`
-/

namespace A338728.P13725171749652051138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218579 (∑ j ∈ Finset.range (n + 1), f1 j) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A338728.P13725171749652051138

/-! ## A338728.P9061154050722515579

`round(A341957(n+1)^acot(3))`
-/

namespace A338728.P9061154050722515579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A341957 (n + 1) : ℝ) ^ (SequenceMachineLib.acot (3 : ℝ)))

end

end A338728.P9061154050722515579

/-!
# A338729: a(n) = number of permutations avoiding the simsum pattern 213 and the classical pattern 321.

The programs for A338729, there is no canonical definition to state claims against.
-/

/-! ## A338729.P10807478929828750746

`round(∏[2*(n+5)/9])`
-/

namespace A338729.P10807478929828750746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 5) : ℚ) / 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A338729.P10807478929828750746

/-! ## A338729.P3285409781789395326

`ogf((-1+x+2x^2+2x^3+4x^4+6x^5+7x^6+7x^7)/(-1+2x+2x^2))`
-/

namespace A338729.P3285409781789395326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, -2, -4, -6, -7, -7] [1, -2, -2] n

end

end A338729.P3285409781789395326

/-! ## A338729.P6376089498555081017

`floor(sqrt(A022842(n!)))`
-/

namespace A338729.P6376089498555081017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A022842 (Nat.factorial n))

end

end A338729.P6376089498555081017

/-! ## A338729.P10840956506337990026

`floor(sqrt(A140099(n!)))`
-/

namespace A338729.P10840956506337990026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A140099 (Nat.factorial n))

end

end A338729.P10840956506337990026

/-!
# A338730: Generating function Sum_{n >= 1} a(n)*x^n = Sum_{k>=1} k*x^(k*(3*k+1)/2)/(1-x^k).

The programs for A338730, there is no canonical definition to state claims against.
-/

/-! ## A338730.P15267352922384331701

`round((A338731(n)^A027642(n))^ϕ)`
-/

namespace A338730.P15267352922384331701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A338731 n : ℚ) ^ (A027642 n : ℤ) : ℝ) ^ Real.goldenRatio)

end

end A338730.P15267352922384331701

/-! ## A338730.P11679030324097673540

`A000217(A338731(n)^A027642(n))`
-/

namespace A338730.P11679030324097673540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A338731 n : ℚ) ^ (A027642 n : ℤ))).toNat

end

end A338730.P11679030324097673540

/-! ## A338730.P18275086726274194923

`A001911(A338731(n)^A027642(n))`
-/

namespace A338730.P18275086726274194923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (SequenceMachineLib.roundAway ((A338731 n : ℚ) ^ (A027642 n : ℤ))).toNat

end

end A338730.P18275086726274194923

/-! ## A338730.P9443878347186368983

`A338767(A338731(n)^A187730(n+1))`
-/

namespace A338730.P9443878347186368983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338767 (SequenceMachineLib.roundAway ((A338731 n : ℚ) ^ (A187730 (n + 1) : ℤ))).toNat

end

end A338730.P9443878347186368983

/-! ## A338730.P7808848944982119111

`A000217(A338731(n))%A323057(n+1)`
-/

namespace A338730.P7808848944982119111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A338731 n).toNat) (A323057 (n + 1))

end

end A338730.P7808848944982119111

/-!
# A338731: Generating function Sum_{n >= 0} a(n)*x^n = Sum_{k>=1} x^(k*(3*k+1)/2)/(1-x^k).

The programs for A338731, there is no canonical definition to state claims against.
-/

/-! ## A338731.P12993519956888051829

`A338732(2*n)-A338732(A057979(n+1))`
-/

namespace A338731.P12993519956888051829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338732 (2 * n) - A338732 (A057979 (n + 1)).toNat

end

end A338731.P12993519956888051829

/-! ## A338731.P8976459159197951338

`A003056(A338730(n))%∑[A156587(n)]`
-/

namespace A338731.P8976459159197951338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A338730 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338731.P8976459159197951338

/-! ## A338731.P9070745902406311477

`A003056(A338730(n)%A177430(n+1))`
-/

namespace A338731.P9070745902406311477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A338730 n) (A177430 (n + 1))).toNat

end

end A338731.P9070745902406311477

/-! ## A338731.P433587187008687106

`A319951(A338730(n))%A089745(n+1)`
-/

namespace A338731.P433587187008687106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319951 (A338730 n).toNat) (A089745 (n + 1))

end

end A338731.P433587187008687106

/-! ## A338731.P9176185158415961373

`A270488(A338730(n))%A075209(n+1)`
-/

namespace A338731.P9176185158415961373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270488 (A338730 n).toNat) (A075209 (n + 1))

end

end A338731.P9176185158415961373

/-!
# A338732: Generating function Sum_{n >= 0} a(n)*x^n = Sum_{k>=1} x^(k*(3*k+1))/(1-x^k).

The programs for A338732, there is no canonical definition to state claims against.
-/

/-! ## A338732.P1916618787933958972

`A394788(n)-A394038(n)`
-/

namespace A338732.P1916618787933958972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394788 n - A394038 n

end

end A338732.P1916618787933958972

/-! ## A338732.P2166128958007516069

`ceil(A036384(n+1)/A056040(n))`
-/

namespace A338732.P2166128958007516069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036384 (n + 1) : ℚ) / (A056040 n : ℚ)⌉

end

end A338732.P2166128958007516069

/-! ## A338732.P13360442700543292070

`A110656(A319702(n+1)%A186009(n+1))`
-/

namespace A338732.P13360442700543292070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.tmod (A319702 (n + 1)) (A186009 (n + 1))).toNat

end

end A338732.P13360442700543292070

/-! ## A338732.P13072418680787968296

`A085141((A080513(n)-A057979(n))%A175195(n))`
-/

namespace A338732.P13072418680787968296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085141 (Int.tmod (A080513 n - A057979 n) (A175195 n)).toNat

end

end A338732.P13072418680787968296

/-! ## A338732.P11778243332173225841

`A005917(A027642(n))%A127321(n+1)`
-/

namespace A338732.P11778243332173225841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005917 (A027642 n).toNat) (A127321 (n + 1))

end

end A338732.P11778243332173225841

/-!
# A338733: Partial sums of A054843.

The programs for A338733, the canonical program `A338733.P13079581838449932790` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338733 has offset 0).

The definition of A338733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338733.P3960025306402560621

`∑[∑{d}[n, #%2]+char[∑[n]]]`
-/

namespace A338733.P3960025306402560621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2 + (if ∃ j, f3 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338733.P3960025306402560621

namespace A338733

/-- `∑[∑{d}[n, #%2]+char[∑[n]]]` -/
def P3960025306402560621.Spec : Prop :=
  ∀ n, (P3960025306402560621.a n : ℤ) = A338733 n

end A338733

/-! ## A338733.P13079581838449932790

`∑[A054843(n)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A338733

/-- `∑[A054843(n)]` -/
def P13079581838449932790.Spec : Prop :=
  ∀ n, P13079581838449932790.a n = A338733 n

theorem P13079581838449932790.correct : P13079581838449932790.Spec := by
  intro n
  simp only [A338733]

end A338733

/-! ## A338733.P10091199980973309134

`A060831(n)+∑[char[∑[n]]]`
-/

namespace A338733.P10091199980973309134
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A338733.P10091199980973309134

namespace A338733

/-- `A060831(n)+∑[char[∑[n]]]` -/
def P10091199980973309134.Spec : Prop :=
  ∀ n, P10091199980973309134.a n = A338733 n

end A338733

/-! ## A338733.P6375211082667133539

`A002024(n+1)+∑[∑{d}[n, and(1, #)]]`
-/

namespace A338733.P6375211082667133539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.land 1 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A338733.P6375211082667133539

namespace A338733

/-- `A002024(n+1)+∑[∑{d}[n, and(1, #)]]` -/
def P6375211082667133539.Spec : Prop :=
  ∀ n, P6375211082667133539.a n = A338733 n

end A338733

/-! ## A338733.P2987695597125672430

`A003056(n)+A060831(n)+1`
-/

namespace A338733.P2987695597125672430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A060831 n + 1)

end

end A338733.P2987695597125672430

namespace A338733

/-- `A003056(n)+A060831(n)+1` -/
def P2987695597125672430.Spec : Prop :=
  ∀ n, P2987695597125672430.a n = A338733 n

end A338733

/-! ## A338733.P3433472098314691682

`A248517(n)+A007401(n+1)`
-/

namespace A338733.P3433472098314691682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n + A007401 (n + 1)

end

end A338733.P3433472098314691682

namespace A338733

/-- `A248517(n)+A007401(n+1)` -/
def P3433472098314691682.Spec : Prop :=
  ∀ n, P3433472098314691682.a n = A338733 n

end A338733

/-! ## A338733.P2436508951920037894

`A003056(n)+∑[A069283(n)+1]`
-/

namespace A338733.P2436508951920037894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338733.P2436508951920037894

namespace A338733

/-- `A003056(n)+∑[A069283(n)+1]` -/
def P2436508951920037894.Spec : Prop :=
  ∀ n, P2436508951920037894.a n = A338733 n

end A338733

/-! ## A338733.P16245170956070008298

`Δ[A006463(n)]+A060831(n)+1`
-/

namespace A338733.P16245170956070008298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A060831 n + 1)

end

end A338733.P16245170956070008298

namespace A338733

/-- `Δ[A006463(n)]+A060831(n)+1` -/
def P16245170956070008298.Spec : Prop :=
  ∀ n, P16245170956070008298.a n = A338733 n

end A338733

/-! ## A338733.P17344429761209938147

`A340520(n+1)-(A347737(n)+A006463(n))`
-/

namespace A338733.P17344429761209938147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340520 (n + 1) - (A347737 n + A006463 n)

end

end A338733.P17344429761209938147

namespace A338733

/-- `A340520(n+1)-(A347737(n)+A006463(n))` -/
def P17344429761209938147.Spec : Prop :=
  ∀ n, P17344429761209938147.a n = A338733 n

end A338733

/-! ## A338733.P7272847734271424243

`A002024(n+1)+A006463(n+1)-A347737(n)`
-/

namespace A338733.P7272847734271424243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A006463 (n + 1) - A347737 n)

end

end A338733.P7272847734271424243

namespace A338733

/-- `A002024(n+1)+A006463(n+1)-A347737(n)` -/
def P7272847734271424243.Spec : Prop :=
  ∀ n, P7272847734271424243.a n = A338733 n

end A338733

/-!
# A338735: a(n) = Bell(n) + n - 2 (cf. A000110).

The programs for A338735, there is no canonical definition to state claims against.
-/

/-! ## A338735.P2420521768926323018

`A000110(n+1)+n+1-2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338735.P2420521768926323018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 1) + (n + 1 : ℤ) - 2

end

end A338735.P2420521768926323018

/-! ## A338735.P2057294021905067410

`record[Δ[A108087(n)]]+n`
-/

namespace A338735.P2057294021905067410
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A338735.P2057294021905067410

/-! ## A338735.P7321058701117191139

`record[Δ[A186020(n)]]+n`
-/

namespace A338735.P7321058701117191139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A338735.P7321058701117191139

/-! ## A338735.P11702453302671150962

`record[Δ[A275422(n)]]+n`
-/

namespace A338735.P11702453302671150962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275422 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A338735.P11702453302671150962

/-! ## A338735.P1771129919836286600

`record[Δ[A327884(n)]]+n`
-/

namespace A338735.P1771129919836286600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327884 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A338735.P1771129919836286600

/-! ## A338735.P11889280579615540731

`∑[A052834(n)+2]-2`
-/

namespace A338735.P11889280579615540731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052834 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A338735.P11889280579615540731

/-! ## A338735.P9347098194309029830

`A011972(∑[n])-1+n`
-/

namespace A338735.P9347098194309029830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f1 j) - 1 + (n : ℤ)

end

end A338735.P9347098194309029830

/-! ## A338735.P2685194938443604841

`A123346(∑[n])+n-1`
-/

namespace A338735.P2685194938443604841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n : ℤ) - 1)

end

end A338735.P2685194938443604841

/-! ## A338735.P8656975356783990936

`A283424(∑[n])+n-1`
-/

namespace A338735.P8656975356783990936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (∑ j ∈ Finset.range (n + 1), f1 j) + ((n : ℤ) - 1)

end

end A338735.P8656975356783990936

/-! ## A338735.P15929507194110140096

`record[A095149(n)-1]+n`
-/

namespace A338735.P15929507194110140096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A338735.P15929507194110140096

/-!
# A338736: a(n) = L(L(n)) mod n, where L = Lucas numbers = A000032.

The programs for A338736, there is no canonical definition to state claims against.
-/

/-! ## A338736.P346753542688164478

`A000032(A000204(n+1)%A106291(n+1))%(n+1)`
-/

namespace A338736.P346753542688164478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (Int.tmod (A000204 (n + 1)) (A106291 (n + 1))).toNat) (n + 1 : ℤ)

end

end A338736.P346753542688164478

/-! ## A338736.P18170184417154606829

`A000032(A000032(n+1)%A001175(n+1))%(n+1)`
-/

namespace A338736.P18170184417154606829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000032 (Int.tmod (A000032 (n + 1)) (A001175 (n + 1))).toNat) (n + 1 : ℤ)

end

end A338736.P18170184417154606829

/-! ## A338736.P5010493547851067638

`A000204(A001610(n)%A001175(n+1)+1)%(n+1)`
-/

namespace A338736.P5010493547851067638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000204 (Int.tmod (A001610 n) (A001175 (n + 1)) + 1).toNat) (n + 1 : ℤ)

end

end A338736.P5010493547851067638

/-!
# A338737: Triangle read by rows: T(n,k) is the number of sum-free subsets of {1..n} with cardinality k for 1 <= k <= n.

The programs for A338737, there is no canonical definition to state claims against.
-/

/-! ## A338737.P245396912714447671

`A187637(n+1)+A000122(A022115(n))`
-/

namespace A338737.P245396912714447671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187637 (n + 1) + A000122 (A022115 n).toNat

end

end A338737.P245396912714447671

/-! ## A338737.P8104654020060473966

`A000311(A052553(n))*A001227(A225118(n))`
-/

namespace A338737.P8104654020060473966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000311 (A052553 n).toNat * A001227 (A225118 n).toNat

end

end A338737.P8104654020060473966

/-! ## A338737.P16721367088591664033

`and(A075195(n+1), A163241(A282421(n)))`
-/

namespace A338737.P16721367088591664033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075195 (n + 1)) (A163241 (A282421 n).toNat)

end

end A338737.P16721367088591664033

/-! ## A338737.P10509289944119050139

`A187637(A161949(n+1))`
-/

namespace A338737.P10509289944119050139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187637 (A161949 (n + 1)).toNat

end

end A338737.P10509289944119050139

/-! ## A338737.P4721478808570319422

`and(A111800(A075200(n+3)), A269133(n+1))`
-/

namespace A338737.P4721478808570319422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A111800 (A075200 (n + 3)).toNat) (A269133 (n + 1))

end

end A338737.P4721478808570319422

/-!
# A338738: Number of permutations p of [n] such that |p(i) - p(i-1)| <= |p(i+1) - p(i)|.

The programs for A338738, there is no canonical definition to state claims against.
-/

/-! ## A338738.P2943360499691133063

`∑[A004526(∏{e}[A328434(n), #+1])]+1`
-/

namespace A338738.P2943360499691133063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328434 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A338738.P2943360499691133063

/-! ## A338738.P6652681797609144039

`A004277(A291295(n+1)-A275175(n))`
-/

namespace A338738.P6652681797609144039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A291295 (n + 1) - A275175 n).toNat

end

end A338738.P6652681797609144039

/-!
# A338739: Number of true-palindromic compositions of n.

The programs for A338739, there is no canonical definition to state claims against.
-/

/-! ## A338739.P4523552421653635714

`A118759(A261424(n)+A082267(n+1))`
-/

namespace A338739.P4523552421653635714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A261424 n + A082267 (n + 1)).toNat

end

end A338739.P4523552421653635714

/-! ## A338739.P18381952065542633506

`A060546(n)-A326524(A061816(n))`
-/

namespace A338739.P18381952065542633506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n - A326524 (A061816 n).toNat

end

end A338739.P18381952065542633506

/-! ## A338739.P3167207688306767766

`A060546(n)-A339172(A147227(n+1))`
-/

namespace A338739.P3167207688306767766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n - A339172 (A147227 (n + 1)).toNat

end

end A338739.P3167207688306767766

/-! ## A338739.P6926063848921471500

`A060546(n)-A283001(A324803(∑[n+2]))`
-/

namespace A338739.P6926063848921471500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n - A283001 (A324803 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A338739.P6926063848921471500

/-! ## A338739.P11723841487534680946

`A060546(n)-A283001(A324802(∑[n]+2))`
-/

namespace A338739.P11723841487534680946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n - A283001 (A324802 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A338739.P11723841487534680946

/-!
# A338740: Number of hairpin compositions of n.

The programs for A338740, there is no canonical definition to state claims against.
-/

/-! ## A338740.P17214570771737734107

`A153643(n)-A031285(A060546(n))`
-/

namespace A338740.P17214570771737734107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n - A031285 (A060546 n).toNat

end

end A338740.P17214570771737734107

/-! ## A338740.P16851500848567554412

`A001045(n)-A057918(A091629(n+1))`
-/

namespace A338740.P16851500848567554412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n - A057918 (A091629 (n + 1)).toNat

end

end A338740.P16851500848567554412

/-! ## A338740.P11380780473677229409

`A048967(A001045(n)*A287384(n+2))`
-/

namespace A338740.P11380780473677229409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (A001045 n * A287384 (n + 2)).toNat

end

end A338740.P11380780473677229409

/-! ## A338740.P2324962405845460981

`A048967(A001045(n)%(A004023(n+1)+1))`
-/

namespace A338740.P2324962405845460981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048967 (Int.tmod (A001045 n) (A004023 (n + 1) + 1)).toNat

end

end A338740.P2324962405845460981

/-! ## A338740.P14084908778933547937

`2*A180198(A173126(n))`
-/

namespace A338740.P14084908778933547937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180198 (A173126 n).toNat

end

end A338740.P14084908778933547937

/-!
# A338743: When a(n) is odd, a(n) is the number of even digits present so far in the sequence, a(n) included.

The programs for A338743, there is no canonical definition to state claims against.
-/

/-! ## A338743.P16217829493496171714

`A265667(lt[A185328(n), A049234(n+1)])`
-/

namespace A338743.P16217829493496171714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338743.P16217829493496171714

/-! ## A338743.P17742251098819889979

`A265667(lt[A137754(3*(n+1)), A272671(n+1)])`
-/

namespace A338743.P17742251098819889979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137754 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338743.P17742251098819889979

/-! ## A338743.P17268628762202024670

`A265667(lt[A305245(n+1), A338746(2*n+11)])`
-/

namespace A338743.P17268628762202024670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338746 (2 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338743.P17268628762202024670

/-! ## A338743.P6627507339116378602

`A265667(lt[A137754(3*(n+1)), A100037(2*(n+1))])`
-/

namespace A338743.P6627507339116378602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137754 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100037 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338743.P6627507339116378602

/-! ## A338743.P14341860568900078629

`A265667(lt[A137754(3*(n+1)), A103255(2*(n+2))])`
-/

namespace A338743.P14341860568900078629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137754 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103255 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265667 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338743.P14341860568900078629

/-!
# A338748: G.f. A(x) satisfies: 1 = A(x) - x*A(x)/(A(x) - x*A(x)^2/(A(x) - x*A(x)^3/(A(x) - x*A(x)^4/(A(x) - x*A(x)^5/(A(x) - ...))))), a continued fraction relation.

The programs for A338748, there is no canonical definition to state claims against.
-/

/-! ## A338748.P13368959007620619807

`A279570(abs(1-A073789(n)))`
-/

namespace A338748.P13368959007620619807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279570 |1 - A073789 n|.toNat

end

end A338748.P13368959007620619807

/-! ## A338748.P12038084408384052921

`A168444(A073789(n)+1)+1`
-/

namespace A338748.P12038084408384052921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168444 (A073789 n + 1).toNat + 1

end

end A338748.P12038084408384052921

/-! ## A338748.P6077836332406427258

`A008615(A040027(n)+A034943(n))`
-/

namespace A338748.P6077836332406427258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A040027 n + A034943 n).toNat

end

end A338748.P6077836332406427258

/-! ## A338748.P6121480499098114352

`A168444(n+1)+A124010(A067077(2*(n+1)))`
-/

namespace A338748.P6121480499098114352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168444 (n + 1) + A124010 (A067077 (2 * (n + 1))).toNat

end

end A338748.P6121480499098114352

/-!
# A338750: a(n) = 1 + Sum_{k=1..n-1} a(gcd(n,k)).

The programs for A338750, there is no canonical definition to state claims against.
-/

/-! ## A338750.P578063873244050026

`∑{d}[n+1, A006874(#)]`
-/

namespace A338750.P578063873244050026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A006874 d

end

end A338750.P578063873244050026

/-!
# A338751: Primes p such that (p*s) mod q and (p*s) mod r are a pair of twin primes, where q,r,s are the next primes after p.

The programs for A338751, there is no canonical definition to state claims against.
-/

/-! ## A338751.P9951790315413610466

`A087894(A162466(n+1))`
-/

namespace A338751.P9951790315413610466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087894 (A162466 (n + 1)).toNat

end

end A338751.P9951790315413610466

/-!
# A338752: G.f. A(x) satisfies: 1 = A(x) - x*A(x)^2/(A(x) - x*A(x)^3/(A(x) - x*A(x)^4/(A(x) - x*A(x)^5/(A(x) - x*A(x)^6/(A(x) - ...))))), a continued fraction relation.

The programs for A338752, there is no canonical definition to state claims against.
-/

/-! ## A338752.P10395986949524616110

`A262890(A236463(n+1))+A061552(n)`
-/

namespace A338752.P10395986949524616110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262890 (A236463 (n + 1)).toNat + A061552 n

end

end A338752.P10395986949524616110

/-! ## A338752.P10556228817332485374

`A326226(A217154(n+1))+A061552(n)`
-/

namespace A338752.P10556228817332485374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326226 (A217154 (n + 1)).toNat + A061552 n

end

end A338752.P10556228817332485374

/-!
# A338753: Number of integers less than n with the same period of reciprocal as n.

The programs for A338753, there is no canonical definition to state claims against.
-/

/-! ## A338753.P1645093610790383616

`A303110(A008620(n+2)+A004884(n+1))`
-/

namespace A338753.P1645093610790383616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303110 (A008620 (n + 2) + A004884 (n + 1)).toNat

end

end A338753.P1645093610790383616

/-! ## A338753.P6490702916741992984

`A309957(gcd(A112384(n+1), A217016(n+1))-1)`
-/

namespace A338753.P6490702916741992984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309957 (Int.gcd (A112384 (n + 1)) (A217016 (n + 1)) - 1)

end

end A338753.P6490702916741992984

/-! ## A338753.P13078002514742106632

`A217003(A153648(2*n+1))%A273823(n+1)`
-/

namespace A338753.P13078002514742106632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217003 (A153648 (2 * n + 1)).toNat) (A273823 (n + 1))

end

end A338753.P13078002514742106632

/-!
# A338754: Duplicate each decimal digit of n, so 0 -> 00, ..., 9 -> 99.

The programs for A338754, the canonical program `A338754.P1922863961189702143` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338754 has offset 0).

The definition of A338754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338754.P1922863961189702143

`A051022(n)*11`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A338754

/-- `A051022(n)*11` -/
def P1922863961189702143.Spec : Prop :=
  ∀ n, P1922863961189702143.a n = A338754 n

theorem P1922863961189702143.correct : P1922863961189702143.Spec := by
  intro n
  simp only [A338754]

end A338754

/-! ## A338754.P8342033226845404550

`11*A055649(A171397(n))`
-/

namespace A338754.P8342033226845404550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A055649 (A171397 n).toNat

end

end A338754.P8342033226845404550

namespace A338754

/-- `11*A055649(A171397(n))` -/
def P8342033226845404550.Spec : Prop :=
  ∀ n, P8342033226845404550.a n = A338754 n

end A338754

/-! ## A338754.P15040081518409297742

`11*A049872(A102487(n+1))`
-/

namespace A338754.P15040081518409297742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A049872 (A102487 (n + 1)).toNat

end

end A338754.P15040081518409297742

namespace A338754

/-- `11*A049872(A102487(n+1))` -/
def P15040081518409297742.Spec : Prop :=
  ∀ n, P15040081518409297742.a n = A338754 n

end A338754

/-! ## A338754.P17122726388274944200

`11*A055645(A102489(n))`
-/

namespace A338754.P17122726388274944200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A055645 (A102489 n).toNat

end

end A338754.P17122726388274944200

namespace A338754

/-- `11*A055645(A102489(n))` -/
def P17122726388274944200.Spec : Prop :=
  ∀ n, P17122726388274944200.a n = A338754 n

end A338754

/-! ## A338754.P5319266259206808713

`11*A055643(A102493(n+1))`
-/

namespace A338754.P5319266259206808713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A055643 (A102493 (n + 1)).toNat

end

end A338754.P5319266259206808713

namespace A338754

/-- `11*A055643(A102493(n+1))` -/
def P5319266259206808713.Spec : Prop :=
  ∀ n, P5319266259206808713.a n = A338754 n

end A338754

/-! ## A338754.P14648037636810264288

`A008593(n)+A008593(A051022(n)-n)`
-/

namespace A338754.P14648037636810264288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n + A008593 (A051022 n - (n : ℤ)).toNat

end

end A338754.P14648037636810264288

namespace A338754

/-- `A008593(n)+A008593(A051022(n)-n)` -/
def P14648037636810264288.Spec : Prop :=
  ∀ n, P14648037636810264288.a n = A338754 n

end A338754

/-! ## A338754.P18038687840194762747

`11*eq[n, A039723(n)]`
-/

namespace A338754.P18038687840194762747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039723 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338754.P18038687840194762747

namespace A338754

/-- `11*eq[n, A039723(n)]` -/
def P18038687840194762747.Spec : Prop :=
  ∀ n, (P18038687840194762747.a n : ℤ) = A338754 n

end A338754

/-! ## A338754.P794027360472009705

`A008593(A051022(n))`
-/

namespace A338754.P794027360472009705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A051022 n).toNat

end

end A338754.P794027360472009705

namespace A338754

/-- `A008593(A051022(n))` -/
def P794027360472009705.Spec : Prop :=
  ∀ n, P794027360472009705.a n = A338754 n

end A338754

/-! ## A338754.P17788884632140977915

`record[A321538(11*n)]`
-/

namespace A338754.P17788884632140977915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (11 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338754.P17788884632140977915

namespace A338754

/-- `record[A321538(11*n)]` -/
def P17788884632140977915.Spec : Prop :=
  ∀ n, P17788884632140977915.a n = A338754 n

end A338754

/-! ## A338754.P17815051209121188362

`A017509(A051022(n)+n)-A017509(n)`
-/

namespace A338754.P17815051209121188362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 (A051022 n + (n : ℤ)).toNat - A017509 n

end

end A338754.P17815051209121188362

namespace A338754

/-- `A017509(A051022(n)+n)-A017509(n)` -/
def P17815051209121188362.Spec : Prop :=
  ∀ n, P17815051209121188362.a n = A338754 n

end A338754

/-!
# A338755: Central coefficients of number triangle A210590.

The programs for A338755, there is no canonical definition to state claims against.
-/

/-! ## A338755.P2174464286561736152

`abs(A234937(A046092(n)))`
-/

namespace A338755.P2174464286561736152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A234937 (A046092 n).toNat|

end

end A338755.P2174464286561736152

/-! ## A338755.P14629886205379046940

`abs(A234937(A008586(∑[n])))`
-/

namespace A338755.P14629886205379046940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A234937 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat|

end

end A338755.P14629886205379046940

/-! ## A338755.P13953507729760225427

`record[gcd(A008482(n), A234937(n))]`
-/

namespace A338755.P13953507729760225427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A234937 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338755.P13953507729760225427

/-! ## A338755.P11873467481765438683

`gcd(A178798(n), A234937(A046092(n)))`
-/

namespace A338755.P11873467481765438683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178798 n) (A234937 (A046092 n).toNat)

end

end A338755.P11873467481765438683

/-! ## A338755.P4093834721169974098

`lcm(A063435(n), A234937(A046092(n)))`
-/

namespace A338755.P4093834721169974098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063435 n) (A234937 (A046092 n).toNat)

end

end A338755.P4093834721169974098

/-!
# A338757: Number of splitting-simple groups of order n; number of nontrivial groups of order n that are not semidirect products of proper subgroups.

The programs for A338757, there is no canonical definition to state claims against.
-/

/-! ## A338757.P6392218369012909796

`A069513(n+1)*A125644(A286556(n+1))`
-/

namespace A338757.P6392218369012909796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A125644 (A286556 (n + 1)).toNat

end

end A338757.P6392218369012909796

/-! ## A338757.P4896410318468504753

`A125644(A286556(n+1))%A100994(n+1)`
-/

namespace A338757.P4896410318468504753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125644 (A286556 (n + 1)).toNat) (A100994 (n + 1))

end

end A338757.P4896410318468504753

/-! ## A338757.P6114711668362527363

`A000120(lcm(A297108(n+1), A319991(n+1)))`
-/

namespace A338757.P6114711668362527363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A297108 (n + 1)) (A319991 (n + 1)))

end

end A338757.P6114711668362527363

/-! ## A338757.P1047242430716658452

`A000120((A319991(n+1)-1)*A297108(n+1))`
-/

namespace A338757.P1047242430716658452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((A319991 (n + 1) - 1) * A297108 (n + 1)).toNat

end

end A338757.P1047242430716658452

/-! ## A338757.P9963638685767551370

`A000120(A297108(n+1)/2*A319991(n+1))`
-/

namespace A338757.P9963638685767551370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A297108 (n + 1) : ℚ) / 2 * (A319991 (n + 1) : ℚ))).toNat

end

end A338757.P9963638685767551370

/-!
# A338758: a(n) is the sum of even-indexed terms (of every row) of first n rows of the triangle A237591.

The programs for A338758, there is no canonical definition to state claims against.
-/

/-! ## A338758.P17648295042881592790

`A000217(n+1)-A338204(n+1)`
-/

namespace A338758.P17648295042881592790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A338204 (n + 1)

end

end A338758.P17648295042881592790

/-! ## A338758.P1218880263812379468

`∑[A322141(n+1)]`
-/

namespace A338758.P1218880263812379468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338758.P1218880263812379468

/-! ## A338758.P11744561750487903109

`∑[∑[1-A067742(n+1)]]`
-/

namespace A338758.P11744561750487903109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A067742 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338758.P11744561750487903109

/-! ## A338758.P8548034708717042231

`∑[∑[2-A348406(n+1)]]`
-/

namespace A338758.P8548034708717042231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A348406 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338758.P8548034708717042231

/-! ## A338758.P14352548405940365269

`∑[1-A240542(n+1)+n]`
-/

namespace A338758.P14352548405940365269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A240542 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338758.P14352548405940365269

/-! ## A338758.P7374538647977527040

`∑[n+1-ceil(A338723(n+1)/2)]`
-/

namespace A338758.P7374538647977527040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ⌈(A338723 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338758.P7374538647977527040

/-! ## A338758.P7815677583844248726

`∑[Δ[n²]-n-A240542(Δ[n²]-n)]`
-/

namespace A338758.P7815677583844248726
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ) - A240542 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338758.P7815677583844248726

/-! ## A338758.P6035155773110725983

`A253145(n)%A338204(n+1)`
-/

namespace A338758.P6035155773110725983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253145 n) (A338204 (n + 1))

end

end A338758.P6035155773110725983

/-! ## A338758.P154388874479111092

`∑[A000027(n+1)%A240542(n+1)]`
-/

namespace A338758.P154388874479111092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A240542 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338758.P154388874479111092

/-!
# A338759: a(n+1) is the maximum number of groups which can be built from the terms in this sequence so far and using each term only once which result in a(n) as their product with a(1) = 1.

The programs for A338759, there is no canonical definition to state claims against.
-/

/-! ## A338759.P9752508040747160159

`A338138(n+2)-A001222(A239685(n+1))`
-/

namespace A338759.P9752508040747160159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338138 (n + 2) - A001222 (A239685 (n + 1)).toNat

end

end A338759.P9752508040747160159

/-! ## A338759.P17452336353574496232

`A338138(n+2)-A001221(A020707(n))`
-/

namespace A338759.P17452336353574496232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338138 (n + 2) - A001221 (A020707 n).toNat

end

end A338759.P17452336353574496232

/-! ## A338759.P2851039105004012862

`A338138(n+2)-A001221(A014234(n+2))`
-/

namespace A338759.P2851039105004012862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338138 (n + 2) - A001221 (A014234 (n + 2)).toNat

end

end A338759.P2851039105004012862

/-! ## A338759.P3288098383490377395

`gcd(A130490(A200816(n+1)), A347707(n))`
-/

namespace A338759.P3288098383490377395
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130490 (A200816 (n + 1)).toNat) (A347707 n)

end

end A338759.P3288098383490377395

/-! ## A338759.P17715999870593541316

`A334297(A052955(n)%A049483(n+1))`
-/

namespace A338759.P17715999870593541316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (Int.tmod (A052955 n) (A049483 (n + 1))).toNat

end

end A338759.P17715999870593541316

/-!
# A338760: Subword complexity of the infinite word Product_{i>=1} Product_{j=1..i} a^(i-j+1) b^j.

The programs for A338760, the canonical program `A338760.P4021642056561910690` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338760 has offset 0).

The definition of A338760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338760.P4763602077251615846

`∑[∑[floor(acot(n-5)+n)]+2]`
-/

namespace A338760.P4763602077251615846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((n : ℤ) - 5 : ℝ) + (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338760.P4763602077251615846

namespace A338760

/-- `∑[∑[floor(acot(n-5)+n)]+2]` -/
def P4763602077251615846.Spec : Prop :=
  ∀ n, P4763602077251615846.a n = A338760 n

end A338760

/-! ## A338760.P4021642056561910690

`∑[abs(2-∑[n])]-A267537(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A338760

/-- `∑[abs(2-∑[n])]-A267537(n)` -/
def P4021642056561910690.Spec : Prop :=
  ∀ n, P4021642056561910690.a n = A338760 n

theorem P4021642056561910690.correct : P4021642056561910690.Spec := by
  intro n
  simp only [A338760]

end A338760

/-! ## A338760.P8509037806664316613

`A047010(A238531(n))+A004006(n)`
-/

namespace A338760.P8509037806664316613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047010 (A238531 n).toNat + A004006 n

end

end A338760.P8509037806664316613

namespace A338760

/-- `A047010(A238531(n))+A004006(n)` -/
def P8509037806664316613.Spec : Prop :=
  ∀ n, P8509037806664316613.a n = A338760 n

end A338760

/-! ## A338760.P17519969035611520875

`A065941(A145018(n+1))+∑[C(n, 2)]+n`
-/

namespace A338760.P17519969035611520875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A145018 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A338760.P17519969035611520875

namespace A338760

/-- `A065941(A145018(n+1))+∑[C(n, 2)]+n` -/
def P17519969035611520875.Spec : Prop :=
  ∀ n, P17519969035611520875.a n = A338760 n

end A338760

/-! ## A338760.P6107596987055428864

`A065941(A145018(n+1))+A004006(n)`
-/

namespace A338760.P6107596987055428864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A145018 (n + 1)).toNat + A004006 n

end

end A338760.P6107596987055428864

namespace A338760

/-- `A065941(A145018(n+1))+A004006(n)` -/
def P6107596987055428864.Spec : Prop :=
  ∀ n, P6107596987055428864.a n = A338760 n

end A338760

/-!
# A338761: Subword complexity of a the infinite word Product_{i>=1} Product_{j=1..i} a^j b^(i-j+1).

The programs for A338761, there is no canonical definition to state claims against.
-/

/-! ## A338761.P2656219188973792825

`∑[∑[A008687(A024430(n))]]`
-/

namespace A338761.P2656219188973792825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A024430 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338761.P2656219188973792825

/-! ## A338761.P12733857834367060521

`A306202(A169675(n)+A000070(n))`
-/

namespace A338761.P12733857834367060521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (A169675 n + A000070 n).toNat

end

end A338761.P12733857834367060521

/-! ## A338761.P1522937770699396096

`A053800(n)-A037804(A287256(n))`
-/

namespace A338761.P1522937770699396096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053800 n - A037804 (A287256 n).toNat

end

end A338761.P1522937770699396096

/-! ## A338761.P8868525167568679778

`A000196(A017913(n)*A299896(n))`
-/

namespace A338761.P8868525167568679778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A017913 n * A299896 n).toNat

end

end A338761.P8868525167568679778

/-! ## A338761.P2981073358517041306

`A261227(n)+A048793(A343463(n+1))`
-/

namespace A338761.P2981073358517041306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261227 n + A048793 (A343463 (n + 1)).toNat

end

end A338761.P2981073358517041306

/-!
# A338762: Greatest prime Fibonacci divisor of F(n)^2 + 1 where F(n) is the n-th Fibonacci number, or 0 if no such prime factor exists.

The programs for A338762, there is no canonical definition to state claims against.
-/

/-! ## A338762.P7037772085655219971

`A000045(A335568(n+1))`
-/

namespace A338762.P7037772085655219971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A335568 (n + 1)).toNat

end

end A338762.P7037772085655219971

/-! ## A338762.P6132393823363889114

`A212804(A335568(n+1)+1)`
-/

namespace A338762.P6132393823363889114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A335568 (n + 1) + 1).toNat

end

end A338762.P6132393823363889114

/-! ## A338762.P5796541321613466253

`A103609(2*A335568(n+1))`
-/

namespace A338762.P5796541321613466253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A335568 (n + 1)).toNat

end

end A338762.P5796541321613466253

/-! ## A338762.P1405102120945245938

`A302126(2*A335568(n+1))`
-/

namespace A338762.P1405102120945245938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * A335568 (n + 1)).toNat

end

end A338762.P1405102120945245938

/-! ## A338762.P1167372085323239493

`A103609(lcm(2, A335568(n+1)))`
-/

namespace A338762.P1167372085323239493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (Int.lcm 2 (A335568 (n + 1)))

end

end A338762.P1167372085323239493

/-! ## A338762.P334545534623144737

`∑{p}[A335568(n+1), A060383(#)]`
-/

namespace A338762.P334545534623144737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A060383 p

end

end A338762.P334545534623144737

/-! ## A338762.P16526576813745277393

`A302126(A335568(n+1)+A335568(n+1))`
-/

namespace A338762.P16526576813745277393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A335568 (n + 1) + A335568 (n + 1)).toNat

end

end A338762.P16526576813745277393

/-! ## A338762.P15384169664199152415

`A103609(A335568(n+1)+A335568(n+1)+1)`
-/

namespace A338762.P15384169664199152415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A335568 (n + 1) + (A335568 (n + 1) + 1)).toNat

end

end A338762.P15384169664199152415

/-!
# A338763: Let L_1 = (1, 2, ...); for any n > 0, let M_n = Min_{k > 0} L_n(k) + L_n(k+1) and K_n = Min_{ k | L_n(k) + L_n(k+1) = M_n }, L_{n+1} is obtained by replacing the two terms L_n(K_n) and L_n(K_n+1) by M_n in L_n; a(n) = M_n.

The programs for A338763, there is no canonical definition to state claims against.
-/

/-! ## A338763.P13708849811250242850

`A077618(A291056(3*n+4))-A077618(n+1)`
-/

namespace A338763.P13708849811250242850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077618 (A291056 (3 * n + 4)).toNat - A077618 (n + 1)

end

end A338763.P13708849811250242850

/-! ## A338763.P4066529727446951907

`3*n+4-A115201(A034695(n+1))`
-/

namespace A338763.P4066529727446951907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 4 : ℤ) - A115201 (A034695 (n + 1)).toNat

end

end A338763.P4066529727446951907

/-! ## A338763.P17688922883510291603

`A007306(A020714(n))-A050326(n+1)`
-/

namespace A338763.P17688922883510291603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A020714 n).toNat - A050326 (n + 1)

end

end A338763.P17688922883510291603

/-! ## A338763.P6524507863275846086

`A007306(A020714(n))-A335452(n+1)`
-/

namespace A338763.P6524507863275846086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A020714 n).toNat - A335452 (n + 1)

end

end A338763.P6524507863275846086

/-! ## A338763.P3006779520510781695

`A323302(n+1)+A257276(A257277(3*n+2))`
-/

namespace A338763.P3006779520510781695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323302 (n + 1) + A257276 (A257277 (3 * n + 2)).toNat

end

end A338763.P3006779520510781695

/-!
# A338764: Let L_1 = (1, 2, ...); for any n > 0, let M_n = Min_{k > 0} L_n(k) + L_n(k+1) and K_n = Min_{ k | L_n(k) + L_n(k+1) = M_n }, L_{n+1} is obtained by replacing the two terms L_n(K_n) and L_n(K_n+1) by M_n in L_n; a(n) = K_n.

The programs for A338764, there is no canonical definition to state claims against.
-/

/-! ## A338764.P9182828174006342591

`A032742(A350927(n+1))-A016389(A022166(n))`
-/

namespace A338764.P9182828174006342591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A350927 (n + 1)).toNat - A016389 (A022166 n).toNat

end

end A338764.P9182828174006342591

/-!
# A338768: Sum of the remainders (p*q mod n) with p,q prime, p + q = n and p <= q.

The programs for A338768, there is no canonical definition to state claims against.
-/

/-! ## A338768.P3603254908275663959

`A118759(A243485(n+1)%A077342(n+1))`
-/

namespace A338768.P3603254908275663959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.tmod (A243485 (n + 1)) (A077342 (n + 1))).toNat

end

end A338768.P3603254908275663959

/-! ## A338768.P17561718155016376435

`A118759(A243485(n+1))%(n+1)`
-/

namespace A338768.P17561718155016376435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A118759 (A243485 (n + 1)).toNat) (n + 1 : ℤ)

end

end A338768.P17561718155016376435

/-! ## A338768.P7120097411963873010

`A243485(A000005(2^n))%(n+1)`
-/

namespace A338768.P7120097411963873010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243485 (A000005 (2 ^ n)).toNat) (n + 1 : ℤ)

end

end A338768.P7120097411963873010

/-! ## A338768.P7535862901770446825

`A243485(n+1)%A000005(A000079(n))`
-/

namespace A338768.P7535862901770446825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243485 (n + 1)) (A000005 (A000079 n).toNat)

end

end A338768.P7535862901770446825

/-!
# A338769: Sum of the remainders (p*q mod n) with p,q prime, p + q = n and p < q.

The programs for A338769, there is no canonical definition to state claims against.
-/

/-! ## A338769.P14111491578012875234

`A294345(n+1)%A001222(A007283(n))`
-/

namespace A338769.P14111491578012875234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294345 (n + 1)) (A001222 (A007283 n).toNat)

end

end A338769.P14111491578012875234

/-! ## A338769.P9412026479064974745

`A294345(A187829(n+1))%A187829(n+1)`
-/

namespace A338769.P9412026479064974745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294345 (A187829 (n + 1)).toNat) (A187829 (n + 1))

end

end A338769.P9412026479064974745

/-! ## A338769.P1504051536204421784

`A093872(n+1)%A093875(A000079(n))`
-/

namespace A338769.P1504051536204421784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093872 (n + 1)) (A093875 (A000079 n).toNat)

end

end A338769.P1504051536204421784

/-!
# A338772: The number of different probabilities p for which a coin that lands heads with probability p can, using n flips, perfectly model one flip of a fair coin.

The programs for A338772, there is no canonical definition to state claims against.
-/

/-! ## A338772.P11439762339527904486

`A036289(n)+A007947(A377495(n))`
-/

namespace A338772.P11439762339527904486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A007947 (A377495 n).toNat

end

end A338772.P11439762339527904486

/-!
# A338773: a(n) is the number of distinct k such that 0 < k < n and a(k) + ... + a(n-1) is a square number.

The programs for A338773, there is no canonical definition to state claims against.
-/

/-! ## A338773.P6461132098189855216

`A274876(n+1)+A052409(A309522(3*n+2))`
-/

namespace A338773.P6461132098189855216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274876 (n + 1) + A052409 (A309522 (3 * n + 2)).toNat

end

end A338773.P6461132098189855216

/-! ## A338773.P14009109473600177472

`A007504(A319738(2*n+3))%A319712(n+1)`
-/

namespace A338773.P14009109473600177472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007504 (A319738 (2 * n + 3)).toNat) (A319712 (n + 1))

end

end A338773.P14009109473600177472

/-!
# A338774: a(n) is the greatest k such that 0 <= k < n and the k latest terms so far sum up to a square number.

The programs for A338774, there is no canonical definition to state claims against.
-/

/-! ## A338774.P13771466387847650434

`A056239(record[A019565(n)])%or(3, n-1)`
-/

namespace A338774.P13771466387847650434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (Int.lor 3 ((n : ℤ) - 1))

end

end A338774.P13771466387847650434

/-! ## A338774.P2490304091358007148

`n%or(3, A005361(A011782(n)))`
-/

namespace A338774.P2490304091358007148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (Int.lor 3 (A005361 (A011782 n).toNat))

end

end A338774.P2490304091358007148

/-! ## A338774.P9398474108448005798

`A001222(2^n)%or(3, n-1)`
-/

namespace A338774.P9398474108448005798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (2 ^ n)) (Int.lor 3 ((n : ℤ) - 1))

end

end A338774.P9398474108448005798

/-! ## A338774.P8901673825604458800

`A008576(A037915(n))%(A001222(2^n)+1)`
-/

namespace A338774.P8901673825604458800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008576 (A037915 n).toNat) (A001222 (2 ^ n) + 1)

end

end A338774.P8901673825604458800

/-! ## A338774.P17885175866840510690

`and(A056239(A281366(n+1)), A157456(n+1))`
-/

namespace A338774.P17885175866840510690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056239 (A281366 (n + 1)).toNat) (A157456 (n + 1))

end

end A338774.P17885175866840510690

/-!
# A338776: a(n) = card(GB(2*n)), where GB(n) is the set of primes which are Goldbach-associated with n.

The programs for A338776, there is no canonical definition to state claims against.
-/

/-! ## A338776.P6509068988419790566

`A001222(A338777(n)%A138338(n+1))`
-/

namespace A338776.P6509068988419790566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A338777 n) (A138338 (n + 1))).toNat

end

end A338776.P6509068988419790566

/-! ## A338776.P4632799968514704323

`∑{e}[A338777(n), #]`
-/

namespace A338776.P4632799968514704323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338777 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A338776.P4632799968514704323

/-! ## A338776.P11111858120293848607

`A001221(A338777(n))`
-/

namespace A338776.P11111858120293848607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A338777 n).toNat

end

end A338776.P11111858120293848607

/-! ## A338776.P6287679660707353550

`∑{p}[A338777(n), A008966(#)]`
-/

namespace A338776.P6287679660707353550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008966 p

end

end A338776.P6287679660707353550

/-! ## A338776.P10854602605554264468

`∑{p}[A338777(n), A055229(#)]`
-/

namespace A338776.P10854602605554264468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A055229 p

end

end A338776.P10854602605554264468

/-!
# A338777: a(n) = Product_{k in GB(2*n)} k, where GB(n) is the set of primes which are Goldbach-associated with n.

The programs for A338777, there is no canonical definition to state claims against.
-/

/-! ## A338777.P3829300211348129630

`A354932(A350492(n))`
-/

namespace A338777.P3829300211348129630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354932 (A350492 n).toNat

end

end A338777.P3829300211348129630

/-! ## A338777.P15952936920586860032

`A110969(or(2, A015518(n)))`
-/

namespace A338777.P15952936920586860032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110969 (Int.lor 2 (A015518 n)).toNat

end

end A338777.P15952936920586860032

/-! ## A338777.P12596240547425548681

`gcd(A122378(A000108(n)), A163590(n))`
-/

namespace A338777.P12596240547425548681
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122378 (A000108 n).toNat) (A163590 n)

end

end A338777.P12596240547425548681

/-! ## A338777.P8303030407430179445

`A341143(A341161(n+1)-A341219(n))`
-/

namespace A338777.P8303030407430179445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341143 ((A341161 (n + 1) - A341219 n).toNat + 22)

end

end A338777.P8303030407430179445

/-!
# A338778: Number of ordered ways of writing n-th tetrahedral number as a sum of n positive tetrahedral numbers.

The programs for A338778, there is no canonical definition to state claims against.
-/

/-! ## A338778.P7546896737126899848

`A088455(A062446(n))`
-/

namespace A338778.P7546896737126899848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088455 (A062446 n).toNat

end

end A338778.P7546896737126899848

/-! ## A338778.P10596327075402127270

`∑{d}[A343873(A056327(n+1)), #]`
-/

namespace A338778.P10596327075402127270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343873 (A056327 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A338778.P10596327075402127270

/-! ## A338778.P13736473922137975093

`A057161(C(A002530(n), A276191(n)))`
-/

namespace A338778.P13736473922137975093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057161 (Nat.choose (A002530 n).toNat (A276191 n).toNat)

end

end A338778.P13736473922137975093

/-!
# A338780: a(n) is the square root of Sum_{k = 1..A338774(n)} A338774(n - k).

The programs for A338780, there is no canonical definition to state claims against.
-/

/-! ## A338780.P10151613354049303639

`A131360(A291769(n)%A131348(n+1))`
-/

namespace A338780.P10151613354049303639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131360 (Int.tmod (A291769 n) (A131348 (n + 1))).toNat

end

end A338780.P10151613354049303639

/-! ## A338780.P4995240374571431650

`and(A004526(n), A074149(A111500(n)))`
-/

namespace A338780.P4995240374571431650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004526 n) (A074149 (A111500 n).toNat)

end

end A338780.P4995240374571431650

/-! ## A338780.P11848952694281206337

`and(floor(n/2), A235326(ceil(n/2)))`
-/

namespace A338780.P11848952694281206337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 2⌋ (A235326 ⌈(n : ℚ) / 2⌉.toNat)

end

end A338780.P11848952694281206337

/-! ## A338780.P14972392415320226113

`floor(n/2)*A000035(∑[53*n])`
-/

namespace A338780.P14972392415320226113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  53 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ * A000035 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338780.P14972392415320226113

/-!
# A338781: Half the maximum number of distinct resistances that can be produced from a circuit of n resistors of two different kinds using only series and parallel combinations.

The programs for A338781, there is no canonical definition to state claims against.
-/

/-! ## A338781.P1001549472140177352

`A150973(n)+A001221(A338784(n+1))`
-/

namespace A338781.P1001549472140177352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150973 n + A001221 (A338784 (n + 1)).toNat

end

end A338781.P1001549472140177352

/-!
# A338782: The largest e-squarefree e-divisor of n.

The programs for A338782, there is no canonical definition to state claims against.
-/

/-! ## A338782.P14405447407584454767

`A383761(∑[A278908(n+1)])`
-/

namespace A338782.P14405447407584454767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383761 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338782.P14405447407584454767

/-! ## A338782.P17219176371344576315

`gcd(n+1, A309002(A331737(n+1)))`
-/

namespace A338782.P17219176371344576315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A309002 (A331737 (n + 1)).toNat)

end

end A338782.P17219176371344576315

/-! ## A338782.P15815518622453474383

`gcd(5*A331737(n+1)², (n+1)*A329900(n²+10)²)`
-/

namespace A338782.P15815518622453474383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * A331737 (n + 1) ^ 2) ((n + 1 : ℤ) * A329900 (n ^ 2 + 10) ^ 2)

end

end A338782.P15815518622453474383

/-! ## A338782.P18162075972970609918

`gcd(A331737(n+1)², A134478(A000124(n)))`
-/

namespace A338782.P18162075972970609918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A331737 (n + 1) ^ 2) (A134478 (A000124 n).toNat)

end

end A338782.P18162075972970609918

/-! ## A338782.P15906024913669168068

`A056622(A056554(n+1)*A102631(n+1))`
-/

namespace A338782.P15906024913669168068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A056554 (n + 1) * A102631 (n + 1)).toNat

end

end A338782.P15906024913669168068

/-! ## A338782.P8525256263029437215

`(n+1)/A055229(A000189((n+1)²))²`
-/

namespace A338782.P8525256263029437215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055229 (A000189 ((n + 1) ^ 2)).toNat ^ 2 : ℚ)

end

end A338782.P8525256263029437215

/-! ## A338782.P16232886507526769706

`A003557(A056554(n+1)²*A003557(n+1))`
-/

namespace A338782.P16232886507526769706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A056554 (n + 1) ^ 2 * A003557 (n + 1)).toNat

end

end A338782.P16232886507526769706

/-! ## A338782.P13613088129138386268

`A011262(A011262(n+1))/A056622(A056622(n+1))²`
-/

namespace A338782.P13613088129138386268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (A011262 (n + 1)).toNat : ℚ) / (A056622 (A056622 (n + 1)).toNat ^ 2 : ℚ)

end

end A338782.P13613088129138386268

/-! ## A338782.P15371407745323653186

`A011262(A011262(n+1))/A071974(A071974(n+1))²`
-/

namespace A338782.P15371407745323653186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (A011262 (n + 1)).toNat : ℚ) / (A071974 (A071974 (n + 1)).toNat ^ 2 : ℚ)

end

end A338782.P15371407745323653186

/-! ## A338782.P5423976644573683336

`A003557(A003557(n+1)*A056554(n+1)*A056554(n+1))`
-/

namespace A338782.P5423976644573683336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (n + 1) * A056554 (n + 1) * A056554 (n + 1)).toNat

end

end A338782.P5423976644573683336

/-!
# A338784: a(n) is the smallest number with exactly n divisors such that all its divisors end with the same digit (which is necessarily 1).

The programs for A338784, there is no canonical definition to state claims against.
-/

/-! ## A338784.P17420786824451653770

`A319525(A018782(n+1))`
-/

namespace A338784.P17420786824451653770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319525 (A018782 (n + 1)).toNat

end

end A338784.P17420786824451653770

/-! ## A338784.P17770582220059518352

`A319525(A340388(n+1))`
-/

namespace A338784.P17770582220059518352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319525 (A340388 (n + 1)).toNat

end

end A338784.P17770582220059518352

/-!
# A338785: a(n) is the least number k such that continued fraction for sqrt(prime(k)) has period n.

The programs for A338785, there is no canonical definition to state claims against.
-/

/-! ## A338785.P13244809551001458821

`A000720(A059800(n+1))`
-/

namespace A338785.P13244809551001458821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A059800 (n + 1)).toNat

end

end A338785.P13244809551001458821

/-! ## A338785.P10262116499289181921

`∑{d}[A059800(n+1), A061395(#)]`
-/

namespace A338785.P10262116499289181921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A338785.P10262116499289181921

/-! ## A338785.P18360402837208764200

`A061395(A059800(n+1)%A131993(n+1))`
-/

namespace A338785.P18360402837208764200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A059800 (n + 1)) (A131993 (n + 1))).toNat

end

end A338785.P18360402837208764200

/-! ## A338785.P17041717404931728988

`A061395(or(A059800(n+1), A106404(n+1)))`
-/

namespace A338785.P17041717404931728988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A059800 (n + 1)) (A106404 (n + 1))).toNat

end

end A338785.P17041717404931728988

/-! ## A338785.P7851247993173836507

`A061395(2*A059800(n+1))`
-/

namespace A338785.P7851247993173836507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A059800 (n + 1)).toNat

end

end A338785.P7851247993173836507

/-! ## A338785.P13534678654761863076

`A061395(lcm(2, A059800(n+1)))`
-/

namespace A338785.P13534678654761863076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A059800 (n + 1)))

end

end A338785.P13534678654761863076

/-! ## A338785.P8333817801343782717

`A003963(A059800(n+1)%A001539(n))`
-/

namespace A338785.P8333817801343782717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.tmod (A059800 (n + 1)) (A001539 n)).toNat

end

end A338785.P8333817801343782717

/-! ## A338785.P8414150736448416527

`A003963(A059800(n+1))%A001248(n+1)`
-/

namespace A338785.P8414150736448416527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A059800 (n + 1)).toNat) (A001248 (n + 1))

end

end A338785.P8414150736448416527

/-! ## A338785.P4004563100651619068

`A055396(A059800(n+1))%A159047(n+1)`
-/

namespace A338785.P4004563100651619068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055396 (A059800 (n + 1)).toNat) (A159047 (n + 1))

end

end A338785.P4004563100651619068

/-! ## A338785.P11816381662513052403

`A055396(2*A059800(n+1)-A059800(n+1))`
-/

namespace A338785.P11816381662513052403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A059800 (n + 1) - A059800 (n + 1)).toNat

end

end A338785.P11816381662513052403

/-!
# A338786: Numbers in A166981 that are neither superior highly composite nor colossally abundant.

The programs for A338786, there is no canonical definition to state claims against.
-/

/-! ## A338786.P7553590854959436684

`∩[A189228(n+1), A333655(n+1)]`
-/

namespace A338786.P7553590854959436684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338786.P7553590854959436684

/-! ## A338786.P11985672204675168618

`∩[A073349(n+1), A333655(n+1)]`
-/

namespace A338786.P11985672204675168618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338786.P11985672204675168618

/-!
# A338787: a(n) = (n!/2) * Sum_{k=1..n-1} A000593(k)*A000593(n-k)/(k*(n-k)).

The programs for A338787, there is no canonical definition to state claims against.
-/

/-! ## A338787.P7830210535975711277

`A075525(A133263(n))-A000007(n)`
-/

namespace A338787.P7830210535975711277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075525 (A133263 n).toNat - A000007 n

end

end A338787.P7830210535975711277

/-! ## A338787.P8976287392526387316

`A075525(A133263(n))*A178334(n)`
-/

namespace A338787.P8976287392526387316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075525 (A133263 n).toNat * A178334 n

end

end A338787.P8976287392526387316

/-! ## A338787.P8061782363585992413

`lcm(A000196(n), A075525(A133263(n)))`
-/

namespace A338787.P8061782363585992413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000196 n) (A075525 (A133263 n).toNat)

end

end A338787.P8061782363585992413

/-! ## A338787.P6413575853401474860

`char[A242971(n)]*A075525(A133263(n))`
-/

namespace A338787.P6413575853401474860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242971 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A075525 (A133263 n).toNat

end

end A338787.P6413575853401474860

/-! ## A338787.P11221851589740107629

`A075525(A152950(n+1)-1)*A178334(n)`
-/

namespace A338787.P11221851589740107629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075525 (A152950 (n + 1) - 1).toNat * A178334 n

end

end A338787.P11221851589740107629

/-! ## A338787.P5122414476587175082

`A075525(A133263(n))-A074038(2*(n+1))`
-/

namespace A338787.P5122414476587175082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075525 (A133263 n).toNat - A074038 (2 * (n + 1))

end

end A338787.P5122414476587175082

/-! ## A338787.P5981616125897200714

`A001221(A034444(n+1))*A075525(A133263(n))`
-/

namespace A338787.P5981616125897200714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A034444 (n + 1)).toNat * A075525 (A133263 n).toNat

end

end A338787.P5981616125897200714

/-!
# A338788: a(n) = (n!/6) * Sum_{i,j,k > 0 and i+j+k=n} A000593(i)*A000593(j)*A000593(k)/(i*j*k).

The programs for A338788, there is no canonical definition to state claims against.
-/

/-! ## A338788.P16199721542942089075

`A075525(A152950(n+1))*A157928(n)`
-/

namespace A338788.P16199721542942089075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075525 (A152950 (n + 1)).toNat * A157928 n

end

end A338788.P16199721542942089075

/-! ## A338788.P16614749339152438723

`A055010(n)%2*A075525(A152950(n+1))`
-/

namespace A338788.P16614749339152438723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055010 n) 2 * A075525 (A152950 (n + 1)).toNat

end

end A338788.P16614749339152438723

/-! ## A338788.P2994916029686555834

`(A000010(n+1)+1)%2*A075525(A152950(n+1))`
-/

namespace A338788.P2994916029686555834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1) + 1) 2 * A075525 (A152950 (n + 1)).toNat

end

end A338788.P2994916029686555834

/-! ## A338788.P2455644118582512437

`A075525(A152950(n+1))%A001147(n)`
-/

namespace A338788.P2455644118582512437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075525 (A152950 (n + 1)).toNat) (A001147 n)

end

end A338788.P2455644118582512437

/-! ## A338788.P2754074988496987705

`A178334(n)%A329005(n+2)*A075525(A152950(n+1))`
-/

namespace A338788.P2754074988496987705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178334 n) (A329005 (n + 2)) * A075525 (A152950 (n + 1)).toNat

end

end A338788.P2754074988496987705

/-!
# A338790: a(n) = rad(n)^2 - sigma(n), where rad(n) is the squarefree kernel of n (A007947) and sigma(n) is the sum of divisors of n (A000203).

The programs for A338790, the canonical program `A338790.P8289507277293709777` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338790 has offset 1).

The definition of A338790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A007947(n+1)²-A000203(n+1)` (program `A338790.P8289507277293709777`, by `A338790.P8289507277293709777.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A338790.P7424118884664099733

`A078615(n+1)-A000203(n+1)`
-/

namespace A338790.P7424118884664099733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1) - A000203 (n + 1)

end

end A338790.P7424118884664099733

namespace A338790

/-- `A078615(n+1)-A000203(n+1)` -/
def P7424118884664099733.Spec : Prop :=
  ∀ n, P7424118884664099733.a n = A338790 (n + 1)

end A338790

/-! ## A338790.P8289507277293709777

`A007947(n+1)²-A000203(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A338790

/-- `A007947(n+1)²-A000203(n+1)` -/
def P8289507277293709777.Spec : Prop :=
  ∀ n, P8289507277293709777.a n = A338790 (n + 1)

theorem P8289507277293709777.correct : P8289507277293709777.Spec := by
  intro n
  simp only [A338790, Nat.add_sub_cancel]

end A338790

/-! ## A338790.P14908183171877765620

`∏{p}[n+1, #²]-∑{d}[n+1, #]`
-/

namespace A338790.P14908183171877765620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A338790.P14908183171877765620

namespace A338790

/-- `∏{p}[n+1, #²]-∑{d}[n+1, #]` -/
def P14908183171877765620.Spec : Prop :=
  ∀ n, P14908183171877765620.a n = A338790 (n + 1)

end A338790

/-! ## A338790.P9506783592194910319

`A000290(∏{p}[n+1, #])-∑{d}[n+1, #]`
-/

namespace A338790.P9506783592194910319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∏ p ∈ Nat.primeFactors (f1 n), p) - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A338790.P9506783592194910319

namespace A338790

/-- `A000290(∏{p}[n+1, #])-∑{d}[n+1, #]` -/
def P9506783592194910319.Spec : Prop :=
  ∀ n, P9506783592194910319.a n = A338790 (n + 1)

theorem P9506783592194910319.correct : P9506783592194910319.Spec := by
  intro n
  simp only [A338790, Nat.add_sub_cancel, A338790.P9506783592194910319.f1, A338790.P9506783592194910319.f2, A338790.P9506783592194910319.a, A338790.P8289507277293709777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000290, A000290.P12206242496348924484.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338790

/-! ## A338790.P7089328002535168773

`∏{p}[n+1, #²]-(A001065(n+1)+n+1)`
-/

namespace A338790.P7089328002535168773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℤ) - (A001065 (n + 1) + (n + 1 : ℤ))

end

end A338790.P7089328002535168773

namespace A338790

/-- `∏{p}[n+1, #²]-(A001065(n+1)+n+1)` -/
def P7089328002535168773.Spec : Prop :=
  ∀ n, P7089328002535168773.a n = A338790 (n + 1)

end A338790

/-! ## A338790.P13600061651880875169

`A007947(n+1)²-Δ[A160664(n)]`
-/

namespace A338790.P13600061651880875169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ 2 - (f1 (n + 1) - f1 n)

end

end A338790.P13600061651880875169

namespace A338790

/-- `A007947(n+1)²-Δ[A160664(n)]` -/
def P13600061651880875169.Spec : Prop :=
  ∀ n, P13600061651880875169.a n = A338790 (n + 1)

end A338790

/-! ## A338790.P5095068226999056596

`A062953(n+1)²-A000203(n+1)`
-/

namespace A338790.P5095068226999056596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1) ^ 2 - A000203 (n + 1)

end

end A338790.P5095068226999056596

namespace A338790

/-- `A062953(n+1)²-A000203(n+1)` -/
def P5095068226999056596.Spec : Prop :=
  ∀ n, P5095068226999056596.a n = A338790 (n + 1)

end A338790

/-! ## A338790.P139866727754384582

`A015052(A015052(n+1))²-A000203(n+1)`
-/

namespace A338790.P139866727754384582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat ^ 2 - A000203 (n + 1)

end

end A338790.P139866727754384582

namespace A338790

/-- `A015052(A015052(n+1))²-A000203(n+1)` -/
def P139866727754384582.Spec : Prop :=
  ∀ n, P139866727754384582.a n = A338790 (n + 1)

end A338790

/-! ## A338790.P7769585240718051736

`A015053(A015053(n+1))²-A000203(n+1)`
-/

namespace A338790.P7769585240718051736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat ^ 2 - A000203 (n + 1)

end

end A338790.P7769585240718051736

namespace A338790

/-- `A015053(A015053(n+1))²-A000203(n+1)` -/
def P7769585240718051736.Spec : Prop :=
  ∀ n, P7769585240718051736.a n = A338790 (n + 1)

end A338790

/-! ## A338790.P14693901157203135768

`A053166(A053166(n+1))²-A000203(n+1)`
-/

namespace A338790.P14693901157203135768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053166 (n + 1)).toNat ^ 2 - A000203 (n + 1)

end

end A338790.P14693901157203135768

namespace A338790

/-- `A053166(A053166(n+1))²-A000203(n+1)` -/
def P14693901157203135768.Spec : Prop :=
  ∀ n, P14693901157203135768.a n = A338790 (n + 1)

end A338790

/-! ## A338790.P13667820651393291355

`A078615(n+1)-(A326142(n+1)+A007947(n+1))`
-/

namespace A338790.P13667820651393291355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1) - (A326142 (n + 1) + A007947 (n + 1))

end

end A338790.P13667820651393291355

namespace A338790

/-- `A078615(n+1)-(A326142(n+1)+A007947(n+1))` -/
def P13667820651393291355.Spec : Prop :=
  ∀ n, P13667820651393291355.a n = A338790 (n + 1)

theorem P13667820651393291355.correct : P13667820651393291355.Spec := by
  intro n
  simp only [A338790, Nat.add_sub_cancel, A338790.P13667820651393291355.a, A338790.P8289507277293709777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A078615, A078615.P3889666147541299354.a, A326142, A326142.P15415912859726343761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338790

/-! ## A338790.P6662005000374057145

`A064549(n+1)/A003557(n+1)-A000203(n+1)`
-/

namespace A338790.P6662005000374057145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ) - (A000203 (n + 1) : ℚ)

end

end A338790.P6662005000374057145

namespace A338790

/-- `A064549(n+1)/A003557(n+1)-A000203(n+1)` -/
def P6662005000374057145.Spec : Prop :=
  ∀ n, P6662005000374057145.a n = (A338790 (n + 1) : ℚ)

end A338790

/-! ## A338790.P12224425461493943413

`A007947(n+1)²-(A048146(n+1)+A034448(n+1))`
-/

namespace A338790.P12224425461493943413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ 2 - (A048146 (n + 1) + A034448 (n + 1))

end

end A338790.P12224425461493943413

namespace A338790

/-- `A007947(n+1)²-(A048146(n+1)+A034448(n+1))` -/
def P12224425461493943413.Spec : Prop :=
  ∀ n, P12224425461493943413.a n = A338790 (n + 1)

theorem P12224425461493943413.correct : P12224425461493943413.Spec := by
  intro n
  simp only [A338790, Nat.add_sub_cancel, A338790.P12224425461493943413.a, A338790.P8289507277293709777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A048146, A048146.P9985884013456677192.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338790

/-! ## A338790.P10401249700579506144

`(A000203(n+1)-A326142(n+1))²-A000203(n+1)`
-/

namespace A338790.P10401249700579506144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A326142 (n + 1)) ^ 2 - A000203 (n + 1)

end

end A338790.P10401249700579506144

namespace A338790

/-- `(A000203(n+1)-A326142(n+1))²-A000203(n+1)` -/
def P10401249700579506144.Spec : Prop :=
  ∀ n, P10401249700579506144.a n = A338790 (n + 1)

theorem P10401249700579506144.correct : P10401249700579506144.Spec := by
  intro n
  simp only [A338790, Nat.add_sub_cancel, A338790.P10401249700579506144.a, A338790.P8289507277293709777.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A338790

/-! ## A338790.P15964315404115363579

`A007948((n+1)²)-A000203(n+1)`
-/

namespace A338790.P15964315404115363579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 ((n + 1) ^ 2) - A000203 (n + 1)

end

end A338790.P15964315404115363579

namespace A338790

/-- `A007948((n+1)²)-A000203(n+1)` -/
def P15964315404115363579.Spec : Prop :=
  ∀ n, P15964315404115363579.a n = A338790 (n + 1)

end A338790

/-! ## A338790.P1528408012725399364

`A066503(A007947(n+1)²)-A326142(n+1)`
-/

namespace A338790.P1528408012725399364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (A007947 (n + 1) ^ 2).toNat - A326142 (n + 1)

end

end A338790.P1528408012725399364

namespace A338790

/-- `A066503(A007947(n+1)²)-A326142(n+1)` -/
def P1528408012725399364.Spec : Prop :=
  ∀ n, P1528408012725399364.a n = A338790 (n + 1)

end A338790

/-!
# A338791: a(n) is the number of Platonic solids in three dimensions with all vertices (x,y,z) in the set {1,2,...,n}^3.

The programs for A338791, there is no canonical definition to state claims against.
-/

/-! ## A338791.P13954610646410069848

`A065295(A001147(n))*A071521(n+1)`
-/

namespace A338791.P13954610646410069848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (A001147 n).toNat * A071521 (n + 1)

end

end A338791.P13954610646410069848

/-! ## A338791.P16970790679351267301

`A065295(A001147(n))*A327704(n+1)`
-/

namespace A338791.P16970790679351267301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065295 (A001147 n).toNat * A327704 (n + 1)

end

end A338791.P16970790679351267301

/-!
# A338793: G.f.: Sum_{n>=0} ( Product_{k=1..n} 1 + x*(1+x)^k ) / 2^(n+1).

The programs for A338793, there is no canonical definition to state claims against.
-/

/-! ## A338793.P7144956418686859830

`A124741(A295739(n)+1)`
-/

namespace A338793.P7144956418686859830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A295739 n + 1).toNat

end

end A338793.P7144956418686859830

/-! ## A338793.P10479973960253996269

`A130497(A323788(n)+1)`
-/

namespace A338793.P10479973960253996269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A323788 n + 1).toNat

end

end A338793.P10479973960253996269

/-! ## A338793.P8930626878185638300

`A003074(4*A178119(n))`
-/

namespace A338793.P8930626878185638300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (4 * A178119 n).toNat

end

end A338793.P8930626878185638300

/-!
# A338794: Indices k of Fibonacci numbers F(k) such that F(k)^2 + 1 has no Fibonacci prime factor.

The programs for A338794, there is no canonical definition to state claims against.
-/

/-! ## A338794.P9493954433383503690

`eq[0, A339082(n+1)]+1`
-/

namespace A338794.P9493954433383503690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338794.P9493954433383503690

/-! ## A338794.P12991765530036342906

`eq[0, A339082(A028310(n))]`
-/

namespace A338794.P12991765530036342906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338794.P12991765530036342906

/-! ## A338794.P18206610787925672126

`A061800(eq[0, A335568(n+1)])`
-/

namespace A338794.P18206610787925672126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338794.P18206610787925672126

/-! ## A338794.P18151177855900738531

`A061767(eq[0, A339082(n+1)])`
-/

namespace A338794.P18151177855900738531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338794.P18151177855900738531

/-! ## A338794.P3565170721834158701

`A061800(eq[0, A339082(n+1)])`
-/

namespace A338794.P3565170721834158701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338794.P3565170721834158701

/-! ## A338794.P10519465631409881729

`A153152(eq[0, A335568(n+1)])`
-/

namespace A338794.P10519465631409881729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335568 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338794.P10519465631409881729

/-! ## A338794.P8279750272047636438

`eq[A089810(n), A335568(n+1)]+1`
-/

namespace A338794.P8279750272047636438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089810 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335568 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A338794.P8279750272047636438

/-! ## A338794.P7417668273997062635

`lt[A339082(n+1), A055396(A089026(n+1)+1)]+1`
-/

namespace A338794.P7417668273997062635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A089026 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A338794.P7417668273997062635

/-! ## A338794.P2162674231792908262

`eq[0, A335568(A233583(n+1))]`
-/

namespace A338794.P2162674231792908262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335568 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338794.P2162674231792908262

/-!
# A338795: Each term of A003215 (centered hexagonal numbers) is multiplied by the corresponding term of A003154 (centered dodecagonal numbers).

The programs for A338795, the canonical program `A338795.P14357475889887153604` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338795 has offset 1).

The definition of A338795 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338795.P3776535495568951931

`18*(n+1)^4-36*(n+1)^3+27*(n+1)²-9*(n+1)+1`
-/

namespace A338795.P3776535495568951931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (18 * (n + 1) ^ 4 : ℤ) - (36 * (n + 1) ^ 3 : ℤ) + (27 * (n + 1) ^ 2 : ℤ) - (9 * (n + 1) : ℤ) + 1

end

end A338795.P3776535495568951931

namespace A338795

/-- `18*(n+1)^4-36*(n+1)^3+27*(n+1)²-9*(n+1)+1` -/
def P3776535495568951931.Spec : Prop :=
  ∀ n, P3776535495568951931.a n = A338795 (n + 1)

theorem P3776535495568951931.correct : P3776535495568951931.Spec := by
  intro n
  simp only [A338795, Nat.add_sub_cancel, A338795.P3776535495568951931.a, A338795.P14357475889887153604.a, A003154, A003154.P12292724974289202885.a, A003215, A003215.P5851317289441473820.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A338795

/-! ## A338795.P14357475889887153604

`A003215(n)*A003154(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A338795

/-- `A003215(n)*A003154(n+1)` -/
def P14357475889887153604.Spec : Prop :=
  ∀ n, P14357475889887153604.a n = A338795 (n + 1)

theorem P14357475889887153604.correct : P14357475889887153604.Spec := by
  intro n
  simp only [A338795, Nat.add_sub_cancel]

end A338795

/-! ## A338795.P4616802716156855755

`C(Δ[2*n^3], 2)`
-/

namespace A338795.P4616802716156855755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2

end

end A338795.P4616802716156855755

namespace A338795

/-- `C(Δ[2*n^3], 2)` -/
def P4616802716156855755.Spec : Prop :=
  ∀ n, (P4616802716156855755.a n : ℤ) = A338795 (n + 1)

end A338795

/-! ## A338795.P18255064646257501339

`A128880(∑[2*n]+1)`
-/

namespace A338795.P18255064646257501339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128880 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A338795.P18255064646257501339

namespace A338795

/-- `A128880(∑[2*n]+1)` -/
def P18255064646257501339.Spec : Prop :=
  ∀ n, P18255064646257501339.a n = A338795 (n + 1)

end A338795

/-! ## A338795.P17339681952370675176

`A272399(∑[2*n]+1)`
-/

namespace A338795.P17339681952370675176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272399 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A338795.P17339681952370675176

namespace A338795

/-- `A272399(∑[2*n]+1)` -/
def P17339681952370675176.Spec : Prop :=
  ∀ n, P17339681952370675176.a n = A338795 (n + 1)

end A338795

/-! ## A338795.P18343395687949477094

`A014634(∑[3*n])`
-/

namespace A338795.P18343395687949477094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338795.P18343395687949477094

namespace A338795

/-- `A014634(∑[3*n])` -/
def P18343395687949477094.Spec : Prop :=
  ∀ n, P18343395687949477094.a n = A338795 (n + 1)

end A338795

/-! ## A338795.P9133727183707119712

`A177049(∑[4*n])`
-/

namespace A338795.P9133727183707119712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338795.P9133727183707119712

namespace A338795

/-- `A177049(∑[4*n])` -/
def P9133727183707119712.Spec : Prop :=
  ∀ n, P9133727183707119712.a n = A338795 (n + 1)

end A338795

/-! ## A338795.P17419243681351598551

`A060544((n+1)²+n²)`
-/

namespace A338795.P17419243681351598551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 ((n + 1) ^ 2 + n ^ 2)

end

end A338795.P17419243681351598551

namespace A338795

/-- `A060544((n+1)²+n²)` -/
def P17419243681351598551.Spec : Prop :=
  ∀ n, P17419243681351598551.a n = A338795 (n + 1)

end A338795

/-! ## A338795.P11828828831469231627

`A318624((n+1)²+n²)`
-/

namespace A338795.P11828828831469231627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318624 ((n + 1) ^ 2 + n ^ 2)

end

end A338795.P11828828831469231627

namespace A338795

/-- `A318624((n+1)²+n²)` -/
def P11828828831469231627.Spec : Prop :=
  ∀ n, P11828828831469231627.a n = A338795 (n + 1)

end A338795

/-! ## A338795.P1159626763806951242

`A000217(A003154(n+1))`
-/

namespace A338795.P1159626763806951242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003154 (n + 1)).toNat

end

end A338795.P1159626763806951242

namespace A338795

/-- `A000217(A003154(n+1))` -/
def P1159626763806951242.Spec : Prop :=
  ∀ n, P1159626763806951242.a n = A338795 (n + 1)

end A338795

/-!
# A338796: Triangle T read by rows: T(n, k) is the k-th row sum of the symmetric Toeplitz matrix M(n) whose first row consists of a single zero followed by successive positive integers repeated (A004526).

The programs for A338796, there is no canonical definition to state claims against.
-/

/-! ## A338796.P9603583757436913125

`A333124(A043569(n+1))`
-/

namespace A338796.P9603583757436913125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333124 (A043569 (n + 1)).toNat

end

end A338796.P9603583757436913125

/-! ## A338796.P1300473846556754114

`A333124(A190620(n+1))`
-/

namespace A338796.P1300473846556754114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333124 (A190620 (n + 1)).toNat

end

end A338796.P1300473846556754114

/-! ## A338796.P1606272195202371041

`A333124(A204985(n+1))`
-/

namespace A338796.P1606272195202371041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333124 (A204985 (n + 1)).toNat

end

end A338796.P1606272195202371041

/-! ## A338796.P12020066178820817564

`∑{e}[A036561(n), A075354(#)]`
-/

namespace A338796.P12020066178820817564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A075354 (Nat.factorization (f1 n).natAbs p)

end

end A338796.P12020066178820817564

/-! ## A338796.P16488237216985041080

`∑{e}[A036561(n), A087811(#)]`
-/

namespace A338796.P16488237216985041080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087811 (Nat.factorization (f1 n).natAbs p)

end

end A338796.P16488237216985041080

/-! ## A338796.P5785311628723594896

`∑{e}[A036561(n), A088900(#)]`
-/

namespace A338796.P5785311628723594896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A088900 (Nat.factorization (f1 n).natAbs p)

end

end A338796.P5785311628723594896

/-! ## A338796.P9826508429959873202

`∑{e}[A175840(n), A075354(#)]`
-/

namespace A338796.P9826508429959873202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A075354 (Nat.factorization (f1 n).natAbs p)

end

end A338796.P9826508429959873202

/-! ## A338796.P13946090094183694355

`∑{e}[A175840(n), A087811(#)]`
-/

namespace A338796.P13946090094183694355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A087811 (Nat.factorization (f1 n).natAbs p)

end

end A338796.P13946090094183694355

/-! ## A338796.P18262980996936951549

`∑{e}[A036561(n), A002620(#+1)]`
-/

namespace A338796.P18262980996936951549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002620 (Nat.factorization (f1 n).natAbs p + 1)

end

end A338796.P18262980996936951549

/-! ## A338796.P9599839401606406332

`A002265(A335262(n)+A014132(n+1))`
-/

namespace A338796.P9599839401606406332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A335262 n + A014132 (n + 1)).toNat

end

end A338796.P9599839401606406332

/-!
# A338797: Triangle read by rows: T(n,k) is the least m such that there exist positive integers x, y and z satisfying x/n + y/k = z/m where all fractions are reduced; 1 <= k <= n.

The programs for A338797, there is no canonical definition to state claims against.
-/

/-! ## A338797.P12208522710968787656

`A051173(n+1)/A165430(n+1)`
-/

namespace A338797.P12208522710968787656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A165430 (n + 1) : ℚ)

end

end A338797.P12208522710968787656

/-! ## A338797.P14503108445558811480

`∑[A010054(n)]*A164306(n+1)/A165430(n+1)`
-/

namespace A338797.P14503108445558811480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * A164306 (n + 1) : ℤ) : ℚ) / (A165430 (n + 1) : ℚ)

end

end A338797.P14503108445558811480

/-! ## A338797.P1579124429351991239

`A002260(n+1)*A054531(n+1)/A165430(n+1)`
-/

namespace A338797.P1579124429351991239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) * A054531 (n + 1) : ℚ) / (A165430 (n + 1) : ℚ)

end

end A338797.P1579124429351991239

/-! ## A338797.P12692684049377424979

`A050873(n+1)*A051537(n+1)/A165430(n+1)`
-/

namespace A338797.P12692684049377424979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050873 (n + 1) * A051537 (n + 1) : ℚ) / (A165430 (n + 1) : ℚ)

end

end A338797.P12692684049377424979

/-! ## A338797.P6888028066942740617

`(A003056(n)+1)*A164306(n+1)/A165430(n+1)`
-/

namespace A338797.P6888028066942740617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003056 n + 1) * A164306 (n + 1) : ℚ) / (A165430 (n + 1) : ℚ)

end

end A338797.P6888028066942740617

/-! ## A338797.P18262436883447228690

`lcm(A002024(n+1), A002260(n+1))/A165430(n+1)`
-/

namespace A338797.P18262436883447228690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A002024 (n + 1)) (A002260 (n + 1)) : ℚ) / (A165430 (n + 1) : ℚ)

end

end A338797.P18262436883447228690

/-! ## A338797.P4781198072249290318

`A002260(n+1)*A277227(n+2)/A165430(n+1)`
-/

namespace A338797.P4781198072249290318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) * A277227 (n + 2) : ℚ) / (A165430 (n + 1) : ℚ)

end

end A338797.P4781198072249290318

/-! ## A338797.P8734677190868475236

`A051173(n+1)/A225174(A245300(n)+1)`
-/

namespace A338797.P8734677190868475236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A225174 (A245300 n + 1).toNat : ℚ)

end

end A338797.P8734677190868475236

/-! ## A338797.P5417533294585455528

`A290103(A087112(n+1))/A165430(n+1)`
-/

namespace A338797.P5417533294585455528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290103 (A087112 (n + 1)).toNat : ℚ) / (A165430 (n + 1) : ℚ)

end

end A338797.P5417533294585455528

/-! ## A338797.P7983233575590799211

`A051173(n+1)/A225174(A286146(n+1))`
-/

namespace A338797.P7983233575590799211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051173 (n + 1) : ℚ) / (A225174 (A286146 (n + 1)).toNat : ℚ)

end

end A338797.P7983233575590799211

/-!
# A338798: a(n) = Sum_{k=1..n-1} lcm(lcm(n, k), lcm(n, n-k)).

The programs for A338798, the canonical program `A338798.P12407650817915731287` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338798 has offset 1).

The definition of A338798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338798.P12407650817915731287

`∑{d}[n+1, (n+1)*A057789(#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338798

/-- `∑{d}[n+1, (n+1)*A057789(#)]` -/
def P12407650817915731287.Spec : Prop :=
  ∀ n, P12407650817915731287.a n = A338798 (n + 1)

theorem P12407650817915731287.correct : P12407650817915731287.Spec := by
  intro n
  simp only [A338798, Nat.add_sub_cancel]

end A338798

/-! ## A338798.P920288879740093093

`(n+1)*(A056789(n+1)-A332654(n+1))`
-/

namespace A338798.P920288879740093093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A056789 (n + 1) - A332654 (n + 1))

end

end A338798.P920288879740093093

namespace A338798

/-- `(n+1)*(A056789(n+1)-A332654(n+1))` -/
def P920288879740093093.Spec : Prop :=
  ∀ n, P920288879740093093.a n = A338798 (n + 1)

end A338798

