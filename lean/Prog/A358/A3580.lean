import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C026

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A358001: Numbers whose number of divisors is coprime to 210.

The programs for A358001, there is no canonical definition to state claims against.
-/

/-! ## A358001.P5400742677423580237

`A358250(n+1)²`
-/

namespace A358001.P5400742677423580237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358250 (n + 1) ^ 2

end

end A358001.P5400742677423580237

/-! ## A358001.P12901107516053548229

`A358250(n+1)^(2%A001694(n+1))`
-/

namespace A358001.P12901107516053548229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358250 (n + 1) : ℚ) ^ (Int.tmod 2 (A001694 (n + 1)) : ℤ)

end

end A358001.P12901107516053548229

/-! ## A358001.P3867888164020277581

`A358250(n+1)^A000005(A056608(n+1))`
-/

namespace A358001.P3867888164020277581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358250 (n + 1) : ℚ) ^ (A000005 (A056608 (n + 1)).toNat : ℤ)

end

end A358001.P3867888164020277581

/-! ## A358001.P10643297047768768648

`A358250(n+1)^A000005(A230775(n+1))`
-/

namespace A358001.P10643297047768768648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358250 (n + 1) : ℚ) ^ (A000005 (A230775 (n + 1)).toNat : ℤ)

end

end A358001.P10643297047768768648

/-! ## A358001.P6228086926780616684

`A358250(n+1)^A102457(A102457(2*(n+3)))`
-/

namespace A358001.P6228086926780616684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358250 (n + 1) : ℚ) ^ (A102457 (A102457 (2 * (n + 3))).toNat : ℤ)

end

end A358001.P6228086926780616684

/-! ## A358001.P16378702879264995162

`A358250(n+1)^A000040(A358236(2*n+5))`
-/

namespace A358001.P16378702879264995162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358250 (n + 1) : ℚ) ^ (A000040 (A358236 (2 * n + 5)).toNat : ℤ)

end

end A358001.P16378702879264995162

/-! ## A358001.P14043775173858033845

`A358250(n+1)^A102457(A166061(n+5))`
-/

namespace A358001.P14043775173858033845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358250 (n + 1) : ℚ) ^ (A102457 (A166061 (n + 5)).toNat : ℤ)

end

end A358001.P14043775173858033845

/-! ## A358001.P7060524205504411837

`A358250(n+1)^A020639(A358246(3*n+4))`
-/

namespace A358001.P7060524205504411837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358250 (n + 1) : ℚ) ^ (A020639 (A358246 (3 * n + 4)).toNat : ℤ)

end

end A358001.P7060524205504411837

/-! ## A358001.P2369533087150032335

`A358250(n+1)^A020639(A100966(3*n+2))`
-/

namespace A358001.P2369533087150032335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358250 (n + 1) : ℚ) ^ (A020639 (A100966 (3 * n + 2)).toNat : ℤ)

end

end A358001.P2369533087150032335

/-! ## A358001.P9935668686471228431

`A358250(n+1)^A020639(A304450(n+1))`
-/

namespace A358001.P9935668686471228431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358250 (n + 1) : ℚ) ^ (A020639 (A304450 (n + 1)).toNat : ℤ)

end

end A358001.P9935668686471228431

/-! ## A358001.P12794359283967203223

`A358250(n+1)^A000005(A358238(n+1))`
-/

namespace A358001.P12794359283967203223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358250 (n + 1) : ℚ) ^ (A000005 (A358238 (n + 1)).toNat : ℤ)

end

end A358001.P12794359283967203223

/-! ## A358001.P4689629784197023810

`A358250(n+1)^A000005(A060846(n+1))`
-/

namespace A358001.P4689629784197023810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358250 (n + 1) : ℚ) ^ (A000005 (A060846 (n + 1)).toNat : ℤ)

end

end A358001.P4689629784197023810

/-!
# A358005: Number of partitions of n into 5 distinct positive Fibonacci numbers (with a single type of 1).

The programs for A358005, there is no canonical definition to state claims against.
-/

/-! ## A358005.P1917573213473576513

`A321107(A274978(3*(n+1)))%2`
-/

namespace A358005.P1917573213473576513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321107 (A274978 (3 * (n + 1))).toNat) 2

end

end A358005.P1917573213473576513

/-! ## A358005.P3092688580267993701

`A168046(and(A324633(n+6), A341450(n)))`
-/

namespace A358005.P3092688580267993701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (Int.land (A324633 (n + 6)) (A341450 n)).toNat

end

end A358005.P3092688580267993701

/-! ## A358005.P16621062119965856753

`A101688(A047673(n+1)%A007569(n+1))`
-/

namespace A358005.P16621062119965856753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 (Int.tmod (A047673 (n + 1)) (A007569 (n + 1))).toNat

end

end A358005.P16621062119965856753

/-! ## A358005.P17635513285428377839

`A014577(A338855(2*n+3)-A138557(n+1))`
-/

namespace A358005.P17635513285428377839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (A338855 (2 * n + 3) - A138557 (n + 1)).toNat

end

end A358005.P17635513285428377839

/-! ## A358005.P4026126192100271301

`A382425(A109399(n+1))`
-/

namespace A358005.P4026126192100271301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382425 (A109399 (n + 1)).toNat

end

end A358005.P4026126192100271301

/-!
# A358006: Number of partitions of n into 6 distinct positive Fibonacci numbers (with a single type of 1).

The programs for A358006, there is no canonical definition to state claims against.
-/

/-! ## A358006.P16020067720489575287

`A358007(A022342(n+1)%A342719(n+5))`
-/

namespace A358006.P16020067720489575287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358007 ((Int.tmod (A022342 (n + 1)) (A342719 (n + 5))).toNat + 53)

end

end A358006.P16020067720489575287

/-! ## A358006.P12984142287746515352

`A358007(A022342(n+1))^A000217(n)`
-/

namespace A358006.P12984142287746515352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358007 ((A022342 (n + 1)).toNat + 53) : ℚ) ^ (A000217 n : ℤ)

end

end A358006.P12984142287746515352

/-! ## A358006.P9621025255456064987

`A358007(A022342(n+1))^A005900(n)`
-/

namespace A358006.P9621025255456064987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358007 ((A022342 (n + 1)).toNat + 53) : ℚ) ^ (A005900 n : ℤ)

end

end A358006.P9621025255456064987

/-! ## A358006.P5449825989615155885

`A358007(A022342(n+1))^A011971(n)`
-/

namespace A358006.P5449825989615155885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358007 ((A022342 (n + 1)).toNat + 53) : ℚ) ^ (A011971 n : ℤ)

end

end A358006.P5449825989615155885

/-! ## A358006.P4743271136912134197

`A358007(A022342(n+1))^A017990(n)`
-/

namespace A358006.P4743271136912134197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358007 ((A022342 (n + 1)).toNat + 53) : ℚ) ^ (A017990 n : ℤ)

end

end A358006.P4743271136912134197

/-!
# A358007: Number of partitions of n into 7 distinct positive Fibonacci numbers (with a single type of 1).

The programs for A358007, there is no canonical definition to state claims against.
-/

/-! ## A358007.P16198231722228805639

`A357731(A096400(n+1)+A004526(n))`
-/

namespace A358007.P16198231722228805639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357731 (A096400 (n + 1) + A004526 n).toNat

end

end A358007.P16198231722228805639

/-! ## A358007.P18284096217230141745

`A358006(C(A005206(n), A358006(n)))`
-/

namespace A358007.P18284096217230141745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358006 (Nat.choose (A005206 n).toNat (A358006 (n + 32)).toNat + 32)

end

end A358007.P18284096217230141745

/-! ## A358007.P15961185944566688122

`and(A300526(n+3), A358006(n))`
-/

namespace A358007.P15961185944566688122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A300526 (n + 3)) (A358006 (n + 32))

end

end A358007.P15961185944566688122

/-! ## A358007.P9703407621869342948

`A000035(A300526(n+3)*A358006(n))`
-/

namespace A358007.P9703407621869342948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A300526 (n + 3) * A358006 (n + 32)).toNat

end

end A358007.P9703407621869342948

/-! ## A358007.P3914738377299466384

`val(A267648(n), A267648(A156537(n+2)))`
-/

namespace A358007.P3914738377299466384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A267648 n).toNat (A267648 (A156537 (n + 2)).toNat).toNat

end

end A358007.P3914738377299466384

/-!
# A358008: Number of partitions of n into 8 distinct positive Fibonacci numbers (with a single type of 1).

The programs for A358008, there is no canonical definition to state claims against.
-/

/-! ## A358008.P16835733946192132969

`A097249(A096700(n+1)+12)`
-/

namespace A358008.P16835733946192132969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097249 (A096700 (n + 1) + 12).toNat

end

end A358008.P16835733946192132969

/-! ## A358008.P15896435139616272168

`A010052(A357485(n+1)%A269871(n+4))`
-/

namespace A358008.P15896435139616272168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (Int.tmod (A357485 (n + 1)) (A269871 (n + 4))).toNat

end

end A358008.P15896435139616272168

/-! ## A358008.P12130848367785916905

`A010054(lcm(3, n)/3*2^∑{e}[n+1, val((2*#)!, 2)])`
-/

namespace A358008.P12130848367785916905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (SequenceMachineLib.roundAway ((Nat.lcm 3 n : ℚ) / 3 * (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorial (2 * Nat.factorization (f1 n) p)) 2) : ℚ))).toNat

end

end A358008.P12130848367785916905

/-! ## A358008.P10514739620949770113

`A037011(A270317(n)+A071833(n))`
-/

namespace A358008.P10514739620949770113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037011 (A270317 n + A071833 n).toNat

end

end A358008.P10514739620949770113

/-! ## A358008.P7778223279385374987

`A089048(A372026(n+3)+A306117(n+4))`
-/

namespace A358008.P7778223279385374987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089048 (A372026 (n + 3) + A306117 (n + 4)).toNat

end

end A358008.P7778223279385374987

/-!
# A358009: Number of partitions of n into at most 4 distinct prime parts.

The programs for A358009, there is no canonical definition to state claims against.
-/

/-! ## A358009.P4053317764794523519

`A000586(n)-A089801(A027623(n+2))`
-/

namespace A358009.P4053317764794523519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A089801 (A027623 (n + 2)).toNat

end

end A358009.P4053317764794523519

/-! ## A358009.P9796284019195101315

`A010815(A152018(n+5))+A000586(n)`
-/

namespace A358009.P9796284019195101315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A152018 (n + 5)).toNat + A000586 n

end

end A358009.P9796284019195101315

/-! ## A358009.P3959197035605506891

`A000586(n)-val(A246437(n+3), A183987(2*n+3))`
-/

namespace A358009.P3959197035605506891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - (SequenceMachineLib.valuation (A246437 (n + 3)).toNat (A183987 (2 * n + 3)).toNat : ℤ)

end

end A358009.P3959197035605506891

/-! ## A358009.P8103624896881365389

`A000586(n)-A185284(A291166(n+1))`
-/

namespace A358009.P8103624896881365389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A185284 (A291166 (n + 1)).toNat

end

end A358009.P8103624896881365389

/-! ## A358009.P12980904297478710272

`A000586(n)-A102681(A058710(n+2))`
-/

namespace A358009.P12980904297478710272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A102681 (A058710 (n + 2)).toNat

end

end A358009.P12980904297478710272

/-!
# A358010: Number of partitions of n into at most 5 distinct prime parts.

The programs for A358010, there is no canonical definition to state claims against.
-/

/-! ## A358010.P16158523538491670398

`A000586(n)-A107846(A091063(n))`
-/

namespace A358010.P16158523538491670398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A107846 (A091063 n).toNat

end

end A358010.P16158523538491670398

/-! ## A358010.P9415201193931618365

`A000586(n)-A051731(A166512(n+1))`
-/

namespace A358010.P9415201193931618365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A051731 (A166512 (n + 1)).toNat

end

end A358010.P9415201193931618365

/-! ## A358010.P6891628695526125596

`A000586(n)-A193870(A063990(n+1))`
-/

namespace A358010.P6891628695526125596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 n - A193870 (A063990 (n + 1)).toNat

end

end A358010.P6891628695526125596

/-!
# A358012: Minimal number of coins needed to pay n cents using coins of denominations 1 and 5 cents.

The programs for A358012, the canonical program `A358012.P9704978248710709541` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358012 has offset 0).

The definition of A358012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358012.P9704978248710709541

