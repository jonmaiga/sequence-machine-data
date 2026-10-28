import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A127000: Zero-one fractional-part array for sqrt(2); a rectangular array T by antidiagonals.

The programs for A127000, there is no canonical definition to state claims against.
-/

/-! ## A127000.P4156197167271796900

`A054077(A014132(n+1))-A014132(A054077(n+1))`
-/

namespace A127000.P4156197167271796900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054077 (A014132 (n + 1)).toNat - A014132 (A054077 (n + 1)).toNat

end

end A127000.P4156197167271796900

/-! ## A127000.P13652313291151673952

`A078608(A284165(n+1))%2`
-/

namespace A127000.P13652313291151673952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078608 (A284165 (n + 1)).toNat) 2

end

end A127000.P13652313291151673952

/-! ## A127000.P7761165817071469166

`A267598(xor(5, A259642(n+1)))`
-/

namespace A127000.P7761165817071469166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267598 (Int.xor 5 (A259642 (n + 1))).toNat

end

end A127000.P7761165817071469166

/-! ## A127000.P5015501628032483442

`A071028(or(8, A259642(n+1)))`
-/

namespace A127000.P5015501628032483442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 (Int.lor 8 (A259642 (n + 1))).toNat

end

end A127000.P5015501628032483442

/-! ## A127000.P16917645587396375675

`A103344(A280152(n+2))%A168018(3*n+1)`
-/

namespace A127000.P16917645587396375675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103344 (A280152 (n + 2)).toNat) (A168018 (3 * n + 1))

end

end A127000.P16917645587396375675

/-!
# A127001: Zero-one fractional-part array for sqrt(3); a rectangular array T by antidiagonals.

The programs for A127001, there is no canonical definition to state claims against.
-/

/-! ## A127001.P15791993425139543258

`A133872(A003985(n+1)*A032911(n+1))`
-/

namespace A127001.P15791993425139543258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 (A003985 (n + 1) * A032911 (n + 1)).toNat

end

end A127001.P15791993425139543258

/-! ## A127001.P15413139164247266485

`val(A183662(n+1)+4, 10)`
-/

namespace A127001.P15413139164247266485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A183662 (n + 1) + 4).toNat 10

end

end A127001.P15413139164247266485

/-! ## A127001.P16718430531141934714

`A007893(A250742(n+1))%3`
-/

namespace A127001.P16718430531141934714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007893 (A250742 (n + 1)).toNat) 3

end

end A127001.P16718430531141934714

/-! ## A127001.P7631294981924947311

`A358680(2*A360853(n+1))`
-/

namespace A127001.P7631294981924947311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (2 * A360853 (n + 1)).toNat

end

end A127001.P7631294981924947311

/-! ## A127001.P9472118080648842878

`A059841(and(A005898(2*(n+2)), A360853(n+1)))`
-/

namespace A127001.P9472118080648842878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.land (A005898 (2 * (n + 2))) (A360853 (n + 1))).toNat

end

end A127001.P9472118080648842878

/-! ## A127001.P4875217945297656829

`A269175(A182073(n))^∑[and(n, 2*n)]`
-/

namespace A127001.P4875217945297656829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 (A182073 n).toNat ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127001.P4875217945297656829

/-! ## A127001.P13284656192500001122

`A269175(A182073(n))^A182079(n)`
-/

namespace A127001.P13284656192500001122
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269175 (A182073 n).toNat : ℚ) ^ (A182079 n : ℤ)

end

end A127001.P13284656192500001122

/-! ## A127001.P14837614742016784710

`A269175(A182073(n))^∑[A259572(2*(n+1))]`
-/

namespace A127001.P14837614742016784710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259572 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269175 (A182073 n).toNat : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A127001.P14837614742016784710

/-!
# A127002: Number of partitions of n that have the form a+a+b+c where a,b,c are distinct.

The programs for A127002, the canonical program `A127002.P4757820314165732557` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127002 has offset 1).

The definition of A127002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127002.P438449927744266280

`ogf((x^6+2x^7+3x^8)/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))`
-/

namespace A127002.P438449927744266280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 0, 1, 2, 3] [1, 0, -1, -1, -1, 1, 1, 1, 0, -1] n

end

end A127002.P438449927744266280

namespace A127002

/-- `ogf((x^6+2x^7+3x^8)/(1-x^2-x^3-x^4+x^5+x^6+x^7-x^9))` -/
def P438449927744266280.Spec : Prop :=
  ∀ n, P438449927744266280.a n = A127002 (n + 1)

end A127002

/-! ## A127002.P4757820314165732557

`C(floor(n/2), 2)-floor(n/3)-floor(n/4)+floor((n+1)/4)`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127002

/-- `C(floor(n/2), 2)-floor(n/3)-floor(n/4)+floor((n+1)/4)` -/
def P4757820314165732557.Spec : Prop :=
  ∀ n, P4757820314165732557.a n = A127002 (n + 1)

theorem P4757820314165732557.correct : P4757820314165732557.Spec := by
  intro n
  simp only [A127002, Nat.add_sub_cancel]

end A127002

/-! ## A127002.P12072637799414476474

`A161680(A004526(n))-A230128(n+1)`
-/

namespace A127002.P12072637799414476474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A004526 n).toNat - A230128 (n + 1)

end

end A127002.P12072637799414476474

namespace A127002

/-- `A161680(A004526(n))-A230128(n+1)` -/
def P12072637799414476474.Spec : Prop :=
  ∀ n, P12072637799414476474.a n = A127002 (n + 1)

end A127002

/-! ## A127002.P7650967391676435245

`A161680(A123108(n))-A230128(n+1)`
-/

namespace A127002.P7650967391676435245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A123108 n).toNat - A230128 (n + 1)

end

end A127002.P7650967391676435245

namespace A127002

/-- `A161680(A123108(n))-A230128(n+1)` -/
def P7650967391676435245.Spec : Prop :=
  ∀ n, P7650967391676435245.a n = A127002 (n + 1)

end A127002

/-! ## A127002.P10169131393240035656

`A211534(A007494(n))-A230128(n+1)`
-/

namespace A127002.P10169131393240035656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211534 (A007494 n).toNat - A230128 (n + 1)

end

end A127002.P10169131393240035656

namespace A127002

/-- `A211534(A007494(n))-A230128(n+1)` -/
def P10169131393240035656.Spec : Prop :=
  ∀ n, P10169131393240035656.a n = A127002 (n + 1)

end A127002

/-! ## A127002.P10964715421634079957

`A211534(A032766(n))-A230128(n+1)`
-/

namespace A127002.P10964715421634079957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211534 (A032766 n).toNat - A230128 (n + 1)

end

end A127002.P10964715421634079957

namespace A127002

/-- `A211534(A032766(n))-A230128(n+1)` -/
def P10964715421634079957.Spec : Prop :=
  ∀ n, P10964715421634079957.a n = A127002 (n + 1)

end A127002

/-! ## A127002.P15002442633973533628

`A211534(A001651(n+1)-1)-A230128(n+1)`
-/

namespace A127002.P15002442633973533628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211534 (A001651 (n + 1) - 1).toNat - A230128 (n + 1)

end

end A127002.P15002442633973533628

namespace A127002

/-- `A211534(A001651(n+1)-1)-A230128(n+1)` -/
def P15002442633973533628.Spec : Prop :=
  ∀ n, P15002442633973533628.a n = A127002 (n + 1)

end A127002

/-! ## A127002.P3375225286768193460

`A211534(A001651(n+1))-A230128(n+1)`
-/

namespace A127002.P3375225286768193460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211534 (A001651 (n + 1)).toNat - A230128 (n + 1)

end

end A127002.P3375225286768193460

namespace A127002

/-- `A211534(A001651(n+1))-A230128(n+1)` -/
def P3375225286768193460.Spec : Prop :=
  ∀ n, P3375225286768193460.a n = A127002 (n + 1)

end A127002

/-!
# A127003: Smallest prime p such that p+10^n is also prime.

The programs for A127003, there is no canonical definition to state claims against.
-/

/-! ## A127003.P1398939283415961231

`A127004(n+1)-A011557(n)`
-/

namespace A127003.P1398939283415961231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127004 (n + 1) - A011557 n

end

end A127003.P1398939283415961231

/-! ## A127003.P8522682052475223237

`A127004(n+1)-Δ[A002275(n)]`
-/

namespace A127003.P8522682052475223237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127004 (n + 1) - (f1 (n + 1) - f1 n)

end

end A127003.P8522682052475223237

/-! ## A127003.P7277673832056947788

`A127004(n+1)-Δ[A047855(n)]`
-/

namespace A127003.P7277673832056947788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127004 (n + 1) - (f1 (n + 1) - f1 n)

end

end A127003.P7277673832056947788

/-! ## A127003.P600254439330568253

`A127004(n+1)-Δ[A098406(n)]`
-/

namespace A127003.P600254439330568253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127004 (n + 1) - (f1 (n + 1) - f1 n)

end

end A127003.P600254439330568253

/-! ## A127003.P5821109447844147862

`A127004(n+1)-Δ[A002276(n)/2]`
-/

namespace A127003.P5821109447844147862
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002276 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127004 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A127003.P5821109447844147862

/-!
# A127004: Primes p+10^n arising in A127003.

The programs for A127004, there is no canonical definition to state claims against.
-/

/-! ## A127004.P10196631970034325819

`A127003(n)+A011557(n)`
-/

namespace A127004.P10196631970034325819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127003 n + A011557 n

end

end A127004.P10196631970034325819

/-! ## A127004.P11046822308522256977

`A127003(n)+Δ[A002275(n)]`
-/

namespace A127004.P11046822308522256977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127003 n + (f1 (n + 1) - f1 n)

end

end A127004.P11046822308522256977

/-! ## A127004.P16749184468543201743

`A002283(n)+A127003(n)+1`
-/

namespace A127004.P16749184468543201743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + (A127003 n + 1)

end

end A127004.P16749184468543201743

/-! ## A127004.P6880130658327909676

`A178501(n+1)+A127003(n)`
-/

namespace A127004.P6880130658327909676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (n + 1) + A127003 n

end

end A127004.P6880130658327909676

/-! ## A127004.P13860606989354636881

`A002283(n)+A000203(A127003(n))`
-/

namespace A127004.P13860606989354636881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + A000203 (A127003 n).toNat

end

end A127004.P13860606989354636881

/-!
# A127007: a(n) = number of n-digit terms in A108571.

The programs for A127007, there is no canonical definition to state claims against.
-/

/-! ## A127007.P10953206587229969363

`A178798(A001037(n))+A007837(n+1)`
-/

namespace A127007.P10953206587229969363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A001037 n).toNat + A007837 (n + 1)

end

end A127007.P10953206587229969363

/-! ## A127007.P13119074872096052720

`A007837(n+1)-A065339(A007837(n))`
-/

namespace A127007.P13119074872096052720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007837 (n + 1) - A065339 (A007837 n).toNat

end

end A127007.P13119074872096052720

/-! ## A127007.P16935373975830241534

`A007837(n+1)-A046660(A057960(n))`
-/

namespace A127007.P16935373975830241534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007837 (n + 1) - A046660 (A057960 n).toNat

end

end A127007.P16935373975830241534

/-! ## A127007.P11779339888054921357

`A007837(n+1)-A014082(A347435(n))`
-/

namespace A127007.P11779339888054921357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007837 (n + 1) - A014082 (A347435 n).toNat

end

end A127007.P11779339888054921357

/-! ## A127007.P10971291640457284129

`A007837(n+1)-A324053(A361351(n))`
-/

namespace A127007.P10971291640457284129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007837 (n + 1) - A324053 (A361351 n).toNat

end

end A127007.P10971291640457284129

/-!
# A127009: a(1)=1. a(n) = the numerator of the sum of the reciprocals of the earlier terms of the sequence which are coprime to n.

The programs for A127009, there is no canonical definition to state claims against.
-/

/-! ## A127009.P17252825581231404522

`A343371(A343371(n)+A130651(n))`
-/

namespace A127009.P17252825581231404522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343371 (A343371 n + A130651 n).toNat

end

end A127009.P17252825581231404522

/-! ## A127009.P10882147941053293966

`A008611(A007299(n)+A007281(n+1))`
-/

namespace A127009.P10882147941053293966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A007299 n + A007281 (n + 1)).toNat

end

end A127009.P10882147941053293966

/-! ## A127009.P3796067865247803085

`A008620(A319100(n+1)+A007299(n))`
-/

namespace A127009.P3796067865247803085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A319100 (n + 1) + A007299 n).toNat

end

end A127009.P3796067865247803085

/-! ## A127009.P7892467998788745635

`A008676(xor(A001710(n), A168326(3*n+1)))`
-/

namespace A127009.P7892467998788745635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.xor (A001710 n) (A168326 (3 * n + 1))).toNat

end

end A127009.P7892467998788745635

/-!
# A127010: a(0)=1. a(n) = the numerator of the sum of the reciprocals of the earlier terms of the sequence which are coprime to n.

The programs for A127010, there is no canonical definition to state claims against.
-/

/-! ## A127010.P8600858689797685429

`A080098(ceil(sqrt(A125801(n))))`
-/

namespace A127010.P8600858689797685429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 ⌈Real.sqrt (A125801 n : ℝ)⌉.toNat

end

end A127010.P8600858689797685429

/-! ## A127010.P5041458934491295052

`A080098(round(sqrt(A125801(n))))`
-/

namespace A127010.P5041458934491295052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (SequenceMachineLib.roundAway (Real.sqrt (A125801 n : ℝ))).toNat

end

end A127010.P5041458934491295052

/-! ## A127010.P2677958825467233655

`A255057(∏[A073810(4^n)])`
-/

namespace A127010.P2677958825467233655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073810 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255057 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127010.P2677958825467233655

/-!
# A127013: Triangle read by rows: row reversal of A126988.

The programs for A127013, the canonical program `A127013.P6102010931506344879` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127013 has offset 1).

The definition of A127013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127013.P12850505866574369352

`A127701(A286159(n+1))`
-/

namespace A127013.P12850505866574369352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127701 (A286159 (n + 1)).toNat

end

end A127013.P12850505866574369352

namespace A127013

/-- `A127701(A286159(n+1))` -/
def P12850505866574369352.Spec : Prop :=
  ∀ n, P12850505866574369352.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P6102010931506344879

`A010783(n+1)*A113998(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127013

/-- `A010783(n+1)*A113998(n+1)` -/
def P6102010931506344879.Spec : Prop :=
  ∀ n, P6102010931506344879.a n = A127013 (n + 1)

theorem P6102010931506344879.correct : P6102010931506344879.Spec := by
  intro n
  simp only [A127013, Nat.add_sub_cancel]

end A127013

/-! ## A127013.P4457760932792120595

`A102057(n+1)*A113998(n+1)`
-/

namespace A127013.P4457760932792120595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102057 (n + 1) * A113998 (n + 1)

end

end A127013.P4457760932792120595

namespace A127013

/-- `A102057(n+1)*A113998(n+1)` -/
def P4457760932792120595.Spec : Prop :=
  ∀ n, P4457760932792120595.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P7989583366281996887

`A113998(n+1)*A277227(n+1)`
-/

namespace A127013.P7989583366281996887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113998 (n + 1) * A277227 (n + 1)

end

end A127013.P7989583366281996887

namespace A127013

/-- `A113998(n+1)*A277227(n+1)` -/
def P7989583366281996887.Spec : Prop :=
  ∀ n, P7989583366281996887.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P12888363095992743516

`A004736(A286234(n+1))*A113998(n+1)`
-/

namespace A127013.P12888363095992743516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286234 (n + 1)).toNat * A113998 (n + 1)

end

end A127013.P12888363095992743516

namespace A127013

/-- `A004736(A286234(n+1))*A113998(n+1)` -/
def P12888363095992743516.Spec : Prop :=
  ∀ n, P12888363095992743516.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P3112320138681659834

`A004736(A286244(n+1))*A113998(n+1)`
-/

namespace A127013.P3112320138681659834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286244 (n + 1)).toNat * A113998 (n + 1)

end

end A127013.P3112320138681659834

namespace A127013

/-- `A004736(A286244(n+1))*A113998(n+1)` -/
def P3112320138681659834.Spec : Prop :=
  ∀ n, P3112320138681659834.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P15832644744248809348

`A002024(n+1)/A004736(n+1)*A113998(n+1)`
-/

namespace A127013.P15832644744248809348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002024 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ) * (A113998 (n + 1) : ℚ)

end

end A127013.P15832644744248809348

namespace A127013

/-- `A002024(n+1)/A004736(n+1)*A113998(n+1)` -/
def P15832644744248809348.Spec : Prop :=
  ∀ n, P15832644744248809348.a n = (A127013 (n + 1) : ℚ)

end A127013

/-! ## A127013.P9851089832133665995

`A004736(A286234(n+1))/A286234(n+1)*A286236(n+1)`
-/

namespace A127013.P9851089832133665995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (A286234 (n + 1)).toNat : ℚ) / (A286234 (n + 1) : ℚ) * (A286236 (n + 1) : ℚ)

end

end A127013.P9851089832133665995

namespace A127013

/-- `A004736(A286234(n+1))/A286234(n+1)*A286236(n+1)` -/
def P9851089832133665995.Spec : Prop :=
  ∀ n, P9851089832133665995.a n = (A127013 (n + 1) : ℚ)

end A127013

/-! ## A127013.P16385750521162463231

`A004736(A286244(n+1))/A286244(n+1)*A286246(n+1)`
-/

namespace A127013.P16385750521162463231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (A286244 (n + 1)).toNat : ℚ) / (A286244 (n + 1) : ℚ) * (A286246 (n + 1) : ℚ)

end

end A127013.P16385750521162463231

namespace A127013

/-- `A004736(A286244(n+1))/A286244(n+1)*A286246(n+1)` -/
def P16385750521162463231.Spec : Prop :=
  ∀ n, P16385750521162463231.a n = (A127013 (n + 1) : ℚ)

end A127013

/-! ## A127013.P12444137727396661252

`A126988(A038722(n+1))`
-/

namespace A127013.P12444137727396661252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A038722 (n + 1)).toNat

end

end A127013.P12444137727396661252

namespace A127013

/-- `A126988(A038722(n+1))` -/
def P12444137727396661252.Spec : Prop :=
  ∀ n, P12444137727396661252.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P15041489810904201086

`A126988(A061579(n)+1)`
-/

namespace A127013.P15041489810904201086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A061579 n + 1).toNat

end

end A127013.P15041489810904201086

namespace A127013

/-- `A126988(A061579(n)+1)` -/
def P15041489810904201086.Spec : Prop :=
  ∀ n, P15041489810904201086.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P5653502362674862194

`A126988(A093995(n+1)-n)`
-/

namespace A127013.P5653502362674862194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A127013.P5653502362674862194

namespace A127013

/-- `A126988(A093995(n+1)-n)` -/
def P5653502362674862194.Spec : Prop :=
  ∀ n, P5653502362674862194.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P2900655904561569728

`A126988(log2(A140513(n))²-n)`
-/

namespace A127013.P2900655904561569728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (SequenceMachineLib.roundAway (Real.logb 2 (A140513 n : ℝ) ^ 2 - (n : ℝ))).toNat

end

end A127013.P2900655904561569728

namespace A127013

/-- `A126988(log2(A140513(n))²-n)` -/
def P2900655904561569728.Spec : Prop :=
  ∀ n, P2900655904561569728.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P3031485101704251210

`A126988(∑[A010054(n)]²-n)`
-/

namespace A127013.P3031485101704251210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A127013.P3031485101704251210

namespace A127013

/-- `A126988(∑[A010054(n)]²-n)` -/
def P3031485101704251210.Spec : Prop :=
  ∀ n, P3031485101704251210.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P16029594472593008320

`A126988(A002024(n+1)²-n)`
-/

namespace A127013.P16029594472593008320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A127013.P16029594472593008320

namespace A127013

/-- `A126988(A002024(n+1)²-n)` -/
def P16029594472593008320.Spec : Prop :=
  ∀ n, P16029594472593008320.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P6539262418617571158

`A126988(abs(A002262(n)-(A025581(n)+n))+1)`
-/

namespace A127013.P6539262418617571158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (|A002262 n - (A025581 n + (n : ℤ))| + 1).toNat

end

end A127013.P6539262418617571158

namespace A127013

/-- `A126988(abs(A002262(n)-(A025581(n)+n))+1)` -/
def P6539262418617571158.Spec : Prop :=
  ∀ n, P6539262418617571158.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P16846549012381021684

`A126988(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A127013.P16846549012381021684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A127013.P16846549012381021684

namespace A127013

/-- `A126988(A004736(n+1)+n-A002260(n+1)+1)` -/
def P16846549012381021684.Spec : Prop :=
  ∀ n, P16846549012381021684.a n = A127013 (n + 1)

end A127013

/-! ## A127013.P16130741051615896111

`A126988(A000194(2*n+1)²-n)`
-/

namespace A127013.P16130741051615896111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A000194 (2 * n + 1) ^ 2 - (n : ℤ)).toNat