`A002266(n)+A010874(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A358012

/-- `A002266(n)+A010874(n)` -/
def P9704978248710709541.Spec : Prop :=
  ∀ n, P9704978248710709541.a n = A358012 n

theorem P9704978248710709541.correct : P9704978248710709541.Spec := by
  intro n
  simp only [A358012]

end A358012

/-! ## A358012.P6709035871667020680

`∑[2-gcd(5, n)]+3`
-/

namespace A358012.P6709035871667020680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 5 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A358012.P6709035871667020680

namespace A358012

/-- `∑[2-gcd(5, n)]+3` -/
def P6709035871667020680.Spec : Prop :=
  ∀ n, P6709035871667020680.a n = A358012 n

end A358012

/-! ## A358012.P2058480394456986761

`n-4*floor(n/5)`
-/

namespace A358012.P2058480394456986761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 4 * ⌊(n : ℚ) / 5⌋

end

end A358012.P2058480394456986761

namespace A358012

/-- `n-4*floor(n/5)` -/
def P2058480394456986761.Spec : Prop :=
  ∀ n, P2058480394456986761.a n = A358012 n

end A358012

/-! ## A358012.P18109857398021731911

`floor(n%5+n/5)`
-/

namespace A358012.P18109857398021731911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n % 5 : ℕ) : ℚ) + (n : ℚ) / 5⌋

end

end A358012.P18109857398021731911

namespace A358012

/-- `floor(n%5+n/5)` -/
def P18109857398021731911.Spec : Prop :=
  ∀ n, P18109857398021731911.a n = A358012 n

end A358012

/-! ## A358012.P17185460409572548425

`A016789(n)%A047369(n+1)`
-/

namespace A358012.P17185460409572548425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 n) (A047369 (n + 1))

end

end A358012.P17185460409572548425

namespace A358012

/-- `A016789(n)%A047369(n+1)` -/
def P17185460409572548425.Spec : Prop :=
  ∀ n, P17185460409572548425.a n = A358012 n

end A358012

/-! ## A358012.P5104214114701721544

`A061570(n+1)%A047369(n+1)`
-/

namespace A358012.P5104214114701721544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061570 (n + 1)) (A047369 (n + 1))

end

end A358012.P5104214114701721544

namespace A358012

/-- `A061570(n+1)%A047369(n+1)` -/
def P5104214114701721544.Spec : Prop :=
  ∀ n, P5104214114701721544.a n = A358012 n

end A358012

/-! ## A358012.P2264555330482987299

`A002266(A137936(n)+A090223(n))`
-/

namespace A358012.P2264555330482987299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A137936 n + A090223 n).toNat

end

end A358012.P2264555330482987299

namespace A358012

/-- `A002266(A137936(n)+A090223(n))` -/
def P2264555330482987299.Spec : Prop :=
  ∀ n, P2264555330482987299.a n = A358012 n

end A358012

/-! ## A358012.P15594679546052169008

`A260644(A047337(n+1))`
-/

namespace A358012.P15594679546052169008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260644 (A047337 (n + 1)).toNat

end

end A358012.P15594679546052169008

namespace A358012

/-- `A260644(A047337(n+1))` -/
def P15594679546052169008.Spec : Prop :=
  ∀ n, P15594679546052169008.a n = A358012 n

end A358012

/-! ## A358012.P3322169616367726305

`A271800(2*n-A058207(n))`
-/

namespace A358012.P3322169616367726305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271800 ((2 * n : ℤ) - A058207 n).toNat

end

end A358012.P3322169616367726305

namespace A358012

/-- `A271800(2*n-A058207(n))` -/
def P3322169616367726305.Spec : Prop :=
  ∀ n, P3322169616367726305.a n = A358012 n

end A358012

/-! ## A358012.P11408327312401372919

`A076314(2*n-A010874(n))`
-/

namespace A358012.P11408327312401372919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 ((2 * n : ℤ) - A010874 n).toNat

end

end A358012.P11408327312401372919

namespace A358012

/-- `A076314(2*n-A010874(n))` -/
def P11408327312401372919.Spec : Prop :=
  ∀ n, P11408327312401372919.a n = A358012 n

end A358012

/-! ## A358012.P13334691879665877456

`A081594(2*n)/2`
-/

namespace A358012.P13334691879665877456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081594 (2 * n) : ℚ) / 2

end

end A358012.P13334691879665877456

namespace A358012

/-- `A081594(2*n)/2` -/
def P13334691879665877456.Spec : Prop :=
  ∀ n, P13334691879665877456.a n = (A358012 n : ℚ)

end A358012

/-! ## A358012.P7953083530736829944

`A081597(2*n+1)%(n+1)`
-/

namespace A358012.P7953083530736829944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081597 (2 * n + 1)) (n + 1 : ℤ)

end

end A358012.P7953083530736829944

namespace A358012

/-- `A081597(2*n+1)%(n+1)` -/
def P7953083530736829944.Spec : Prop :=
  ∀ n, P7953083530736829944.a n = A358012 n

end A358012

/-! ## A358012.P16110153249774450441

`A001281(A081594(2*n))`
-/

namespace A358012.P16110153249774450441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A081594 (2 * n)).toNat

end

end A358012.P16110153249774450441

namespace A358012

/-- `A001281(A081594(2*n))` -/
def P16110153249774450441.Spec : Prop :=
  ∀ n, P16110153249774450441.a n = A358012 n

end A358012

/-! ## A358012.P10052333853786568924

`A131508(2*A081594(2*n))`
-/

namespace A358012.P10052333853786568924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (2 * A081594 (2 * n)).toNat

end

end A358012.P10052333853786568924

namespace A358012

/-- `A131508(2*A081594(2*n))` -/
def P10052333853786568924.Spec : Prop :=
  ∀ n, P10052333853786568924.a n = A358012 n

end A358012

/-!
# A358013: Expansion of e.g.f. 1/(1 - x^2 * (exp(x) - 1)).

The programs for A358013, there is no canonical definition to state claims against.
-/

/-! ## A358013.P17066054641183135924

`A004275(A355179(n)+A204435(n+1))`
-/

namespace A358013.P17066054641183135924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A355179 n + A204435 (n + 1)).toNat

end

end A358013.P17066054641183135924

/-! ## A358013.P13901240174164063566

`A307380(n+1)+A005843(A355179(n))`
-/

namespace A358013.P13901240174164063566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307380 (n + 1) + A005843 (A355179 n).toNat

end

end A358013.P13901240174164063566

/-! ## A358013.P13699551553837812017

`lcm(A004277(A355179(n)), A230629(3*n+1))`
-/

namespace A358013.P13699551553837812017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004277 (A355179 n).toNat) (A230629 (3 * n + 1))

end

end A358013.P13699551553837812017

/-!
# A358014: Expansion of e.g.f. 1/(1 - x^3 * (exp(x) - 1)).

The programs for A358014, there is no canonical definition to state claims against.
-/

/-! ## A358014.P6335005882544358158

`A056960(A292891(n))`
-/

namespace A358014.P6335005882544358158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056960 (A292891 n).toNat

end

end A358014.P6335005882544358158

/-! ## A358014.P8579636306207435085

`A101684(A356950(n))`
-/

namespace A358014.P8579636306207435085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101684 (A356950 n).toNat

end

end A358014.P8579636306207435085

/-! ## A358014.P1052631676665685889

`A130481(A370990(n))`
-/

namespace A358014.P1052631676665685889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A370990 n).toNat

end

end A358014.P1052631676665685889

/-! ## A358014.P12318278090400617508

`A130481(A376293(n))`
-/

namespace A358014.P12318278090400617508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A376293 n).toNat

end

end A358014.P12318278090400617508

/-!
# A358015: a(n) = DedekindPsi(n*2^(-k))*2^(j-1) where k = valuation(n, 2) and j = k if 4 divides n and otherwise 0.

The programs for A358015, there is no canonical definition to state claims against.
-/

/-! ## A358015.P12324544476052720240

`A111850(A350910(2*n+1)+A214682(3*n+5))`
-/

namespace A358015.P12324544476052720240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111850 (A350910 (2 * n + 1) + A214682 (3 * n + 5)).toNat

end

end A358015.P12324544476052720240

/-!
# A358016: a(n) is the largest k <= n-2 such that k^2 == 1 (mod n).

The programs for A358016, there is no canonical definition to state claims against.
-/

/-! ## A358016.P14150373483061683063

`3-A070667(n+3)+n`
-/

namespace A358016.P14150373483061683063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A070667 (n + 3) + (n : ℤ)

end

end A358016.P14150373483061683063

/-! ## A358016.P16175529810114882684

`n+3-A215653(n+3)`
-/

namespace A358016.P16175529810114882684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A215653 (n + 3)

end

end A358016.P16175529810114882684

/-! ## A358016.P319232324039929256

`A228179(lt[A228179(n+2), A001222(n+1)])`
-/

namespace A358016.P319232324039929256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228179 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228179 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358016.P319232324039929256

/-! ## A358016.P123230535921745571

`A228179(lt[A228179(n+2), A000120(n)])`
-/

namespace A358016.P123230535921745571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228179 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228179 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358016.P123230535921745571

/-! ## A358016.P2603156032651452263

`A228179(lt[A228179(n+2), A000523(n+1)])`
-/

namespace A358016.P2603156032651452263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228179 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228179 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358016.P2603156032651452263

/-!
# A358017: Numbers m such that the factorizations of m..m+8 have the same number of primes (including multiplicities).

The programs for A358017, there is no canonical definition to state claims against.
-/

/-! ## A358017.P115885168717220159

`∩[A123201(n+1)-1, A123201(n+1)]`
-/

namespace A358017.P115885168717220159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123201 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358017.P115885168717220159

/-! ## A358017.P12316762507941950797

`∩[A123103(n+1)-2, A123103(n+1)]`
-/

namespace A358017.P12316762507941950797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123103 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358017.P12316762507941950797

/-!
# A358018: Numbers m such that the factorizations of m..m+9 have the same number of primes (including multiplicities).

The programs for A358018, there is no canonical definition to state claims against.
-/

/-! ## A358018.P5513505386397257453

`∩[A358017(n+1)-1, A358017(n+1)]`
-/

namespace A358018.P5513505386397257453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358017 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358018.P5513505386397257453

/-!
# A358021: Lexicographically earliest sequence of distinct nonnegative integers on a square spiral such that no number shares a digit with any of its eight surrounding neighbors.

The programs for A358021, there is no canonical definition to state claims against.
-/

/-! ## A358021.P5271100900116188494

`A357097(∑[A004086(n)])`
-/

namespace A358021.P5271100900116188494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A358021.P5271100900116188494

/-! ## A358021.P7143482749201212308

`A068527(A238920(n))+n`
-/

namespace A358021.P7143482749201212308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A238920 n).toNat + (n : ℤ)

end

end A358021.P7143482749201212308

/-! ## A358021.P1624565287287693508

`n*A077565(A001006(n))`
-/

namespace A358021.P1624565287287693508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A077565 (A001006 n).toNat

end

end A358021.P1624565287287693508

/-! ## A358021.P15703561927376220020

`n*A144379(A000011(n))`
-/

namespace A358021.P15703561927376220020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144379 (A000011 n).toNat

end

end A358021.P15703561927376220020

/-! ## A358021.P7676349608846715577

`n*A144261(A026756(n))`
-/

namespace A358021.P7676349608846715577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144261 (A026756 n).toNat

end

end A358021.P7676349608846715577

/-!
# A358023: Number of partitions of n into at most 2 distinct squarefree parts.

The programs for A358023, there is no canonical definition to state claims against.
-/

/-! ## A358023.P15138048660874534990

`A358024(n)-A307835(n)`
-/

namespace A358023.P15138048660874534990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358024 n - A307835 n

end

end A358023.P15138048660874534990

/-! ## A358023.P17827188055798334204

`A358024(n)-A330955(A091434(n))`
-/

namespace A358023.P17827188055798334204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358024 n - A330955 (A091434 n).toNat

end

end A358023.P17827188055798334204

/-! ## A358023.P14354979595888099827

`A055640(A294564(n)+3)`
-/

namespace A358023.P14354979595888099827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A294564 n + 3).toNat

end

end A358023.P14354979595888099827

/-! ## A358023.P11139382354343432820

`A334440(A117192(n+2)+A001405(n))`
-/

namespace A358023.P11139382354343432820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A117192 (n + 2) + A001405 n).toNat

end

end A358023.P11139382354343432820

/-!
# A358024: Number of partitions of n into at most 3 distinct squarefree parts.

The programs for A358024, there is no canonical definition to state claims against.
-/

/-! ## A358024.P5677036640212571682

`A358023(n)+A307835(n)`
-/

namespace A358024.P5677036640212571682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358023 n + A307835 n

end

end A358024.P5677036640212571682

/-! ## A358024.P17869066861817590854

`A064415(or(A014260(n), A080092(2*n+3)))`
-/

namespace A358024.P17869066861817590854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (Int.lor (A014260 n) (A080092 (2 * n + 3))).toNat

end

end A358024.P17869066861817590854

/-!
# A358025: Number of partitions of n into at most 4 distinct squarefree parts.

The programs for A358025, there is no canonical definition to state claims against.
-/

/-! ## A358025.P8597717116464642582

`A087188(n)-A326499(A106420(n+1))`
-/

namespace A358025.P8597717116464642582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087188 n - A326499 ((A106420 (n + 1)).toNat + 50)

end

end A358025.P8597717116464642582

/-! ## A358025.P13286140158772358943

`A087188(n)-A326499(A087188(2*n))`
-/

namespace A358025.P13286140158772358943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087188 n - A326499 ((A087188 (2 * n)).toNat + 50)

end

end A358025.P13286140158772358943

/-!
# A358027: Expansion of g.f.: (1 + x - 2*x^2 + 2*x^4)/((1-x)*(1-3*x^2)).

The programs for A358027, the canonical program `A358027.P5094545334042841928` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358027 has offset 0).

The definition of A358027 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 419 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358027.P5094545334042841928

`3*a(n-2)+2` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A358027

/-- `3*a(n-2)+2` -/
def P5094545334042841928.Spec : Prop :=
  ∀ n, (P5094545334042841928.a n : ℤ) = A358027 n

theorem P5094545334042841928.correct : P5094545334042841928.Spec := by
  intro n
  simp only [A358027]

end A358027

/-! ## A358027.P12569040127504037075

`∑[3*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=5`
-/

namespace A358027.P12569040127504037075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 5] fun n f1 =>
  3 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358027.P12569040127504037075

namespace A358027

/-- `∑[3*a(n-2)]` -/
def P12569040127504037075.Spec : Prop :=
  ∀ n, (P12569040127504037075.a n : ℤ) = A358027 n

end A358027

/-! ## A358027.P14914978329686626501

`∑[a(n-2)/(1-2/3)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=5`
-/

namespace A358027.P14914978329686626501
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 3, 5] fun n f1 =>
  f1 (n - 2) / (1 - (2 : ℚ) / 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358027.P14914978329686626501

namespace A358027

/-- `∑[a(n-2)/(1-2/3)]` -/
def P14914978329686626501.Spec : Prop :=
  ∀ n, P14914978329686626501.a n = (A358027 n : ℚ)

end A358027

/-! ## A358027.P10173516672760676257

`∑[a(n-2)+lcm(2, a(n-2))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=5`
-/

namespace A358027.P10173516672760676257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 5] fun n f1 =>
  f1 (n - 2) + Nat.lcm 2 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358027.P10173516672760676257

namespace A358027

/-- `∑[a(n-2)+lcm(2, a(n-2))]` -/
def P10173516672760676257.Spec : Prop :=
  ∀ n, (P10173516672760676257.a n : ℤ) = A358027 n

end A358027

/-! ## A358027.P17136202946925943347

`2%a(n-2)-(a(n-2)-4*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A358027.P17136202946925943347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod 2 (a (n - 2)) - (a (n - 2) - 4 * a (n - 2))

end

end A358027.P17136202946925943347

namespace A358027

/-- `2%a(n-2)-(a(n-2)-4*a(n-2))` -/
def P17136202946925943347.Spec : Prop :=
  ∀ n, P17136202946925943347.a n = A358027 n

end A358027

/-! ## A358027.P17684876834914673977

`∑[A083658(abs(1-n))]`
-/

namespace A358027.P17684876834914673977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083658 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358027.P17684876834914673977

namespace A358027

/-- `∑[A083658(abs(1-n))]` -/
def P17684876834914673977.Spec : Prop :=
  ∀ n, P17684876834914673977.a n = A358027 n

end A358027

/-!
# A358028: Primes p = prime(9*t+1) such that the 9 consecutive primes prime(9*t+1) .. prime(9*t+9) arranged in a 3 X 3 array have at least 2 equal sums along the rows, columns or main diagonals.

The programs for A358028, there is no canonical definition to state claims against.
-/

/-! ## A358028.P4343179453135807562

`A031918(record[A125940(n+1)])`
-/

namespace A358028.P4343179453135807562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031918 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358028.P4343179453135807562

/-! ## A358028.P4609638973093506787

`A031918(∑[A156883(n)!])`
-/

namespace A358028.P4609638973093506787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A156883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031918 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A358028.P4609638973093506787

/-! ## A358028.P7884226841703332146

`∩[A031918(n+1), A154755(n+1)]`
-/

namespace A358028.P7884226841703332146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358028.P7884226841703332146

/-! ## A358028.P13184572585044856564

`A031918(A000961(n+1)%A383708(2*(n+2)))`
-/

namespace A358028.P13184572585044856564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031918 (Int.tmod (A000961 (n + 1)) (A383708 (2 * (n + 2)))).toNat

end

end A358028.P13184572585044856564

/-!
# A358031: Expansion of e.g.f. (1 - log(1-x))/(1 + log(1-x) * (1 - log(1-x))).

The programs for A358031, there is no canonical definition to state claims against.
-/

/-! ## A358031.P9751519097517464583

`A354013(n)+A354018(n)`
-/

namespace A358031.P9751519097517464583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354013 n + A354018 n

end

end A358031.P9751519097517464583

/-!
# A358032: Expansion of e.g.f. (1 + log(1+x))/(1 - log(1+x) * (1 + log(1+x))).

The programs for A358032, there is no canonical definition to state claims against.
-/

/-! ## A358032.P18030936241042464012

`A005444(n)+A005445(n)`
-/

namespace A358032.P18030936241042464012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005444 n + A005445 n

end

end A358032.P18030936241042464012

/-! ## A358032.P2347333021887689148

`A006252(n)+A004526(A307523(n))`
-/

namespace A358032.P2347333021887689148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006252 n + A004526 (A307523 n).toNat

end

end A358032.P2347333021887689148

/-!
# A358033: a(1) = 2; a(n) - a(n-1) = A093803(a(n-1)), the largest odd proper divisor of a(n-1).

The programs for A358033, there is no canonical definition to state claims against.
-/

/-! ## A358033.P13178271317911161642

`lt[A106616(n)+2, A031176(n)]`
-/

namespace A358033.P13178271317911161642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358033.P13178271317911161642

/-! ## A358033.P12872341638811658550

`lt[A000041(A106616(n)), A031176(n)]`
-/

namespace A358033.P12872341638811658550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A106616 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031176 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358033.P12872341638811658550

/-!
# A358035: a(n) = (8*n^3 + 12*n^2 + 4*n - 9)/3.

The programs for A358035, the canonical program `A358035.P385373662348878607` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358035 has offset 1).

The definition of A358035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358035.P385373662348878607

`∑[8*(n+1)²]-3`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A358035

/-- `∑[8*(n+1)²]-3` -/
def P385373662348878607.Spec : Prop :=
  ∀ n, P385373662348878607.a n = A358035 (n + 1)

theorem P385373662348878607.correct : P385373662348878607.Spec := by
  intro n
  simp only [A358035, Nat.add_sub_cancel]

end A358035

/-! ## A358035.P8253254257246568599

`floor(a(n-1)+8*(n+1)²)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A358035.P8253254257246568599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + 8 * (n + 1) ^ 2

end

end A358035.P8253254257246568599

namespace A358035

/-- `floor(a(n-1)+8*(n+1)²)` -/
def P8253254257246568599.Spec : Prop :=
  ∀ n, (P8253254257246568599.a n : ℤ) = A358035 (n + 1)

end A358035

/-! ## A358035.P10048444077156388856

`8*((n+1)²+a(n-1)/8)` with `a(0)=5`
-/

namespace A358035.P10048444077156388856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  8 * (((n + 1) ^ 2 : ℚ) + a (n - 1) / 8)

end

end A358035.P10048444077156388856

namespace A358035

/-- `8*((n+1)²+a(n-1)/8)` -/
def P10048444077156388856.Spec : Prop :=
  ∀ n, P10048444077156388856.a n = (A358035 (n + 1) : ℚ)

end A358035

/-! ## A358035.P641704252846263608

`∑[record[floor((n+2)²/2)²/a(n-1)]]` with `a(0)=5, a(1)=2`
-/

namespace A358035.P641704252846263608
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [5, 2] fun n f2 =>
  (⌊((n + 2) ^ 2 : ℚ) / 2⌋ ^ 2 : ℚ) / f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358035.P641704252846263608

namespace A358035

/-- `∑[record[floor((n+2)²/2)²/a(n-1)]]` -/
def P641704252846263608.Spec : Prop :=
  ∀ n, P641704252846263608.a n = (A358035 (n + 1) : ℚ)

end A358035

/-! ## A358035.P3279394312265556303

`xor(3, A180118(2*n+1))`
-/

namespace A358035.P3279394312265556303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A180118 (2 * n + 1))

end

end A358035.P3279394312265556303

namespace A358035

/-- `xor(3, A180118(2*n+1))` -/
def P3279394312265556303.Spec : Prop :=
  ∀ n, P3279394312265556303.a n = A358035 (n + 1)

end A358035

/-! ## A358035.P2913517607051899594

`∑[A265046(2*(n+1)²)]`
-/

namespace A358035.P2913517607051899594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265046 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358035.P2913517607051899594

namespace A358035

/-- `∑[A265046(2*(n+1)²)]` -/
def P2913517607051899594.Spec : Prop :=
  ∀ n, P2913517607051899594.a n = A358035 (n + 1)

end A358035

/-! ## A358035.P441590846885777915

`A100791((2*n+1)*(n+2))`
-/

namespace A358035.P441590846885777915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100791 ((2 * n + 1) * (n + 2))

end

end A358035.P441590846885777915

namespace A358035

/-- `A100791((2*n+1)*(n+2))` -/
def P441590846885777915.Spec : Prop :=
  ∀ n, P441590846885777915.a n = A358035 (n + 1)

end A358035

/-!
# A358036: Number of n-step self-avoiding walks on a 2D square lattice where the first visited lattice point is directly visible from the last visited lattice point, and were both the visited lattice points and the path between these points are considered when determining the visibility of points.

The programs for A358036, there is no canonical definition to state claims against.
-/

/-! ## A358036.P15103520224757084709

`record[Δ[A085616(2-∏{e}[n+1, #+1]+n)]]`
-/

namespace A358036.P15103520224757084709
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085616 (2 - ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ) + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358036.P15103520224757084709

/-! ## A358036.P10811378680143977775

`∑[A172305(A083337(n))]`
-/

namespace A358036.P10811378680143977775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172305 (A083337 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358036.P10811378680143977775

/-!
# A358038: Partial sums of the cubefree numbers.

The programs for A358038, the canonical program `A358038.P4241872684734010829` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358038 has offset 1).

The definition of A358038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358038.P4241872684734010829

`∑[A004709(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A358038

/-- `∑[A004709(n+1)]` -/
def P4241872684734010829.Spec : Prop :=
  ∀ n, P4241872684734010829.a n = A358038 (n + 1)

theorem P4241872684734010829.correct : P4241872684734010829.Spec := by
  intro n
  simp only [A358038, Nat.add_sub_cancel]

end A358038

/-! ## A358038.P12477454983070102839

`∑[sqrt(A392365(n+1))]`
-/

namespace A358038.P12477454983070102839
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A392365 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P12477454983070102839

namespace A358038

/-- `∑[sqrt(A392365(n+1))]` -/
def P12477454983070102839.Spec : Prop :=
  ∀ n, P12477454983070102839.a n = (A358038 (n + 1) : ℝ)

end A358038

/-! ## A358038.P3182763841766627372

`∑[record[A382902(n+1)]]`
-/

namespace A358038.P3182763841766627372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382902 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P3182763841766627372

namespace A358038

/-- `∑[record[A382902(n+1)]]` -/
def P3182763841766627372.Spec : Prop :=
  ∀ n, P3182763841766627372.a n = A358038 (n + 1)

end A358038

/-! ## A358038.P10321246715340515609

`∑[record[A382903(n+1)]]`
-/

namespace A358038.P10321246715340515609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382903 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P10321246715340515609

namespace A358038

/-- `∑[record[A382903(n+1)]]` -/
def P10321246715340515609.Spec : Prop :=
  ∀ n, P10321246715340515609.a n = A358038 (n + 1)

end A358038

/-! ## A358038.P9526063421495681467

`∑[record[A007948(n+1)]]`
-/

namespace A358038.P9526063421495681467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P9526063421495681467

namespace A358038

/-- `∑[record[A007948(n+1)]]` -/
def P9526063421495681467.Spec : Prop :=
  ∀ n, P9526063421495681467.a n = A358038 (n + 1)

end A358038

/-! ## A358038.P4278746852307149163

`∑[record[A050985(n+1)]]`
-/

namespace A358038.P4278746852307149163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P4278746852307149163

namespace A358038

/-- `∑[record[A050985(n+1)]]` -/
def P4278746852307149163.Spec : Prop :=
  ∀ n, P4278746852307149163.a n = A358038 (n + 1)

end A358038

/-! ## A358038.P195200166837420108

`∑[record[A066990(n+1)]]`
-/

namespace A358038.P195200166837420108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P195200166837420108

namespace A358038

/-- `∑[record[A066990(n+1)]]` -/
def P195200166837420108.Spec : Prop :=
  ∀ n, P195200166837420108.a n = A358038 (n + 1)

end A358038

/-! ## A358038.P12203831528116208942

`∑[record[A117656(n+1)]]`
-/

namespace A358038.P12203831528116208942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117656 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P12203831528116208942

namespace A358038

/-- `∑[record[A117656(n+1)]]` -/
def P12203831528116208942.Spec : Prop :=
  ∀ n, P12203831528116208942.a n = A358038 (n + 1)

end A358038

/-! ## A358038.P11512108480388775800

`∑[record[A355261(n+1)]]`
-/

namespace A358038.P11512108480388775800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P11512108480388775800

namespace A358038

/-- `∑[record[A355261(n+1)]]` -/
def P11512108480388775800.Spec : Prop :=
  ∀ n, P11512108480388775800.a n = A358038 (n + 1)

end A358038

/-! ## A358038.P5823022184622618510

`∑[record[A360539(n+1)]]`
-/

namespace A358038.P5823022184622618510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P5823022184622618510

namespace A358038

/-- `∑[record[A360539(n+1)]]` -/
def P5823022184622618510.Spec : Prop :=
  ∀ n, P5823022184622618510.a n = A358038 (n + 1)

end A358038

/-! ## A358038.P9735493116270832763

`∑[record[A367699(n+1)]]`
-/

namespace A358038.P9735493116270832763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367699 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P9735493116270832763

namespace A358038

/-- `∑[record[A367699(n+1)]]` -/
def P9735493116270832763.Spec : Prop :=
  ∀ n, P9735493116270832763.a n = A358038 (n + 1)

end A358038

/-! ## A358038.P8645560906581627482

`∑[record[A368171(n+1)]]`
-/

namespace A358038.P8645560906581627482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P8645560906581627482

namespace A358038

/-- `∑[record[A368171(n+1)]]` -/
def P8645560906581627482.Spec : Prop :=
  ∀ n, P8645560906581627482.a n = A358038 (n + 1)

end A358038

/-! ## A358038.P9352253501545853037

`∑[record[A384555(n+1)]]`
-/

namespace A358038.P9352253501545853037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384555 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358038.P9352253501545853037

namespace A358038

/-- `∑[record[A384555(n+1)]]` -/
def P9352253501545853037.Spec : Prop :=
  ∀ n, P9352253501545853037.a n = A358038 (n + 1)

end A358038

/-!
# A358039: a(n) is the Euler totient function phi applied to the n-th cubefree number.

The programs for A358039, the canonical program `A358039.P5793780128867569828` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358039 has offset 1).

The definition of A358039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358039.P2500782259090983351

`A000010(A004709(n+1))`
-/

namespace A358039.P2500782259090983351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A004709 (n + 1)).toNat

end

end A358039.P2500782259090983351

namespace A358039

/-- `A000010(A004709(n+1))` -/
def P2500782259090983351.Spec : Prop :=
  ∀ n, P2500782259090983351.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P5998160959732142628

`A000010(eq[1, A050361(n+1)]+1)`
-/

namespace A358039.P5998160959732142628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A358039.P5998160959732142628

namespace A358039

/-- `A000010(eq[1, A050361(n+1)]+1)` -/
def P5998160959732142628.Spec : Prop :=
  ∀ n, P5998160959732142628.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P6576298959652858105

`A000010(eq[1, A113061(n+1)]+1)`
-/

namespace A358039.P6576298959652858105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A358039.P6576298959652858105

namespace A358039

/-- `A000010(eq[1, A113061(n+1)]+1)` -/
def P6576298959652858105.Spec : Prop :=
  ∀ n, P6576298959652858105.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P7596592617745517031

`A000010(eq[1, A212793(n+1)]+1)`
-/

namespace A358039.P7596592617745517031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A358039.P7596592617745517031

namespace A358039

/-- `A000010(eq[1, A212793(n+1)]+1)` -/
def P7596592617745517031.Spec : Prop :=
  ∀ n, P7596592617745517031.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P12786222145109632451

`A000010(eq[1, A295657(n+1)]+1)`
-/

namespace A358039.P12786222145109632451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A358039.P12786222145109632451

namespace A358039

/-- `A000010(eq[1, A295657(n+1)]+1)` -/
def P12786222145109632451.Spec : Prop :=
  ∀ n, P12786222145109632451.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P10796883795354604814

`A000010(eq[1, A317941(n+1)]+1)`
-/

namespace A358039.P10796883795354604814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A358039.P10796883795354604814

namespace A358039

/-- `A000010(eq[1, A317941(n+1)]+1)` -/
def P10796883795354604814.Spec : Prop :=
  ∀ n, P10796883795354604814.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P15520733334703517782

`A000010(eq[1, A318667(n+1)]+1)`
-/

namespace A358039.P15520733334703517782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A358039.P15520733334703517782

namespace A358039

/-- `A000010(eq[1, A318667(n+1)]+1)` -/
def P15520733334703517782.Spec : Prop :=
  ∀ n, P15520733334703517782.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P7004839984673941054

`A000010(record[(n+1)/A113061(n+1)])`
-/

namespace A358039.P7004839984673941054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A113061 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A358039.P7004839984673941054

namespace A358039

/-- `A000010(record[(n+1)/A113061(n+1)])` -/
def P7004839984673941054.Spec : Prop :=
  ∀ n, P7004839984673941054.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P7460868630710251935

`A000010(record[A007948(n+1)])`
-/

namespace A358039.P7460868630710251935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358039.P7460868630710251935

namespace A358039

/-- `A000010(record[A007948(n+1)])` -/
def P7460868630710251935.Spec : Prop :=
  ∀ n, P7460868630710251935.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P12937469512718340612

`A000010(record[A050985(n+1)])`
-/

namespace A358039.P12937469512718340612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358039.P12937469512718340612

namespace A358039

/-- `A000010(record[A050985(n+1)])` -/
def P12937469512718340612.Spec : Prop :=
  ∀ n, P12937469512718340612.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P228056222274196340

`A000010(record[A066990(n+1)])`
-/

namespace A358039.P228056222274196340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358039.P228056222274196340

namespace A358039

/-- `A000010(record[A066990(n+1)])` -/
def P228056222274196340.Spec : Prop :=
  ∀ n, P228056222274196340.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P10755771037841350495

`A000010(record[A117656(n+1)])`
-/

namespace A358039.P10755771037841350495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358039.P10755771037841350495

namespace A358039

/-- `A000010(record[A117656(n+1)])` -/
def P10755771037841350495.Spec : Prop :=
  ∀ n, P10755771037841350495.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P16802985072413277709

`A000010(record[A355261(n+1)])`
-/

namespace A358039.P16802985072413277709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358039.P16802985072413277709

namespace A358039

/-- `A000010(record[A355261(n+1)])` -/
def P16802985072413277709.Spec : Prop :=
  ∀ n, P16802985072413277709.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P8351225063083191057

`A000010(record[A360539(n+1)])`
-/

namespace A358039.P8351225063083191057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358039.P8351225063083191057

namespace A358039

/-- `A000010(record[A360539(n+1)])` -/
def P8351225063083191057.Spec : Prop :=
  ∀ n, P8351225063083191057.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P13490591672848936904

`A000010(record[A097377(n+1)-1])`
-/

namespace A358039.P13490591672848936904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358039.P13490591672848936904

namespace A358039

/-- `A000010(record[A097377(n+1)-1])` -/
def P13490591672848936904.Spec : Prop :=
  ∀ n, P13490591672848936904.a n = A358039 (n + 1)

end A358039

/-! ## A358039.P5793780128867569828

`A078429(A004709(2*n+1-n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A358039

/-- `A078429(A004709(2*n+1-n))` -/
def P5793780128867569828.Spec : Prop :=
  ∀ n, P5793780128867569828.a n = A358039 (n + 1)

theorem P5793780128867569828.correct : P5793780128867569828.Spec := by
  intro n
  simp only [A358039, Nat.add_sub_cancel]

end A358039

/-!
# A358040: a(n) is the number of divisors of the n-th cubefree number.

The programs for A358040, the canonical program `A358040.P9514283553072358568` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358040 has offset 1).

The definition of A358040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358040.P9514283553072358568

`∏{e}[A004709(n+1), #+1]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A358040

/-- `∏{e}[A004709(n+1), #+1]` -/
def P9514283553072358568.Spec : Prop :=
  ∀ n, (P9514283553072358568.a n : ℤ) = A358040 (n + 1)

theorem P9514283553072358568.correct : P9514283553072358568.Spec := by
  intro n
  simp only [A358040, Nat.add_sub_cancel]

end A358040

/-! ## A358040.P3658536414461284730

`A000005(A004709(n+1))`
-/

namespace A358040.P3658536414461284730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004709 (n + 1)).toNat

end

end A358040.P3658536414461284730

namespace A358040

/-- `A000005(A004709(n+1))` -/
def P3658536414461284730.Spec : Prop :=
  ∀ n, P3658536414461284730.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P14976932430040437616

`A000005(eq[1, A113061(n+1)]+1)`
-/

namespace A358040.P14976932430040437616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A358040.P14976932430040437616

namespace A358040

/-- `A000005(eq[1, A113061(n+1)]+1)` -/
def P14976932430040437616.Spec : Prop :=
  ∀ n, P14976932430040437616.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P8501248465218301573

`A000005(record[A007948(n+1)])`
-/

namespace A358040.P8501248465218301573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358040.P8501248465218301573

namespace A358040

/-- `A000005(record[A007948(n+1)])` -/
def P8501248465218301573.Spec : Prop :=
  ∀ n, P8501248465218301573.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P17276782212265882155

`A000005(record[A050985(n+1)])`
-/

namespace A358040.P17276782212265882155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358040.P17276782212265882155

namespace A358040

/-- `A000005(record[A050985(n+1)])` -/
def P17276782212265882155.Spec : Prop :=
  ∀ n, P17276782212265882155.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P14897376464676702957

`A000005(record[A066990(n+1)])`
-/

namespace A358040.P14897376464676702957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358040.P14897376464676702957

namespace A358040

/-- `A000005(record[A066990(n+1)])` -/
def P14897376464676702957.Spec : Prop :=
  ∀ n, P14897376464676702957.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P9037995065754774079

`A000005(record[A117656(n+1)])`
-/

namespace A358040.P9037995065754774079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358040.P9037995065754774079

namespace A358040

/-- `A000005(record[A117656(n+1)])` -/
def P9037995065754774079.Spec : Prop :=
  ∀ n, P9037995065754774079.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P8831551624337093293

`A000005(record[A355261(n+1)])`
-/

namespace A358040.P8831551624337093293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358040.P8831551624337093293

namespace A358040

/-- `A000005(record[A355261(n+1)])` -/
def P8831551624337093293.Spec : Prop :=
  ∀ n, P8831551624337093293.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P263902946429027787

`A000005(record[A360539(n+1)])`
-/

namespace A358040.P263902946429027787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A358040.P263902946429027787

namespace A358040

/-- `A000005(record[A360539(n+1)])` -/
def P263902946429027787.Spec : Prop :=
  ∀ n, P263902946429027787.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P12378963103307598883

`filter[A181819(n+1), A065333(#)]`
-/

namespace A358040.P12378963103307598883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A358040.P12378963103307598883

namespace A358040

/-- `filter[A181819(n+1), A065333(#)]` -/
def P12378963103307598883.Spec : Prop :=
  ∀ n, P12378963103307598883.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P8241178354160222089

`filter[A318469(n+1), A065333(#)]`
-/

namespace A358040.P8241178354160222089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065333 (f1 j).toNat = 1) n)

end

end A358040.P8241178354160222089

namespace A358040

/-- `filter[A318469(n+1), A065333(#)]` -/
def P8241178354160222089.Spec : Prop :=
  ∀ n, P8241178354160222089.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P16561105137709308365

`A000005(eq[1, A061704(n+1)]+1)`
-/

namespace A358040.P16561105137709308365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A358040.P16561105137709308365

namespace A358040

/-- `A000005(eq[1, A061704(n+1)]+1)` -/
def P16561105137709308365.Spec : Prop :=
  ∀ n, P16561105137709308365.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P8226532899562991649

`A049599(A004709(2*n+1-n))`
-/

namespace A358040.P8226532899562991649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049599 (A004709 (2 * n + 1 - n)).toNat

end

end A358040.P8226532899562991649

namespace A358040

/-- `A049599(A004709(2*n+1-n))` -/
def P8226532899562991649.Spec : Prop :=
  ∀ n, P8226532899562991649.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P13296086346313893446

`A252505(A160813(n+1)-A005117(n+1))`
-/

namespace A358040.P13296086346313893446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252505 (A160813 (n + 1) - A005117 (n + 1)).toNat

end

end A358040.P13296086346313893446

namespace A358040

/-- `A252505(A160813(n+1)-A005117(n+1))` -/
def P13296086346313893446.Spec : Prop :=
  ∀ n, P13296086346313893446.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P1293628682453426014

`A366991(A160813(n+1)-A005117(n+1))`
-/

namespace A358040.P1293628682453426014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366991 (A160813 (n + 1) - A005117 (n + 1)).toNat

end

end A358040.P1293628682453426014

namespace A358040

/-- `A366991(A160813(n+1)-A005117(n+1))` -/
def P1293628682453426014.Spec : Prop :=
  ∀ n, P1293628682453426014.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P4138001801089500754

`A000005(eq[A000005(n+1), A181819(n+1)]+1)`
-/

namespace A358040.P4138001801089500754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A358040.P4138001801089500754

namespace A358040

/-- `A000005(eq[A000005(n+1), A181819(n+1)]+1)` -/
def P4138001801089500754.Spec : Prop :=
  ∀ n, P4138001801089500754.a n = A358040 (n + 1)

end A358040

/-! ## A358040.P4611821111151026587

`A366901(A004709(A159481(2*n+1)))`
-/

namespace A358040.P4611821111151026587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366901 (A004709 (A159481 (2 * n + 1)).toNat).toNat

end

end A358040.P4611821111151026587

namespace A358040

/-- `A366901(A004709(A159481(2*n+1)))` -/
def P4611821111151026587.Spec : Prop :=
  ∀ n, P4611821111151026587.a n = A358040 (n + 1)

end A358040

/-!
# A358041: The number of maximal antichains in the lattice of set partitions of an n-element set.

The programs for A358041, there is no canonical definition to state claims against.
-/

/-! ## A358041.P12911098452355487861

`A265208(A319577(n))+A000129(n)`
-/

namespace A358041.P12911098452355487861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265208 (A319577 n).toNat + A000129 n

end

end A358041.P12911098452355487861

/-!
# A358042: Partial sums of A071619.

The programs for A358042, the canonical program `A358042.P7681548930372408341` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358042 has offset 0).

The definition of A358042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358042.P7681548930372408341

`∑[ceil(2/3*n²)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A358042

/-- `∑[ceil(2/3*n²)]` -/
def P7681548930372408341.Spec : Prop :=
  ∀ n, P7681548930372408341.a n = A358042 n

theorem P7681548930372408341.correct : P7681548930372408341.Spec := by
  intro n
  simp only [A358042]

end A358042

/-! ## A358042.P17134660920231742000

`Δ[floor(C(n²+1, 2)/9)]`
-/

namespace A358042.P17134660920231742000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n ^ 2 + 1) 2 : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358042.P17134660920231742000

namespace A358042

/-- `Δ[floor(C(n²+1, 2)/9)]` -/
def P17134660920231742000.Spec : Prop :=
  ∀ n, P17134660920231742000.a n = A358042 n

end A358042

/-! ## A358042.P10174337632066527135

`Δ[round(C(n²+1, 2)/9)]`
-/

namespace A358042.P10174337632066527135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n ^ 2 + 1) 2 : ℚ) / 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358042.P10174337632066527135

namespace A358042

/-- `Δ[round(C(n²+1, 2)/9)]` -/
def P10174337632066527135.Spec : Prop :=
  ∀ n, P10174337632066527135.a n = A358042 n

end A358042

/-! ## A358042.P5853058845208844222

`round(2*∑[n/acot(n)]/3)`
-/

namespace A358042.P5853058845208844222
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * (∑ j ∈ Finset.range (n + 1), f1 j) / 3)

end

end A358042.P5853058845208844222

namespace A358042

/-- `round(2*∑[n/acot(n)]/3)` -/
def P5853058845208844222.Spec : Prop :=
  ∀ n, P5853058845208844222.a n = A358042 n

end A358042

/-! ## A358042.P13730631994591424682

`floor(∑[∑[a(n-3)+4]])` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A358042.P13730631994591424682
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f2 =>
  f2 (n - 3) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358042.P13730631994591424682

namespace A358042

/-- `floor(∑[∑[a(n-3)+4]])` -/
def P13730631994591424682.Spec : Prop :=
  ∀ n, (P13730631994591424682.a n : ℤ) = A358042 n

end A358042

/-! ## A358042.P17644354368149546009

`a(n-1)-floor(n*(n/3-n))` with `a(0)=0`
-/

namespace A358042.P17644354368149546009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ⌊(n : ℚ) * ((n : ℚ) / 3 - (n : ℚ))⌋

end

end A358042.P17644354368149546009

namespace A358042

/-- `a(n-1)-floor(n*(n/3-n))` -/
def P17644354368149546009.Spec : Prop :=
  ∀ n, P17644354368149546009.a n = A358042 n

end A358042

/-! ## A358042.P18378168062567340660

`∑[A147623(n)]/2`
-/

namespace A358042.P18378168062567340660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A358042.P18378168062567340660

namespace A358042

/-- `∑[A147623(n)]/2` -/
def P18378168062567340660.Spec : Prop :=
  ∀ n, P18378168062567340660.a n = (A358042 n : ℚ)

end A358042

/-! ## A358042.P10155565517795213834

`∑[n²]-A181286(n)`
-/

namespace A358042.P10155565517795213834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A181286 n

end

end A358042.P10155565517795213834

namespace A358042

/-- `∑[n²]-A181286(n)` -/
def P10155565517795213834.Spec : Prop :=
  ∀ n, P10155565517795213834.a n = A358042 n

end A358042

/-! ## A358042.P17635372640763272951

`∑[A320259(n)]-C(n+1, 2)`
-/

namespace A358042.P17635372640763272951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (n + 1) 2 : ℤ)

end

end A358042.P17635372640763272951

namespace A358042

/-- `∑[A320259(n)]-C(n+1, 2)` -/
def P17635372640763272951.Spec : Prop :=
  ∀ n, P17635372640763272951.a n = A358042 n

end A358042

/-! ## A358042.P7103888784925926692

`Δ[C(n²+1, 2)]-∑[A299255(n)]`
-/

namespace A358042.P7103888784925926692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A358042.P7103888784925926692

namespace A358042

/-- `Δ[C(n²+1, 2)]-∑[A299255(n)]` -/
def P7103888784925926692.Spec : Prop :=
  ∀ n, P7103888784925926692.a n = A358042 n

end A358042

/-! ## A358042.P6391957345021812978

`A005894(n)-A051462(n)`
-/

namespace A358042.P6391957345021812978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n - A051462 n

end

end A358042.P6391957345021812978

namespace A358042

/-- `A005894(n)-A051462(n)` -/
def P6391957345021812978.Spec : Prop :=
  ∀ n, P6391957345021812978.a n = A358042 n

end A358042

/-! ## A358042.P4672608793679393231

`A019298(n)-A181120(n)`
-/

namespace A358042.P4672608793679393231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n - A181120 n

end

end A358042.P4672608793679393231

namespace A358042

/-- `A019298(n)-A181120(n)` -/
def P4672608793679393231.Spec : Prop :=
  ∀ n, P4672608793679393231.a n = A358042 n

end A358042

/-! ## A358042.P4582315548084416979

`A005898(n)-A299261(n)`
-/

namespace A358042.P4582315548084416979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - A299261 n

end

end A358042.P4582315548084416979

namespace A358042

/-- `A005898(n)-A299261(n)` -/
def P4582315548084416979.Spec : Prop :=
  ∀ n, P4582315548084416979.a n = A358042 n

end A358042

/-! ## A358042.P7698127602515905103

`A299265(n)-A005894(n)`
-/

namespace A358042.P7698127602515905103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299265 n - A005894 n

end

end A358042.P7698127602515905103

namespace A358042

/-- `A299265(n)-A005894(n)` -/
def P7698127602515905103.Spec : Prop :=
  ∀ n, P7698127602515905103.a n = A358042 n

end A358042

/-! ## A358042.P10035416667404803797

`A005898(n)-∑[A299255(n)]`
-/

namespace A358042.P10035416667404803797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358042.P10035416667404803797

namespace A358042

/-- `A005898(n)-∑[A299255(n)]` -/
def P10035416667404803797.Spec : Prop :=
  ∀ n, P10035416667404803797.a n = A358042 n

end A358042

/-! ## A358042.P13278867664566248377

`A322108(n+1)-A275580(n)`
-/

namespace A358042.P13278867664566248377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322108 (n + 1) - A275580 n

end

end A358042.P13278867664566248377

namespace A358042

/-- `A322108(n+1)-A275580(n)` -/
def P13278867664566248377.Spec : Prop :=
  ∀ n, P13278867664566248377.a n = A358042 n

end A358042

/-! ## A358042.P8252687311259636684

`A181286(n+1)+A181286(n)-A000212(n)`
-/

namespace A358042.P8252687311259636684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181286 (n + 1) + (A181286 n - A000212 n)

end

end A358042.P8252687311259636684

namespace A358042

/-- `A181286(n+1)+A181286(n)-A000212(n)` -/
def P8252687311259636684.Spec : Prop :=
  ∀ n, P8252687311259636684.a n = A358042 n

end A358042

/-! ## A358042.P9806544583891570497

`∑[A008810(2*n)]/2`
-/

namespace A358042.P9806544583891570497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008810 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A358042.P9806544583891570497

namespace A358042

/-- `∑[A008810(2*n)]/2` -/
def P9806544583891570497.Spec : Prop :=
  ∀ n, P9806544583891570497.a n = (A358042 n : ℚ)

end A358042

/-! ## A358042.P562934230972299792

`∑[A337483(2*n)]+n`
-/

namespace A358042.P562934230972299792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337483 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A358042.P562934230972299792

namespace A358042

/-- `∑[A337483(2*n)]+n` -/
def P562934230972299792.Spec : Prop :=
  ∀ n, P562934230972299792.a n = A358042 n

end A358042

/-! ## A358042.P5421116656503925562

`A181120(2*n)+∑[ceil(n/3)]`
-/

namespace A358042.P5421116656503925562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (2 * n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358042.P5421116656503925562

namespace A358042

/-- `A181120(2*n)+∑[ceil(n/3)]` -/
def P5421116656503925562.Spec : Prop :=
  ∀ n, P5421116656503925562.a n = A358042 n

end A358042

/-!
# A358043: Numbers k such that phi(k) is a multiple of 8.

The programs for A358043, there is no canonical definition to state claims against.
-/

/-! ## A358043.P17597744685058847456

`lt[2, gcd(4, A048240(n))]`
-/

namespace A358043.P17597744685058847456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A048240 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358043.P17597744685058847456

/-! ## A358043.P5586997149317889048

`lt[2, val(A225530(n), 2)]`
-/

namespace A358043.P5586997149317889048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A225530 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358043.P5586997149317889048

/-! ## A358043.P5116384393587569869

`lt[2, A053574(n+1)]+1`
-/

namespace A358043.P5116384393587569869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358043.P5116384393587569869

/-! ## A358043.P8625602455370957332

`lt[4, A069177(n+1)]+1`
-/

namespace A358043.P8625602455370957332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358043.P8625602455370957332

/-! ## A358043.P15315176702699654667

`lt[4, A247257(n+1)]+1`
-/

namespace A358043.P15315176702699654667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247257 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A358043.P15315176702699654667

/-! ## A358043.P1098090201372015767

`eq[0, and(7, A000010(n+1))]+1`
-/

namespace A358043.P1098090201372015767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A000010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358043.P1098090201372015767

/-! ## A358043.P5105550278107932426

`eq[8, gcd(8, A000010(n+2))]+2`
-/

namespace A358043.P5105550278107932426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A000010 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A358043.P5105550278107932426

/-! ## A358043.P13982958354969434080

`lt[2, val(A000010(A028310(n)), 2)]`
-/

namespace A358043.P13982958354969434080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000010 (A028310 n).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358043.P13982958354969434080

/-! ## A358043.P13937620344776323130

`eq[2, A007400(A000010(n+1))]+1`
-/

namespace A358043.P13937620344776323130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A358043.P13937620344776323130

/-! ## A358043.P2591250111615481191

`eq[1, A002828(A225530(n)-1)-3]`
-/

namespace A358043.P2591250111615481191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A225530 n - 1).toNat - 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A358043.P2591250111615481191

/-!
# A358046: Number of n-step self-avoiding walks on a 2D square lattice where the first visited lattice point is directly visible from the last visited lattice point, and were only visited lattice points are considered when determining the visibility of points.

The programs for A358046, there is no canonical definition to state claims against.
-/

/-! ## A358046.P381757759452698028

`A081611((8*3^n-1)*or(1, n))`
-/

namespace A358046.P381757759452698028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (((8 * 3 ^ n : ℤ) - 1) * (Nat.lor 1 n : ℤ)).toNat

end

end A358046.P381757759452698028

/-! ## A358046.P1660435419161892710

`A278531(A094867(n)+1)`
-/

namespace A358046.P1660435419161892710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A094867 n + 1).toNat

end

end A358046.P1660435419161892710

/-!
# A358047: a(1) = 2; afterwards a(n) is the least new prime such that 2*a(n-1) + a(n) is a prime.

The programs for A358047, there is no canonical definition to state claims against.
-/

/-! ## A358047.P14657930284205263178

`A000040(A073666(n+1)%A073695(n+1))`
-/

namespace A358047.P14657930284205263178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A073666 (n + 1)) (A073695 (n + 1))).toNat

end

end A358047.P14657930284205263178

/-! ## A358047.P2428799255783004624

`A000040(A331275(n+1)%A265784(n+1))`
-/

namespace A358047.P2428799255783004624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A331275 (n + 1)) (A265784 (n + 1))).toNat

end

end A358047.P2428799255783004624

/-! ## A358047.P4560585002314901724

`A000040(A092842(n+1)%A180212(n+3))`
-/

namespace A358047.P4560585002314901724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.tmod (A092842 (n + 1)) (A180212 (n + 3))).toNat

end

end A358047.P4560585002314901724

/-! ## A358047.P7397529196348944386

`A000040(A073666(n+1))%A229030(3*n+2)`
-/

namespace A358047.P7397529196348944386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A073666 (n + 1)).toNat) (A229030 (3 * n + 2))

end

end A358047.P7397529196348944386

/-!
# A358048: Lexicographically earliest sequence of distinct nonnegative integers on a square spiral such that every number shares a digit with each of its eight surrounding neighbors.

The programs for A358048, there is no canonical definition to state claims against.
-/

/-! ## A358048.P7716281677787100283

`(10*n)%A050987(∑{d}[n+1, #])`
-/

namespace A358048.P7716281677787100283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (10 * n : ℤ) (A050987 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A358048.P7716281677787100283

/-! ## A358048.P12115254466475927378

`2*n*A083945(A001006(n))`
-/

namespace A358048.P12115254466475927378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A083945 (A001006 n).toNat

end

end A358048.P12115254466475927378

/-! ## A358048.P12063696048180064444

`n*A069532(Δ[A262038(n)]!)`
-/

namespace A358048.P12063696048180064444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A069532 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A358048.P12063696048180064444

/-! ## A358048.P14411726674352855079

`n*A063565(A058348(3*(n+1)))`
-/

namespace A358048.P14411726674352855079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A063565 (A058348 (3 * (n + 1))).toNat

end

end A358048.P14411726674352855079

/-! ## A358048.P12574457756580566633

`n*A040024(A194998(3*n+2))`
-/

namespace A358048.P12574457756580566633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040024 (A194998 (3 * n + 2)).toNat

end

end A358048.P12574457756580566633

/-!
# A358049: a(1) = 2, a(2) = 3; afterwards a(n) is least new prime > a(n-1) such that a(n-2) + a(n) and a(n-1) + a(n) are semiprimes.

The programs for A358049, there is no canonical definition to state claims against.
-/

/-! ## A358049.P13386250925875876056

`A105049(A281362(n))`
-/

namespace A358049.P13386250925875876056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105049 (A281362 n).toNat

end

end A358049.P13386250925875876056

/-! ## A358049.P8683415099539112222

`A105049(A395489(n))`
-/

namespace A358049.P8683415099539112222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105049 (A395489 n).toNat

end

end A358049.P8683415099539112222

/-! ## A358049.P5994400500005260563

`A105049(A101268(n+1))`
-/

namespace A358049.P5994400500005260563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105049 (A101268 (n + 1)).toNat

end

end A358049.P5994400500005260563

/-!
# A358050: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} binomial(k*j,j) * binomial(k*(n-j),n-j).

The programs for A358050, there is no canonical definition to state claims against.
-/

/-! ## A358050.P10654142846774232140

`A055570(A287698(n)+A014473(n))`
-/

namespace A358050.P10654142846774232140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A287698 n + A014473 n).toNat

end

end A358050.P10654142846774232140

/-! ## A358050.P16092545466154437280

`A342133(n)+and(A057195(3*n+4), A317624(n))`
-/

namespace A358050.P16092545466154437280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342133 n + Int.land (A057195 (3 * n + 4)) (A317624 n)

end

end A358050.P16092545466154437280

/-! ## A358050.P16657317705228076446

`A160385(A267479(n)²)*A163352(A114123(n))`
-/

namespace A358050.P16657317705228076446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A267479 n ^ 2).toNat * A163352 (A114123 n).toNat

end

end A358050.P16657317705228076446

/-! ## A358050.P9837721248568578625

`A342133(n)+A279228(A210237(n+1))`
-/

namespace A358050.P9837721248568578625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342133 n + A279228 (A210237 (n + 1)).toNat

end

end A358050.P9837721248568578625

/-! ## A358050.P15776631402831050028

`A342133(n)+A096158(A275722(3*n+4))`
-/

namespace A358050.P15776631402831050028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342133 n + A096158 (A275722 (3 * n + 4)).toNat

end

end A358050.P15776631402831050028

/-!
# A358051: Squares k such that phi(k) is a cube.

The programs for A358051, there is no canonical definition to state claims against.
-/

/-! ## A358051.P6216258065633519548

`A114076(n+1)²`
-/

namespace A358051.P6216258065633519548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114076 (n + 1) ^ 2

end

end A358051.P6216258065633519548

/-! ## A358051.P5829809535530993621

`A114076(A008619(2*n+1))^2`
-/

namespace A358051.P5829809535530993621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114076 (A008619 (2 * n + 1)).toNat ^ 2

end

end A358051.P5829809535530993621

/-! ## A358051.P3011896049381197756

`A114076(n+1)^(2%A313927(n))`
-/

namespace A358051.P3011896049381197756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114076 (n + 1) : ℚ) ^ (Int.tmod 2 (A313927 n) : ℤ)

end

end A358051.P3011896049381197756

/-! ## A358051.P14532704634780066343

`A114076(n+1)^A114080(gcd(n, n+1))`
-/

namespace A358051.P14532704634780066343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114076 (n + 1) : ℚ) ^ (A114080 (Nat.gcd n (n + 1)) : ℤ)

end

end A358051.P14532704634780066343

/-! ## A358051.P2776755588409251936

`A114076(n+1)^(A000010(C(2, n)!)+1)`
-/

namespace A358051.P2776755588409251936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114076 (n + 1) : ℚ) ^ (A000010 (Nat.factorial (Nat.choose 2 n)) + 1 : ℤ)

end

end A358051.P2776755588409251936

/-!
# A358052: Triangular array read by rows. For T(n,k) where 1 <= k <= n, start with x = k and repeat the map x -> floor(n/x) + (n mod x) until an x occurs that has already appeared. The number of applications of the map is T(n,k).

The programs for A358052, there is no canonical definition to state claims against.
-/

/-! ## A358052.P10649546158131321316

`A001221(A202193(3*n+5)+A076791(3*(n+1)))`
-/

namespace A358052.P10649546158131321316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A202193 (3 * n + 5) + A076791 (3 * (n + 1))).toNat

end

end A358052.P10649546158131321316

/-! ## A358052.P502778451308479625

`∑{e}[∏{p}[A008619(A328451(3*n+2))+2, #], #]`
-/

namespace A358052.P502778451308479625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A328451 (3 * n + 2)).toNat + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A358052.P502778451308479625

/-! ## A358052.P16725330025505780810

`A001221(A048716(2*(n+1))*A207872(3*n+2))`
-/

namespace A358052.P16725330025505780810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048716 (2 * (n + 1)) * A207872 (3 * n + 2)).toNat

end

end A358052.P16725330025505780810

/-! ## A358052.P10760041338719501087

`A001221(A333256(3*n+1)+A125524(n+2))`
-/

namespace A358052.P10760041338719501087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A333256 (3 * n + 1) + A125524 (n + 2)).toNat

end

end A358052.P10760041338719501087

/-!
# A358053: a(n) = 14*n - 1.

The programs for A358053, the canonical program `A358053.P16218027388705789310` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358053 has offset 1).

The definition of A358053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A358053.P16218027388705789310

`2*a(n-1)-a(n-2)` with `a(0)=13, a(1)=27`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A358053

/-- `2*a(n-1)-a(n-2)` -/
def P16218027388705789310.Spec : Prop :=
  ∀ n, P16218027388705789310.a n = A358053 (n + 1)

theorem P16218027388705789310.correct : P16218027388705789310.Spec := by
  intro n
  simp only [A358053, Nat.add_sub_cancel]

end A358053

/-!
# A358056: Given a row of n payphones (or phone booths), all initially unused, how many ways are there for n people to choose the payphones, assuming each always chooses one of the most distant payphones from those in use already? We consider here only the distance to the closest neighbor (in contrast to A095236).

The programs for A358056, there is no canonical definition to state claims against.
-/

/-! ## A358056.P17672893605818960623