end

end A127013.P16130741051615896111

namespace A127013

/-- `A126988(A000194(2*n+1)²-n)` -/
def P16130741051615896111.Spec : Prop :=
  ∀ n, P16130741051615896111.a n = A127013 (n + 1)

end A127013

/-!
# A127014: a(n) = smallest k such that A(k) == 0 (mod 2^n), where A(0) = 1 and A(k) = k*A(k-1) + 1 = A000522(k).

The programs for A127014, there is no canonical definition to state claims against.
-/

/-! ## A127014.P2587246669692676640

`∑[2^n*A127015(n+1)]`
-/

namespace A127014.P2587246669692676640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A127015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127014.P2587246669692676640

/-! ## A127014.P5022103128522844490

`∑[A127015(n+1)*A173862(3*(n+1))]`
-/

namespace A127014.P5022103128522844490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127015 (n + 1) * A173862 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127014.P5022103128522844490

/-! ## A127014.P9679774144297930389

`∑[char[A095274(n)+((3*n)%4)%3]*A000079(n)]`
-/

namespace A127014.P9679774144297930389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 n + ((3 * n % 4 % 3 : ℕ) : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127014.P9679774144297930389

/-! ## A127014.P15131712456737189957

`∑[(2-A001221(A313702(n))!)*A000079(n)]`
-/

namespace A127014.P15131712456737189957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.factorial (A001221 (A313702 n).toNat).toNat : ℤ)) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127014.P15131712456737189957

/-! ## A127014.P9057371416063654984

`∑[(2-A001221(A313702(n))!)*A173862(3*(n+1))]`
-/

namespace A127014.P9057371416063654984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.factorial (A001221 (A313702 n).toNat).toNat : ℤ)) * A173862 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127014.P9057371416063654984

/-!
# A127015: Digits of the 2-adic integer lim_{n->oo} A127014(n).

The programs for A127015, there is no canonical definition to state claims against.
-/

/-! ## A127015.P4491187557971478758

`char[floor(log2(A127014(n+1)))]`
-/

namespace A127015.P4491187557971478758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A127014 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A127015.P4491187557971478758

/-! ## A127015.P16352380938157404779

`char[A095274(n)+((3*n)%4)%3]`
-/

namespace A127015.P16352380938157404779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 n + ((3 * n % 4 % 3 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127015.P16352380938157404779

/-! ## A127015.P17584466207211489890

`char[∑[A037846(n*(n+1)²+1)]]`
-/

namespace A127015.P17584466207211489890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037846 (n * (n + 1) ^ 2 + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127015.P17584466207211489890

/-! ## A127015.P5591987357857837999

`char[(n-1)^(n%2)-A025429(2*(n+1))]`
-/

namespace A127015.P5591987357857837999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ (n % 2) - A025429 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A127015.P5591987357857837999

/-! ## A127015.P3787562854694892300

`A010055(A313687(n))`
-/

namespace A127015.P3787562854694892300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (A313687 n).toNat

end

end A127015.P3787562854694892300

/-!
# A127016: Expansion of 1/(1+7*x*c(x)), c(x) the g.f. of Catalan numbers A000108.

The programs for A127016, there is no canonical definition to state claims against.
-/

/-! ## A127016.P11177027250214691551

`A152239(n)-A130403(A059204(n))`
-/

namespace A127016.P11177027250214691551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152239 n - A130403 (A059204 n).toNat

end

end A127016.P11177027250214691551

/-!
# A127017: Expansion of 1/(1+6*x*c(x)), where c(x) = g.f. for Catalan numbers A000108.

The programs for A127017, there is no canonical definition to state claims against.
-/

/-! ## A127017.P1144688421270415838

`A152223(n)+A121434(A003319(n))`
-/

namespace A127017.P1144688421270415838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152223 n + A121434 (A003319 n).toNat

end

end A127017.P1144688421270415838

/-!
# A127018: Least s with s, t both semiprime and s+2n = t.

The programs for A127018, there is no canonical definition to state claims against.
-/

/-! ## A127018.P3299349005030347669

`A127019(n+1)-2*(n+1)`
-/

namespace A127018.P3299349005030347669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127019 (n + 1) - (2 * (n + 1) : ℤ)

end

end A127018.P3299349005030347669

/-! ## A127018.P17820590957422421573

`A127019(n+1)-A005408(n)-1`
-/

namespace A127018.P17820590957422421573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127019 (n + 1) - A005408 n - 1

end

end A127018.P17820590957422421573

/-! ## A127018.P13785386643229304896

`A127019(n+1)-2-A005843(n)`
-/

namespace A127018.P13785386643229304896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127019 (n + 1) - 2 - A005843 n

end

end A127018.P13785386643229304896

/-! ## A127018.P16185752231636846687

`A023443(A127019(n+1)-Δ[n²])`
-/

namespace A127018.P16185752231636846687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A127019 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A127018.P16185752231636846687

/-! ## A127018.P1198245646940334094

`A127019(n+1)-(n+1)-A000027(n+1)`
-/

namespace A127018.P1198245646940334094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127019 (n + 1) - (n + 1 : ℤ) - A000027 (n + 1)

end

end A127018.P1198245646940334094

/-! ## A127018.P17260376259578850505

`A020483(n+1)+A127019(n+1)-A020484(n+1)`
-/

namespace A127018.P17260376259578850505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 (n + 1) + (A127019 (n + 1) - A020484 (n + 1))

end

end A127018.P17260376259578850505

/-! ## A127018.P5581282875374840457

`A054906(n+1)+A127019(n+1)-A020484(n+1)`
-/

namespace A127018.P5581282875374840457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054906 (n + 1) + (A127019 (n + 1) - A020484 (n + 1))

end

end A127018.P5581282875374840457

/-! ## A127018.P8824124732077448404

`A108184(n+1)+A127019(n+1)-A155882(n+1)`
-/

namespace A127018.P8824124732077448404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108184 (n + 1) + (A127019 (n + 1) - A155882 (n + 1))

end

end A127018.P8824124732077448404

/-!
# A127019: a(n) is the least semiprime s such that s - 2*n is also a semiprime.

The programs for A127019, there is no canonical definition to state claims against.
-/

/-! ## A127019.P4577461337832605936

`A127018(n+1)+2*(n+1)`
-/

namespace A127019.P4577461337832605936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127018 (n + 1) + (2 * (n + 1) : ℤ)

end

end A127019.P4577461337832605936

/-! ## A127019.P7359608442198134354

`A127018(n+1)+A005408(n)+1`
-/

namespace A127019.P7359608442198134354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127018 (n + 1) + A005408 n + 1

end

end A127019.P7359608442198134354

/-! ## A127019.P9103186024233269975

`A127018(n+1)+A005843(n)+2`
-/

namespace A127019.P9103186024233269975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127018 (n + 1) + A005843 n + 2

end

end A127019.P9103186024233269975

/-! ## A127019.P338722861680060574

`A009056(A127018(n+1)+2*n)`
-/

namespace A127019.P338722861680060574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A127018 (n + 1) + (2 * n : ℤ)).toNat

end

end A127019.P338722861680060574

/-! ## A127019.P13512994824039581996

`A009056(A127018(n+1)+n+n)`
-/

namespace A127019.P13512994824039581996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A127018 (n + 1) + (n : ℤ) + (n : ℤ)).toNat

end

end A127019.P13512994824039581996

/-! ## A127019.P2622135758504867721

`n+1+A127018(n+1)+A000027(n+1)`
-/

namespace A127019.P2622135758504867721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A127018 (n + 1) + A000027 (n + 1))

end

end A127019.P2622135758504867721

/-! ## A127019.P17883084134696828312

`A020484(n+1)+A127018(n+1)-A020483(n+1)`
-/

namespace A127019.P17883084134696828312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (n + 1) + (A127018 (n + 1) - A020483 (n + 1))

end

end A127019.P17883084134696828312

/-! ## A127019.P5552705339749460699

`A020484(n+1)+A127018(n+1)-A054906(n+1)`
-/

namespace A127019.P5552705339749460699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020484 (n + 1) + (A127018 (n + 1) - A054906 (n + 1))

end

end A127019.P5552705339749460699

/-!
# A127021: Number of rhyme schemes (see reference for precise definition).

The programs for A127021, there is no canonical definition to state claims against.
-/

/-! ## A127021.P16689685302650918741

`A058681(n+2)+4*a(n-1)` with `a(0)=1`
-/

namespace A127021.P16689685302650918741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058681 (n + 2) + 4 * a (n - 1)

end

end A127021.P16689685302650918741

/-!
# A127022: Let f(k) = exp(Pi*sqrt(k)); sequence gives numbers k such that ceiling(f(k)) - f(k) < 1/10^3.

The programs for A127022, there is no canonical definition to state claims against.
-/

/-! ## A127022.P6358422186082841297

`lt[A098195(2*(n+1)), A056581(n+1)]+1`
-/

namespace A127022.P6358422186082841297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098195 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056581 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A127022.P6358422186082841297

/-!
# A127023: Let f(n) = exp(Pi*sqrt(n)); sequence gives numbers n such that ceiling(f(n)) - f(n) < 1/10^4.

The programs for A127023, there is no canonical definition to state claims against.
-/

/-! ## A127023.P7816241264627526033

`A127022(A224731(n+1)%A144747(n))`
-/

namespace A127023.P7816241264627526033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127022 (Int.tmod (A224731 (n + 1)) (A144747 n)).toNat

end

end A127023.P7816241264627526033

/-! ## A127023.P11821569773429984835

`A127022(A287384(2*n)+A140100(n+1))`
-/

namespace A127023.P11821569773429984835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127022 (A287384 (2 * n) + A140100 (n + 1)).toNat

end

end A127023.P11821569773429984835

/-! ## A127023.P7091753250689347666

`A127022(A224731(n+1)*A287384(2*n))`
-/

namespace A127023.P7091753250689347666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127022 (A224731 (n + 1) * A287384 (2 * n)).toNat

end

end A127023.P7091753250689347666

/-!
# A127024: Let f(n) = exp(Pi*sqrt(n)); sequence gives numbers n such that ceiling(f(n)) - f(n) < 1/10^5.

The programs for A127024, there is no canonical definition to state claims against.
-/

/-! ## A127024.P14979689939272839476

`A127023(A056804(n+2))`
-/

namespace A127024.P14979689939272839476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127023 (A056804 (n + 2)).toNat

end

end A127024.P14979689939272839476

/-! ## A127024.P3117722109738977215

`A127023(A358377(n+2)%A330028(3*(n+1)))`
-/

namespace A127024.P3117722109738977215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127023 (Int.tmod (A358377 (n + 2)) (A330028 (3 * (n + 1)))).toNat

end

end A127024.P3117722109738977215

/-!
# A127025: Let f(n) = exp(Pi*sqrt(n)); sequence gives numbers n such that ceiling(f(n)) - f(n) < 1/10^6.

The programs for A127025, there is no canonical definition to state claims against.
-/

/-! ## A127025.P15702209521294319786

`A127024(lcm(A064988(n+1), A249790(n)))`
-/

namespace A127025.P15702209521294319786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127024 (Int.lcm (A064988 (n + 1)) (A249790 n))

end

end A127025.P15702209521294319786

/-! ## A127025.P5799596325369102930

`A127024(A058018(n+1)*A064988(n+1))`
-/

namespace A127025.P5799596325369102930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127024 (A058018 (n + 1) * A064988 (n + 1)).toNat

end

end A127025.P5799596325369102930

/-!
# A127028: Let f(n) = exp(Pi*sqrt(n)); sequence gives numbers n such that f(n) - floor(f(n)) < 1/10^3.

The programs for A127028, there is no canonical definition to state claims against.
-/

/-! ## A127028.P15654728534066290653

`A127027(n+2+A001744(n+1))`
-/

namespace A127028.P15654728534066290653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127027 ((n + 2 : ℤ) + A001744 (n + 1)).toNat

end

end A127028.P15654728534066290653

/-!
# A127029: Let f(n) = exp(Pi*sqrt(n)); sequence gives numbers n such that f(n) - floor(f(n)) < 1/10^4.

The programs for A127029, there is no canonical definition to state claims against.
-/

/-! ## A127029.P1556899080226515829

`A127028(xor(A044827(n+1), A214727(n+2)))`
-/

namespace A127029.P1556899080226515829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127028 (Int.xor (A044827 (n + 1)) (A214727 (n + 2))).toNat

end

end A127029.P1556899080226515829

/-!
# A127030: Let f(n) = exp(Pi*sqrt(n)); sequence gives numbers n such that f(n) - floor(f(n)) < 1/10^5.

The programs for A127030, there is no canonical definition to state claims against.
-/

/-! ## A127030.P1105417659557240081

`A127029(∪[A019308(2*n+3), A054964(n+1)])`
-/

namespace A127030.P1105417659557240081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019308 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127029 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A127030.P1105417659557240081

/-!
# A127032: Maximal value of m such that 5^m <= n! : a(n) = floor( log(n!) / log(5) ).

The programs for A127032, the canonical program `A127032.P2043947788583924539` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127032 has offset 1).

The definition of A127032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log((n+1)!)/log(5))` (program `A127032.P2043947788583924539`, by `A127032.P2043947788583924539.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127032.P2043947788583924539