`A010554(A019538(n+1)+A000108(n+1))`
-/

namespace A358056.P17672893605818960623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A019538 (n + 1) + A000108 (n + 1)).toNat

end

end A358056.P17672893605818960623

/-! ## A358056.P11870205066594097719

`A212647(A148200(n))`
-/

namespace A358056.P11870205066594097719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212647 (A148200 n).toNat

end

end A358056.P11870205066594097719

/-! ## A358056.P190643768379207498

`A262689(∏[∑[A172236(2*n+3)]])`
-/

namespace A358056.P190643768379207498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172236 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A358056.P190643768379207498

/-! ## A358056.P17847370739450834503

`A034444(A001181(n))*A299270(n)`
-/

namespace A358056.P17847370739450834503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A001181 n).toNat * A299270 n

end

end A358056.P17847370739450834503

/-!
# A358058: a(n) is the index of the smallest n-gonal number divisible by exactly n n-gonal numbers.

The programs for A358058, there is no canonical definition to state claims against.
-/

/-! ## A358058.P12637547391579355437

`record[A195919(A103339(n+1))]`
-/

namespace A358058.P12637547391579355437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195919 (A103339 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A358058.P12637547391579355437

/-!
# A358060: Perfect squares that are the sum of a perfect square and a factorial number.

The programs for A358060, there is no canonical definition to state claims against.
-/

/-! ## A358060.P15330516178421310497

`or(or(1, 3*n+1), A116188(A001006(n)))²`
-/

namespace A358060.P15330516178421310497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.lor 1 (3 * n + 1) : ℤ) (A116188 (A001006 n).toNat) ^ 2

end

end A358060.P15330516178421310497

/-!
# A358061: a(n) = phi(n) mod tau(n).

The programs for A358061, the canonical program `A358061.P13972673680115757593` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358061 has offset 1).

The definition of A358061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358061.P10148672472900861259

`A000010(n+1)%∏{e}[n+1, #+1]`
-/

namespace A358061.P10148672472900861259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A358061.P10148672472900861259

namespace A358061

/-- `A000010(n+1)%∏{e}[n+1, #+1]` -/
def P10148672472900861259.Spec : Prop :=
  ∀ n, P10148672472900861259.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P13972673680115757593

`A349137(Δ[n²])%∏{e}[n+1, #+1]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A358061

/-- `A349137(Δ[n²])%∏{e}[n+1, #+1]` -/
def P13972673680115757593.Spec : Prop :=
  ∀ n, P13972673680115757593.a n = A358061 (n + 1)

theorem P13972673680115757593.correct : P13972673680115757593.Spec := by
  intro n
  simp only [A358061, Nat.add_sub_cancel]

end A358061

/-! ## A358061.P2301950466090943623

`(A109606(n+1)+1)%∏{e}[n+1, #+1]`
-/

namespace A358061.P2301950466090943623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109606 (n + 1) + 1) ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A358061.P2301950466090943623