`floor(log((n+1)!)/log(5))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127032

/-- `floor(log((n+1)!)/log(5))` -/
def P2043947788583924539.Spec : Prop :=
  ∀ n, P2043947788583924539.a n = A127032 (n + 1)

theorem P2043947788583924539.correct : P2043947788583924539.Spec := by
  intro n
  simp only [A127032, Nat.add_sub_cancel]

end A127032

/-! ## A127032.P11123102895996774947

`floor(∑[log(n+1)/log(5)])`
-/

namespace A127032.P11123102895996774947
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ) / Real.log (5 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A127032.P11123102895996774947

namespace A127032

/-- `floor(∑[log(n+1)/log(5)])` -/
def P11123102895996774947.Spec : Prop :=
  ∀ n, P11123102895996774947.a n = A127032 (n + 1)

end A127032

/-! ## A127032.P16532977532754283467

`A214045(n+1)-1`
-/

namespace A127032.P16532977532754283467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214045 (n + 1) - 1

end

end A127032.P16532977532754283467

namespace A127032

/-- `A214045(n+1)-1` -/
def P16532977532754283467.Spec : Prop :=
  ∀ n, P16532977532754283467.a n = A127032 (n + 1)

end A127032

/-! ## A127032.P5783665689696162101

`(A214045(n+1)+A000217(n))%(∑[n]+1)`
-/

namespace A127032.P5783665689696162101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214045 (n + 1) + A000217 n) ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A127032.P5783665689696162101

namespace A127032

/-- `(A214045(n+1)+A000217(n))%(∑[n]+1)` -/
def P5783665689696162101.Spec : Prop :=
  ∀ n, P5783665689696162101.a n = A127032 (n + 1)

end A127032

/-! ## A127032.P15278972002798304419

`A023443(A214045(n+1))`
-/

namespace A127032.P15278972002798304419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A214045 (n + 1)).toNat

end

end A127032.P15278972002798304419

namespace A127032

/-- `A023443(A214045(n+1))` -/
def P15278972002798304419.Spec : Prop :=
  ∀ n, P15278972002798304419.a n = A127032 (n + 1)

end A127032

/-! ## A127032.P5129405748264916869

`A289207(A214045(n+1)+1)`
-/

namespace A127032.P5129405748264916869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A214045 (n + 1) + 1).toNat

end

end A127032.P5129405748264916869

namespace A127032

/-- `A289207(A214045(n+1)+1)` -/
def P5129405748264916869.Spec : Prop :=
  ∀ n, P5129405748264916869.a n = A127032 (n + 1)

end A127032

/-! ## A127032.P17599240902634895793

`A023477(A214045(n+1)+34)`
-/

namespace A127032.P17599240902634895793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023477 (A214045 (n + 1) + 34).toNat

end

end A127032.P17599240902634895793

namespace A127032

/-- `A023477(A214045(n+1)+34)` -/
def P17599240902634895793.Spec : Prop :=
  ∀ n, P17599240902634895793.a n = A127032 (n + 1)

end A127032

/-! ## A127032.P10267372969778177279

`A059169(4*A214045(n+1))`
-/

namespace A127032.P10267372969778177279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A214045 (n + 1)).toNat

end

end A127032.P10267372969778177279

namespace A127032

/-- `A059169(4*A214045(n+1))` -/
def P10267372969778177279.Spec : Prop :=
  ∀ n, P10267372969778177279.a n = A127032 (n + 1)

end A127032

/-! ## A127032.P5889363977513519859

`A259361(A214045(n+1)²)`
-/

namespace A127032.P5889363977513519859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A214045 (n + 1) ^ 2).toNat

end

end A127032.P5889363977513519859

namespace A127032

/-- `A259361(A214045(n+1)²)` -/
def P5889363977513519859.Spec : Prop :=
  ∀ n, P5889363977513519859.a n = A127032 (n + 1)

end A127032

/-!
# A127033: Maximal value of m such that 7^m <= n!: a(n) = floor( log(n!) / log(7) ).

The programs for A127033, the canonical program `A127033.P9956069441177557534` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127033 has offset 1).

The definition of A127033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127033.P9956069441177557534

`floor(∑[log(n+1)/log(7)])`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127033

/-- `floor(∑[log(n+1)/log(7)])` -/
def P9956069441177557534.Spec : Prop :=
  ∀ n, P9956069441177557534.a n = A127033 (n + 1)

theorem P9956069441177557534.correct : P9956069441177557534.Spec := by
  intro n
  simp only [A127033, Nat.add_sub_cancel]

end A127033

/-! ## A127033.P4053638063206433971

`ceil(log(A111062(C(n, 2))))`
-/

namespace A127033.P4053638063206433971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A111062 (Nat.choose n 2) : ℝ)⌉

end

end A127033.P4053638063206433971

namespace A127033

/-- `ceil(log(A111062(C(n, 2))))` -/
def P4053638063206433971.Spec : Prop :=
  ∀ n, P4053638063206433971.a n = A127033 (n + 1)

end A127033

/-! ## A127033.P12460342881386579153

`ceil(log(A182222(C(n, 2))))`
-/

namespace A127033.P12460342881386579153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A182222 (Nat.choose n 2) : ℝ)⌉

end

end A127033.P12460342881386579153

namespace A127033

/-- `ceil(log(A182222(C(n, 2))))` -/
def P12460342881386579153.Spec : Prop :=
  ∀ n, P12460342881386579153.a n = A127033 (n + 1)

end A127033

/-! ## A127033.P10185237149573025669

`ceil(log(A239144(C(n, 2))))`
-/

namespace A127033.P10185237149573025669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A239144 (Nat.choose n 2) : ℝ)⌉

end

end A127033.P10185237149573025669

namespace A127033

/-- `ceil(log(A239144(C(n, 2))))` -/
def P10185237149573025669.Spec : Prop :=
  ∀ n, P10185237149573025669.a n = A127033 (n + 1)

end A127033

/-! ## A127033.P2075030541276312558

`A003056(∑[A000196(∑[(n+1)²])-(n+1)])`
-/

namespace A127033.P2075030541276312558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f2 j) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127033.P2075030541276312558

namespace A127033

/-- `A003056(∑[A000196(∑[(n+1)²])-(n+1)])` -/
def P2075030541276312558.Spec : Prop :=
  ∀ n, P2075030541276312558.a n = A127033 (n + 1)

end A127033

/-!
# A127034: Maximal value of m such that 11^m <= n! : a(n) = floor( log(n!) / log(11) ).

The programs for A127034, the canonical program `A127034.P2074452124633372055` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127034 has offset 1).

The definition of A127034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127034.P2074452124633372055

`floor(∑[log(n+1)/log(11)])`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127034

/-- `floor(∑[log(n+1)/log(11)])` -/
def P2074452124633372055.Spec : Prop :=
  ∀ n, P2074452124633372055.a n = A127034 (n + 1)

theorem P2074452124633372055.correct : P2074452124633372055.Spec := by
  intro n
  simp only [A127034, Nat.add_sub_cancel]

end A127034

/-! ## A127034.P14748779824252257289

`A348960(n)-A070109(A018128(n))`
-/

namespace A127034.P14748779824252257289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 n - A070109 (A018128 n).toNat

end

end A127034.P14748779824252257289

namespace A127034

/-- `A348960(n)-A070109(A018128(n))` -/
def P14748779824252257289.Spec : Prop :=
  ∀ n, P14748779824252257289.a n = A127034 (n + 1)

end A127034

/-! ## A127034.P11057114252405099249

`A348960(n)-A164292(A347621(n))`
-/

namespace A127034.P11057114252405099249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 n - A164292 (A347621 n).toNat

end

end A127034.P11057114252405099249

namespace A127034

/-- `A348960(n)-A164292(A347621(n))` -/
def P11057114252405099249.Spec : Prop :=
  ∀ n, P11057114252405099249.a n = A127034 (n + 1)

end A127034

/-! ## A127034.P5736680513287518132

`A348960(n)-A185238(A332769(n+1))`
-/

namespace A127034.P5736680513287518132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348960 n - A185238 (A332769 (n + 1)).toNat

end

end A127034.P5736680513287518132

namespace A127034

/-- `A348960(n)-A185238(A332769(n+1))` -/
def P5736680513287518132.Spec : Prop :=
  ∀ n, P5736680513287518132.a n = A127034 (n + 1)

end A127034

/-! ## A127034.P6968322608753958871

`A233795(A156624(n+2))`
-/

namespace A127034.P6968322608753958871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233795 (A156624 (n + 2)).toNat

end

end A127034.P6968322608753958871

namespace A127034

/-- `A233795(A156624(n+2))` -/
def P6968322608753958871.Spec : Prop :=
  ∀ n, P6968322608753958871.a n = A127034 (n + 1)

end A127034

/-!
# A127035: Maximal value of m such that 13^m <= n! : a(n) = floor( log(n!) / log(13) ).

The programs for A127035, the canonical program `A127035.P8630739095290489449` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127035 has offset 1).

The definition of A127035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127035.P8630739095290489449

`floor(∑[log(n+1)/log(13)])`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127035

/-- `floor(∑[log(n+1)/log(13)])` -/
def P8630739095290489449.Spec : Prop :=
  ∀ n, P8630739095290489449.a n = A127035 (n + 1)

theorem P8630739095290489449.correct : P8630739095290489449.Spec := by
  intro n
  simp only [A127035, Nat.add_sub_cancel]

end A127035

/-! ## A127035.P17941066459801772826

`A157685(A022819(n)+1)`
-/

namespace A127035.P17941066459801772826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A022819 n + 1).toNat

end

end A127035.P17941066459801772826

namespace A127035

/-- `A157685(A022819(n)+1)` -/
def P17941066459801772826.Spec : Prop :=
  ∀ n, P17941066459801772826.a n = A127035 (n + 1)

end A127035

/-! ## A127035.P2132988992026322978

`A059995(∑[A225633(A107289(n+1))])`
-/

namespace A127035.P2132988992026322978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225633 (A107289 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127035.P2132988992026322978

namespace A127035

/-- `A059995(∑[A225633(A107289(n+1))])` -/
def P2132988992026322978.Spec : Prop :=
  ∀ n, P2132988992026322978.a n = A127035 (n + 1)

end A127035

/-! ## A127035.P5685168521575268377

`round(log(A317345(n))/10)`
-/

namespace A127035.P5685168521575268377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A317345 n : ℝ) / 10)

end

end A127035.P5685168521575268377

namespace A127035

/-- `round(log(A317345(n))/10)` -/
def P5685168521575268377.Spec : Prop :=
  ∀ n, P5685168521575268377.a n = A127035 (n + 1)

end A127035

/-!
# A127037: Maximal value of m such that 19^m <= n! : a(n) = floor( log(n!) / log(19) ).

The programs for A127037, the canonical program `A127037.P2310791268182029548` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127037 has offset 1).

The definition of A127037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127037.P2310791268182029548

`floor(∑[log(n+1)/log(19)])`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127037

/-- `floor(∑[log(n+1)/log(19)])` -/
def P2310791268182029548.Spec : Prop :=
  ∀ n, P2310791268182029548.a n = A127037 (n + 1)

theorem P2310791268182029548.correct : P2310791268182029548.Spec := by
  intro n
  simp only [A127037, Nat.add_sub_cancel]

end A127037

/-! ## A127037.P15259841326333802624

`∑[A304118(A168177(n+1)²)]`
-/

namespace A127037.P15259841326333802624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304118 (A168177 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127037.P15259841326333802624

namespace A127037

/-- `∑[A304118(A168177(n+1)²)]` -/
def P15259841326333802624.Spec : Prop :=
  ∀ n, P15259841326333802624.a n = A127037 (n + 1)

end A127037

/-! ## A127037.P3678200108769176973

`∑[A001221(A168177(n+1))]%A070033(n+1)`
-/

namespace A127037.P3678200108769176973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A168177 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A070033 (n + 1))

end

end A127037.P3678200108769176973

namespace A127037

/-- `∑[A001221(A168177(n+1))]%A070033(n+1)` -/
def P3678200108769176973.Spec : Prop :=
  ∀ n, P3678200108769176973.a n = A127037 (n + 1)

end A127037

/-! ## A127037.P17758082921437031005

`∑[A305501(A029352(n+1)²²+1)]`
-/

namespace A127037.P17758082921437031005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 ((A029352 (n + 1) ^ 2) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127037.P17758082921437031005

namespace A127037

/-- `∑[A305501(A029352(n+1)²²+1)]` -/
def P17758082921437031005.Spec : Prop :=
  ∀ n, P17758082921437031005.a n = A127037 (n + 1)

end A127037

/-!
# A127038: Maximal value of m such that 23^m <= n! : a(n) = floor( log(n!) / log(23) ).

The programs for A127038, the canonical program `A127038.P12131880037865704544` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127038 has offset 1).

The definition of A127038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log((n+1)!)/log(23))` (program `A127038.P12131880037865704544`, by `A127038.P12131880037865704544.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127038.P12131880037865704544

`floor(log((n+1)!)/log(23))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127038

/-- `floor(log((n+1)!)/log(23))` -/
def P12131880037865704544.Spec : Prop :=
  ∀ n, P12131880037865704544.a n = A127038 (n + 1)

theorem P12131880037865704544.correct : P12131880037865704544.Spec := by
  intro n
  simp only [A127038, Nat.add_sub_cancel]

end A127038

/-! ## A127038.P342236499883034374

`floor(∑[log(n+1)/log(23)])`
-/

namespace A127038.P342236499883034374
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ) / Real.log (23 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A127038.P342236499883034374

namespace A127038

/-- `floor(∑[log(n+1)/log(23)])` -/
def P342236499883034374.Spec : Prop :=
  ∀ n, P342236499883034374.a n = A127038 (n + 1)

end A127038

/-! ## A127038.P15769956014455212333

`A059995(∑[A255121(A001597(n+1))])`
-/

namespace A127038.P15769956014455212333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255121 (A001597 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127038.P15769956014455212333

namespace A127038

/-- `A059995(∑[A255121(A001597(n+1))])` -/
def P15769956014455212333.Spec : Prop :=
  ∀ n, P15769956014455212333.a n = A127038 (n + 1)

end A127038

/-! ## A127038.P13261029261315286233

`A036042(A219282(n))-1`
-/

namespace A127038.P13261029261315286233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A219282 n).toNat - 1

end

end A127038.P13261029261315286233

namespace A127038

/-- `A036042(A219282(n))-1` -/
def P13261029261315286233.Spec : Prop :=
  ∀ n, P13261029261315286233.a n = A127038 (n + 1)

end A127038

/-! ## A127038.P5674793850568151977

`∑[A014306(Δ[A159284(n)])]`
-/

namespace A127038.P5674793850568151977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127038.P5674793850568151977

namespace A127038

/-- `∑[A014306(Δ[A159284(n)])]` -/
def P5674793850568151977.Spec : Prop :=
  ∀ n, P5674793850568151977.a n = A127038 (n + 1)

end A127038

/-!
# A127039: Maximal value of m such that 29^m <= n! : a(n) = floor( log(n!) / log(29) ).

The programs for A127039, the canonical program `A127039.P12268345303378149403` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127039 has offset 1).

The definition of A127039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log((n+1)!)/log(29))` (program `A127039.P12268345303378149403`, by `A127039.P12268345303378149403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127039.P12268345303378149403

`floor(log((n+1)!)/log(29))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127039

/-- `floor(log((n+1)!)/log(29))` -/
def P12268345303378149403.Spec : Prop :=
  ∀ n, P12268345303378149403.a n = A127039 (n + 1)

theorem P12268345303378149403.correct : P12268345303378149403.Spec := by
  intro n
  simp only [A127039, Nat.add_sub_cancel]

end A127039

/-! ## A127039.P17571001565043513496

`floor(∑[log(n+1)/log(29)])`
-/

namespace A127039.P17571001565043513496
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ) / Real.log (29 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A127039.P17571001565043513496

namespace A127039

/-- `floor(∑[log(n+1)/log(29)])` -/
def P17571001565043513496.Spec : Prop :=
  ∀ n, P17571001565043513496.a n = A127039 (n + 1)

end A127039

/-! ## A127039.P13981277121858496623

`A111660(A002264(∑[A064097(n+1)]))`
-/

namespace A127039.P13981277121858496623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A127039.P13981277121858496623

namespace A127039

/-- `A111660(A002264(∑[A064097(n+1)]))` -/
def P13981277121858496623.Spec : Prop :=
  ∀ n, P13981277121858496623.a n = A127039 (n + 1)

end A127039

/-! ## A127039.P851166559908335092

`∑[val(A266228(n+7), 40)]`
-/

namespace A127039.P851166559908335092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A266228 (n + 7)).toNat 40

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127039.P851166559908335092

namespace A127039

/-- `∑[val(A266228(n+7), 40)]` -/
def P851166559908335092.Spec : Prop :=
  ∀ n, (P851166559908335092.a n : ℤ) = A127039 (n + 1)

end A127039

/-! ## A127039.P17626471242074491321

`∑[A288132(A327691(n)+A211351(n+1))]`
-/

namespace A127039.P17626471242074491321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (A327691 n + A211351 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127039.P17626471242074491321

namespace A127039

/-- `∑[A288132(A327691(n)+A211351(n+1))]` -/
def P17626471242074491321.Spec : Prop :=
  ∀ n, P17626471242074491321.a n = A127039 (n + 1)

end A127039

/-!
# A127040: a(n) = binomial(floor((3n+4)/2),floor(n/2)).

The programs for A127040, the canonical program `A127040.P11401149019040980452` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127040 has offset 0).

The definition of A127040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(floor((3*n+4)/2), floor(n/2))` (program `A127040.P11401149019040980452`, by `A127040.P11401149019040980452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127040.P11401149019040980452

`C(floor((3*n+4)/2), floor(n/2))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127040

/-- `C(floor((3*n+4)/2), floor(n/2))` -/
def P11401149019040980452.Spec : Prop :=
  ∀ n, (P11401149019040980452.a n : ℤ) = A127040 n

theorem P11401149019040980452.correct : P11401149019040980452.Spec := by
  intro n
  simp only [A127040]

end A127040

/-! ## A127040.P10267088108771256927

`A099576(n)-A175167(n+1)`
-/

namespace A127040.P10267088108771256927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099576 n - A175167 (n + 1)

end

end A127040.P10267088108771256927

namespace A127040

/-- `A099576(n)-A175167(n+1)` -/
def P10267088108771256927.Spec : Prop :=
  ∀ n, P10267088108771256927.a n = A127040 n

end A127040

/-! ## A127040.P3986112712711005447

`A065942(n+2)-A081204(n+1)`
-/

namespace A127040.P3986112712711005447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065942 (n + 2) - A081204 (n + 1)

end

end A127040.P3986112712711005447

namespace A127040

/-- `A065942(n+2)-A081204(n+1)` -/
def P3986112712711005447.Spec : Prop :=
  ∀ n, P3986112712711005447.a n = A127040 n

end A127040

/-! ## A127040.P5696191693049913531

`C(∑[gcd(2, n)], n+2)`
-/

namespace A127040.P5696191693049913531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2)

end

end A127040.P5696191693049913531

namespace A127040

/-- `C(∑[gcd(2, n)], n+2)` -/
def P5696191693049913531.Spec : Prop :=
  ∀ n, (P5696191693049913531.a n : ℤ) = A127040 n

end A127040

/-! ## A127040.P1924626765403368195

`C(∑[2-and(1, n)], n+2)`
-/

namespace A127040.P1924626765403368195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (n + 2)

end

end A127040.P1924626765403368195

namespace A127040

/-- `C(∑[2-and(1, n)], n+2)` -/
def P1924626765403368195.Spec : Prop :=
  ∀ n, (P1924626765403368195.a n : ℤ) = A127040 n

end A127040

/-! ## A127040.P6528702997660583268

`A046899(A116940(n+1))`
-/

namespace A127040.P6528702997660583268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A116940 (n + 1)).toNat

end

end A127040.P6528702997660583268

namespace A127040

/-- `A046899(A116940(n+1))` -/
def P6528702997660583268.Spec : Prop :=
  ∀ n, P6528702997660583268.a n = A127040 n

end A127040

/-! ## A127040.P8499120613308074908

`A046899(A000982(n+3)-2)`
-/

namespace A127040.P8499120613308074908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A000982 (n + 3) - 2).toNat

end

end A127040.P8499120613308074908

namespace A127040

/-- `A046899(A000982(n+3)-2)` -/
def P8499120613308074908.Spec : Prop :=
  ∀ n, P8499120613308074908.a n = A127040 n

end A127040

/-! ## A127040.P16296595354853561247

`A046899(A047838(n+2)+2+n)`
-/

namespace A127040.P16296595354853561247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A047838 (n + 2) + 2 + (n : ℤ)).toNat

end

end A127040.P16296595354853561247

namespace A127040

/-- `A046899(A047838(n+2)+2+n)` -/
def P16296595354853561247.Spec : Prop :=
  ∀ n, P16296595354853561247.a n = A127040 n

end A127040

/-! ## A127040.P7781178827000588701