namespace A358061

/-- `(A109606(n+1)+1)%∏{e}[n+1, #+1]` -/
def P2301950466090943623.Spec : Prop :=
  ∀ n, P2301950466090943623.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P12445736596508106671

`(A000010(2*n-(n-1))-and(2, n²))%∑{d}[n+1, gcd(n, #)]`
-/

namespace A358061.P12445736596508106671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (Nat.land 2 (n ^ 2) : ℤ)) ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)

end

end A358061.P12445736596508106671

namespace A358061

/-- `(A000010(2*n-(n-1))-and(2, n²))%∑{d}[n+1, gcd(n, #)]` -/
def P12445736596508106671.Spec : Prop :=
  ∀ n, P12445736596508106671.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P8172695590216455050

`((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%A000005(n+1)`
-/

namespace A358061.P8172695590216455050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (A000005 (n + 1))

end

end A358061.P8172695590216455050

namespace A358061

/-- `((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])%A000005(n+1)` -/
def P8172695590216455050.Spec : Prop :=
  ∀ n, P8172695590216455050.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P14282772724110505238

`Δ[A002088(n)]%A000005(n+1)`
-/

namespace A358061.P14282772724110505238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000005 (n + 1))

end

end A358061.P14282772724110505238

namespace A358061

/-- `Δ[A002088(n)]%A000005(n+1)` -/
def P14282772724110505238.Spec : Prop :=
  ∀ n, P14282772724110505238.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P804286505290836698

`Δ[A005728(n)]%A000005(n+1)`
-/

namespace A358061.P804286505290836698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000005 (n + 1))

end

end A358061.P804286505290836698

namespace A358061

/-- `Δ[A005728(n)]%A000005(n+1)` -/
def P804286505290836698.Spec : Prop :=
  ∀ n, P804286505290836698.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P11370879182037350058

`A000010(n+1)%A000005(n+1)`
-/

namespace A358061.P11370879182037350058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) (A000005 (n + 1))

end

end A358061.P11370879182037350058

namespace A358061

/-- `A000010(n+1)%A000005(n+1)` -/
def P11370879182037350058.Spec : Prop :=
  ∀ n, P11370879182037350058.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P8801389854492178760

`A061468(n+1)%A000005(n+1)`
-/

namespace A358061.P8801389854492178760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061468 (n + 1)) (A000005 (n + 1))

end

end A358061.P8801389854492178760

namespace A358061

/-- `A061468(n+1)%A000005(n+1)` -/
def P8801389854492178760.Spec : Prop :=
  ∀ n, P8801389854492178760.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P13166915660329479067

`sqrt(A127473(n+1))%A000005(n+1)`
-/

namespace A358061.P13166915660329479067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))) (A000005 (n + 1))

end

end A358061.P13166915660329479067

namespace A358061

/-- `sqrt(A127473(n+1))%A000005(n+1)` -/
def P13166915660329479067.Spec : Prop :=
  ∀ n, P13166915660329479067.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P12887648499703229894

`∑{d}[n+1, (n+1)/#*A008683(#)]%A000005(n+1)`
-/

namespace A358061.P12887648499703229894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ))) (A000005 (n + 1))

end

end A358061.P12887648499703229894

namespace A358061

/-- `∑{d}[n+1, (n+1)/#*A008683(#)]%A000005(n+1)` -/
def P12887648499703229894.Spec : Prop :=
  ∀ n, P12887648499703229894.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P12224368964675735473

`--A000010(n+1)%(∑{d}[n+1, 1-A000010(#)]+n+1)`
-/

namespace A358061.P12224368964675735473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000010 (n + 1)) (∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d) + (n + 1 : ℤ))

end

end A358061.P12224368964675735473

namespace A358061

/-- `--A000010(n+1)%(∑{d}[n+1, 1-A000010(#)]+n+1)` -/
def P12224368964675735473.Spec : Prop :=
  ∀ n, P12224368964675735473.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P5773641514572827573

`A000010(n+1)-A000005(n+1)*A279507(n+1)`
-/

namespace A358061.P5773641514572827573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A000005 (n + 1) * A279507 (n + 1)

end

end A358061.P5773641514572827573

namespace A358061

/-- `A000010(n+1)-A000005(n+1)*A279507(n+1)` -/
def P5773641514572827573.Spec : Prop :=
  ∀ n, P5773641514572827573.a n = A358061 (n + 1)

end A358061

/-! ## A358061.P9815031636594671663

`A000010(A023443(n+2))%∑{d}[n+1, ceil(1/#)]`
-/

namespace A358061.P9815031636594671663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A023443 (n + 2)).toNat) (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉)

end

end A358061.P9815031636594671663

namespace A358061

/-- `A000010(A023443(n+2))%∑{d}[n+1, ceil(1/#)]` -/
def P9815031636594671663.Spec : Prop :=
  ∀ n, P9815031636594671663.a n = A358061 (n + 1)

end A358061

/-!
# A358062: a(n) is the diagonal domination number for the queen graph on an n X n chessboard.

The programs for A358062, there is no canonical definition to state claims against.
-/

/-! ## A358062.P9138000366455321091

`n-A003002(1-A065033(n)+n)+1`
-/

namespace A358062.P9138000366455321091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003002 (1 - A065033 n + (n : ℤ)).toNat + 1

end

end A358062.P9138000366455321091

/-!
# A358063: Expansion of e.g.f. exp( x * exp(-x^3) ).

The programs for A358063, there is no canonical definition to state claims against.
-/

/-! ## A358063.P1361259186085205287

`A367722(n)+A223591(n+1)%2`
-/

namespace A358063.P1361259186085205287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367722 n + Int.tmod (A223591 (n + 1)) 2

end

end A358063.P1361259186085205287

/-! ## A358063.P9856829726730975639

`A367722(n)%A332316(3*n+1)`
-/

namespace A358063.P9856829726730975639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367722 n) (A332316 (3 * n + 1))

end

end A358063.P9856829726730975639

/-! ## A358063.P16773224314953716044

`A367722(n)^A161605(∑{digits}[n!, val(#+n, n+2)])`
-/

namespace A358063.P16773224314953716044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A367722 n : ℚ) ^ (A161605 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + n) (n + 2)).sum : ℤ)

end

end A358063.P16773224314953716044

/-! ## A358063.P8057688167077238846

`A367722(n)+A083928(A000041(n))`
-/

namespace A358063.P8057688167077238846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367722 n + A083928 (A000041 n).toNat

end

end A358063.P8057688167077238846

/-! ## A358063.P12885323526169510829

`A367722(n)+A261044(A367705(n))`
-/

namespace A358063.P12885323526169510829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367722 n + A261044 (A367705 n).toNat

end

end A358063.P12885323526169510829

/-!
# A358064: Expansion of e.g.f. 1/(1 - x * exp(x^2)).

The programs for A358064, there is no canonical definition to state claims against.
-/

/-! ## A358064.P9214948954509677318

`A008330(A004211(n)+1)`
-/

namespace A358064.P9214948954509677318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (A004211 n + 1).toNat

end

end A358064.P9214948954509677318

/-! ## A358064.P4659670187203982309

`A005843(A356632(n))-A000142(n)`
-/

namespace A358064.P4659670187203982309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A356632 n).toNat - A000142 n

end

end A358064.P4659670187203982309

/-! ## A358064.P3573832569978478342

`A005843(A356632(n))-A052399(n)`
-/

namespace A358064.P3573832569978478342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A356632 n).toNat - A052399 n

end

end A358064.P3573832569978478342

/-!
# A358065: Expansion of e.g.f. 1/(1 - x * exp(x^3)).

The programs for A358065, there is no canonical definition to state claims against.
-/

/-! ## A358065.P14891088558873069279

`A017911(n)*A046523(A001710(n))`
-/

namespace A358065.P14891088558873069279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017911 n * A046523 (A001710 n).toNat

end

end A358065.P14891088558873069279

/-! ## A358065.P9413495484455707561

`A026741(A000142(n))*A361394(n)`
-/

namespace A358065.P9413495484455707561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000142 n).toNat * A361394 n

end

end A358065.P9413495484455707561

/-! ## A358065.P414830170331411166

`A046523(A001710(n))*A353864(n)`
-/

namespace A358065.P414830170331411166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A001710 n).toNat * A353864 n

end

end A358065.P414830170331411166

/-! ## A358065.P9615908416641169904

`A322372(A000009(n+1)*A000608(n))`
-/

namespace A358065.P9615908416641169904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322372 (A000009 (n + 1) * A000608 n).toNat

end

end A358065.P9615908416641169904

/-!
# A358066: Inventory sequence: record where the 1's, 2's, etc. are located starting with a(1) = 1, a(2) = 1 (see example).

The programs for A358066, there is no canonical definition to state claims against.
-/

/-! ## A358066.P13342942013829267719

`A357443(n+1)%A079378(A110123(n))`
-/

namespace A358066.P13342942013829267719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357443 (n + 1)) (A079378 (A110123 n).toNat)

end

end A358066.P13342942013829267719

/-! ## A358066.P1705825952422620049

`gcd(A239927(A288155(2*(n+1))), A358085(n+1))`
-/

namespace A358066.P1705825952422620049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A239927 (A288155 (2 * (n + 1))).toNat) (A358085 (n + 1))

end

end A358066.P1705825952422620049

/-!
# A358069: Number of configurations of the 20 Vertex model on a square grid n X n with domain wall boundary conditions.

The programs for A358069, there is no canonical definition to state claims against.
-/

/-! ## A358069.P11835334745611413954

`A005117(A116608(3*n+4)+A095983(n+2))`
-/

namespace A358069.P11835334745611413954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A116608 (3 * n + 4) + A095983 (n + 2)).toNat

end

end A358069.P11835334745611413954

/-!
# A358070: Largest order of element in direct product S_n * S_n where S_n is the symmetric group.

The programs for A358070, there is no canonical definition to state claims against.
-/

/-! ## A358070.P5516377440816658347

`A225646(lt[A165064(n+1), 6])`
-/

namespace A358070.P5516377440816658347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165064 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225646 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A358070.P5516377440816658347

/-! ## A358070.P15743509812999485168

`A225646(lt[A000203(n+1), 16])`
-/

namespace A358070.P15743509812999485168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225646 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A358070.P15743509812999485168

/-! ## A358070.P925926775864154007

`A225627(A007095(n)%A235060(n+1))`
-/

namespace A358070.P925926775864154007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225627 (Int.tmod (A007095 n) (A235060 (n + 1))).toNat

end

end A358070.P925926775864154007

/-! ## A358070.P9006931389862408892

`A225646(lt[A001678(n), A180000(n+2)])`
-/

namespace A358070.P9006931389862408892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225646 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358070.P9006931389862408892

/-! ## A358070.P7689234631393676074

`A225646(lt[A056040(n), A173587(n+4)])`
-/

namespace A358070.P7689234631393676074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173587 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225646 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358070.P7689234631393676074

/-!
# A358071: Numbers k that can be written as the sum of a perfect square and a factorial in at least 2 distinct ways.

The programs for A358071, there is no canonical definition to state claims against.
-/

/-! ## A358071.P17836514838595743382

`A118881(A227461(n+1))+A038569(n)`
-/

namespace A358071.P17836514838595743382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 (A227461 (n + 1)).toNat + A038569 n

end

end A358071.P17836514838595743382

/-!
# A358072: a(n) is the number of "merger histories" of n elements (see A256006) where at most 3 elements can merge at the same time.

The programs for A358072, there is no canonical definition to state claims against.
-/

/-! ## A358072.P15176559358150044349

`A246416((n+1)*n^n)`
-/

namespace A358072.P15176559358150044349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 ((n + 1) * n ^ n)

end

end A358072.P15176559358150044349

/-!
# A358074: a(n) is the number of distinct ways n can be written as the sum of a perfect square and factorial.

The programs for A358074, there is no canonical definition to state claims against.
-/

/-! ## A358074.P4004657649107478229

`C(A368334(3*n+1), A338884(A316496(n+1)))`
-/

namespace A358074.P4004657649107478229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A368334 (3 * n + 1)).toNat (A338884 (A316496 (n + 1)).toNat).toNat

end

end A358074.P4004657649107478229

/-! ## A358074.P3040965268871667950

`A007877(lcm(n+1, (A001263(n+1)+2)²))`
-/

namespace A358074.P3040965268871667950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007877 (Int.lcm (n + 1 : ℤ) ((A001263 (n + 1) + 2) ^ 2))

end

end A358074.P3040965268871667950

/-! ## A358074.P16167210252080137005

`5%or(n, -4)*A214284(A304321(n+1))`
-/

namespace A358074.P16167210252080137005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (Int.lor (n : ℤ) (-4)) * A214284 (A304321 (n + 1)).toNat

end

end A358074.P16167210252080137005

/-! ## A358074.P11336366428873724599

`and(2^val(n+1, 2), A286448(A339860(3*n+5)))`
-/

namespace A358074.P11336366428873724599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) (A286448 (A339860 (3 * n + 5)).toNat)

end

end A358074.P11336366428873724599

/-!
# A358076: Numbers that share at least 1 (decimal) digit with their largest proper divisor.

The programs for A358076, there is no canonical definition to state claims against.
-/

/-! ## A358076.P11020808136636260408

`lt[9, A329198(A329189(n+1))]`
-/

namespace A358076.P11020808136636260408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329198 (A329189 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A358076.P11020808136636260408

/-! ## A358076.P12350122824420040123

`A230078(lt[A234921(2*n+3), A155933(n+1)])`
-/

namespace A358076.P12350122824420040123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234921 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230078 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A358076.P12350122824420040123

/-! ## A358076.P15703053738751017766

`lt[A100994(A100994(3*n+5)²), A329985(2*n+3)]`
-/

namespace A358076.P15703053738751017766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (A100994 (3 * n + 5) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329985 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A358076.P15703053738751017766

/-!
# A358077: Sum of the nonprime divisors of n whose divisor complement is squarefree.

The programs for A358077, the canonical program `A358077.P9825704743744712709` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358077 has offset 1).

The definition of A358077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358077.P9825704743744712709

`∑{d}[n+1, A008966(#)*A191558((n+1)/#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A358077

/-- `∑{d}[n+1, A008966(#)*A191558((n+1)/#)]` -/
def P9825704743744712709.Spec : Prop :=
  ∀ n, P9825704743744712709.a n = A358077 (n + 1)

theorem P9825704743744712709.correct : P9825704743744712709.Spec := by
  intro n
  simp only [A358077, Nat.add_sub_cancel]

end A358077

/-! ## A358077.P18366145717062786831

`∑{d}[n+1, A023890(#)*A271102((n+1)/#)]`
-/

namespace A358077.P18366145717062786831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023890 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A358077.P18366145717062786831

namespace A358077

/-- `∑{d}[n+1, A023890(#)*A271102((n+1)/#)]` -/
def P18366145717062786831.Spec : Prop :=
  ∀ n, P18366145717062786831.a n = A358077 (n + 1)

end A358077

/-! ## A358077.P3082648789111621732

`∑{d}[n+1, #]-∑{p}[n+1, #]-A350251(∏{e}[n+1, #^#])`
-/

namespace A358077.P3082648789111621732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - A350251 (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p ^ Nat.factorization (f3 n) p)

end

end A358077.P3082648789111621732

namespace A358077

/-- `∑{d}[n+1, #]-∑{p}[n+1, #]-A350251(∏{e}[n+1, #^#])` -/
def P3082648789111621732.Spec : Prop :=
  ∀ n, P3082648789111621732.a n = A358077 (n + 1)

end A358077

/-! ## A358077.P3324457518265254148

`A023890(n+1)-A076478(A143610(2*(n+1)))`
-/

namespace A358077.P3324457518265254148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - A076478 (A143610 (2 * (n + 1))).toNat

end

end A358077.P3324457518265254148

namespace A358077

/-- `A023890(n+1)-A076478(A143610(2*(n+1)))` -/
def P3324457518265254148.Spec : Prop :=
  ∀ n, P3324457518265254148.a n = A358077 (n + 1)

end A358077

/-! ## A358077.P13267910910291568464

`A023890(n+1)-A107078(A272091(2*n+1))`
-/

namespace A358077.P13267910910291568464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023890 (n + 1) - A107078 (A272091 (2 * n + 1)).toNat

end

end A358077.P13267910910291568464

namespace A358077

/-- `A023890(n+1)-A107078(A272091(2*n+1))` -/
def P13267910910291568464.Spec : Prop :=
  ∀ n, P13267910910291568464.a n = A358077 (n + 1)

end A358077

/-!
# A358078: a(n) is the number of squarefree semiprimes <= 2^n.

The programs for A358078, there is no canonical definition to state claims against.
-/

/-! ## A358078.P17528344813255500633

`A072613(2^n)`
-/

namespace A358078.P17528344813255500633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (2 ^ n)

end

end A358078.P17528344813255500633

/-! ## A358078.P8625614487119564908

`A072613(A000079(n))%n!`
-/

namespace A358078.P8625614487119564908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072613 (A000079 n).toNat) (Nat.factorial n : ℤ)

end

end A358078.P8625614487119564908

/-! ## A358078.P10822925024436606192

`A243834(n)+A072613(A000079(n))`
-/

namespace A358078.P10822925024436606192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243834 n + A072613 (A000079 n).toNat

end

end A358078.P10822925024436606192

/-! ## A358078.P3275215274585167170

`A057427(n)*A072613(A000079(n))`
-/

namespace A358078.P3275215274585167170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A072613 (A000079 n).toNat

end

end A358078.P3275215274585167170

/-! ## A358078.P10093838242643352013

`A072613(A000079(n))*A175782(n)`
-/

namespace A358078.P10093838242643352013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072613 (A000079 n).toNat * A175782 n

end

end A358078.P10093838242643352013

/-!
# A358079: Primes that can be written as 2^x + p where p is a prime and x is a multiple of p.

The programs for A358079, there is no canonical definition to state claims against.
-/

/-! ## A358079.P3837250208407675402

`∩[A099227(n+1), A056208(n)]`
-/

namespace A358079.P3837250208407675402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056208 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A358079.P3837250208407675402

/-! ## A358079.P511980909966411713

`p?[A131572(n+3)+A067695(2*(n+2))]`
-/

namespace A358079.P511980909966411713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (n + 3) + A067695 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A358079.P511980909966411713

/-!
# A358080: Expansion of e.g.f. 1/(1 - x^2 * exp(x)).

The programs for A358080, there is no canonical definition to state claims against.
-/

/-! ## A358080.P5181511140345104174

`A028310(A351825(n)+n)-n`
-/

namespace A358080.P5181511140345104174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A351825 n + (n : ℤ)).toNat - (n : ℤ)

end

end A358080.P5181511140345104174

/-! ## A358080.P676068377157305033

`A351825(n)+A209229(2^n+5^n-1)`
-/

namespace A358080.P676068377157305033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351825 n + A209229 ((2 ^ n : ℤ) + ((5 ^ n : ℤ) - 1)).toNat

end

end A358080.P676068377157305033

/-! ## A358080.P255510674615588357

`C(A162697(n), A236104(n+1)^val(n+1, 2))`
-/

namespace A358080.P255510674615588357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A162697 n).toNat (A236104 (n + 1) ^ SequenceMachineLib.valuation (n + 1) 2).toNat

end

end A358080.P255510674615588357

/-!
# A358081: Expansion of e.g.f. 1/(1 - x^3 * exp(x)).

The programs for A358081, there is no canonical definition to state claims against.
-/

/-! ## A358081.P3831470296334519910

`A263272(A371045(n))`
-/

namespace A358081.P3831470296334519910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263272 (A371045 n).toNat

end

end A358081.P3831470296334519910

/-! ## A358081.P2301563268676008614

`A319657(A371019(n))`
-/

namespace A358081.P2301563268676008614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 (A371019 n).toNat

end

end A358081.P2301563268676008614

/-! ## A358081.P1646453286517220916

`A004525(2*A371045(n))`
-/

namespace A358081.P1646453286517220916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A371045 n).toNat

end

end A358081.P1646453286517220916

/-!
# A358083: Sum of square end-to-end displacements over all n-step self-avoiding walks of A358046.

The programs for A358083, there is no canonical definition to state claims against.
-/

/-! ## A358083.P8304164163698933733

`A071797(A057081(n))*A165825(3*(n+1))`
-/

namespace A358083.P8304164163698933733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A057081 n).toNat * A165825 (3 * (n + 1))

end

end A358083.P8304164163698933733

/-!
# A358084: Sum of square end-to-end displacements over all n-step self-avoiding walks of A358036.

The programs for A358084, there is no canonical definition to state claims against.
-/

/-! ## A358084.P18245419426204761353

`(A337810(A092053(n+1))+7)*2*n`
-/

namespace A358084.P18245419426204761353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A337810 (A092053 (n + 1)).toNat + 7) * (2 * n : ℤ)

end

end A358084.P18245419426204761353

/-!
# A358086: Inventory of positions ordered by odd parts of terms, as an irregular table; the first row contains 1, subsequent rows contains the 1-based positions of terms with odd part 1, followed by positions of terms with odd part 3, 5, etc. in prior rows flattened.

The programs for A358086, there is no canonical definition to state claims against.
-/

/-! ## A358086.P15335623541360348949

`A115570(A003238(n+1))+A073642(n-A003817(n)+n)`
-/

namespace A358086.P15335623541360348949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (A003238 (n + 1)).toNat + A073642 ((n : ℤ) - A003817 n + (n : ℤ)).toNat

end

end A358086.P15335623541360348949

/-! ## A358086.P3231291067417352498

`A115570(A003238(n+1))+A231204(n)-A359495(2*n+1)`
-/

namespace A358086.P3231291067417352498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (A003238 (n + 1)).toNat + (A231204 n - A359495 (2 * n + 1))

end

end A358086.P3231291067417352498

/-!
# A358087: Primes that can be written as 2^x - p where p is a prime and x is a multiple of p.

The programs for A358087, there is no canonical definition to state claims against.
-/

/-! ## A358087.P9750782966743973476

`p?[∑[2^n]-∏{p}[n+1, #-1]]`
-/

namespace A358087.P9750782966743973476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A358087.P9750782966743973476

/-! ## A358087.P7413067288846175552

`p?[2^(n+1)-A006530(n+1)]`
-/

namespace A358087.P7413067288846175552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A358087.P7413067288846175552

/-! ## A358087.P9279432868485702005

`p?[A020707(n)-A051664(n+2)]`
-/

namespace A358087.P9279432868485702005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n - A051664 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A358087.P9279432868485702005

/-! ## A358087.P12024032328206767921

`p?[1-(A006530(n+1)-A000225(n+1))]`
-/

namespace A358087.P12024032328206767921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A006530 (n + 1) - A000225 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A358087.P12024032328206767921

/-!
# A358088: Number of pairs (s,t) with s and t squarefree, 1 <= s < t <= n and s | t.

The programs for A358088, there is no canonical definition to state claims against.
-/

/-! ## A358088.P12487956620952985898

`∑[ceil(∏{e}[n+1, 2/#^4])-1]`
-/

namespace A358088.P12487956620952985898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f2 n), 2 / (Nat.factorization (f2 n) p ^ 4 : ℚ)⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358088.P12487956620952985898

/-! ## A358088.P12533258309570428543

`∑[7%ceil(∏{e}[n+1, 2/#^4])]`
-/

namespace A358088.P12533258309570428543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 ⌈∏ p ∈ Nat.primeFactors (f2 n), 2 / (Nat.factorization (f2 n) p ^ 4 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358088.P12533258309570428543

/-! ## A358088.P13581843987531256410

`∑[∏{e}[n+1, (2^#)%4]-char[∏{p}[n, #]-1]]`
-/

namespace A358088.P13581843987531256410
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p % 4 : ℕ) : ℤ) - ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358088.P13581843987531256410

/-! ## A358088.P17614726699690911416

`∑[(∏{p}[n+1, 2%#²]-1)*char[∏{p}[n, #]-1]]`
-/

namespace A358088.P17614726699690911416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f2 n), 2 % p ^ 2 : ℕ) : ℤ) - 1) * ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358088.P17614726699690911416

/-! ## A358088.P2156963831847009380

`∑[∏{e}[n+1, floor(2/#²)]-∏{e}[n+1, #!%2]]`
-/

namespace A358088.P2156963831847009380
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌊2 / (Nat.factorization (f2 n) p ^ 2 : ℚ)⌋ - ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358088.P2156963831847009380

/-! ## A358088.P18391402443618308260

`∑[A156260(n+1)-1]`
-/

namespace A358088.P18391402443618308260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156260 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358088.P18391402443618308260

/-! ## A358088.P12672047997515851055

`∑[∑{d}[A346234(n+1), 2%#/2]]`
-/