`A046899(A008619(n)+A000096(n+1))`
-/

namespace A127040.P7781178827000588701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 (A008619 n + A000096 (n + 1)).toNat

end

end A127040.P7781178827000588701

namespace A127040

/-- `A046899(A008619(n)+A000096(n+1))` -/
def P7781178827000588701.Spec : Prop :=
  ∀ n, P7781178827000588701.a n = A127040 n

end A127040

/-! ## A127040.P3472288202436523078

`A099575(∑[n+2]-1)`
-/

namespace A127040.P3472288202436523078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099575 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A127040.P3472288202436523078

namespace A127040

/-- `A099575(∑[n+2]-1)` -/
def P3472288202436523078.Spec : Prop :=
  ∀ n, P3472288202436523078.a n = A127040 n

end A127040

/-! ## A127040.P2607420331216195734

`A178300(A080476(n+2))`
-/

namespace A127040.P2607420331216195734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178300 (A080476 (n + 2)).toNat

end

end A127040.P2607420331216195734

namespace A127040

/-- `A178300(A080476(n+2))` -/
def P2607420331216195734.Spec : Prop :=
  ∀ n, P2607420331216195734.a n = A127040 n

end A127040

/-!
# A127041: Maximal value of m such that 31^m <= n! : a(n) = floor( log(n!) / log(31) ).

The programs for A127041, the canonical program `A127041.P4739988172823762288` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127041 has offset 1).

The definition of A127041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(log((n+1)!)/log(31))` (program `A127041.P4739988172823762288`, by `A127041.P4739988172823762288.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127041.P4739988172823762288

`floor(log((n+1)!)/log(31))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127041

/-- `floor(log((n+1)!)/log(31))` -/
def P4739988172823762288.Spec : Prop :=
  ∀ n, P4739988172823762288.a n = A127041 (n + 1)

theorem P4739988172823762288.correct : P4739988172823762288.Spec := by
  intro n
  simp only [A127041, Nat.add_sub_cancel]

end A127041

/-! ## A127041.P6989797035738817543

`floor(∑[log(n+1)/log(31)])`
-/

namespace A127041.P6989797035738817543
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (n + 1 : ℝ) / Real.log (31 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A127041.P6989797035738817543

namespace A127041

/-- `floor(∑[log(n+1)/log(31)])` -/
def P6989797035738817543.Spec : Prop :=
  ∀ n, P6989797035738817543.a n = A127041 (n + 1)

end A127041

/-! ## A127041.P17862056162980686463

`2-A079416(A066885(n+2))+n`
-/

namespace A127041.P17862056162980686463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A079416 (A066885 (n + 2)).toNat + (n : ℤ)

end

end A127041.P17862056162980686463

namespace A127041

/-- `2-A079416(A066885(n+2))+n` -/
def P17862056162980686463.Spec : Prop :=
  ∀ n, P17862056162980686463.a n = A127041 (n + 1)

end A127041

/-! ## A127041.P492933317617445192

`A336112(A211540(n+1))`
-/

namespace A127041.P492933317617445192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336112 (A211540 (n + 1)).toNat

end

end A127041.P492933317617445192

namespace A127041

/-- `A336112(A211540(n+1))` -/
def P492933317617445192.Spec : Prop :=
  ∀ n, P492933317617445192.a n = A127041 (n + 1)

end A127041

/-! ## A127041.P10901259623215399924

`A048766((n+1)*A008763(n))`
-/

namespace A127041.P10901259623215399924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((n + 1 : ℤ) * A008763 n).toNat

end

end A127041.P10901259623215399924

namespace A127041

/-- `A048766((n+1)*A008763(n))` -/
def P10901259623215399924.Spec : Prop :=
  ∀ n, P10901259623215399924.a n = A127041 (n + 1)

end A127041

/-!
# A127042: Primes p such that denominator of Sum_{k=1..p-1} 1/k^2 is a square.

The programs for A127042, there is no canonical definition to state claims against.
-/

/-! ## A127042.P14938344146950918304

`p?[A073526(n+1)]`
-/

namespace A127042.P14938344146950918304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127042.P14938344146950918304

/-! ## A127042.P9173529954386139677

`p?[record[A073526(A133310(n))]]`
-/

namespace A127042.P9173529954386139677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127042.P9173529954386139677

/-! ## A127042.P8921214767428163925

`p?[record[A073526(A286544(n))]]`
-/

namespace A127042.P8921214767428163925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (A286544 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127042.P8921214767428163925

/-! ## A127042.P17689630750535336545

`record[A020639(A073526(n+2))]`
-/

namespace A127042.P17689630750535336545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A073526 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127042.P17689630750535336545

/-! ## A127042.P11889472251031983034

`filter[A073526(n+1), A010051(#)]`
-/

namespace A127042.P11889472251031983034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A127042.P11889472251031983034

/-! ## A127042.P5932499325178279893

`filter[A073526(n+2), A080339(#)]`
-/

namespace A127042.P5932499325178279893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A127042.P5932499325178279893

/-! ## A127042.P14238446556454273705

`∩[A000040(n+1), A073526(n+1)]`
-/

namespace A127042.P14238446556454273705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127042.P14238446556454273705

/-! ## A127042.P1184566528604960082

`∩[A073526(n+1), A106118(n+1)]`
-/

namespace A127042.P1184566528604960082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127042.P1184566528604960082

/-! ## A127042.P7745467400261187561

`∩[A073526(n+1), A182986(n+1)]`
-/

namespace A127042.P7745467400261187561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127042.P7745467400261187561

/-! ## A127042.P14016891923084775921

`∩[A073526(n+1), A216883(n+1)]`
-/

namespace A127042.P14016891923084775921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127042.P14016891923084775921

/-!
# A127043: Primes p such that denominator of Sum_{k=1..p-1} 1/k^2 is not a square.

The programs for A127043, there is no canonical definition to state claims against.
-/

/-! ## A127043.P7316080246806725258

`p?[A073527(n+1)]`
-/

namespace A127043.P7316080246806725258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127043.P7316080246806725258

/-! ## A127043.P4446042290225384870

`record[A006530(A073527(n+2))]`
-/

namespace A127043.P4446042290225384870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073527 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127043.P4446042290225384870

/-! ## A127043.P5289766881590839442

`filter[A073527(n+1), A010051(#)]`
-/

namespace A127043.P5289766881590839442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A127043.P5289766881590839442

/-! ## A127043.P15608528585622754268

`filter[A073527(n+1), A080339(#)]`
-/

namespace A127043.P15608528585622754268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A127043.P15608528585622754268

/-! ## A127043.P8907804599785163283

`filter[A073527(n+1), A080545(#)]`
-/

namespace A127043.P8907804599785163283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A127043.P8907804599785163283

/-! ## A127043.P16077455732751707027

`filter[A073527(n+1), A171387(#)]`
-/

namespace A127043.P16077455732751707027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A127043.P16077455732751707027

/-! ## A127043.P10185482782735664038

`∩[A000040(n+1), A073527(n+1)]`
-/

namespace A127043.P10185482782735664038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P10185482782735664038

/-! ## A127043.P17310506890364767908

`∩[A004139(n+1), A073527(n+1)]`
-/

namespace A127043.P17310506890364767908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P17310506890364767908

/-! ## A127043.P12104064892823675804

`∩[A006005(n+1), A073527(n+1)]`
-/

namespace A127043.P12104064892823675804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P12104064892823675804

/-! ## A127043.P7838971556805857261

`∩[A008578(n+1), A073527(n+1)]`
-/

namespace A127043.P7838971556805857261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P7838971556805857261

/-! ## A127043.P2736049320946748352

`∩[A045319(n+1), A073527(n+1)]`
-/

namespace A127043.P2736049320946748352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P2736049320946748352

/-! ## A127043.P16512847616243781655

`∩[A045344(n+1), A073527(n+1)]`
-/

namespace A127043.P16512847616243781655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P16512847616243781655

/-! ## A127043.P4293178413907803048

`∩[A046022(n+1), A073527(n+1)]`
-/

namespace A127043.P4293178413907803048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P4293178413907803048

/-! ## A127043.P1088489500077114168

`∩[A065091(n+1), A073527(n+1)]`
-/

namespace A127043.P1088489500077114168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P1088489500077114168

/-! ## A127043.P764786046957634710

`∩[A067126(n+1), A073527(n+1)]`
-/

namespace A127043.P764786046957634710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P764786046957634710

/-! ## A127043.P14709130135022203032

`∩[A073527(n+1), A083249(n+1)]`
-/

namespace A127043.P14709130135022203032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P14709130135022203032

/-! ## A127043.P9988055198338561087

`∩[A073527(n+1), A116974(n+1)]`
-/

namespace A127043.P9988055198338561087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P9988055198338561087

/-! ## A127043.P14708410736803997353

`∩[A073527(n+1), A137669(n+1)]`
-/

namespace A127043.P14708410736803997353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P14708410736803997353

/-! ## A127043.P3766993454505367082

`∩[A073527(n+1), A138837(n+1)]`
-/

namespace A127043.P3766993454505367082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P3766993454505367082

/-! ## A127043.P11482453448970563351

`∩[A073527(n+1), A140461(n+1)]`
-/

namespace A127043.P11482453448970563351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073527 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127043.P11482453448970563351

/-!
# A127044: Squares of denominators of Sum_{k=1..p-1} 1/k^2 for p in A127042.

The programs for A127044, there is no canonical definition to state claims against.
-/

/-! ## A127044.P914932849403780614

`A002944(A127042(n+1))`
-/

namespace A127044.P914932849403780614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (A127042 (n + 1)).toNat

end

end A127044.P914932849403780614

/-! ## A127044.P3954367695407939797

`A002944(p?[A073526(n+1)])`
-/

namespace A127044.P3954367695407939797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A127044.P3954367695407939797

/-! ## A127044.P16244798171374564781

`lcm(A002110(n), A025560(A127042(n+1)))`
-/

namespace A127044.P16244798171374564781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002110 n) (A025560 (A127042 (n + 1)).toNat)

end

end A127044.P16244798171374564781

/-! ## A127044.P11497367664511263877

`A025560(A127042(n+1))^A001221(A001316(n))`
-/

namespace A127044.P11497367664511263877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025560 (A127042 (n + 1)).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A127044.P11497367664511263877

/-!
# A127045: Primes p such that denominator of Sum_{k=1..p-1} 1/k^9 is a 9th power.

The programs for A127045, there is no canonical definition to state claims against.
-/

/-! ## A127045.P16006064052628010188

`record[A318490(A051128(n+2))]`
-/

namespace A127045.P16006064052628010188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318490 (A051128 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127045.P16006064052628010188

/-! ## A127045.P3022309780070511696

`∩[A076564(n+1), A127046(n+1)]`
-/

namespace A127045.P3022309780070511696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127045.P3022309780070511696

/-! ## A127045.P13323005611057340751

`∩[A076564(n+1), A275697(n+1)]`
-/

namespace A127045.P13323005611057340751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076564 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127045.P13323005611057340751

/-! ## A127045.P3993940459884820182

`A000040(A081604(n)+record[A122285(n)])`
-/

namespace A127045.P3993940459884820182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A081604 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127045.P3993940459884820182

/-!
# A127046: Primes p such that denominator of Sum_{k=1..p-1} 1/k^3 is a cube.

The programs for A127046, there is no canonical definition to state claims against.
-/

/-! ## A127046.P11804555142668173158

`p?[eq[A006997(n), A330168(n)]]`
-/

namespace A127046.P11804555142668173158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006997 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330168 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A127046.P11804555142668173158

/-! ## A127046.P12657709808788173460

`p?[lt[A248625(n+1), 2]]`
-/

namespace A127046.P12657709808788173460
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248625 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A127046.P12657709808788173460

/-! ## A127046.P4467342987131757795

`p?[lt[A248625(n), 2]-1]`
-/

namespace A127046.P4467342987131757795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248625 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127046.P4467342987131757795

/-! ## A127046.P1311355459520717864

`∑{p}[A127051(n+1)^3, #]`
-/

namespace A127046.P1311355459520717864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127051 (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A127046.P1311355459520717864

/-! ## A127046.P4941011399358825113

`A127051(A361043(∑[n]))`
-/

namespace A127046.P4941011399358825113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127051 (A361043 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A127046.P4941011399358825113

/-!
# A127047: Primes p such that denominator of Sum_{k=1..p-1} 1/k^4 is a fourth power.

The programs for A127047, there is no canonical definition to state claims against.
-/

/-! ## A127047.P15162940523104316569

`∩[A127052(n+1), A203076(n)]`
-/

namespace A127047.P15162940523104316569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203076 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127047.P15162940523104316569

/-! ## A127047.P10726941630168723055

`A000040(lt[A224221(n), A360135(n+1)])`
-/

namespace A127047.P10726941630168723055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127047.P10726941630168723055

/-! ## A127047.P3190305259151139679

`A008578(lt[A193846(n), 99]+2)`
-/

namespace A127047.P3190305259151139679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193846 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  99

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2)

end

end A127047.P3190305259151139679

/-! ## A127047.P18018963729948517910

`∩[A051750(n+1), A257671(n+1)]`
-/

namespace A127047.P18018963729948517910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127047.P18018963729948517910

/-! ## A127047.P11052909393607867223

`∩[A092570(n+1), A257671(n+1)]`
-/

namespace A127047.P11052909393607867223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127047.P11052909393607867223

/-!
# A127048: Primes p such that denominator of Sum_{k=1..p-1} 1/k^5 is a fifth power.

The programs for A127048, there is no canonical definition to state claims against.
-/

/-! ## A127048.P2069390604275958808

`p?[record[A053615(A294295(n+1))]]`
-/

namespace A127048.P2069390604275958808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A294295 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127048.P2069390604275958808

/-! ## A127048.P14463005046379491426

`A007918(A094984(n)+A094960(n+1))`
-/

namespace A127048.P14463005046379491426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A094984 n + A094960 (n + 1)).toNat

end

end A127048.P14463005046379491426

/-! ## A127048.P15557970441548952668

`eq[A003415(n), A046072(A319446(n+1))]`
-/

namespace A127048.P15557970441548952668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046072 (A319446 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A127048.P15557970441548952668

/-! ## A127048.P15893227568691657604

`∩[A028770(n+1), A095315(n+1)]`
-/

namespace A127048.P15893227568691657604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127048.P15893227568691657604

/-! ## A127048.P5270760261769809658

`∩[A028770(n+1), A120639(n+1)]`
-/

namespace A127048.P5270760261769809658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127048.P5270760261769809658

/-!
# A127049: Primes p such that denominator of Sum_{k=1..p-1} 1/k^6 is a sixth power.

The programs for A127049, there is no canonical definition to state claims against.
-/

/-! ## A127049.P9958533146949049042

`p?[A028897(A024649(n))]`
-/

namespace A127049.P9958533146949049042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028897 (A024649 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127049.P9958533146949049042

/-! ## A127049.P15902463998510236028

`p?[A175089(A081870(n+1))]`
-/

namespace A127049.P15902463998510236028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175089 (A081870 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127049.P15902463998510236028

/-! ## A127049.P10427502977903450024

`p?[A108549(n+1)-A045698(n)]`
-/

namespace A127049.P10427502977903450024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108549 (n + 1) - A045698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127049.P10427502977903450024

/-! ## A127049.P15584632298313863603

`record[A006530(∑[A365105(3*n+1)])]`
-/

namespace A127049.P15584632298313863603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365105 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127049.P15584632298313863603

/-! ## A127049.P252261902525518529

`A000040(lt[A061419(n+1), A342862(3*n+1)])`
-/

namespace A127049.P252261902525518529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342862 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127049.P252261902525518529

/-!
# A127050: A007376(2n+1).

The programs for A127050, there is no canonical definition to state claims against.
-/

/-! ## A127050.P12455090793770096459

`A007376(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127050.P12455090793770096459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (2 * n + 1)

end

end A127050.P12455090793770096459

/-!
# A127052: Primes p such that denominator of Sum_{k=1..p-1} 1/k^8 is an eighth power.

The programs for A127052, there is no canonical definition to state claims against.
-/

/-! ## A127052.P10979998709312488898

`A000040(lt[A007360(n+1), A146122(2*n+1)])`
-/

namespace A127052.P10979998709312488898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146122 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127052.P10979998709312488898

/-! ## A127052.P7118056496109047067

`A000040(lt[A130272(n+1), A185510(3*n+1)])`
-/

namespace A127052.P7118056496109047067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185510 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127052.P7118056496109047067

/-! ## A127052.P13625013125443983055

`∩[A247151(n+1)-2, A294200(n+1)]`
-/

namespace A127052.P13625013125443983055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247151 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127052.P13625013125443983055

/-! ## A127052.P10856453593438608837

`∩[A109611(n+1), A316495(A316495(n+1))]`
-/

namespace A127052.P10856453593438608837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316495 (A316495 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127052.P10856453593438608837

/-! ## A127052.P13748908548249897022

`A000040(lt[A000009(n), A245605(n+1)])`
-/

namespace A127052.P13748908548249897022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127052.P13748908548249897022

/-!
# A127054: Rectangular table, read by antidiagonals, defined by the following rule: start with all 1's in row zero; from then on, row n+1 equals the partial sums of row n excluding terms in columns k = m*(m+1)/2 (m>=1).

The programs for A127054, there is no canonical definition to state claims against.
-/

/-! ## A127054.P7888369782806938262

`A292050(A091491(n))`
-/

namespace A127054.P7888369782806938262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (A091491 n).toNat

end

end A127054.P7888369782806938262

/-! ## A127054.P15567283807586503217

`A274933(A125790(n)+1)`
-/

namespace A127054.P15567283807586503217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274933 (A125790 n + 1).toNat

end

end A127054.P15567283807586503217

/-! ## A127054.P14746982797552776307

`A292050(A117418(n)-char[18])`
-/

namespace A127054.P14746982797552776307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292050 (A117418 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A127054.P14746982797552776307

/-!
# A127055: Antidiagonal sums of table A127054.

The programs for A127055, there is no canonical definition to state claims against.
-/

/-! ## A127055.P10856286162492225476

`A091226(A001900(n))+A000088(n)`
-/

namespace A127055.P10856286162492225476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A001900 n).toNat + A000088 n

end

end A127055.P10856286162492225476

/-! ## A127055.P6200703962341834686

`A259839(n)+A055679(A151085(n))`
-/

namespace A127055.P6200703962341834686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259839 n + A055679 (A151085 n).toNat

end

end A127055.P6200703962341834686

/-! ## A127055.P7855021318094941496

`A011867(n)+∑[A345673(A263272(n))]`
-/

namespace A127055.P7855021318094941496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345673 (A263272 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127055.P7855021318094941496

/-!
# A127056: Diagonal of table A127054.

The programs for A127056, there is no canonical definition to state claims against.
-/

/-! ## A127056.P6685946585338579834

`A127054(∑[4*n])`
-/

namespace A127056.P6685946585338579834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127056.P6685946585338579834

/-! ## A127056.P4440716442776656191

`record[A127054((n+1)*floor(n/2))]`
-/

namespace A127056.P4440716442776656191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127054 ((n + 1 : ℤ) * ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127056.P4440716442776656191

/-!
# A127057: Triangle T(n,k), partial row sums of the n-th row of A127013 read right to left.

The programs for A127057, there is no canonical definition to state claims against.
-/

/-! ## A127057.P17995211189503155501

`A000203(or(A141294(n+1), A316533(n+5)))`
-/

namespace A127057.P17995211189503155501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lor (A141294 (n + 1)) (A316533 (n + 5))).toNat

end

end A127057.P17995211189503155501

/-! ## A127057.P3583793208360923299

`A194673(A106235(n+1)+A106234(n+1))*A334466(n+1)`
-/

namespace A127057.P3583793208360923299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194673 (A106235 (n + 1) + A106234 (n + 1)).toNat * A334466 (n + 1)

end

end A127057.P3583793208360923299

/-! ## A127057.P15093512231902447011

`A143355(n+1)+A015647(A089408(n))`
-/

namespace A127057.P15093512231902447011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143355 (n + 1) + A015647 (A089408 n).toNat

end

end A127057.P15093512231902447011

/-! ## A127057.P16956248278693933521

`A185315(A322281(n))*A334466(n+1)`
-/

namespace A127057.P16956248278693933521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185315 (A322281 n).toNat * A334466 (n + 1)

end

end A127057.P16956248278693933521

/-! ## A127057.P17596270628588536247

`A181937(A185951(2*n+5))*A334466(n+1)`
-/

namespace A127057.P17596270628588536247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A185951 (2 * n + 5)).toNat * A334466 (n + 1)

end

end A127057.P17596270628588536247

/-!
# A127059: Column 2 of triangle A127058.

The programs for A127059, there is no canonical definition to state claims against.
-/

/-! ## A127059.P14863477654545002409

`3*A321963(n)`
-/

namespace A127059.P14863477654545002409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A321963 n

end

end A127059.P14863477654545002409

/-! ## A127059.P6178869889185348961

`A127058(∑[n+2]+3)`
-/

namespace A127059.P6178869889185348961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127058 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A127059.P6178869889185348961

/-! ## A127059.P18225539240899189766

`3*ceil(A127058(A055998(n)+5)/3)`
-/

namespace A127059.P18225539240899189766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(A127058 (A055998 n + 5).toNat : ℚ) / 3⌉

end

end A127059.P18225539240899189766

/-! ## A127059.P8280088647701681072

`3*ceil(A127058(A046691(n)+6)/3)`
-/

namespace A127059.P8280088647701681072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(A127058 (A046691 n + 6).toNat : ℚ) / 3⌉

end

end A127059.P8280088647701681072

/-! ## A127059.P13321061629959249424

`3*ceil(A127058(eq[2, A002262(n)])/3)`
-/

namespace A127059.P13321061629959249424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ⌈(A127058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 3⌉

end

end A127059.P13321061629959249424

/-!
# A127060: Row sums of triangle A127058.

The programs for A127060, there is no canonical definition to state claims against.
-/

/-! ## A127060.P16217468210223505681

`A312613(n^round(acot(n)+n))`
-/

namespace A127060.P16217468210223505681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312613 (SequenceMachineLib.roundAway ((n : ℚ) ^ (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℤ))).toNat

end

end A127060.P16217468210223505681

/-!
# A127061: Primes p such that denominator of Sum_{k=1..p-1} 1/k^2 is a square and denominator Sum_{k=1..p-1} 1/k^3 is a cube.

The programs for A127061, there is no canonical definition to state claims against.
-/

/-! ## A127061.P15711135420416719742

`∩[A127042(n+1), A127046(n+1)]`
-/

namespace A127061.P15711135420416719742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127061.P15711135420416719742

/-! ## A127061.P8539157508200033927

`∩[A073526(n+1), A127046(n+1)]`
-/

namespace A127061.P8539157508200033927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127061.P8539157508200033927

/-! ## A127061.P2939205007592770840

`p?[∑[A157209(A074909(n+1))]]`
-/

namespace A127061.P2939205007592770840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157209 (A074909 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A127061.P2939205007592770840

/-!
# A127062: Primes p such that denominator of Sum_{k=1..p-1} 1/k^2 is a square and denominator Sum_{k=1..p-1} 1/k^3 is a cube and denominator Sum_{k=1..p-1} 1/k^4 is a fourth power.

The programs for A127062, there is no canonical definition to state claims against.
-/

/-! ## A127062.P4591693308617038996

`∩[A127047(n+1), A127061(n+1)]`
-/

namespace A127062.P4591693308617038996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127062.P4591693308617038996

/-! ## A127062.P18056363255955769404

`∩[A069118(n+1), A127061(n+1)]`
-/

namespace A127062.P18056363255955769404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127062.P18056363255955769404

/-!
# A127063: Primes p such that denominator of Sum_{k=1..p-1} 1/k^2 is a square and denominator Sum_{k=1..p-1} 1/k^3 is a cube and denominator Sum_{k=1..p-1} 1/k^4 is a fourth power and denominator Sum_{k=1..p-1} 1/k^5 is a fifth power.

The programs for A127063, there is no canonical definition to state claims against.
-/

/-! ## A127063.P4009368431056946928

`A019350(∑[A208510(n!)])`
-/

namespace A127063.P4009368431056946928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208510 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019350 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A127063.P4009368431056946928

/-! ## A127063.P2286446663123144661

`A127061(∑[A339416(n)!])`
-/

namespace A127063.P2286446663123144661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A339416 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127063.P2286446663123144661

/-!
# A127064: a(0)=1. a(n) = a(prime(n)(mod n)) + 1, where prime(n) is the n-th prime.

The programs for A127064, the canonical program `A127064.P15900401852651406098` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127064 has offset 0).

The definition of A127064 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127064.P15900401852651406098

`1+a(A000040(n)%n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127064

/-- `1+a(A000040(n)%n)` -/
def P15900401852651406098.Spec : Prop :=
  ∀ n, (P15900401852651406098.a n : ℤ) = A127064 n

theorem P15900401852651406098.correct : P15900401852651406098.Spec := by
  intro n
  simp only [A127064]

end A127064

/-! ## A127064.P4202935063072874484

`a(A004648(n))+1` with `a(0)=1`
-/

namespace A127064.P4202935063072874484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A004648 n).toNat + 1

end

end A127064.P4202935063072874484

namespace A127064

/-- `a(A004648(n))+1` -/
def P4202935063072874484.Spec : Prop :=
  ∀ n, (P4202935063072874484.a n : ℤ) = A127064 n

end A127064

/-! ## A127064.P7117626233475643819

`a(A014688(n)%n)+1` with `a(0)=1`
-/

namespace A127064.P7117626233475643819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (A014688 n) (n : ℤ)).toNat + 1

end

end A127064.P7117626233475643819

namespace A127064

/-- `a(A014688(n)%n)+1` -/
def P7117626233475643819.Spec : Prop :=
  ∀ n, (P7117626233475643819.a n : ℤ) = A127064 n

end A127064

/-! ## A127064.P3843604609857897566

`a(A014689(n)%n)+1` with `a(0)=1`
-/

namespace A127064.P3843604609857897566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (A014689 n) (n : ℤ)).toNat + 1

end

end A127064.P3843604609857897566

namespace A127064

/-- `a(A014689(n)%n)+1` -/
def P3843604609857897566.Spec : Prop :=
  ∀ n, (P3843604609857897566.a n : ℤ) = A127064 n

end A127064

/-! ## A127064.P3673768737707330077

`a(A008578(n+1)%n)+1` with `a(0)=1`
-/

namespace A127064.P3673768737707330077
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (A008578 (n + 1)) (n : ℤ)).toNat + 1

end

end A127064.P3673768737707330077

namespace A127064

/-- `a(A008578(n+1)%n)+1` -/
def P3673768737707330077.Spec : Prop :=
  ∀ n, (P3673768737707330077.a n : ℤ) = A127064 n

end A127064

/-! ## A127064.P5596323582159537721

`a(record[A006530(n+1)]%n)+1` with `a(0)=1`
-/

namespace A127064.P5596323582159537721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n : ℤ)).toNat + 1

end

end A127064.P5596323582159537721

namespace A127064

/-- `a(record[A006530(n+1)]%n)+1` -/
def P5596323582159537721.Spec : Prop :=
  ∀ n, (P5596323582159537721.a n : ℤ) = A127064 n

end A127064

/-! ## A127064.P2720267827921279887

`a(record[A020639(n+1)]%n)+1` with `a(0)=1`
-/

namespace A127064.P2720267827921279887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n : ℤ)).toNat + 1

end

end A127064.P2720267827921279887

namespace A127064

/-- `a(record[A020639(n+1)]%n)+1` -/
def P2720267827921279887.Spec : Prop :=
  ∀ n, (P2720267827921279887.a n : ℤ) = A127064 n

end A127064

/-! ## A127064.P16548936324604720411

`a(record[A014963(n+1)]%n)+1` with `a(0)=1`
-/

namespace A127064.P16548936324604720411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n : ℤ)).toNat + 1

end

end A127064.P16548936324604720411

namespace A127064

/-- `a(record[A014963(n+1)]%n)+1` -/
def P16548936324604720411.Spec : Prop :=
  ∀ n, (P16548936324604720411.a n : ℤ) = A127064 n

end A127064

/-!
# A127065: a(n) = n! - (n-2)^2.

The programs for A127065, the canonical program `A127065.P9501574552731225243` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127065 has offset 1).

The definition of A127065 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)!-(n-1)²` (program `A127065.P9501574552731225243`, by `A127065.P9501574552731225243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A127065.P9501574552731225243

`(n+1)!-(n-1)²`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127065

/-- `(n+1)!-(n-1)²` -/
def P9501574552731225243.Spec : Prop :=
  ∀ n, P9501574552731225243.a n = A127065 (n + 1)

theorem P9501574552731225243.correct : P9501574552731225243.Spec := by
  intro n
  simp only [A127065, Nat.add_sub_cancel]

end A127065

/-! ## A127065.P10443618142483867794

`abs(∏[n+1]-(n-1)²)`
-/

namespace A127065.P10443618142483867794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1) ^ 2|

end

end A127065.P10443618142483867794

namespace A127065

/-- `abs(∏[n+1]-(n-1)²)` -/
def P10443618142483867794.Spec : Prop :=
  ∀ n, P10443618142483867794.a n = A127065 (n + 1)

end A127065

/-! ## A127065.P13526237327305116170

`Δ[-∑[(2-n)²-n!]]`
-/

namespace A127065.P13526237327305116170
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2 - (Nat.factorial n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127065.P13526237327305116170

namespace A127065

/-- `Δ[-∑[(2-n)²-n!]]` -/
def P13526237327305116170.Spec : Prop :=
  ∀ n, P13526237327305116170.a n = A127065 (n + 1)

end A127065

/-! ## A127065.P672373192611369799

`record[lcm(n-1, n!)]-(n-1)²`
-/

namespace A127065.P672373192611369799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - ((n : ℤ) - 1) ^ 2

end

end A127065.P672373192611369799

namespace A127065

/-- `record[lcm(n-1, n!)]-(n-1)²` -/
def P672373192611369799.Spec : Prop :=
  ∀ n, P672373192611369799.a n = A127065 (n + 1)

end A127065

/-! ## A127065.P3012470519734180729

`(n+1)!+n-1-n*(n-1)`
-/

namespace A127065.P3012470519734180729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) + ((n : ℤ) - 1) - (n : ℤ) * ((n : ℤ) - 1)

end

end A127065.P3012470519734180729

namespace A127065

/-- `(n+1)!+n-1-n*(n-1)` -/
def P3012470519734180729.Spec : Prop :=
  ∀ n, P3012470519734180729.a n = A127065 (n + 1)

theorem P3012470519734180729.correct : P3012470519734180729.Spec := by
  intro n
  simp only [A127065, Nat.add_sub_cancel, A127065.P3012470519734180729.a, A127065.P9501574552731225243.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A127065

/-! ## A127065.P283425358306777434

`lcm(n+1, ∏[-(n+1)])-(n-1)²`
-/

namespace A127065.P283425358306777434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j) : ℤ) - ((n : ℤ) - 1) ^ 2

end

end A127065.P283425358306777434

namespace A127065

/-- `lcm(n+1, ∏[-(n+1)])-(n-1)²` -/
def P283425358306777434.Spec : Prop :=
  ∀ n, P283425358306777434.a n = A127065 (n + 1)

end A127065

/-! ## A127065.P10012453829025648301

`record[A129116(n+1)-A159798(n+1)]`
-/

namespace A127065.P10012453829025648301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129116 (n + 1) - A159798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127065.P10012453829025648301

namespace A127065

/-- `record[A129116(n+1)-A159798(n+1)]` -/
def P10012453829025648301.Spec : Prop :=
  ∀ n, P10012453829025648301.a n = A127065 (n + 1)

end A127065

/-! ## A127065.P3504569874157779386

`record[A166350(n+1)-A159798(n+1)]`
-/

namespace A127065.P3504569874157779386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) - A159798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127065.P3504569874157779386

namespace A127065

/-- `record[A166350(n+1)-A159798(n+1)]` -/
def P3504569874157779386.Spec : Prop :=
  ∀ n, P3504569874157779386.a n = A127065 (n + 1)

end A127065

/-!
# A127066: a(0)=1; for n > 0, a(n) = a(n-1) + a(prime(n)(mod n)), where prime(n) is the n-th prime.

The programs for A127066, the canonical program `A127066.P961484894356942874` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127066 has offset 0).

The definition of A127066 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127066.P961484894356942874