namespace A358088.P12672047997515851055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346234 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, ((2 % d : ℕ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358088.P12672047997515851055

/-! ## A358088.P17516622788546353548

`∑[C(A309307(n+1), ∏{e}[n+1, #^3])]`
-/

namespace A358088.P17516622788546353548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A309307 (n + 1)).toNat (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358088.P17516622788546353548

/-! ## A358088.P15898596560313734466

`∑[C(A183093(n+1), ∏{e}[n+1, #²]²)]`
-/

namespace A358088.P15898596560313734466
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A183093 (n + 1)).toNat ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p ^ 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358088.P15898596560313734466

/-! ## A358088.P8526627808682857992

`∑[lcm(∏{e}[n+1, -#!]%2, A032741(n+1))]`
-/

namespace A358088.P8526627808682857992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (∏ p ∈ Nat.primeFactors (f2 n), (-(Nat.factorial (Nat.factorization (f2 n) p) : ℤ))) 2) (A032741 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A358088.P8526627808682857992

/-!
# A358089: First differences of A126706.

The programs for A358089, the canonical program `A358089.P6226920074506255654` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A358089 has offset 1).

The definition of A358089 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A358089.P16209835787406116118

`Δ[∪[A059404(n+1), A067341(n+1)]]`
-/

namespace A358089.P16209835787406116118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067341 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358089.P16209835787406116118

namespace A358089

/-- `Δ[∪[A059404(n+1), A067341(n+1)]]` -/
def P16209835787406116118.Spec : Prop :=
  ∀ n, P16209835787406116118.a n = A358089 (n + 1)

end A358089

/-! ## A358089.P6226920074506255654

`Δ[A126706(n+1)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A358089

/-- `Δ[A126706(n+1)]` -/
def P6226920074506255654.Spec : Prop :=
  ∀ n, P6226920074506255654.a n = A358089 (n + 1)

theorem P6226920074506255654.correct : P6226920074506255654.Spec := by
  intro n
  simp only [A358089, Nat.add_sub_cancel]

end A358089

/-! ## A358089.P11673232733768813662

`Δ[sqrt(A380857(n+1))]`
-/

namespace A358089.P11673232733768813662
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A380857 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A358089.P11673232733768813662

namespace A358089

/-- `Δ[sqrt(A380857(n+1))]` -/
def P11673232733768813662.Spec : Prop :=
  ∀ n, P11673232733768813662.a n = (A358089 (n + 1) : ℝ)

end A358089

/-! ## A358089.P8432890669638257922

`Δ[eq[1, A355447(n+1)]]`
-/

namespace A358089.P8432890669638257922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355447 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358089.P8432890669638257922

namespace A358089

/-- `Δ[eq[1, A355447(n+1)]]` -/
def P8432890669638257922.Spec : Prop :=
  ∀ n, P8432890669638257922.a n = A358089 (n + 1)

end A358089

/-! ## A358089.P878731542896007473

`A126706(n+2)-A126706(n+1)`
-/

namespace A358089.P878731542896007473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 2) - A126706 (n + 1)

end

end A358089.P878731542896007473

namespace A358089

/-- `A126706(n+2)-A126706(n+1)` -/
def P878731542896007473.Spec : Prop :=
  ∀ n, P878731542896007473.a n = A358089 (n + 1)

theorem P878731542896007473.correct : P878731542896007473.Spec := by
  intro n
  simp only [A358089, Nat.add_sub_cancel, A358089.P878731542896007473.a, A358089.P6226920074506255654.f1, A358089.P6226920074506255654.a, SequenceMachineLib.memo_apply]

end A358089

/-! ## A358089.P7771795772671664162

`A126706(A020725(n+1))%A126706(n+1)`
-/

namespace A358089.P7771795772671664162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126706 (A020725 (n + 1)).toNat) (A126706 (n + 1))

end

end A358089.P7771795772671664162

namespace A358089

/-- `A126706(A020725(n+1))%A126706(n+1)` -/
def P7771795772671664162.Spec : Prop :=
  ∀ n, P7771795772671664162.a n = A358089 (n + 1)

end A358089

/-! ## A358089.P4048717954082507334

`Δ[∩[A013929(n+1), A024619(n+1)]]`
-/

namespace A358089.P4048717954082507334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358089.P4048717954082507334

namespace A358089

/-- `Δ[∩[A013929(n+1), A024619(n+1)]]` -/
def P4048717954082507334.Spec : Prop :=
  ∀ n, P4048717954082507334.a n = A358089 (n + 1)

end A358089

/-! ## A358089.P9036246382372982146

`Δ[lt[1, A056674(n+1)]]`
-/

namespace A358089.P9036246382372982146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358089.P9036246382372982146

namespace A358089

/-- `Δ[lt[1, A056674(n+1)]]` -/
def P9036246382372982146.Spec : Prop :=
  ∀ n, P9036246382372982146.a n = A358089 (n + 1)

end A358089

/-! ## A358089.P9198295750544661724

`Δ[lt[1, A158210(n+1)]]`
-/

namespace A358089.P9198295750544661724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358089.P9198295750544661724

namespace A358089

/-- `Δ[lt[1, A158210(n+1)]]` -/
def P9198295750544661724.Spec : Prop :=
  ∀ n, P9198295750544661724.a n = A358089 (n + 1)

end A358089

/-! ## A358089.P10977907645036193785

`Δ[eq[A007423(n+1), A014963(n+1)]]`
-/

namespace A358089.P10977907645036193785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007423 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358089.P10977907645036193785

namespace A358089

/-- `Δ[eq[A007423(n+1), A014963(n+1)]]` -/
def P10977907645036193785.Spec : Prop :=
  ∀ n, P10977907645036193785.a n = A358089 (n + 1)

end A358089

/-! ## A358089.P783221318788799775

`Δ[lt[A100994(n+1)+A007913(n+1), n]]`
-/

namespace A358089.P783221318788799775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (n + 1) + A007913 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358089.P783221318788799775

namespace A358089

/-- `Δ[lt[A100994(n+1)+A007913(n+1), n]]` -/
def P783221318788799775.Spec : Prop :=
  ∀ n, P783221318788799775.a n = A358089 (n + 1)

end A358089

/-! ## A358089.P15559470268677886734

`Δ[∩[A013929(n+1), A102467(n+1)]]`
-/

namespace A358089.P15559470268677886734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102467 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A358089.P15559470268677886734

namespace A358089

/-- `Δ[∩[A013929(n+1), A102467(n+1)]]` -/
def P15559470268677886734.Spec : Prop :=
  ∀ n, P15559470268677886734.a n = A358089 (n + 1)

end A358089

/-!
# A358090: Partial inventory of positions as an irregular table; rows 1 and 2 contain 1, for n > 2, row n contains the 1-based positions of 1's, followed by the positions of 2's, 3's, etc. in rows n-2 and n-1 flattened.

The programs for A358090, there is no canonical definition to state claims against.
-/

/-! ## A358090.P14795615315422900324

`A324119(A147305(n+1)+2)`
-/

namespace A358090.P14795615315422900324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324119 (A147305 (n + 1) + 2).toNat

end

end A358090.P14795615315422900324

/-! ## A358090.P15578221547581343530

`A359233(A279547(n)+A218993(n+2))`
-/

namespace A358090.P15578221547581343530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359233 (A279547 n + A218993 (n + 2)).toNat

end

end A358090.P15578221547581343530

/-! ## A358090.P17402540144778139289

`A338169(A027913(n))`
-/

namespace A358090.P17402540144778139289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338169 (A027913 n).toNat

end

end A358090.P17402540144778139289

/-! ## A358090.P18072198402778315810

`A135062(A134181(n+1))`
-/

namespace A358090.P18072198402778315810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135062 (A134181 (n + 1)).toNat

end

end A358090.P18072198402778315810

/-! ## A358090.P16443453905386971736

`A286343(n+1)%A137390(n+1)`
-/

namespace A358090.P16443453905386971736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286343 (n + 1)) (A137390 (n + 1))

end

end A358090.P16443453905386971736

/-!
# A358092: Row sums of the convolution triangle of the Motzkin numbers (A202710).

The programs for A358092, there is no canonical definition to state claims against.
-/

/-! ## A358092.P15201043533589036741

`ceil(A111961(n)/2)`
-/

namespace A358092.P15201043533589036741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111961 n : ℚ) / 2⌉

end

end A358092.P15201043533589036741

/-! ## A358092.P3907926901667302539

`A111961(n)/A036453(n+1)`
-/

namespace A358092.P3907926901667302539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111961 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A358092.P3907926901667302539

/-! ## A358092.P16242219469046833613

`A111961(n)/(A057427(n)+1)`
-/

namespace A358092.P16242219469046833613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111961 n : ℚ) / (A057427 n + 1 : ℚ)

end

end A358092.P16242219469046833613

/-! ## A358092.P17350010523070369773

`A111961(n)/A111982(2*n)`
-/

namespace A358092.P17350010523070369773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111961 n : ℚ) / (A111982 (2 * n) : ℚ)

end

end A358092.P17350010523070369773

/-! ## A358092.P8430912464558264652

`ceil((A109190(n)+Δ[A014334(n)])/2)`
-/

namespace A358092.P8430912464558264652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109190 n + (f1 (n + 1) - f1 n) : ℚ) / 2⌉

end

end A358092.P8430912464558264652

/-! ## A358092.P710165046724459375

`A111961(n)/A128588(3*n+1)%4`
-/

namespace A358092.P710165046724459375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111961 n : ℚ) / (Int.tmod (A128588 (3 * n + 1)) 4 : ℚ)

end

end A358092.P710165046724459375

/-!
# A358094: a(n) is the number of ways n can be reached in the following method: we start with 1, then add or multiply alternately, and each operand must be 2 or 3.

The programs for A358094, there is no canonical definition to state claims against.
-/

/-! ## A358094.P1645560182962348321

`A358095(n+1)+A358096(n+1)%A004793(n+1)`
-/

namespace A358094.P1645560182962348321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358095 (n + 1) + Int.tmod (A358096 (n + 1)) (A004793 (n + 1))

end

end A358094.P1645560182962348321

/-! ## A358094.P97392590945800221

`A358096(n+1)+A358095(n+1)%A054591(n+1)`
-/

namespace A358094.P97392590945800221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358096 (n + 1) + Int.tmod (A358095 (n + 1)) (A054591 (n + 1))

end

end A358094.P97392590945800221

/-!
# A358095: a(n) is the number of ways n can be reached in the algorithm explained in A358094 if the last operation is summation.

The programs for A358095, there is no canonical definition to state claims against.
-/

/-! ## A358095.P14938572806744905729

`A358094(n+1)+A000007(n)-A358096(n+1)`
-/

namespace A358095.P14938572806744905729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358094 (n + 1) + (A000007 n - A358096 (n + 1))

end

end A358095.P14938572806744905729

/-! ## A358095.P7083568724162844421

`A358094(n+1)-A358096(n+1)%A004793(n+1)`
-/

namespace A358095.P7083568724162844421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358094 (n + 1) - Int.tmod (A358096 (n + 1)) (A004793 (n + 1))

end

end A358095.P7083568724162844421

/-! ## A358095.P10530358029332229121

`abs(A358094(n+1)%A054591(n+1)-A358096(n+1))`
-/

namespace A358095.P10530358029332229121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A358094 (n + 1)) (A054591 (n + 1)) - A358096 (n + 1)|

end

end A358095.P10530358029332229121

/-! ## A358095.P6004872660016377570

`A037888(xor(A001045(n), A276941(n+2)))`
-/

namespace A358095.P6004872660016377570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (Int.xor (A001045 n) (A276941 (n + 2))).toNat

end

end A358095.P6004872660016377570

/-!
# A358096: a(n) is the number of ways n can be reached in the algorithm explained in A358094 if the last operation is multiplication.

The programs for A358096, there is no canonical definition to state claims against.
-/

/-! ## A358096.P10372086637096336129

`A358094(n+1)-A358095(n+1)%A004793(n+1)`
-/

namespace A358096.P10372086637096336129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358094 (n + 1) - Int.tmod (A358095 (n + 1)) (A004793 (n + 1))

end

end A358096.P10372086637096336129

/-! ## A358096.P6941072999680946691

`A358095(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A358096.P6941072999680946691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A358095 (n + 3) - a (n - 1)

end

end A358096.P6941072999680946691

/-! ## A358096.P16665125236958698651

`abs(A358094(n+1)%A054591(n+1)-A358095(n+1))`
-/

namespace A358096.P16665125236958698651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A358094 (n + 1)) (A054591 (n + 1)) - A358095 (n + 1)|

end

end A358096.P16665125236958698651

/-! ## A358096.P8417943248079649835

`A007814(A250583(3*n+2)+A072454(n+4))`
-/

namespace A358096.P8417943248079649835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A250583 (3 * n + 2) + A072454 (n + 4)).toNat

end

end A358096.P8417943248079649835

/-! ## A358096.P3228920395997434666

`A362221(floor(A319913(n+1)/5)+1)`
-/

namespace A358096.P3228920395997434666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362221 (⌊(A319913 (n + 1) : ℚ) / 5⌋ + 1).toNat

end

end A358096.P3228920395997434666

/-!
# A358099: a(n) is the number of divisors of n whose digits are in strictly decreasing order (A009995).

The programs for A358099, there is no canonical definition to state claims against.
-/

/-! ## A358099.P16948132437928036372

`A000319(A006094(n+5))+A000005(n+1)`
-/

namespace A358099.P16948132437928036372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000319 (A006094 (n + 5)).toNat + A000005 (n + 1)

end

end A358099.P16948132437928036372

/-! ## A358099.P2023495979201693830

`A000005(n+1)-A175337(C(n, 5))`
-/

namespace A358099.P2023495979201693830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A175337 (Nat.choose n 5)

end

end A358099.P2023495979201693830

/-! ## A358099.P410689419833528168

`∏{e}[n+1, #+1]-A031346(A061479(n))`
-/

namespace A358099.P410689419833528168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A031346 (A061479 n).toNat

end

end A358099.P410689419833528168

/-! ## A358099.P14400432114374420084

`A000005(n+1)%A103402(n+1)-floor(n/10)`
-/

namespace A358099.P14400432114374420084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) (A103402 (n + 1)) - ⌊(n : ℚ) / 10⌋

end

end A358099.P14400432114374420084

/-! ## A358099.P83664002443716505

`A000005(n+1)-A103674(A325545(n))`
-/

namespace A358099.P83664002443716505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A103674 (A325545 n).toNat

end

end A358099.P83664002443716505