`a(n-1)+a(A000040(n)%n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127066

/-- `a(n-1)+a(A000040(n)%n)` -/
def P961484894356942874.Spec : Prop :=
  ∀ n, (P961484894356942874.a n : ℤ) = A127066 n

theorem P961484894356942874.correct : P961484894356942874.Spec := by
  intro n
  simp only [A127066]

end A127066

/-! ## A127066.P43232219729947226

`a(n-1)+a(A004648(n))` with `a(0)=1`
-/

namespace A127066.P43232219729947226
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A004648 n).toNat

end

end A127066.P43232219729947226

namespace A127066

/-- `a(n-1)+a(A004648(n))` -/
def P43232219729947226.Spec : Prop :=
  ∀ n, (P43232219729947226.a n : ℤ) = A127066 n

end A127066

/-! ## A127066.P13829721522547171875

`a(n-1)+a(A014688(n)%n)` with `a(0)=1`
-/

namespace A127066.P13829721522547171875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (Int.tmod (A014688 n) (n : ℤ)).toNat

end

end A127066.P13829721522547171875

namespace A127066

/-- `a(n-1)+a(A014688(n)%n)` -/
def P13829721522547171875.Spec : Prop :=
  ∀ n, (P13829721522547171875.a n : ℤ) = A127066 n

end A127066

/-! ## A127066.P167466974267953453

`a(A008578(n+1)%n)+a(n-1)` with `a(0)=1`
-/

namespace A127066.P167466974267953453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Int.tmod (A008578 (n + 1)) (n : ℤ)).toNat + a (n - 1)

end

end A127066.P167466974267953453

namespace A127066

/-- `a(A008578(n+1)%n)+a(n-1)` -/
def P167466974267953453.Spec : Prop :=
  ∀ n, (P167466974267953453.a n : ℤ) = A127066 n

end A127066

/-! ## A127066.P4723911559066206186

`a(n-1)+a(record[A006530(n+1)]%n)` with `a(0)=1`
-/

namespace A127066.P4723911559066206186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (n : ℤ)).toNat

end

end A127066.P4723911559066206186

namespace A127066

/-- `a(n-1)+a(record[A006530(n+1)]%n)` -/
def P4723911559066206186.Spec : Prop :=
  ∀ n, (P4723911559066206186.a n : ℤ) = A127066 n

end A127066

/-!
# A127067: Define an array by d(m, 0) = 1, d(m, 1) = m; d(m, k) = (m - k + 1) d(m+1, k-1) - (k-1) (m+1) d(m+2, k-2). Sequence gives d(2,n).

The programs for A127067, there is no canonical definition to state claims against.
-/

/-! ## A127067.P12837236707849354110

`A127144(n)*A248809(∑[n])`
-/

namespace A127067.P12837236707849354110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127144 n * A248809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127067.P12837236707849354110

/-! ## A127067.P11589398242980070525

`A006882(n+1)*A127144(n)`
-/

namespace A127067.P11589398242980070525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (n + 1) * A127144 n

end

end A127067.P11589398242980070525

/-! ## A127067.P7898709837289870511

`A127080(∑[n+3])*A248809(A000217(n))`
-/

namespace A127067.P7898709837289870511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127080 (∑ j ∈ Finset.range (n + 1), f1 j) * A248809 (A000217 n).toNat

end

end A127067.P7898709837289870511

/-! ## A127067.P18130996368934386243

`A105937(∑[n+3])`
-/

namespace A127067.P18130996368934386243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127067.P18130996368934386243

/-! ## A127067.P10904335006528495667

`A057427(A099909(n+2))*A105937(A141214(n))`
-/

namespace A127067.P10904335006528495667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A099909 (n + 2)).toNat * A105937 (A141214 n).toNat

end

end A127067.P10904335006528495667

/-!
# A127068: Let d(m, 0) = 1, d(m, 1) = m, and d(m, k) = (m - k + 1)*d(m+1, k-1) - (k-1)*(m+1) d(m+2, k-2). Sequence gives d(3,n).

The programs for A127068, there is no canonical definition to state claims against.
-/

/-! ## A127068.P3102342450978882861

`A105937(∑[n+4]+2)`
-/

namespace A127068.P3102342450978882861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A127068.P3102342450978882861

/-! ## A127068.P9528338586846332059

`and(-A302997(n), A105937(A046691(n+2)))`
-/

namespace A127068.P9528338586846332059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A302997 n) (A105937 (A046691 (n + 2)).toNat)

end

end A127068.P9528338586846332059

/-! ## A127068.P154335330443802571

`A105937(A046691(n+2))+A000035(2*n)`
-/

namespace A127068.P154335330443802571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (A046691 (n + 2)).toNat + A000035 (2 * n)

end

end A127068.P154335330443802571

/-! ## A127068.P392238309191486324

`and(-A138177(n+1), A105937(A046691(n+2)))`
-/

namespace A127068.P392238309191486324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A138177 (n + 1)) (A105937 (A046691 (n + 2)).toNat)

end

end A127068.P392238309191486324

/-! ## A127068.P328603371626005317

`A105937(A046691(n+2))+A051709(A006005(n+1))`
-/

namespace A127068.P328603371626005317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (A046691 (n + 2)).toNat + A051709 (A006005 (n + 1)).toNat

end

end A127068.P328603371626005317

/-!
# A127069: Number of lines in a Pauli graph of order n.

The programs for A127069, the canonical program `A127069.P11111184606818111237` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127069 has offset 2).

The definition of A127069 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127069.P6290387918720934766

`ogf((15-60x+48x^2)/(1-7x+14x^2-8x^3))`
-/

namespace A127069.P6290387918720934766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -60, 48] [1, -7, 14, -8] n

end

end A127069.P6290387918720934766

namespace A127069

/-- `ogf((15-60x+48x^2)/(1-7x+14x^2-8x^3))` -/
def P6290387918720934766.Spec : Prop :=
  ∀ n, P6290387918720934766.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P13662498832583503179

`(2+3*2^(n+2)+4^(n+2))/2`
-/

namespace A127069.P13662498832583503179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + 3 * 2 ^ (n + 2) + 4 ^ (n + 2) : ℚ) / 2

end

end A127069.P13662498832583503179

namespace A127069

/-- `(2+3*2^(n+2)+4^(n+2))/2` -/
def P13662498832583503179.Spec : Prop :=
  ∀ n, P13662498832583503179.a n = (A127069 (n + 2) : ℚ)

theorem P13662498832583503179.correct : P13662498832583503179.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A127069, Nat.add_sub_cancel, A127069.P13662498832583503179.a, A127069.P11111184606818111237.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A127069, Nat.add_sub_cancel, A127069.P13662498832583503179.a, A127069.P11111184606818111237.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A127069

/-! ## A127069.P13614000617143794849

`3*or(1, ∑[4*a(n-1)-2^n])` with `a(0)=5, a(1)=10`
-/

namespace A127069.P13614000617143794849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 10] fun n f1 =>
  4 * f1 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127069.P13614000617143794849

namespace A127069

/-- `3*or(1, ∑[4*a(n-1)-2^n])` -/
def P13614000617143794849.Spec : Prop :=
  ∀ n, P13614000617143794849.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P17080589657242679630

`3*∑[a(n-1)+a(n-1)+4^n]` with `a(0)=5, a(1)=10`
-/

namespace A127069.P17080589657242679630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 10] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 4 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127069.P17080589657242679630

namespace A127069

/-- `3*∑[a(n-1)+a(n-1)+4^n]` -/
def P17080589657242679630.Spec : Prop :=
  ∀ n, (P17080589657242679630.a n : ℤ) = A127069 (n + 2)

end A127069

/-! ## A127069.P11111184606818111237

`7*a(n-1)-14*a(n-2)+8*a(n-3)` with `a(0)=15, a(1)=45, a(2)=153`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127069

/-- `7*a(n-1)-14*a(n-2)+8*a(n-3)` -/
def P11111184606818111237.Spec : Prop :=
  ∀ n, P11111184606818111237.a n = A127069 (n + 2)

theorem P11111184606818111237.correct : P11111184606818111237.Spec := by
  intro n
  simp only [A127069, Nat.add_sub_cancel]

end A127069

/-! ## A127069.P15562275931413046485

`A028401(n+4)`
-/

namespace A127069.P15562275931413046485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028401 (n + 4)

end

end A127069.P15562275931413046485

namespace A127069

/-- `A028401(n+4)` -/
def P15562275931413046485.Spec : Prop :=
  ∀ n, P15562275931413046485.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P7352727065004828860

`Δ[A346295(n+1)]`
-/

namespace A127069.P7352727065004828860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127069.P7352727065004828860

namespace A127069

/-- `Δ[A346295(n+1)]` -/
def P7352727065004828860.Spec : Prop :=
  ∀ n, P7352727065004828860.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P6134523642659236871

`A257273(n+2)+1`
-/

namespace A127069.P6134523642659236871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 (n + 2) + 1

end

end A127069.P6134523642659236871

namespace A127069

/-- `A257273(n+2)+1` -/
def P6134523642659236871.Spec : Prop :=
  ∀ n, P6134523642659236871.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P4559061043176539153

`A297928(n+1)+2`
-/

namespace A127069.P4559061043176539153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297928 (n + 1) + 2

end

end A127069.P4559061043176539153

namespace A127069

/-- `A297928(n+1)+2` -/
def P4559061043176539153.Spec : Prop :=
  ∀ n, P4559061043176539153.a n = A127069 (n + 2)

theorem P4559061043176539153.correct : P4559061043176539153.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A127069, Nat.add_sub_cancel, A127069.P4559061043176539153.a, A127069.P11111184606818111237.a, A297928, A297928.P1249601276775811243.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A127069, Nat.add_sub_cancel, A127069.P4559061043176539153.a, A127069.P11111184606818111237.a, A297928, A297928.P1249601276775811243.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A127069

/-! ## A127069.P18095488964034535600

`A183978(2*(n+2))`
-/

namespace A127069.P18095488964034535600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183978 (2 * (n + 2))

end

end A127069.P18095488964034535600

namespace A127069

/-- `A183978(2*(n+2))` -/
def P18095488964034535600.Spec : Prop :=
  ∀ n, P18095488964034535600.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P15993362400285189315

`3*A007581(n+2)`
-/

namespace A127069.P15993362400285189315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007581 (n + 2)

end

end A127069.P15993362400285189315

namespace A127069

/-- `3*A007581(n+2)` -/
def P15993362400285189315.Spec : Prop :=
  ∀ n, P15993362400285189315.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P2568231767139143317

`3*A124303(n+3)`
-/

namespace A127069.P2568231767139143317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A124303 (n + 3)

end

end A127069.P2568231767139143317

namespace A127069

/-- `3*A124303(n+3)` -/
def P2568231767139143317.Spec : Prop :=
  ∀ n, P2568231767139143317.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P14018501410416614377

`A211525(2*(n+1))+1`
-/

namespace A127069.P14018501410416614377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (2 * (n + 1)) + 1

end

end A127069.P14018501410416614377

namespace A127069

/-- `A211525(2*(n+1))+1` -/
def P14018501410416614377.Spec : Prop :=
  ∀ n, P14018501410416614377.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P7552049058428082995

`2*A343176(n+1)-1`
-/

namespace A127069.P7552049058428082995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A343176 (n + 1) - 1

end

end A127069.P7552049058428082995

namespace A127069

/-- `2*A343176(n+1)-1` -/
def P7552049058428082995.Spec : Prop :=
  ∀ n, P7552049058428082995.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P17064186324816415867

`3*(A251743(n+1)+2)`
-/

namespace A127069.P17064186324816415867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A251743 (n + 1) + 2)

end

end A127069.P17064186324816415867

namespace A127069

/-- `3*(A251743(n+1)+2)` -/
def P17064186324816415867.Spec : Prop :=
  ∀ n, P17064186324816415867.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P6211292978830920442

`3*A329908(2*(n+2))`
-/

namespace A127069.P6211292978830920442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A329908 (2 * (n + 2))

end

end A127069.P6211292978830920442

namespace A127069

/-- `3*A329908(2*(n+2))` -/
def P6211292978830920442.Spec : Prop :=
  ∀ n, P6211292978830920442.a n = A127069 (n + 2)

end A127069

/-! ## A127069.P15684407585592387292

`A085601(n+1)+2^(n+1)`
-/

namespace A127069.P15684407585592387292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085601 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A127069.P15684407585592387292

namespace A127069

/-- `A085601(n+1)+2^(n+1)` -/
def P15684407585592387292.Spec : Prop :=
  ∀ n, P15684407585592387292.a n = A127069 (n + 2)

theorem P15684407585592387292.correct : P15684407585592387292.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A127069, Nat.add_sub_cancel, A127069.P15684407585592387292.a, A127069.P11111184606818111237.a, A085601, A085601.P6300401134310498953.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A127069, Nat.add_sub_cancel, A127069.P15684407585592387292.a, A127069.P11111184606818111237.a, A085601, A085601.P6300401134310498953.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A127069

/-! ## A127069.P3585377961327791597

`A188129(n)+A002042(n)`
-/

namespace A127069.P3585377961327791597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188129 n + A002042 n

end

end A127069.P3585377961327791597

namespace A127069

/-- `A188129(n)+A002042(n)` -/
def P3585377961327791597.Spec : Prop :=
  ∀ n, P3585377961327791597.a n = A127069 (n + 2)

theorem P3585377961327791597.correct : P3585377961327791597.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A127069, Nat.add_sub_cancel, A127069.P3585377961327791597.a, A127069.P11111184606818111237.a, A002042, A002042.P9984433680327997589.a, A188129, A188129.P13771057010733258810.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A127069, Nat.add_sub_cancel, A127069.P3585377961327791597.a, A127069.P11111184606818111237.a, A002042, A002042.P9984433680327997589.a, A188129, A188129.P13771057010733258810.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A127069

/-! ## A127069.P2541257857679870084

`A171472(n)+A083686(n)`
-/

namespace A127069.P2541257857679870084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171472 n + A083686 n

end

end A127069.P2541257857679870084

namespace A127069

/-- `A171472(n)+A083686(n)` -/
def P2541257857679870084.Spec : Prop :=
  ∀ n, P2541257857679870084.a n = A127069 (n + 2)

end A127069

/-!
# A127070: Define an array by d(m, 0) = 1, d(m, 1) = m; d(m, k) = (m - k + 1) d(m+1, k-1) - (k-1) (m+1) d(m+2, k-2). Sequence gives d(4,n).

The programs for A127070, there is no canonical definition to state claims against.
-/

/-! ## A127070.P9069806030689230977

`A105937(n+6+∑[n+4])`
-/

namespace A127070.P9069806030689230977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105937 (n + 6 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127070.P9069806030689230977

/-!
# A127071: Quotients (3^p - 2^p - 1)/p, where p = prime(n).

The programs for A127071, the canonical program `A127071.P2190993507083327129` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127071 has offset 1).

The definition of A127071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127071.P2190993507083327129

`(3^A000040(n+1)-2^A000040(n+1)-1)/A000040(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127071

/-- `(3^A000040(n+1)-2^A000040(n+1)-1)/A000040(n+1)` -/
def P2190993507083327129.Spec : Prop :=
  ∀ n, P2190993507083327129.a n = (A127071 (n + 1) : ℚ)

end A127071

/-! ## A127071.P15107103430817752106

`A191694(p?[comp[n²]])`
-/

namespace A127071.P15107103430817752106
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191694 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A127071.P15107103430817752106

namespace A127071

/-- `A191694(p?[comp[n²]])` -/
def P15107103430817752106.Spec : Prop :=
  ∀ n, P15107103430817752106.a n = A127071 (n + 1)

end A127071

/-! ## A127071.P13761950327258531948

`A065178(root(p?[xor(1, n)+1]^3, 3))`
-/

namespace A127071.P13761950327258531948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065178 (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 3 : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A127071.P13761950327258531948

namespace A127071

/-- `A065178(root(p?[xor(1, n)+1]^3, 3))` -/
def P13761950327258531948.Spec : Prop :=
  ∀ n, P13761950327258531948.a n = A127071 (n + 1)

end A127071

/-! ## A127071.P9571019556114266806

`A065178(eq[2, ∏{e}[n+1, #+1]]+1)`
-/

namespace A127071.P9571019556114266806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065178 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A127071.P9571019556114266806

namespace A127071

/-- `A065178(eq[2, ∏{e}[n+1, #+1]]+1)` -/
def P9571019556114266806.Spec : Prop :=
  ∀ n, P9571019556114266806.a n = A127071 (n + 1)

end A127071

/-! ## A127071.P2022235111871345587

`A065178(Δ[A007504(n)])`
-/

namespace A127071.P2022235111871345587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065178 (f1 (n + 1) - f1 n).toNat

end

end A127071.P2022235111871345587

namespace A127071

/-- `A065178(Δ[A007504(n)])` -/
def P2022235111871345587.Spec : Prop :=
  ∀ n, P2022235111871345587.a n = A127071 (n + 1)

end A127071

/-!
# A127072: Numbers k that divide 3^k - 2^k - 1.

The programs for A127072, the canonical program `A127072.P15848589408681114756` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127072 has offset 1).

The definition of A127072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127072.P15981165956426788331

`eq[A062173(n+1), A094918(n+1)]+1`
-/

namespace A127072.P15981165956426788331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A127072.P15981165956426788331

namespace A127072

/-- `eq[A062173(n+1), A094918(n+1)]+1` -/
def P15981165956426788331.Spec : Prop :=
  ∀ n, (P15981165956426788331.a n : ℤ) = A127072 (n + 1)

end A127072

/-! ## A127072.P15848589408681114756

`eq[A066601(n+1), A096196(n+1)]+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A127072

/-- `eq[A066601(n+1), A096196(n+1)]+1` -/
def P15848589408681114756.Spec : Prop :=
  ∀ n, (P15848589408681114756.a n : ℤ) = A127072 (n + 1)

theorem P15848589408681114756.correct : P15848589408681114756.Spec := by
  intro n
  simp only [A127072, Nat.add_sub_cancel]

end A127072

/-! ## A127072.P10123971935453639127

`A199343(eq[A066601(n+1), A096196(n+1)])`
-/

namespace A127072.P10123971935453639127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199343 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A127072.P10123971935453639127

namespace A127072

/-- `A199343(eq[A066601(n+1), A096196(n+1)])` -/
def P10123971935453639127.Spec : Prop :=
  ∀ n, P10123971935453639127.a n = A127072 (n + 1)

end A127072

/-! ## A127072.P16097373961281352255

`record[gcd(n, A083321(n))]`
-/

namespace A127072.P16097373961281352255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A083321 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127072.P16097373961281352255

namespace A127072

/-- `record[gcd(n, A083321(n))]` -/
def P16097373961281352255.Spec : Prop :=
  ∀ n, (P16097373961281352255.a n : ℤ) = A127072 (n + 1)

end A127072

/-! ## A127072.P17196950475759071501

`record[gcd(n+1, A053152(n+1))]`
-/

namespace A127072.P17196950475759071501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A053152 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127072.P17196950475759071501

namespace A127072

/-- `record[gcd(n+1, A053152(n+1))]` -/
def P17196950475759071501.Spec : Prop :=
  ∀ n, (P17196950475759071501.a n : ℤ) = A127072 (n + 1)

end A127072

/-!
# A127073: Composite numbers k that divide 3^k - 2^k - 1, excluding powers of 2, 3 and 7.

The programs for A127073, there is no canonical definition to state claims against.
-/

/-! ## A127073.P6911030390985173396

`filter[A127072(n+1), A143731(#)]`
-/

namespace A127073.P6911030390985173396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A127073.P6911030390985173396

/-!
# A127074: Numbers k such that k^2 divides 3^k - 2^k - 1.

The programs for A127074, there is no canonical definition to state claims against.
-/

/-! ## A127074.P7747920486378318427

`∑[A134423(A192425(n))]`
-/

namespace A127074.P7747920486378318427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134423 (A192425 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A127074.P7747920486378318427

/-! ## A127074.P7908864333911917504

`A329366(A249156(n+2))`
-/

namespace A127074.P7908864333911917504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329366 (A249156 (n + 2)).toNat

end

end A127074.P7908864333911917504

/-!
# A127075: a(1)=1. a(n) = a(n-1) + (sum of the earlier terms {among terms a(1) through a(n-1)} which are coprime to n).

The programs for A127075, there is no canonical definition to state claims against.
-/

/-! ## A127075.P1265609664897970259

`A070000(A286848(n+2))`
-/

namespace A127075.P1265609664897970259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070000 (A286848 (n + 2)).toNat

end

end A127075.P1265609664897970259

/-! ## A127075.P17218635644623884638

`A350799(A073491(2^n+1)-1)`
-/

namespace A127075.P17218635644623884638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350799 (A073491 (2 ^ n + 1) - 1).toNat

end

end A127075.P17218635644623884638

/-! ## A127075.P14186543531312137480

`A026596(n)+A003002(A013558(n))`
-/

namespace A127075.P14186543531312137480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026596 n + A003002 (A013558 n).toNat

end

end A127075.P14186543531312137480

/-!
# A127079: Number of ways to represent prime(n) as a+b with a >= b > 0 and a^2+b^2 prime.

The programs for A127079, there is no canonical definition to state claims against.
-/

/-! ## A127079.P3836389935284958512

`A036468(A130290(n+1))`
-/

namespace A127079.P3836389935284958512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036468 (A130290 (n + 1)).toNat

end

end A127079.P3836389935284958512

/-! ## A127079.P7520402477829032419

`A281543(A000040(n+1))`
-/

namespace A127079.P7520402477829032419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (A000040 (n + 1)).toNat

end

end A127079.P7520402477829032419

/-! ## A127079.P5219134481593236583

`A281543(A008578(n+2))`
-/

namespace A127079.P5219134481593236583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (A008578 (n + 2)).toNat

end

end A127079.P5219134481593236583

/-! ## A127079.P1821370109632223601

`A281543(A175787(n+2))`
-/

namespace A127079.P1821370109632223601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (A175787 (n + 2)).toNat

end

end A127079.P1821370109632223601

/-! ## A127079.P12706853533490561

`A281543(A182986(n+2))`
-/

namespace A127079.P12706853533490561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (A182986 (n + 2)).toNat

end

end A127079.P12706853533490561

/-! ## A127079.P12640364731980824777

`A281543(record[A006530(n+2)])`
-/

namespace A127079.P12640364731980824777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127079.P12640364731980824777

/-! ## A127079.P14057548129699741353

`A281543(record[A014963(n+2)])`
-/

namespace A127079.P14057548129699741353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127079.P14057548129699741353

/-! ## A127079.P7548860952041488099

`A281543(record[A020639(n+2)])`
-/

namespace A127079.P7548860952041488099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A127079.P7548860952041488099

/-! ## A127079.P7290599439270425889

`A281543(A138636(n+1)-A001750(n+1))`
-/

namespace A127079.P7290599439270425889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (A138636 (n + 1) - A001750 (n + 1)).toNat

end

end A127079.P7290599439270425889

/-! ## A127079.P11450017516214478847

`A281543(A272470(n+1)-A138636(n+1))`
-/

namespace A127079.P11450017516214478847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281543 (A272470 (n + 1) - A138636 (n + 1)).toNat

end

end A127079.P11450017516214478847

/-!
# A127082: Triangle, read by rows, where the g.f. of column k, C_k(x), is defined by the recursion: C_k(x) = ( 1 + Sum_{n>=1} x^n*C_{n-1+k}(x) )^(k+1).

The programs for A127082, there is no canonical definition to state claims against.
-/

/-! ## A127082.P14877708904456755705

`A325580(n)+A217155(A325580(n))`
-/

namespace A127082.P14877708904456755705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325580 n + A217155 (A325580 n).toNat

end

end A127082.P14877708904456755705

/-!
# A127083: Column 0 and row sums of triangle A127082.

The programs for A127083, there is no canonical definition to state claims against.
-/

/-! ## A127083.P3769729189146170595

`A127082(∑[n])`
-/

namespace A127083.P3769729189146170595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127083.P3769729189146170595

/-! ## A127083.P3018752657859215265

`gcd(A000038(n), A127082(A000217(n)))`
-/

namespace A127083.P3018752657859215265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A127082 (A000217 n).toNat)

end

end A127083.P3018752657859215265

/-! ## A127083.P3936817765600106001

`lcm(A020985(n), A127082(A000217(n)))`
-/

namespace A127083.P3936817765600106001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A127082 (A000217 n).toNat)

end

end A127083.P3936817765600106001

/-! ## A127083.P15881858862940617066

`or(A000007(n), A127082(A000217(n)))`
-/

namespace A127083.P15881858862940617066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A127082 (A000217 n).toNat)

end

end A127083.P15881858862940617066

/-! ## A127083.P11165466189022644360

`A059841(2*n)*A127082(A000217(n))`
-/

namespace A127083.P11165466189022644360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A127082 (A000217 n).toNat

end

end A127083.P11165466189022644360

/-! ## A127083.P12314970694131943748

`A127082(A000217(n))+A000007(2*n+1)`
-/

namespace A127083.P12314970694131943748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 (A000217 n).toNat + A000007 (2 * n + 1)

end

end A127083.P12314970694131943748

/-!
# A127084: Column 1 of triangle A127082.

The programs for A127084, there is no canonical definition to state claims against.
-/

/-! ## A127084.P15998670310992437150

`A127082(∑[n+1]+1)`
-/

namespace A127084.P15998670310992437150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A127084.P15998670310992437150

/-! ## A127084.P8830553799002563199

`record[A127082(A286237(n+1))]`
-/

namespace A127084.P8830553799002563199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 (A286237 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127084.P8830553799002563199

/-! ## A127084.P1777017481275726928

`record[A127082(n*A010054(n)+1)]`
-/

namespace A127084.P1777017481275726928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 ((n : ℤ) * A010054 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127084.P1777017481275726928

/-! ## A127084.P7221902133451411123

`record[A127082(A127094(n+1)+n+1)]`
-/

namespace A127084.P7221902133451411123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 (A127094 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127084.P7221902133451411123

/-! ## A127084.P7495114289217591221

`record[A127082(A110656(n²))]`
-/

namespace A127084.P7495114289217591221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 (A110656 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127084.P7495114289217591221

/-!
# A127085: Column 2 of triangle A127082.

The programs for A127085, there is no canonical definition to state claims against.
-/

/-! ## A127085.P13407566965910198625

`A127082(∑[n+2]+3)`
-/

namespace A127085.P13407566965910198625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A127085.P13407566965910198625

/-! ## A127085.P292854378444050240

`record[A127082((n+1)*A010054(char[1]+n)+1)]`
-/

namespace A127085.P292854378444050240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 ((n + 1 : ℤ) * A010054 ((if ∃ j, f2 j = n then 1 else 0) + n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127085.P292854378444050240

/-!
# A127086: Column 3 of triangle A127082.

The programs for A127086, there is no canonical definition to state claims against.
-/

/-! ## A127086.P666642884001238551

`A127082(∑[n+2]+n+7)`
-/

namespace A127086.P666642884001238551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 7))

end

end A127086.P666642884001238551

/-! ## A127086.P7455166983597919839

`A033999(2*n)*A127082(A167614(n+2))`
-/

namespace A127086.P7455166983597919839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A127082 (A167614 (n + 2)).toNat

end

end A127086.P7455166983597919839

/-!
# A127087: Convolution square-root of column 1 (A127084) of triangle A127082.

The programs for A127087, there is no canonical definition to state claims against.
-/

/-! ## A127087.P11385503671260716830

`A000007(n)+Δ[A127083(n)]`
-/

namespace A127087.P11385503671260716830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A127087.P11385503671260716830

/-! ## A127087.P12339114976459132817

`A127083(A028310(n)+1)-A127083(n)`
-/

namespace A127087.P12339114976459132817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127083 (A028310 n + 1).toNat - A127083 n

end

end A127087.P12339114976459132817

/-! ## A127087.P16745739967926086135

`Δ[A127083(n)%A127084(n+1)]`
-/

namespace A127087.P16745739967926086135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127083 n) (A127084 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127087.P16745739967926086135

/-! ## A127087.P16560340804680139333

`Δ[A127083(n)%A127070(n)]`
-/

namespace A127087.P16560340804680139333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127083 n) (A127070 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127087.P16560340804680139333

/-! ## A127087.P7204573767757492958

`A000007(n)+Δ[A127082(A000217(n))]`
-/

namespace A127087.P7204573767757492958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A127087.P7204573767757492958

/-! ## A127087.P6070362317088069573

`Δ[A178334(n)+A127082(A000217(n))]`
-/

namespace A127087.P6070362317088069573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A127082 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127087.P6070362317088069573

/-! ## A127087.P14701608341900530359

`Δ[A127082(A000217(n))%A002110(n)]`
-/

namespace A127087.P14701608341900530359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127082 (A000217 n).toNat) (A002110 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A127087.P14701608341900530359

/-!
# A127088: Convolution cube-root of column 2 (A127085) of triangle A127082.

The programs for A127088, there is no canonical definition to state claims against.
-/

/-! ## A127088.P6787272542313743916

`A127087(n+1)-A127084(n+1)%A127087(n+1)`
-/

namespace A127088.P6787272542313743916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127087 (n + 1) - Int.tmod (A127084 (n + 1)) (A127087 (n + 1))

end

end A127088.P6787272542313743916

/-! ## A127088.P9599758159292146769

`A289626(A151897(∑[n]))`
-/

namespace A127088.P9599758159292146769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289626 (A151897 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A127088.P9599758159292146769

/-!
# A127089: Convolution 4th root of column 3 (A127086) of triangle A127082.

The programs for A127089, there is no canonical definition to state claims against.
-/

/-! ## A127089.P14260660560523492048

`A156077(A000712(∑[n]))`
-/

namespace A127089.P14260660560523492048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A000712 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A127089.P14260660560523492048

/-!
# A127090: Central terms of triangle A127082; a(n) = A127082(2*n,n).

The programs for A127090, there is no canonical definition to state claims against.
-/

/-! ## A127090.P17864205399078375162

`(n+1)*A127091(n)`
-/

namespace A127090.P17864205399078375162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127091 n

end

end A127090.P17864205399078375162

/-! ## A127090.P5128952904051790816

`A127091(n)*A330393(2*n)`
-/

namespace A127090.P5128952904051790816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127091 n * A330393 (2 * n)

end

end A127090.P5128952904051790816

/-! ## A127090.P17955950016678456836

`A127091(n)*A127094(A000124(n))`
-/

namespace A127090.P17955950016678456836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127091 n * A127094 (A000124 n).toNat

end

end A127090.P17955950016678456836

/-! ## A127090.P8577697972850964092

`A127082(∑[4*n])`
-/

namespace A127090.P8577697972850964092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127082 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A127090.P8577697972850964092

/-! ## A127090.P16078820877583032756

`or(A000007(n), A127082(A046092(n)))`
-/

namespace A127090.P16078820877583032756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A127082 (A046092 n).toNat)

end

end A127090.P16078820877583032756

/-!
# A127091: Derived from central terms (A127090) of triangle A127082; a(n) = A127090(n)/(n+1).

The programs for A127091, there is no canonical definition to state claims against.
-/

/-! ## A127091.P13486677629152959310

`A127090(n)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A127091.P13486677629152959310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127090 n : ℚ) / (n + 1 : ℚ)

end

end A127091.P13486677629152959310

/-! ## A127091.P16588114932284464390

`A127090(n)/A127134(n)*A127135(n)`
-/

namespace A127091.P16588114932284464390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127090 n : ℚ) / (A127134 n : ℚ) * (A127135 n : ℚ)

end

end A127091.P16588114932284464390

/-! ## A127091.P8272822729304028969

`A127082(∑[4*n])/(n+1)`
-/

namespace A127091.P8272822729304028969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127082 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A127091.P8272822729304028969

/-! ## A127091.P2174841692861539952

`or(A000007(n), A127082(A046092(n)))/(n+1)`
-/

namespace A127091.P2174841692861539952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor (A000007 n) (A127082 (A046092 n).toNat) : ℚ) / (n + 1 : ℚ)

end

end A127091.P2174841692861539952

/-! ## A127091.P11118633947514547474

`A124890(n)/A124889(n)*A127090(n)`
-/

namespace A127091.P11118633947514547474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124890 n : ℚ) / (A124889 n : ℚ) * (A127090 n : ℚ)

end

end A127091.P11118633947514547474

/-!
# A127092: Numbers k such that k^2 divides 11^k - 1.

The programs for A127092, there is no canonical definition to state claims against.
-/

/-! ## A127092.P2228764048070271520

`∩[A068383(n+1), A177911(n+1)]`
-/

namespace A127092.P2228764048070271520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127092.P2228764048070271520

/-! ## A127092.P15260287308663266560

`∩[A068383(n+1), A078779(n+1)]`
-/

namespace A127092.P15260287308663266560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078779 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127092.P15260287308663266560

/-! ## A127092.P9945406833363796953

`record[A000026(A068383(n+1))]`
-/

namespace A127092.P9945406833363796953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A068383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A127092.P9945406833363796953

/-! ## A127092.P1180660191793162970

`A177911(lt[A334721(n+1), A027193(3*n+2)])`
-/

namespace A127092.P1180660191793162970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177911 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A127092.P1180660191793162970

/-! ## A127092.P11480733661676385265

`∩[A124455(n+1), A177911(n+1)]`
-/

namespace A127092.P11480733661676385265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A127092.P11480733661676385265

/-!
# A127093: Triangle read by rows: T(n,k)=k if k is a divisor of n; otherwise, T(n,k)=0 (1 <= k <= n).

The programs for A127093, the canonical program `A127093.P1089623250187861217` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127093 has offset 1).

The definition of A127093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A127093.P1089623250187861217

`row(n)%(col(n)+1)-(row(n)+1)%(col(n)+1)+1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A127093

/-- `row(n)%(col(n)+1)-(row(n)+1)%(col(n)+1)+1` -/
def P1089623250187861217.Spec : Prop :=
  ∀ n, P1089623250187861217.a n = A127093 (n + 1)

theorem P1089623250187861217.correct : P1089623250187861217.Spec := by
  intro n
  simp only [A127093, Nat.add_sub_cancel]

end A127093

/-! ## A127093.P9139299427570481408

`sqrt(A134575(n+1))`
-/

namespace A127093.P9139299427570481408
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A134575 (n + 1) : ℝ)

end

end A127093.P9139299427570481408

namespace A127093

/-- `sqrt(A134575(n+1))` -/
def P9139299427570481408.Spec : Prop :=
  ∀ n, P9139299427570481408.a n = (A127093 (n + 1) : ℝ)

end A127093

/-! ## A127093.P9015334013408592758

`A176079(n+1)+1`
-/

namespace A127093.P9015334013408592758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176079 (n + 1) + 1

end

end A127093.P9015334013408592758

namespace A127093

/-- `A176079(n+1)+1` -/
def P9015334013408592758.Spec : Prop :=
  ∀ n, P9015334013408592758.a n = A127093 (n + 1)

theorem P9015334013408592758.correct : P9015334013408592758.Spec := by
  intro n
  simp only [A127093, Nat.add_sub_cancel, A127093.P9015334013408592758.a, A127093.P1089623250187861217.a, A176079, A176079.P15611810976206123960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127093

/-! ## A127093.P10904805558060527572

`ceil(A134560(n+1)/2)`
-/

namespace A127093.P10904805558060527572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134560 (n + 1) : ℚ) / 2⌉

end

end A127093.P10904805558060527572

namespace A127093

/-- `ceil(A134560(n+1)/2)` -/
def P10904805558060527572.Spec : Prop :=
  ∀ n, P10904805558060527572.a n = A127093 (n + 1)

end A127093

/-! ## A127093.P7915868841560427913

`ceil(A127651(n+1)/(comp[∑[n]]-n))`
-/

namespace A127093.P7915868841560427913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A127651 (n + 1) : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)⌉

end

end A127093.P7915868841560427913

namespace A127093

/-- `ceil(A127651(n+1)/(comp[∑[n]]-n))` -/
def P7915868841560427913.Spec : Prop :=
  ∀ n, P7915868841560427913.a n = A127093 (n + 1)

end A127093

/-! ## A127093.P14847409256382623461

`A001057(A134560(n+1))`
-/

namespace A127093.P14847409256382623461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A134560 (n + 1)).toNat

end

end A127093.P14847409256382623461

namespace A127093

/-- `A001057(A134560(n+1))` -/
def P14847409256382623461.Spec : Prop :=
  ∀ n, P14847409256382623461.a n = A127093 (n + 1)

end A127093

/-! ## A127093.P12090177176404596966

`A230980(A127639(n+1))`
-/

namespace A127093.P12090177176404596966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A127639 (n + 1)).toNat

end

end A127093.P12090177176404596966

namespace A127093

/-- `A230980(A127639(n+1))` -/
def P12090177176404596966.Spec : Prop :=
  ∀ n, P12090177176404596966.a n = A127093 (n + 1)

end A127093

/-! ## A127093.P276674595604552088

`A191910(n+1)+A023532(n)`
-/

namespace A127093.P276674595604552088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191910 (n + 1) + A023532 n

end

end A127093.P276674595604552088

namespace A127093

/-- `A191910(n+1)+A023532(n)` -/
def P276674595604552088.Spec : Prop :=
  ∀ n, P276674595604552088.a n = A127093 (n + 1)

end A127093

/-! ## A127093.P13692594820261236378

`gcd(A103516(n), A176891(n+1))`
-/

namespace A127093.P13692594820261236378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103516 n) (A176891 (n + 1))

end

end A127093.P13692594820261236378

namespace A127093

/-- `gcd(A103516(n), A176891(n+1))` -/
def P13692594820261236378.Spec : Prop :=
  ∀ n, (P13692594820261236378.a n : ℤ) = A127093 (n + 1)

end A127093

/-! ## A127093.P12711265216780053206

`and(A130888(n+1), A134199(n))`
-/

namespace A127093.P12711265216780053206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A130888 (n + 1)) (A134199 n)

end

end A127093.P12711265216780053206

namespace A127093

/-- `and(A130888(n+1), A134199(n))` -/
def P12711265216780053206.Spec : Prop :=
  ∀ n, P12711265216780053206.a n = A127093 (n + 1)

end A127093

/-! ## A127093.P6906678511880271433

`A141846(n+1)+A054522(n+1)`
-/

namespace A127093.P6906678511880271433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141846 (n + 1) + A054522 (n + 1)

end

end A127093.P6906678511880271433

namespace A127093

/-- `A141846(n+1)+A054522(n+1)` -/
def P6906678511880271433.Spec : Prop :=
  ∀ n, P6906678511880271433.a n = A127093 (n + 1)

theorem P6906678511880271433.correct : P6906678511880271433.Spec := by
  intro n
  simp only [A127093, Nat.add_sub_cancel, A127093.P6906678511880271433.a, A127093.P1089623250187861217.a, A054522, A054522.P13001746357644342535.a, A141846, A141846.P12023117412264450593.f1, A141846.P12023117412264450593.a, A062790, A062790.P5415624989759604668.a, A000010, A000010.P4673923239450215316.a, A007431, A007431.P16508403139497409065.f1, A007431.P16508403139497409065.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127093

/-! ## A127093.P14803241960179372926

`A002260(n+1)-A173541(n+1)`
-/

namespace A127093.P14803241960179372926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - A173541 (n + 1)

end

end A127093.P14803241960179372926

namespace A127093

/-- `A002260(n+1)-A173541(n+1)` -/
def P14803241960179372926.Spec : Prop :=
  ∀ n, P14803241960179372926.a n = A127093 (n + 1)

theorem P14803241960179372926.correct : P14803241960179372926.Spec := by
  intro n
  simp only [A127093, Nat.add_sub_cancel, A127093.P14803241960179372926.a, A127093.P1089623250187861217.a, A002260, A002260.P9170571874073898642.a, A173541, A173541.P8603278970651018191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127093

/-! ## A127093.P6380194658901929810

`A002262(n)+1-A173541(n+1)`
-/

namespace A127093.P6380194658901929810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (1 - A173541 (n + 1))

end

end A127093.P6380194658901929810

namespace A127093

/-- `A002262(n)+1-A173541(n+1)` -/
def P6380194658901929810.Spec : Prop :=
  ∀ n, P6380194658901929810.a n = A127093 (n + 1)

theorem P6380194658901929810.correct : P6380194658901929810.Spec := by
  intro n
  simp only [A127093, Nat.add_sub_cancel, A127093.P6380194658901929810.a, A127093.P1089623250187861217.a, A002262, A002262.P17823619022233514403.a, A173541, A173541.P8603278970651018191.a, A002260, A002260.P9170571874073898642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A127093

/-! ## A127093.P13038877733290412816

`A191910(n+1)+1-A023531(n)`
-/

namespace A127093.P13038877733290412816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191910 (n + 1) + (1 - A023531 n)

end

end A127093.P13038877733290412816

namespace A127093

/-- `A191910(n+1)+1-A023531(n)` -/
def P13038877733290412816.Spec : Prop :=
  ∀ n, P13038877733290412816.a n = A127093 (n + 1)

theorem P13038877733290412816.correct : P13038877733290412816.Spec := by
  intro n
  simp only [A127093, Nat.add_sub_cancel, A127093.P13038877733290412816.a, A127093.P1089623250187861217.a, A023531, A023531.P13036811505051547859.a, A191910, A191910.P11685670682958930902.a, A010054, A010054.P18347828677204923252.a, A005369, A005369.P10796159359873341658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A127093

/-! ## A127093.P1206485591772000717

`A002260(n+1)*A051731(n+1)`
-/

namespace A127093.P1206485591772000717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A051731 (n + 1)

end

end A127093.P1206485591772000717

namespace A127093

/-- `A002260(n+1)*A051731(n+1)` -/
def P1206485591772000717.Spec : Prop :=
  ∀ n, P1206485591772000717.a n = A127093 (n + 1)

end A127093

/-! ## A127093.P8833924302086591308

`(A002262(n)+1)*A051731(n+1)`
-/

namespace A127093.P8833924302086591308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A051731 (n + 1)

end

end A127093.P8833924302086591308

namespace A127093

/-- `(A002262(n)+1)*A051731(n+1)` -/
def P8833924302086591308.Spec : Prop :=
  ∀ n, P8833924302086591308.a n = A127093 (n + 1)

end A127093

/-! ## A127093.P13621342569654070572

`A050873(n+1)*A051731(n+1)`
-/

namespace A127093.P13621342569654070572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A051731 (n + 1)

end

end A127093.P13621342569654070572

namespace A127093

/-- `A050873(n+1)*A051731(n+1)` -/
def P13621342569654070572.Spec : Prop :=
  ∀ n, P13621342569654070572.a n = A127093 (n + 1)

end A127093

/-! ## A127093.P15901432947316542092

`A051731(n+1)*A123275(n+1)`
-/

namespace A127093.P15901432947316542092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A123275 (n + 1)

end

end A127093.P15901432947316542092

namespace A127093

/-- `A051731(n+1)*A123275(n+1)` -/
def P15901432947316542092.Spec : Prop :=
  ∀ n, P15901432947316542092.a n = A127093 (n + 1)

end A127093

/-! ## A127093.P8613362886767582776

`A143111(n+1)*A143151(n+1)`
-/

namespace A127093.P8613362886767582776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143111 (n + 1) * A143151 (n + 1)

end

end A127093.P8613362886767582776

namespace A127093

/-- `A143111(n+1)*A143151(n+1)` -/
def P8613362886767582776.Spec : Prop :=
  ∀ n, P8613362886767582776.a n = A127093 (n + 1)

end A127093

/-! ## A127093.P13333761866268646796

`A051731(n+1)*A334230(n+1)`
-/

namespace A127093.P13333761866268646796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A334230 (n + 1)

end

end A127093.P13333761866268646796

namespace A127093

/-- `A051731(n+1)*A334230(n+1)` -/
def P13333761866268646796.Spec : Prop :=
  ∀ n, P13333761866268646796.a n = A127093 (n + 1)

end A127093

/-!
# A127094: Triangle, reversal of A127093.

The programs for A127094, the canonical program `A127094.P8507406497036937056` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127094 has offset 1).

The definition of A127094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127094.P9067295128634649215

`A127093(∑[char[∑[n]]]²-n)`
-/

namespace A127094.P9067295128634649215
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A127094.P9067295128634649215

namespace A127094

/-- `A127093(∑[char[∑[n]]]²-n)` -/
def P9067295128634649215.Spec : Prop :=
  ∀ n, P9067295128634649215.a n = A127094 (n + 1)

end A127094

/-! ## A127094.P16931477209301874224

`(C(comp[∑[n]]-n, 2)-n)*A113998(n+1)`
-/

namespace A127094.P16931477209301874224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A113998 (n + 1)

end

end A127094.P16931477209301874224

namespace A127094

/-- `(C(comp[∑[n]]-n, 2)-n)*A113998(n+1)` -/
def P16931477209301874224.Spec : Prop :=
  ∀ n, P16931477209301874224.a n = A127094 (n + 1)

end A127094

/-! ## A127094.P8507406497036937056

`A004736(n+1)*A113998(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A127094

/-- `A004736(n+1)*A113998(n+1)` -/
def P8507406497036937056.Spec : Prop :=
  ∀ n, P8507406497036937056.a n = A127094 (n + 1)

theorem P8507406497036937056.correct : P8507406497036937056.Spec := by
  intro n
  simp only [A127094, Nat.add_sub_cancel]

end A127094

/-! ## A127094.P15338844550883239254

`A113998(n+1)*A138530(n+1)`
-/

namespace A127094.P15338844550883239254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113998 (n + 1) * A138530 (n + 1)

end

end A127094.P15338844550883239254

namespace A127094

/-- `A113998(n+1)*A138530(n+1)` -/
def P15338844550883239254.Spec : Prop :=
  ∀ n, P15338844550883239254.a n = A127094 (n + 1)

end A127094

/-! ## A127094.P4903609632174206880

`A113998(n+1)*A234575(n+1)`
-/

namespace A127094.P4903609632174206880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113998 (n + 1) * A234575 (n + 1)

end

end A127094.P4903609632174206880

namespace A127094

/-- `A113998(n+1)*A234575(n+1)` -/
def P4903609632174206880.Spec : Prop :=
  ∀ n, P4903609632174206880.a n = A127094 (n + 1)

end A127094

/-! ## A127094.P17191493485790912329

`A113998(n+1)*A325027(n+1)`
-/

namespace A127094.P17191493485790912329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113998 (n + 1) * A325027 (n + 1)

end

end A127094.P17191493485790912329

namespace A127094

/-- `A113998(n+1)*A325027(n+1)` -/
def P17191493485790912329.Spec : Prop :=
  ∀ n, P17191493485790912329.a n = A127094 (n + 1)

end A127094

/-! ## A127094.P1191022380288201985

`A004736(n+1)/A286234(n+1)*A286236(n+1)`
-/

namespace A127094.P1191022380288201985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A286234 (n + 1) : ℚ) * (A286236 (n + 1) : ℚ)

end

end A127094.P1191022380288201985

namespace A127094

/-- `A004736(n+1)/A286234(n+1)*A286236(n+1)` -/
def P1191022380288201985.Spec : Prop :=
  ∀ n, P1191022380288201985.a n = (A127094 (n + 1) : ℚ)

end A127094

/-! ## A127094.P3193955125628672062

`A004736(n+1)/A286244(n+1)*A286246(n+1)`
-/

namespace A127094.P3193955125628672062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A286244 (n + 1) : ℚ) * (A286246 (n + 1) : ℚ)

end

end A127094.P3193955125628672062

namespace A127094

/-- `A004736(n+1)/A286244(n+1)*A286246(n+1)` -/
def P3193955125628672062.Spec : Prop :=
  ∀ n, P3193955125628672062.a n = (A127094 (n + 1) : ℚ)

end A127094

/-! ## A127094.P6103545454348618443

`A004736(n+1)²/A002024(n+1)*A127013(n+1)`
-/

namespace A127094.P6103545454348618443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) ^ 2 : ℚ) / (A002024 (n + 1) : ℚ) * (A127013 (n + 1) : ℚ)

end

end A127094.P6103545454348618443

namespace A127094

/-- `A004736(n+1)²/A002024(n+1)*A127013(n+1)` -/
def P6103545454348618443.Spec : Prop :=
  ∀ n, P6103545454348618443.a n = (A127094 (n + 1) : ℚ)

end A127094

/-! ## A127094.P6151149952568352359

`C(A004736(n+1), C(n, A051777(n+1)))`
-/

namespace A127094.P6151149952568352359
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004736 (n + 1)).toNat (Nat.choose n (A051777 (n + 1)).toNat)

end

end A127094.P6151149952568352359

namespace A127094

/-- `C(A004736(n+1), C(n, A051777(n+1)))` -/
def P6151149952568352359.Spec : Prop :=
  ∀ n, (P6151149952568352359.a n : ℤ) = A127094 (n + 1)

end A127094

/-! ## A127094.P16115954783731908268

`A112543(n+1)*A113998(n+1)`
-/

namespace A127094.P16115954783731908268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112543 (n + 1) * A113998 (n + 1)

end

end A127094.P16115954783731908268

namespace A127094

/-- `A112543(n+1)*A113998(n+1)` -/
def P16115954783731908268.Spec : Prop :=
  ∀ n, P16115954783731908268.a n = A127094 (n + 1)

end A127094

/-!
# A127096: Triangle T(n,m) = A000012*A127094 read by rows.

The programs for A127096, there is no canonical definition to state claims against.
-/

/-! ## A127096.P17482193215011419380

`gcd(A127895(n), A163352(A222060(n)))`
-/

namespace A127096.P17482193215011419380
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127895 n) (A163352 (A222060 n).toNat)

end

end A127096.P17482193215011419380

/-! ## A127096.P1728752213383755964

`A135223(n+1)^A048993(A326474(n))`
-/

namespace A127096.P1728752213383755964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135223 (n + 1) : ℚ) ^ (A048993 (A326474 n).toNat : ℤ)

end

end A127096.P1728752213383755964

/-! ## A127096.P12068472015032285162

`gcd(A003141(A029635(n)), A122177(n))`
-/

namespace A127096.P12068472015032285162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003141 (A029635 n).toNat) (A122177 n)

end

end A127096.P12068472015032285162

/-! ## A127096.P364872255483736485

`gcd(A004273(A324687(n)), A122432(n))`
-/

namespace A127096.P364872255483736485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004273 (A324687 n).toNat) (A122432 n)

end

end A127096.P364872255483736485

/-!
# A127097: Triangle T(n,m) = A127093 * A126988 read by rows.

The programs for A127097, the canonical program `A127097.P14652974731368292289` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A127097 has offset 1).

The definition of A127097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A127097.P14652974731368292289

`A001157(A010766(n+1))*A127093(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A127097

/-- `A001157(A010766(n+1))*A127093(n+1)` -/
def P14652974731368292289.Spec : Prop :=
  ∀ n, P14652974731368292289.a n = A127097 (n + 1)

theorem P14652974731368292289.correct : P14652974731368292289.Spec := by
  intro n
  simp only [A127097, Nat.add_sub_cancel]

end A127097

/-! ## A127097.P10093800134173827471

`A001157(A049834(n+1))*A127093(n+1)`
-/

namespace A127097.P10093800134173827471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A049834 (n + 1)).toNat * A127093 (n + 1)

end

end A127097.P10093800134173827471

namespace A127097

/-- `A001157(A049834(n+1))*A127093(n+1)` -/
def P10093800134173827471.Spec : Prop :=
  ∀ n, P10093800134173827471.a n = A127097 (n + 1)

end A127097

/-! ## A127097.P4757131917371965130

`A001157(A054531(n+1))*A127093(n+1)`
-/

namespace A127097.P4757131917371965130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A054531 (n + 1)).toNat * A127093 (n + 1)

end

end A127097.P4757131917371965130

namespace A127097

/-- `A001157(A054531(n+1))*A127093(n+1)` -/
def P4757131917371965130.Spec : Prop :=
  ∀ n, P4757131917371965130.a n = A127097 (n + 1)

end A127097

/-! ## A127097.P2706765674162896627

`A001157(A219158(n+1))*A127093(n+1)`
-/

namespace A127097.P2706765674162896627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A219158 (n + 1)).toNat * A127093 (n + 1)

end

end A127097.P2706765674162896627

namespace A127097

/-- `A001157(A219158(n+1))*A127093(n+1)` -/
def P2706765674162896627.Spec : Prop :=
  ∀ n, P2706765674162896627.a n = A127097 (n + 1)

end A127097

/-! ## A127097.P13669760770539701309

`A001157(A234575(n+1))*A127093(n+1)`
-/

namespace A127097.P13669760770539701309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A234575 (n + 1)).toNat * A127093 (n + 1)

end

end A127097.P13669760770539701309

namespace A127097

/-- `A001157(A234575(n+1))*A127093(n+1)` -/
def P13669760770539701309.Spec : Prop :=
  ∀ n, P13669760770539701309.a n = A127097 (n + 1)

end A127097

/-! ## A127097.P17919758257804519288

`A001157(A051537(n+1))*A127093(n+1)`
-/

namespace A127097.P17919758257804519288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A051537 (n + 1)).toNat * A127093 (n + 1)

end

end A127097.P17919758257804519288

namespace A127097

/-- `A001157(A051537(n+1))*A127093(n+1)` -/
def P17919758257804519288.Spec : Prop :=
  ∀ n, P17919758257804519288.a n = A127097 (n + 1)

end A127097

/-! ## A127097.P8174913205859899942

`A035316(A085383(n+1))*A127093(n+1)`
-/

namespace A127097.P8174913205859899942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A085383 (n + 1)).toNat * A127093 (n + 1)

end

end A127097.P8174913205859899942

namespace A127097

/-- `A035316(A085383(n+1))*A127093(n+1)` -/
def P8174913205859899942.Spec : Prop :=
  ∀ n, P8174913205859899942.a n = A127097 (n + 1)

end A127097

/-!
# A127099: Triangle T(n,m) = A126988 *A127093 read by rows.

The programs for A127099, there is no canonical definition to state claims against.
-/

/-! ## A127099.P11493497528885085857

`A127481(n+1)/A054526(n+1)`
-/

namespace A127099.P11493497528885085857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127481 (n + 1) : ℚ) / (A054526 (n + 1) : ℚ)

end

end A127099.P11493497528885085857

/-! ## A127099.P1195150864769911292

`A127481(n+1)/A372673(n+1)`
-/

namespace A127099.P1195150864769911292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127481 (n + 1) : ℚ) / (A372673 (n + 1) : ℚ)

end

end A127099.P1195150864769911292

/-! ## A127099.P14305690218539091073

`A000203(A049834(n+1))*A127093(n+1)`
-/

namespace A127099.P14305690218539091073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A049834 (n + 1)).toNat * A127093 (n + 1)

end

end A127099.P14305690218539091073

/-! ## A127099.P4616465879792083981

`A051731(n+1)*A334230(n+1)*A000203(A049834(n+1))`
-/

namespace A127099.P4616465879792083981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A334230 (n + 1) * A000203 (A049834 (n + 1)).toNat

end

end A127099.P4616465879792083981

/-! ## A127099.P7017303156948623920

`A127651(n+1)/A049840(n+1)*A000203(A049834(n+1))`
-/

namespace A127099.P7017303156948623920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127651 (n + 1) : ℚ) / (A049840 (n + 1) : ℚ) * (A000203 (A049834 (n + 1)).toNat : ℚ)

end

end A127099.P7017303156948623920

/-! ## A127099.P15920836194968339849

`A127651(n+1)/A123229(n+1)*A000203(A049834(n+1))`
-/

namespace A127099.P15920836194968339849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127651 (n + 1) : ℚ) / (A123229 (n + 1) : ℚ) * (A000203 (A049834 (n + 1)).toNat : ℚ)

end

end A127099.P15920836194968339849

/-! ## A127099.P3537666558231637775

`A127651(n+1)/(A003057(n+2)-1)*A000203(A049834(n+1))`
-/

namespace A127099.P3537666558231637775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127651 (n + 1) : ℚ) / (A003057 (n + 2) - 1 : ℚ) * (A000203 (A049834 (n + 1)).toNat : ℚ)

end

end A127099.P3537666558231637775

/-! ## A127099.P17815438795614249999

`(1-C(∑[char[∑[n]]], 2)+n)*A130540(n+1)`
-/

namespace A127099.P17815438795614249999
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A130540 (n + 1)

end

end A127099.P17815438795614249999

/-! ## A127099.P11596821993271464138

`A002260(n+1)*A130540(n+1)`
-/

namespace A127099.P11596821993271464138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A130540 (n + 1)

end

end A127099.P11596821993271464138

/-! ## A127099.P1422847534987137585

`(A002262(n)+1)*A130540(n+1)`
-/

namespace A127099.P1422847534987137585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A130540 (n + 1)

end

end A127099.P1422847534987137585

/-! ## A127099.P4452819954381514790

`A050873(n+1)*A130540(n+1)`
-/

namespace A127099.P4452819954381514790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A130540 (n + 1)

end

end A127099.P4452819954381514790

/-! ## A127099.P1760537455173500117

`A112544(n+1)*A130540(n+1)`
-/

namespace A127099.P1760537455173500117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112544 (n + 1) * A130540 (n + 1)

end

end A127099.P1760537455173500117

/-! ## A127099.P17865546364711570470

`A123275(n+1)*A130540(n+1)`
-/

namespace A127099.P17865546364711570470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1) * A130540 (n + 1)

end

end A127099.P17865546364711570470

/-! ## A127099.P9766668464508118520

`A127093(n+1)*A130540(n+1)`
-/

namespace A127099.P9766668464508118520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A130540 (n + 1)

end

end A127099.P9766668464508118520

/-! ## A127099.P8079681585231543900

`A130540(n+1)*A307662(n+1)`
-/

namespace A127099.P8079681585231543900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130540 (n + 1) * A307662 (n + 1)

end

end A127099.P8079681585231543900

/-! ## A127099.P7834432459096414500

`A130540(n+1)*A327856(n+1)`
-/

namespace A127099.P7834432459096414500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130540 (n + 1) * A327856 (n + 1)

end

end A127099.P7834432459096414500

/-! ## A127099.P8984785883388307231

`A130540(n+1)*A334230(n+1)`
-/

namespace A127099.P8984785883388307231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130540 (n + 1) * A334230 (n + 1)

end

end A127099.P8984785883388307231

/-! ## A127099.P993747320703124563

`A130540(n+1)*A357554(n+1)`
-/

namespace A127099.P993747320703124563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130540 (n + 1) * A357554 (n + 1)

end

end A127099.P993747320703124563

/-! ## A127099.P16296788407558727386

`A130540(n+1)*A391736(n+1)`
-/

namespace A127099.P16296788407558727386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130540 (n + 1) * A391736 (n + 1)

end

end A127099.P16296788407558727386

/-! ## A127099.P2168626456211000695

`(A025675(n+1)+1)*A130540(n+1)`
-/

namespace A127099.P2168626456211000695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025675 (n + 1) + 1) * A130540 (n + 1)

end

end A127099.P2168626456211000695

