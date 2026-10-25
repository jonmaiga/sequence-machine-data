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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A245500: Concatenation of multiplicities of prime divisors of highly composite numbers A002182(n).

The programs for A245500, there is no canonical definition to state claims against.
-/

/-! ## A245500.P2676167852129242948

`A037916(A002182(n+1))`
-/

namespace A245500.P2676167852129242948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A002182 (n + 1)).toNat

end

end A245500.P2676167852129242948

/-! ## A245500.P18027258134738261434

`A037916(sqrt(A046952(n+1)))`
-/

namespace A245500.P18027258134738261434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (SequenceMachineLib.roundAway (Real.sqrt (A046952 (n + 1) : ℝ))).toNat

end

end A245500.P18027258134738261434

/-! ## A245500.P15736428635951511122

`A037916(A135372(n+1)-1)`
-/

namespace A245500.P15736428635951511122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A135372 (n + 1) - 1).toNat

end

end A245500.P15736428635951511122

/-! ## A245500.P16061937126421408124

`A037916(root(A046952(n+1), 2))`
-/

namespace A245500.P16061937126421408124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (SequenceMachineLib.roundAway ((A046952 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A245500.P16061937126421408124

/-!
# A245501: Number A(n,k) of endofunctions f on [n] such that f^k(i) = f(i) for all i in [n]; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A245501, there is no canonical definition to state claims against.
-/

/-! ## A245501.P3133180831210129722

`A247026(n)-A000122(A244212(n+1))`
-/

namespace A245501.P3133180831210129722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 n - A000122 (A244212 (n + 1)).toNat

end

end A245501.P3133180831210129722

/-!
# A245502: Number of endofunctions f on [n] such that f^6(i) = f(i) for all i in [n].

The programs for A245502, there is no canonical definition to state claims against.
-/

/-! ## A245502.P11533557542925096458

`A245501(eq[6, A025581(n)])`
-/

namespace A245502.P11533557542925096458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245502.P11533557542925096458

/-! ## A245502.P12799696184221721316

`A245501(eq[7, A193739(n)])`
-/

namespace A245502.P12799696184221721316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245502.P12799696184221721316

/-! ## A245502.P17085697457342179604

`A245501(eq[13, A099375(n)])`
-/

namespace A245502.P17085697457342179604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245502.P17085697457342179604

/-! ## A245502.P7245594259922478543

`A245501(eq[64, A130321(n)])`
-/

namespace A245502.P7245594259922478543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245502.P7245594259922478543

/-! ## A245502.P14092752888710029501

`A245501(A000217(n+7)-7)`
-/

namespace A245502.P14092752888710029501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A000217 (n + 7) - 7).toNat

end

end A245502.P14092752888710029501

/-! ## A245502.P15498978805686377929

`A245501(eq[7, A004736(n+1)])`
-/

namespace A245502.P15498978805686377929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245502.P15498978805686377929

/-!
# A245503: Number of endofunctions f on [n] such that f^7(i) = f(i) for all i in [n].

The programs for A245503, there is no canonical definition to state claims against.
-/

/-! ## A245503.P17044683331568498513

`A245501(A155212(n+4))`
-/

namespace A245503.P17044683331568498513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A155212 (n + 4)).toNat

end

end A245503.P17044683331568498513

/-! ## A245503.P4529315639434547287

`A245501(eq[7, A025581(n)])`
-/

namespace A245503.P4529315639434547287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245503.P4529315639434547287

/-! ## A245503.P7964587057805041990

`A245501(eq[8, A193739(n)])`
-/

namespace A245503.P7964587057805041990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245503.P7964587057805041990

/-! ## A245503.P11393187680939304825

`A245501(eq[15, A099375(n)])`
-/

namespace A245503.P11393187680939304825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245503.P11393187680939304825

/-! ## A245503.P14353488721129312834

`A245501(eq[8, A004736(n+1)])`
-/

namespace A245503.P14353488721129312834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245503.P14353488721129312834

/-!
# A245504: Number of endofunctions f on [n] such that f^8(i) = f(i) for all i in [n].

The programs for A245504, there is no canonical definition to state claims against.
-/

/-! ## A245504.P4207966171521705673

`A245501(eq[3, A104975(n)])`
-/

namespace A245504.P4207966171521705673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245504.P4207966171521705673

/-! ## A245504.P9946819327279127673

`A245501(eq[8, A025581(n)])`
-/

namespace A245504.P9946819327279127673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245504.P9946819327279127673

/-! ## A245504.P7963055272124091051

`A245501(eq[9, A193739(n)])`
-/

namespace A245504.P7963055272124091051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245504.P7963055272124091051

/-! ## A245504.P10366927334845913562

`A245501(eq[8, A193592(n+1)])`
-/

namespace A245504.P10366927334845913562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245504.P10366927334845913562

/-! ## A245504.P8765178747586082181

`A245501(eq[9, A004736(n+1)])`
-/

namespace A245504.P8765178747586082181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245504.P8765178747586082181

/-!
# A245505: Number of endofunctions f on [n] such that f^9(i) = f(i) for all i in [n].

The programs for A245505, there is no canonical definition to state claims against.
-/

/-! ## A245505.P3267979178575180684

`A245501(A000217(n+10)-10)`
-/

namespace A245505.P3267979178575180684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A000217 (n + 10) - 10).toNat

end

end A245505.P3267979178575180684

/-!
# A245506: Number of endofunctions f on [n] such that f^10(i) = f(i) for all i in [n].

The programs for A245506, there is no canonical definition to state claims against.
-/

/-! ## A245506.P8072242399598277011

`A245501(A056000(n+7)-1)`
-/

namespace A245506.P8072242399598277011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A056000 (n + 7) - 1).toNat

end

end A245506.P8072242399598277011

/-! ## A245506.P8824003699333364938

`A245501(A000217(n+11)-11)`
-/

namespace A245506.P8824003699333364938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (A000217 (n + 11) - 11).toNat

end

end A245506.P8824003699333364938

/-!
# A245507: Number of endofunctions f on [n] such that f^n(i) = f(i) for all i in [n].

The programs for A245507, there is no canonical definition to state claims against.
-/

/-! ## A245507.P4552414381786638984

`A245501(∑[4*n])`
-/

namespace A245507.P4552414381786638984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245501 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245507.P4552414381786638984

/-! ## A245507.P9955142080070557781

`or(1, A245501(A046092(n)))`
-/

namespace A245507.P9955142080070557781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A245501 (A046092 n).toNat)

end

end A245507.P9955142080070557781

/-! ## A245507.P8289954193401014590

`or(1, A245501(A106232(n+1)))`
-/

namespace A245507.P8289954193401014590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A245501 (A106232 (n + 1)).toNat)

end

end A245507.P8289954193401014590

/-! ## A245507.P2760328354207200833

`A245501(A046092(n))%A000949(n+2)`
-/

namespace A245507.P2760328354207200833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245501 (A046092 n).toNat) (A000949 (n + 2))

end

end A245507.P2760328354207200833

/-! ## A245507.P4267053543905325582

`A007318(C(2, n))*A245501(A046092(n))`
-/

namespace A245507.P4267053543905325582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A245501 (A046092 n).toNat

end

end A245507.P4267053543905325582

/-!
# A245508: Smallest double square (cf. A001105) greater than n-th prime.

The programs for A245508, the canonical program `A245508.P16525106307191820182` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245508 has offset 1).

The definition of A245508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245508.P16525106307191820182

`2*ceil(sqrt(A111333(n+1)))²`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A245508

/-- `2*ceil(sqrt(A111333(n+1)))²` -/
def P16525106307191820182.Spec : Prop :=
  ∀ n, P16525106307191820182.a n = A245508 (n + 1)

theorem P16525106307191820182.correct : P16525106307191820182.Spec := by
  intro n
  simp only [A245508, Nat.add_sub_cancel]

end A245508

/-! ## A245508.P13763486935235925397

`2*ceil(sqrt(A000040(n+1)/2))²`
-/

namespace A245508.P13763486935235925397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.sqrt ((A000040 (n + 1) : ℚ) / 2 : ℝ)⌉ ^ 2

end

end A245508.P13763486935235925397

namespace A245508

/-- `2*ceil(sqrt(A000040(n+1)/2))²` -/
def P13763486935235925397.Spec : Prop :=
  ∀ n, P13763486935235925397.a n = A245508 (n + 1)

end A245508

/-! ## A245508.P9168731980556020890

`A001105(ceil(sqrt(A111333(n+1))))`
-/

namespace A245508.P9168731980556020890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 ⌈Real.sqrt (A111333 (n + 1) : ℝ)⌉.toNat

end

end A245508.P9168731980556020890

namespace A245508

/-- `A001105(ceil(sqrt(A111333(n+1))))` -/
def P9168731980556020890.Spec : Prop :=
  ∀ n, P9168731980556020890.a n = A245508 (n + 1)

end A245508

/-! ## A245508.P7128823328040765163

`2*(A066927(n+1)/A054977(n))²`
-/

namespace A245508.P7128823328040765163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A066927 (n + 1) : ℚ) / (A054977 n : ℚ)) ^ 2

end

end A245508.P7128823328040765163

namespace A245508

/-- `2*(A066927(n+1)/A054977(n))²` -/
def P7128823328040765163.Spec : Prop :=
  ∀ n, P7128823328040765163.a n = (A245508 (n + 1) : ℚ)

end A245508

/-! ## A245508.P17466077620337818769

`A001105(A066927(n+1)/A054977(n))`
-/

namespace A245508.P17466077620337818769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (SequenceMachineLib.roundAway ((A066927 (n + 1) : ℚ) / (A054977 n : ℚ))).toNat

end

end A245508.P17466077620337818769

namespace A245508

/-- `A001105(A066927(n+1)/A054977(n))` -/
def P17466077620337818769.Spec : Prop :=
  ∀ n, P17466077620337818769.a n = A245508 (n + 1)

end A245508

/-! ## A245508.P1742421528943697629

`A053439(A001650(A111333(n+1)))`
-/

namespace A245508.P1742421528943697629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053439 (A001650 (A111333 (n + 1)).toNat).toNat

end

end A245508.P1742421528943697629

namespace A245508

/-- `A053439(A001650(A111333(n+1)))` -/
def P1742421528943697629.Spec : Prop :=
  ∀ n, P1742421528943697629.a n = A245508 (n + 1)

end A245508

/-! ## A245508.P18131750345248559412

`A093907(A172471(A006093(n+1)))`
-/

namespace A245508.P18131750345248559412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (A172471 (A006093 (n + 1)).toNat).toNat

end

end A245508.P18131750345248559412

namespace A245508

/-- `A093907(A172471(A006093(n+1)))` -/
def P18131750345248559412.Spec : Prop :=
  ∀ n, P18131750345248559412.a n = A245508 (n + 1)

end A245508

/-! ## A245508.P3089599659009801443

`A005843(A003059(A111333(n+1))²)`
-/

namespace A245508.P3089599659009801443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003059 (A111333 (n + 1)).toNat ^ 2).toNat

end

end A245508.P3089599659009801443

namespace A245508

/-- `A005843(A003059(A111333(n+1))²)` -/
def P3089599659009801443.Spec : Prop :=
  ∀ n, P3089599659009801443.a n = A245508 (n + 1)

end A245508

/-! ## A245508.P13687463707665220059

`A093907(A103128(p?[A143051(n)]))`
-/

namespace A245508.P13687463707665220059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (A103128 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A245508.P13687463707665220059

namespace A245508

/-- `A093907(A103128(p?[A143051(n)]))` -/
def P13687463707665220059.Spec : Prop :=
  ∀ n, P13687463707665220059.a n = A245508 (n + 1)

end A245508

/-!
# A245511: Smallest m such that the largest odd number < n^m is not prime.

The programs for A245511, there is no canonical definition to state claims against.
-/

/-! ## A245511.P17116765106702691874

`A007814(A083551(n+1)+A016742(3*n+2))`
-/

namespace A245511.P17116765106702691874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A083551 (n + 1) + A016742 (3 * n + 2)).toNat

end

end A245511.P17116765106702691874

/-! ## A245511.P1243322408425369186

`A067029(A083551(n+1)+A016742(3*n+2))`
-/

namespace A245511.P1243322408425369186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A083551 (n + 1) + A016742 (3 * n + 2)).toNat

end

end A245511.P1243322408425369186

/-! ## A245511.P9878734605956491206

`A001221(xor(A053739(n+1), A333489(3*(n+1))))`
-/

namespace A245511.P9878734605956491206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A053739 (n + 1)) (A333489 (3 * (n + 1)))).toNat

end

end A245511.P9878734605956491206

/-! ## A245511.P14014814660088939554

`A001511(or(A018793(n), A247630(n)))`
-/

namespace A245511.P14014814660088939554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor (A018793 n) (A247630 n)).toNat

end

end A245511.P14014814660088939554

/-! ## A245511.P1873534695389969589

`A001511(A247630(n)+A018793(n)²)`
-/

namespace A245511.P1873534695389969589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A247630 n + A018793 n ^ 2).toNat

end

end A245511.P1873534695389969589

/-!
# A245512: Records in A245511: smallest m > 1 such that the largest odd number less than m^k is prime for every 0 < k < n, but not for k = n.

The programs for A245512, there is no canonical definition to state claims against.
-/

/-! ## A245512.P14464150163943966729

`A014267(a(n-1))` with `a(0)=2, a(1)=4, a(2)=5`
-/

namespace A245512.P14464150163943966729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4, 5] fun n a =>
  A014267 (a (n - 1)).toNat

end

end A245512.P14464150163943966729

/-!
# A245514: Smallest m such that at least one of the two odd numbers which bracket n^m is not a prime.

The programs for A245514, there is no canonical definition to state claims against.
-/

/-! ## A245514.P3829245723019851430

`A091090(A300402(n)+A212804(n))`
-/

namespace A245514.P3829245723019851430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A300402 n + A212804 n).toNat

end

end A245514.P3829245723019851430

/-! ## A245514.P6334588980539758510

`A091090(A005206(A001612(n)))`
-/

namespace A245514.P6334588980539758510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A005206 (A001612 n).toNat).toNat

end

end A245514.P6334588980539758510

/-! ## A245514.P10416783345784407191

`gcd(A055640(A080529(n)), A080782(n+1))`
-/

namespace A245514.P10416783345784407191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055640 (A080529 n).toNat) (A080782 (n + 1))

end

end A245514.P10416783345784407191

/-! ## A245514.P17949161970808249507

`A175024(A029954(n+1)+A000005(n+1))`
-/

namespace A245514.P17949161970808249507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175024 (A029954 (n + 1) + A000005 (n + 1)).toNat

end

end A245514.P17949161970808249507

/-! ## A245514.P15524640327757017932

`A057979(A279244(3*n+4)%A005843(2*(n+2)))`
-/

namespace A245514.P15524640327757017932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.tmod (A279244 (3 * n + 4)) (A005843 (2 * (n + 2)))).toNat

end

end A245514.P15524640327757017932

/-!
# A245515: a(n) = n*floor(mod((gcd(n, Fibonacci((-1)^n + n))), 1 + n)/n) for n>=2.

The programs for A245515, the canonical program `A245515.P10148833794480420337` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245515 has offset 1).

The definition of A245515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1023 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245515.P10148833794480420337

`C(A260222((val(n+1, 2)+1)*(n+1)), A028310(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A245515

/-- `C(A260222((val(n+1, 2)+1)*(n+1)), A028310(n))` -/
def P10148833794480420337.Spec : Prop :=
  ∀ n, (P10148833794480420337.a n : ℤ) = A245515 (n + 1)

theorem P10148833794480420337.correct : P10148833794480420337.Spec := by
  intro n
  simp only [A245515, Nat.add_sub_cancel]

end A245515

/-! ## A245515.P499812443681079421

`C(gcd(n+1, A000045(xor(1, n+1))), n)`
-/

namespace A245515.P499812443681079421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (n + 1 : ℤ) (A000045 (Nat.xor 1 (n + 1)))) n

end

end A245515.P499812443681079421

namespace A245515

/-- `C(gcd(n+1, A000045(xor(1, n+1))), n)` -/
def P499812443681079421.Spec : Prop :=
  ∀ n, (P499812443681079421.a n : ℤ) = A245515 (n + 1)

end A245515

/-! ## A245515.P3719628693625485620

`C(A006530((2*A000045(n+2)-3)%(n+1)+1), n)`
-/

namespace A245515.P3719628693625485620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (Int.tmod (2 * A000045 (n + 2) - 3) (n + 1 : ℤ) + 1).toNat).toNat n

end

end A245515.P3719628693625485620

namespace A245515

/-- `C(A006530((2*A000045(n+2)-3)%(n+1)+1), n)` -/
def P3719628693625485620.Spec : Prop :=
  ∀ n, (P3719628693625485620.a n : ℤ) = A245515 (n + 1)

end A245515

/-! ## A245515.P17962961132047514320

`C(A006530(gcd(n+1, A022350(n))), n)`
-/

namespace A245515.P17962961132047514320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (Int.gcd (n + 1 : ℤ) (A022350 n))).toNat n

end

end A245515.P17962961132047514320

namespace A245515

/-- `C(A006530(gcd(n+1, A022350(n))), n)` -/
def P17962961132047514320.Spec : Prop :=
  ∀ n, (P17962961132047514320.a n : ℤ) = A245515 (n + 1)

end A245515

/-! ## A245515.P2258565973360635127

`C(A260222(A243310(n)+1+n), n)`
-/

namespace A245515.P2258565973360635127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A260222 (A243310 n + 1 + (n : ℤ)).toNat).toNat n

end

end A245515.P2258565973360635127

namespace A245515

/-- `C(A260222(A243310(n)+1+n), n)` -/
def P2258565973360635127.Spec : Prop :=
  ∀ n, (P2258565973360635127.a n : ℤ) = A245515 (n + 1)

end A245515

/-! ## A245515.P17933594449833512361

`C(A260222(a(n-1)²+n+1), n)` with `a(0)=1, a(1)=2`
-/

namespace A245515.P17933594449833512361
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.choose (A260222 (a (n - 1) ^ 2 + n + 1)).toNat n

end

end A245515.P17933594449833512361

namespace A245515

/-- `C(A260222(a(n-1)²+n+1), n)` -/
def P17933594449833512361.Spec : Prop :=
  ∀ n, (P17933594449833512361.a n : ℤ) = A245515 (n + 1)

end A245515

/-!
# A245516: The smallest odd number k such that k^n-2 is a prime number.

The programs for A245516, there is no canonical definition to state claims against.
-/

/-! ## A245516.P11587778762164704652

`or(1, A095303(n+1))`
-/

namespace A245516.P11587778762164704652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A095303 (n + 1))

end

end A245516.P11587778762164704652

/-! ## A245516.P9418932757641597476

`A109613(A095303(n+1))`
-/

namespace A245516.P9418932757641597476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A095303 (n + 1)).toNat

end

end A245516.P9418932757641597476

/-! ## A245516.P10088719216829988116

`A005408(floor(A095303(n+1)/2))`
-/

namespace A245516.P10088719216829988116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ⌊(A095303 (n + 1) : ℚ) / 2⌋.toNat

end

end A245516.P10088719216829988116

/-! ## A245516.P6252183925699978112

`A095303(n+1)+char[A001017(n)]`
-/

namespace A245516.P6252183925699978112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001017 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245516.P6252183925699978112

/-! ## A245516.P16250609153443086859

`A095303(n+1)+char[A005951(n)]`
-/

namespace A245516.P16250609153443086859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005951 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245516.P16250609153443086859

/-! ## A245516.P6464598404082968889

`A095303(n+1)+char[A005952(n)]`
-/

namespace A245516.P6464598404082968889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005952 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245516.P6464598404082968889

/-! ## A245516.P9668789550096987193

`A095303(n+1)+char[A008454(n)]`
-/

namespace A245516.P9668789550096987193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008454 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245516.P9668789550096987193

/-! ## A245516.P2442267813197876085

`A095303(n+1)+char[A015159(n)]`
-/

namespace A245516.P2442267813197876085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015159 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245516.P2442267813197876085

/-! ## A245516.P16137228838180390364

`A095303(n+1)+char[A018877(n)]`
-/

namespace A245516.P16137228838180390364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018877 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245516.P16137228838180390364

/-! ## A245516.P14011471778166617824

`A095303(n+1)+char[A018879(n)]`
-/

namespace A245516.P14011471778166617824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018879 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245516.P14011471778166617824

/-! ## A245516.P6237574011872910172

`A095303(n+1)+char[A170775(n)]`
-/

namespace A245516.P6237574011872910172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170775 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245516.P6237574011872910172

/-! ## A245516.P16413167020972283663

`A095303(n+1)+A019590(n+1)`
-/

namespace A245516.P16413167020972283663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + A019590 (n + 1)

end

end A245516.P16413167020972283663

/-! ## A245516.P13272987079457462921

`A095303(n+1)+char[1-A000045(n)]`
-/

namespace A245516.P13272987079457462921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245516.P13272987079457462921

/-! ## A245516.P7936834406905234405

`A095303(n+1)+A000010(n+1)%2`
-/

namespace A245516.P7936834406905234405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + Int.tmod (A000010 (n + 1)) 2

end

end A245516.P7936834406905234405

/-! ## A245516.P234871276613202467

`A095303(n+1)+A011558(C(2, n+1))`
-/

namespace A245516.P234871276613202467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + A011558 (Nat.choose 2 (n + 1))

end

end A245516.P234871276613202467

/-! ## A245516.P9764359228286157709

`A095303(n+1)+C(A001222(n+1), n)`
-/

namespace A245516.P9764359228286157709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + (Nat.choose (A001222 (n + 1)).toNat n : ℤ)

end

end A245516.P9764359228286157709

/-! ## A245516.P5279384814322837797

`A095303(n+1)+char[Δ[A002260(n+1)]]`
-/

namespace A245516.P5279384814322837797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A245516.P5279384814322837797

/-! ## A245516.P3628083272116723556

`A095303(n+1)+val(A000040(n+1), n+2)`
-/

namespace A245516.P3628083272116723556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + (SequenceMachineLib.valuation (A000040 (n + 1)).toNat (n + 2) : ℤ)

end

end A245516.P3628083272116723556

/-! ## A245516.P16163353329207343597

`A095303(n+1)+C(A008624(A008624(n)), n)`
-/

namespace A245516.P16163353329207343597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095303 (n + 1) + (Nat.choose (A008624 (A008624 n).toNat).toNat n : ℤ)

end

end A245516.P16163353329207343597

/-!
# A245517: Irregular triangle read by rows: T(n,L) = number of alpha-labeled graphs with n edges and boundary value L that do not use one number from (1,2,...,n-1) as a label (n >= 4, 1 <= L <= n - 2).

The programs for A245517, there is no canonical definition to state claims against.
-/

/-! ## A245517.P14594469842619137258

`A378033(A373811(3*n)+A180001(n+1))`
-/

namespace A245517.P14594469842619137258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378033 (A373811 (3 * n) + A180001 (n + 1)).toNat

end

end A245517.P14594469842619137258

/-! ## A245517.P5421925063311436467

`A063200(A172004(n+1)%A348352(n+1))`
-/

namespace A245517.P5421925063311436467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063200 (Int.tmod (A172004 (n + 1)) (A348352 (n + 1))).toNat

end

end A245517.P5421925063311436467

/-!
# A245519: Number of alpha-labeled graphs with n edges and at most n vertices.

The programs for A245519, there is no canonical definition to state claims against.
-/

/-! ## A245519.P13352651629937423424

`floor(A351984(n+1)/(2*n+3))`
-/

namespace A245519.P13352651629937423424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A351984 (n + 1) : ℚ) / (2 * n + 3 : ℚ)⌋

end

end A245519.P13352651629937423424

/-! ## A245519.P4607150722576788413

`∑{e}[A111532(n), #]*A324172(n+1)`
-/

namespace A245519.P4607150722576788413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) * A324172 (n + 1)

end

end A245519.P4607150722576788413

/-! ## A245519.P13474221693634577317

`A002662(n)*A327343(A000079(n))`
-/

namespace A245519.P13474221693634577317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002662 n * A327343 (A000079 n).toNat

end

end A245519.P13474221693634577317

/-!
# A245520: Index of the smallest prime where n consecutive leading binary digits of the index match n consecutive leading binary digits in the prime.

The programs for A245520, there is no canonical definition to state claims against.
-/

/-! ## A245520.P920722659804253701

`A000720(A245521(n+1))`
-/

namespace A245520.P920722659804253701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A245521 (n + 1)).toNat

end

end A245520.P920722659804253701

/-! ## A245520.P8059724936542861545

`A049084(p?[A245521(n+1)])`
-/

namespace A245520.P8059724936542861545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245520.P8059724936542861545

/-! ## A245520.P15299838922955490851

`A055396(p?[A245521(n+1)])`
-/

namespace A245520.P15299838922955490851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245520.P15299838922955490851

/-! ## A245520.P3548806972348087934

`A058933(p?[A245521(n+1)])`
-/

namespace A245520.P3548806972348087934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245520.P3548806972348087934

/-! ## A245520.P5976305699079189618

`A061395(p?[A245521(n+1)])`
-/

namespace A245520.P5976305699079189618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245520.P5976305699079189618

/-!
# A245521: Prime numbers whose indices correspond to A245520.

The programs for A245521, there is no canonical definition to state claims against.
-/

/-! ## A245521.P9412891763768310753

`A000040(A245520(n+1))`
-/

namespace A245521.P9412891763768310753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A245520 (n + 1)).toNat

end

end A245521.P9412891763768310753

/-! ## A245521.P5176404758334482491

`A008578(A245520(n+1)+1)`
-/

namespace A245521.P5176404758334482491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A245520 (n + 1) + 1).toNat

end

end A245521.P5176404758334482491

/-! ## A245521.P9660012459223536536

`A182986(A245520(n+1)+1)`
-/

namespace A245521.P9660012459223536536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A245520 (n + 1) + 1).toNat

end

end A245521.P9660012459223536536

/-! ## A245521.P16567543879880505527

`A073846(2*A245520(n+1))`
-/

namespace A245521.P16567543879880505527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A245520 (n + 1)).toNat

end

end A245521.P16567543879880505527

/-! ## A245521.P9961750332536482910

`A082500(2*A245520(n+1))`
-/

namespace A245521.P9961750332536482910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A245520 (n + 1)).toNat

end

end A245521.P9961750332536482910

/-!
# A245522: Index of the smallest prime where n consecutive trailing digits of the index written in binary match n consecutive trailing digits in the prime when written in binary.

The programs for A245522, there is no canonical definition to state claims against.
-/

/-! ## A245522.P9581536375641419797

`A000720(A245523(n+1))`
-/

namespace A245522.P9581536375641419797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A245523 (n + 1)).toNat

end

end A245522.P9581536375641419797

/-! ## A245522.P10412840127775019892

`A058933(p?[A245523(n+1)])`
-/

namespace A245522.P10412840127775019892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245522.P10412840127775019892

/-! ## A245522.P727225604585260349

`A061395(p?[A245523(n+1)])`
-/

namespace A245522.P727225604585260349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245522.P727225604585260349

/-! ## A245522.P6822749910174974708

`A263111(p?[A245523(n+1)])`
-/

namespace A245522.P6822749910174974708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263111 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245522.P6822749910174974708

/-! ## A245522.P802348060711536469

`A289508(p?[A245523(n+1)])`
-/

namespace A245522.P802348060711536469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245522.P802348060711536469

/-!
# A245523: Prime numbers whose indices correspond to A245522.

The programs for A245523, there is no canonical definition to state claims against.
-/

/-! ## A245523.P11410950449742115910

`A000040(A245522(n+1))`
-/

namespace A245523.P11410950449742115910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A245522 (n + 1)).toNat

end

end A245523.P11410950449742115910

/-! ## A245523.P16330116174228127267

`A008578(A245522(n+1)+1)`
-/

namespace A245523.P16330116174228127267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A245522 (n + 1) + 1).toNat

end

end A245523.P16330116174228127267

/-! ## A245523.P4786617223746694913

`A175787(A245522(n+1)+1)`
-/

namespace A245523.P4786617223746694913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A245522 (n + 1) + 1).toNat

end

end A245523.P4786617223746694913

/-! ## A245523.P15667882356711225312

`A182986(A245522(n+1)+1)`
-/

namespace A245523.P15667882356711225312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A245522 (n + 1) + 1).toNat

end

end A245523.P15667882356711225312

/-!
# A245524: a(n) = n^2 - floor(n/2)*(-1)^n.

The programs for A245524, the canonical program `A245524.P2063940687593631292` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245524 has offset 1).

The definition of A245524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²-floor((n+1)/2)*(-1)^(n+1)` (program `A245524.P2063940687593631292`, by `A245524.P2063940687593631292.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245524.P11470667317867067528

`(2*(n+1)-1)*(n+1-floor((n+1)/2))`
-/

namespace A245524.P11470667317867067528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * ((n + 1 : ℤ) - ⌊(n + 1 : ℚ) / 2⌋)

end

end A245524.P11470667317867067528

namespace A245524

/-- `(2*(n+1)-1)*(n+1-floor((n+1)/2))` -/
def P11470667317867067528.Spec : Prop :=
  ∀ n, P11470667317867067528.a n = A245524 (n + 1)

end A245524

/-! ## A245524.P2063940687593631292

`(n+1)²-floor((n+1)/2)*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245524

/-- `(n+1)²-floor((n+1)/2)*(-1)^(n+1)` -/
def P2063940687593631292.Spec : Prop :=
  ∀ n, P2063940687593631292.a n = A245524 (n + 1)

theorem P2063940687593631292.correct : P2063940687593631292.Spec := by
  intro n
  simp only [A245524, Nat.add_sub_cancel]

end A245524

/-! ## A245524.P3411093339147136371

`∑[n*gcd(3, n%2)+1]`
-/

namespace A245524.P3411093339147136371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 3 (n % 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245524.P3411093339147136371

namespace A245524

/-- `∑[n*gcd(3, n%2)+1]` -/
def P3411093339147136371.Spec : Prop :=
  ∀ n, (P3411093339147136371.a n : ℤ) = A245524 (n + 1)

end A245524

/-! ## A245524.P2308505970156730025

`∑[∑[∑[ogf((1+2x+5x^2)/(1+2x+x^2))]]]`
-/

namespace A245524.P2308505970156730025
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 5] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245524.P2308505970156730025

namespace A245524

/-- `∑[∑[∑[ogf((1+2x+5x^2)/(1+2x+x^2))]]]` -/
def P2308505970156730025.Spec : Prop :=
  ∀ n, P2308505970156730025.a n = A245524 (n + 1)

end A245524

/-! ## A245524.P4337195959233607825

`floor((n+1)/2*or(3, 2*n))`
-/

namespace A245524.P4337195959233607825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2 * (Nat.lor 3 (2 * n) : ℚ)⌋

end

end A245524.P4337195959233607825

namespace A245524

/-- `floor((n+1)/2*or(3, 2*n))` -/
def P4337195959233607825.Spec : Prop :=
  ∀ n, P4337195959233607825.a n = A245524 (n + 1)

end A245524

/-! ## A245524.P829788513540903395

`∑[2*n*gcd(2, n)-(n-1)]`
-/

namespace A245524.P829788513540903395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.gcd 2 n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245524.P829788513540903395

namespace A245524

/-- `∑[2*n*gcd(2, n)-(n-1)]` -/
def P829788513540903395.Spec : Prop :=
  ∀ n, P829788513540903395.a n = A245524 (n + 1)

end A245524

/-! ## A245524.P14184404187320563344

`∑[gcd(2*n+1, and(1, n))+n]`
-/

namespace A245524.P14184404187320563344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n + 1) (Nat.land 1 n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245524.P14184404187320563344

namespace A245524

/-- `∑[gcd(2*n+1, and(1, n))+n]` -/
def P14184404187320563344.Spec : Prop :=
  ∀ n, (P14184404187320563344.a n : ℤ) = A245524 (n + 1)

end A245524

/-! ## A245524.P13219204268926508305

`floor((∑[3/floor(a(n-1))]/2)²)` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A245524.P13219204268926508305
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  3 / (⌊f1 (n - 1)⌋ : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j) / 2) ^ 2⌋

end

end A245524.P13219204268926508305

namespace A245524

/-- `floor((∑[3/floor(a(n-1))]/2)²)` -/
def P13219204268926508305.Spec : Prop :=
  ∀ n, P13219204268926508305.a n = A245524 (n + 1)

end A245524

/-! ## A245524.P15449207945202071129

`(2*n+1)*and(n+2, -2)/2`
-/

namespace A245524.P15449207945202071129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * Int.land (n + 2 : ℤ) (-2) : ℚ) / 2

end

end A245524.P15449207945202071129

namespace A245524

/-- `(2*n+1)*and(n+2, -2)/2` -/
def P15449207945202071129.Spec : Prop :=
  ∀ n, P15449207945202071129.a n = (A245524 (n + 1) : ℚ)

end A245524

/-! ## A245524.P12140572946212270809

`∑[2*n*(n+1)%2+n+1]`
-/

namespace A245524.P12140572946212270809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * ((n + 1) % 2) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245524.P12140572946212270809

namespace A245524

/-- `∑[2*n*(n+1)%2+n+1]` -/
def P12140572946212270809.Spec : Prop :=
  ∀ n, (P12140572946212270809.a n : ℤ) = A245524 (n + 1)

end A245524

/-! ## A245524.P5777798555996174291

`∑[2*n*and(1, n+1)+n+1]`
-/

namespace A245524.P5777798555996174291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.land 1 (n + 1) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245524.P5777798555996174291

namespace A245524

/-- `∑[2*n*and(1, n+1)+n+1]` -/
def P5777798555996174291.Spec : Prop :=
  ∀ n, (P5777798555996174291.a n : ℤ) = A245524 (n + 1)

end A245524

/-! ## A245524.P482316978999409725

`(2*n+1)*(2-and(1, n)+n)/2`
-/

namespace A245524.P482316978999409725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * (2 - (Nat.land 1 n : ℤ) + (n : ℤ)) : ℚ) / 2

end

end A245524.P482316978999409725

namespace A245524

/-- `(2*n+1)*(2-and(1, n)+n)/2` -/
def P482316978999409725.Spec : Prop :=
  ∀ n, P482316978999409725.a n = (A245524 (n + 1) : ℚ)

end A245524

/-! ## A245524.P710510186675459637

`floor((2*n+1)*∑[1-a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A245524.P710510186675459637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245524.P710510186675459637

namespace A245524

/-- `floor((2*n+1)*∑[1-a(n-1)])` -/
def P710510186675459637.Spec : Prop :=
  ∀ n, P710510186675459637.a n = A245524 (n + 1)

end A245524

/-! ## A245524.P6607441807270932601

`∑[∑[8-a(n-1)]-a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A245524.P6607441807270932601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  8 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245524.P6607441807270932601

namespace A245524

/-- `∑[∑[8-a(n-1)]-a(n-1)]` -/
def P6607441807270932601.Spec : Prop :=
  ∀ n, P6607441807270932601.a n = A245524 (n + 1)

end A245524

/-! ## A245524.P4002438336766066235

`(2*n+1)*∑[n+1]/or(1, n+1)`
-/

namespace A245524.P4002438336766066235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / (Nat.lor 1 (n + 1) : ℚ)

end

end A245524.P4002438336766066235

namespace A245524

/-- `(2*n+1)*∑[n+1]/or(1, n+1)` -/
def P4002438336766066235.Spec : Prop :=
  ∀ n, P4002438336766066235.a n = (A245524 (n + 1) : ℚ)

end A245524

/-! ## A245524.P227438134674403354

`floor((2*n+1)*Δ[a(n-2)+n])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A245524.P227438134674403354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A245524.P227438134674403354

namespace A245524

/-- `floor((2*n+1)*Δ[a(n-2)+n])` -/
def P227438134674403354.Spec : Prop :=
  ∀ n, P227438134674403354.a n = A245524 (n + 1)

end A245524

/-! ## A245524.P11742558831671239651

`(and(1, n+1)+n+1)*(2*n+1)/2`
-/

namespace A245524.P11742558831671239651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 (n + 1) + (n + 1)) * (2 * n + 1) : ℚ) / 2

end

end A245524.P11742558831671239651

namespace A245524

/-- `(and(1, n+1)+n+1)*(2*n+1)/2` -/
def P11742558831671239651.Spec : Prop :=
  ∀ n, P11742558831671239651.a n = (A245524 (n + 1) : ℚ)

end A245524

/-! ## A245524.P11856080113048010331

`lcm(2*n+1, (2*n+1)*ceil((n+1)/2))`
-/

namespace A245524.P11856080113048010331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ((2 * n + 1 : ℤ) * ⌈(n + 1 : ℚ) / 2⌉)

end

end A245524.P11856080113048010331

namespace A245524

/-- `lcm(2*n+1, (2*n+1)*ceil((n+1)/2))` -/
def P11856080113048010331.Spec : Prop :=
  ∀ n, (P11856080113048010331.a n : ℤ) = A245524 (n + 1)

end A245524

/-! ## A245524.P17477040515823668234

`(2*n+1)*(n+3-gcd(n+1, n-1))/2`
-/

namespace A245524.P17477040515823668234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) * ((n + 3 : ℤ) - (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1) : ℤ)) : ℚ) / 2

end

end A245524.P17477040515823668234

namespace A245524

/-- `(2*n+1)*(n+3-gcd(n+1, n-1))/2` -/
def P17477040515823668234.Spec : Prop :=
  ∀ n, P17477040515823668234.a n = (A245524 (n + 1) : ℚ)

end A245524

/-! ## A245524.P4791444906335441549

`∑[A178414(n+1)-n]`
-/

namespace A245524.P4791444906335441549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178414 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245524.P4791444906335441549

namespace A245524

/-- `∑[A178414(n+1)-n]` -/
def P4791444906335441549.Spec : Prop :=
  ∀ n, P4791444906335441549.a n = A245524 (n + 1)

end A245524

/-!
# A245530: a(n) = smallest square which is the product of a minimal set of distinct numbers not less than n.

The programs for A245530, there is no canonical definition to state claims against.
-/

/-! ## A245530.P17773739804051669187

`A066401(n+1)²`
-/

namespace A245530.P17773739804051669187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066401 (n + 1) ^ 2

end

end A245530.P17773739804051669187

/-! ## A245530.P6476900721637974301

`A066401(n+1)^A006530(A001316(n))`
-/

namespace A245530.P6476900721637974301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066401 (n + 1) : ℚ) ^ (A006530 (A001316 n).toNat : ℤ)

end

end A245530.P6476900721637974301

/-! ## A245530.P894909481508681158

`A066401(n+1)*A066401((n+1)%A000037(n+1))`
-/

namespace A245530.P894909481508681158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066401 (n + 1) * A066401 (Int.tmod (n + 1 : ℤ) (A000037 (n + 1))).toNat

end

end A245530.P894909481508681158

/-! ## A245530.P17971734529550388492

`lcm(A066401(n+1)*A066401(n+1), A006255(n+1))`
-/

namespace A245530.P17971734529550388492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066401 (n + 1) * A066401 (n + 1)) (A006255 (n + 1))

end

end A245530.P17971734529550388492

/-! ## A245530.P16424694063455210289

`lcm(A006530(n+1), A066401(n+1))*A066401(n+1)`
-/

namespace A245530.P16424694063455210289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A006530 (n + 1)) (A066401 (n + 1)) : ℤ) * A066401 (n + 1)

end

end A245530.P16424694063455210289

/-! ## A245530.P13319100843751232705

`A066401(n+1)*A211095(A000010(n+1))*A066401(n+1)`
-/

namespace A245530.P13319100843751232705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066401 (n + 1) * A211095 (A000010 (n + 1)).toNat * A066401 (n + 1)

end

end A245530.P13319100843751232705

/-!
# A245531: a(n) = Round((gamma^2 + 1)/gamma^(n-2)).

The programs for A245531, there is no canonical definition to state claims against.
-/

/-! ## A245531.P5848779399787864072

`A235963(A248870(n))`
-/

namespace A245531.P5848779399787864072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A248870 n).toNat

end

end A245531.P5848779399787864072

/-! ## A245531.P8716531543550559278

`A335469(A000048(n))+A000045(n)`
-/

namespace A245531.P8716531543550559278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A000048 n).toNat + A000045 n

end

end A245531.P8716531543550559278

/-! ## A245531.P7687446337991692453

`A000196(A098703(n))`
-/

namespace A245531.P7687446337991692453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A098703 n).toNat

end

end A245531.P7687446337991692453

/-! ## A245531.P6640435003995115529

`A103634(A001115(n))`
-/

namespace A245531.P6640435003995115529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103634 (A001115 n).toNat

end

end A245531.P6640435003995115529

/-! ## A245531.P7724419186800530540

`A135660(A017925(n))`
-/

namespace A245531.P7724419186800530540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A017925 n).toNat

end

end A245531.P7724419186800530540

/-!
# A245534: a(n) = n^2 + floor(n/2)*(-1)^n.

The programs for A245534, the canonical program `A245534.P13901455506299225136` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245534 has offset 1).

The definition of A245534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²+floor((n+1)/2)*(-1)^(n+1)` (program `A245534.P13901455506299225136`, by `A245534.P13901455506299225136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245534.P13901455506299225136

`(n+1)²+floor((n+1)/2)*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245534

/-- `(n+1)²+floor((n+1)/2)*(-1)^(n+1)` -/
def P13901455506299225136.Spec : Prop :=
  ∀ n, P13901455506299225136.a n = A245534 (n + 1)

theorem P13901455506299225136.correct : P13901455506299225136.Spec := by
  intro n
  simp only [A245534, Nat.add_sub_cancel]

end A245534

/-! ## A245534.P11693763171919812349

`∑[2*lcm(2, n)+1-n]`
-/

namespace A245534.P11693763171919812349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℤ) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P11693763171919812349

namespace A245534

/-- `∑[2*lcm(2, n)+1-n]` -/
def P11693763171919812349.Spec : Prop :=
  ∀ n, P11693763171919812349.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P13607367731871264828

`∑[1-(n-lcm(4, 2*n))]`
-/

namespace A245534.P13607367731871264828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n : ℤ) - (Nat.lcm 4 (2 * n) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P13607367731871264828

namespace A245534

/-- `∑[1-(n-lcm(4, 2*n))]` -/
def P13607367731871264828.Spec : Prop :=
  ∀ n, P13607367731871264828.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P17317832556933107131

`∑[n*3^(n%2)+1]`
-/

namespace A245534.P17317832556933107131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ (n % 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P17317832556933107131

namespace A245534

/-- `∑[n*3^(n%2)+1]` -/
def P17317832556933107131.Spec : Prop :=
  ∀ n, (P17317832556933107131.a n : ℤ) = A245534 (n + 1)

end A245534

/-! ## A245534.P1166140210206303092

`∑[n*3^and(1, n)+1]`
-/

namespace A245534.P1166140210206303092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ Nat.land 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P1166140210206303092

namespace A245534

/-- `∑[n*3^and(1, n)+1]` -/
def P1166140210206303092.Spec : Prop :=
  ∀ n, (P1166140210206303092.a n : ℤ) = A245534 (n + 1)

end A245534

/-! ## A245534.P6286022951989718281

`∑[n*C(3, and(1, n))+1]`
-/

namespace A245534.P6286022951989718281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 3 (Nat.land 1 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P6286022951989718281

namespace A245534

/-- `∑[n*C(3, and(1, n))+1]` -/
def P6286022951989718281.Spec : Prop :=
  ∀ n, (P6286022951989718281.a n : ℤ) = A245534 (n + 1)

end A245534

/-! ## A245534.P5061334626558505716

`∑[n*Δ[n²]%4+1]`
-/

namespace A245534.P5061334626558505716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P5061334626558505716

namespace A245534

/-- `∑[n*Δ[n²]%4+1]` -/
def P5061334626558505716.Spec : Prop :=
  ∀ n, P5061334626558505716.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P4543902701089750973

`ceil((1/2+n)*or(1, n+1))`
-/

namespace A245534.P4543902701089750973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 2 + (n : ℚ)) * (Nat.lor 1 (n + 1) : ℚ)⌉

end

end A245534.P4543902701089750973

namespace A245534

/-- `ceil((1/2+n)*or(1, n+1))` -/
def P4543902701089750973.Spec : Prop :=
  ∀ n, P4543902701089750973.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P13727630484663482586

`∑[n*and(3, 2*n+1)+1]`
-/

namespace A245534.P13727630484663482586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 3 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P13727630484663482586

namespace A245534

/-- `∑[n*and(3, 2*n+1)+1]` -/
def P13727630484663482586.Spec : Prop :=
  ∀ n, (P13727630484663482586.a n : ℤ) = A245534 (n + 1)

end A245534

/-! ## A245534.P15722065096003412408

`round((2*n+1)*or(1, n+1)/2)`
-/

namespace A245534.P15722065096003412408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) * ((Nat.lor 1 (n + 1) : ℚ) / 2))

end

end A245534.P15722065096003412408

namespace A245534

/-- `round((2*n+1)*or(1, n+1)/2)` -/
def P15722065096003412408.Spec : Prop :=
  ∀ n, P15722065096003412408.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P4391376932799201377

`∑[2*n*gcd(2, n+1)-(n-1)]`
-/

namespace A245534.P4391376932799201377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * Nat.gcd 2 (n + 1) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P4391376932799201377

namespace A245534

/-- `∑[2*n*gcd(2, n+1)-(n-1)]` -/
def P4391376932799201377.Spec : Prop :=
  ∀ n, P4391376932799201377.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P13339069045210693369

`∑[2*n*C(n, a(n-1))+n+1]` with `a(0)=1`
-/

namespace A245534.P13339069045210693369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * n * Nat.choose n (f1 (n - 1)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P13339069045210693369

namespace A245534

/-- `∑[2*n*C(n, a(n-1))+n+1]` -/
def P13339069045210693369.Spec : Prop :=
  ∀ n, (P13339069045210693369.a n : ℤ) = A245534 (n + 1)

end A245534

/-! ## A245534.P4498857958106222092

`∑[gcd((n-1)*2*n, (2*n)²)-(n-1)]`
-/

namespace A245534.P4498857958106222092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (((n : ℤ) - 1) * (2 * n : ℤ)) ((2 * n) ^ 2 : ℤ) : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P4498857958106222092

namespace A245534

/-- `∑[gcd((n-1)*2*n, (2*n)²)-(n-1)]` -/
def P4498857958106222092.Spec : Prop :=
  ∀ n, P4498857958106222092.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P9070651659866390961

`∑[A347365(n)+1]`
-/

namespace A245534.P9070651659866390961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347365 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P9070651659866390961

namespace A245534

/-- `∑[A347365(n)+1]` -/
def P9070651659866390961.Spec : Prop :=
  ∀ n, P9070651659866390961.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P14075648252392639753

`A055232(n)/A008619(n)`
-/

namespace A245534.P14075648252392639753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055232 n : ℚ) / (A008619 n : ℚ)

end

end A245534.P14075648252392639753

namespace A245534

/-- `A055232(n)/A008619(n)` -/
def P14075648252392639753.Spec : Prop :=
  ∀ n, P14075648252392639753.a n = (A245534 (n + 1) : ℚ)

end A245534

/-! ## A245534.P3342934914299454461

`∑[A266724(n+1)+n]`
-/

namespace A245534.P3342934914299454461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P3342934914299454461

namespace A245534

/-- `∑[A266724(n+1)+n]` -/
def P3342934914299454461.Spec : Prop :=
  ∀ n, P3342934914299454461.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P51231607825839593

`Δ[A225972(n+1)]`
-/

namespace A245534.P51231607825839593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225972 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245534.P51231607825839593

namespace A245534

/-- `Δ[A225972(n+1)]` -/
def P51231607825839593.Spec : Prop :=
  ∀ n, P51231607825839593.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P5353376930145560835

`∑[A026200(2*n+1)]`
-/

namespace A245534.P5353376930145560835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026200 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245534.P5353376930145560835

namespace A245534

/-- `∑[A026200(2*n+1)]` -/
def P5353376930145560835.Spec : Prop :=
  ∀ n, P5353376930145560835.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P10083261134954003477

`A054925(A042963(n+2))`
-/

namespace A245534.P10083261134954003477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (A042963 (n + 2)).toNat

end

end A245534.P10083261134954003477

namespace A245534

/-- `A054925(A042963(n+2))` -/
def P10083261134954003477.Spec : Prop :=
  ∀ n, P10083261134954003477.a n = A245534 (n + 1)

end A245534

/-! ## A245534.P1209098792663082559

`A054925(A098180(2*(n+1)))`
-/

namespace A245534.P1209098792663082559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 (A098180 (2 * (n + 1))).toNat

end

end A245534.P1209098792663082559

namespace A245534

/-- `A054925(A098180(2*(n+1)))` -/
def P1209098792663082559.Spec : Prop :=
  ∀ n, P1209098792663082559.a n = A245534 (n + 1)

end A245534

/-!
# A245536: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=k-r-1, or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=(k-r-1)*a(j).

The programs for A245536, the canonical program `A245536.P3272298368546471376` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245536 has offset 1).

The definition of A245536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245536.P13033578227872183133

`∏{e}[A278222(n+1), #-1]`
-/

namespace A245536.P13033578227872183133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A245536.P13033578227872183133

namespace A245536

/-- `∏{e}[A278222(n+1), #-1]` -/
def P13033578227872183133.Spec : Prop :=
  ∀ n, P13033578227872183133.a n = A245536 (n + 1)

end A245536

/-! ## A245536.P9996518787898442524

`∏{e}[A332815(n+1), #-1]`
-/

namespace A245536.P9996518787898442524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A245536.P9996518787898442524

namespace A245536

/-- `∏{e}[A332815(n+1), #-1]` -/
def P9996518787898442524.Spec : Prop :=
  ∀ n, P9996518787898442524.a n = A245536 (n + 1)

end A245536

/-! ## A245536.P14570404998138617751

`∏{e}[A005940(n+2), #-1]`
-/

namespace A245536.P14570404998138617751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A245536.P14570404998138617751

namespace A245536

/-- `∏{e}[A005940(n+2), #-1]` -/
def P14570404998138617751.Spec : Prop :=
  ∀ n, P14570404998138617751.a n = A245536 (n + 1)

end A245536

/-! ## A245536.P416947597184906711

`A110399(A278222(n+1))`
-/

namespace A245536.P416947597184906711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (A278222 (n + 1)).toNat

end

end A245536.P416947597184906711

namespace A245536

/-- `A110399(A278222(n+1))` -/
def P416947597184906711.Spec : Prop :=
  ∀ n, P416947597184906711.a n = A245536 (n + 1)

end A245536

/-! ## A245536.P2476059916577773985

`A361430(A332815(n+1))`
-/

namespace A245536.P2476059916577773985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361430 (A332815 (n + 1)).toNat

end

end A245536.P2476059916577773985

namespace A245536

/-- `A361430(A332815(n+1))` -/
def P2476059916577773985.Spec : Prop :=
  ∀ n, P2476059916577773985.a n = A245536 (n + 1)

end A245536

/-! ## A245536.P8044783578667959806

`A361430(A005940(n+2))`
-/

namespace A245536.P8044783578667959806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361430 (A005940 (n + 2)).toNat

end

end A245536.P8044783578667959806

namespace A245536

/-- `A361430(A005940(n+2))` -/
def P8044783578667959806.Spec : Prop :=
  ∀ n, P8044783578667959806.a n = A245536 (n + 1)

end A245536

/-! ## A245536.P3272298368546471376

`∏{e}[A163511(A054429(n+1)), #-1]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A245536

/-- `∏{e}[A163511(A054429(n+1)), #-1]` -/
def P3272298368546471376.Spec : Prop :=
  ∀ n, P3272298368546471376.a n = A245536 (n + 1)

theorem P3272298368546471376.correct : P3272298368546471376.Spec := by
  intro n
  simp only [A245536, Nat.add_sub_cancel]

end A245536

/-! ## A245536.P16449731652390978039

`A282062(lcm(A038374(n+1), A245196(n+1)))`
-/

namespace A245536.P16449731652390978039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 (Int.lcm (A038374 (n + 1)) (A245196 (n + 1)))

end

end A245536.P16449731652390978039

namespace A245536

/-- `A282062(lcm(A038374(n+1), A245196(n+1)))` -/
def P16449731652390978039.Spec : Prop :=
  ∀ n, P16449731652390978039.a n = A245536 (n + 1)

end A245536

/-! ## A245536.P1481501689399021899

`A144790(n+1)-A103451(A245541(n+1))`
-/

namespace A245536.P1481501689399021899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144790 (n + 1) - A103451 (A245541 (n + 1)).toNat

end

end A245536.P1481501689399021899

namespace A245536

/-- `A144790(n+1)-A103451(A245541(n+1))` -/
def P1481501689399021899.Spec : Prop :=
  ∀ n, P1481501689399021899.a n = A245536 (n + 1)

end A245536

/-! ## A245536.P12628747831903233270

`A361430(A374717(n+2))`
-/

namespace A245536.P12628747831903233270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361430 (A374717 (n + 2)).toNat

end

end A245536.P12628747831903233270

namespace A245536

/-- `A361430(A374717(n+2))` -/
def P12628747831903233270.Spec : Prop :=
  ∀ n, P12628747831903233270.a n = A245536 (n + 1)

end A245536

/-!
# A245537: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=A083424(k-r-1), or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=A083424(k-r-1)*a(j).

The programs for A245537, there is no canonical definition to state claims against.
-/

/-! ## A245537.P4614780062505893215

`A245538(n+1)/A080100(A161820(n+1))`
-/

namespace A245537.P4614780062505893215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245538 (n + 1) : ℚ) / (A080100 (A161820 (n + 1)).toNat : ℚ)

end

end A245537.P4614780062505893215

/-! ## A245537.P13387354141472044187

`A160239(n+1)/A160239(A256701(n+1))`
-/

namespace A245537.P13387354141472044187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160239 (n + 1) : ℚ) / (A160239 (A256701 (n + 1)).toNat : ℚ)

end

end A245537.P13387354141472044187

/-! ## A245537.P14988048976558893782

`A245180(n+1)/A245180(A256701(n+1))`
-/

namespace A245537.P14988048976558893782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245180 (n + 1) : ℚ) / (A245180 (A256701 (n + 1)).toNat : ℚ)

end

end A245537.P14988048976558893782

/-! ## A245537.P12773247746417695632

`A245538(n+1)*A245541(n+1)/A245547(n+1)`
-/

namespace A245537.P12773247746417695632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245538 (n + 1) * A245541 (n + 1) : ℚ) / (A245547 (n + 1) : ℚ)

end

end A245537.P12773247746417695632

/-! ## A245537.P6129042631541873488

`A245538(n+1)²/sqrt(A160239(n+1)/8*A245538(n+1))`
-/

namespace A245537.P6129042631541873488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A245538 (n + 1) ^ 2 : ℝ) / Real.sqrt ((A160239 (n + 1) : ℚ) / 8 * (A245538 (n + 1) : ℚ) : ℝ)

end

end A245537.P6129042631541873488

/-! ## A245537.P520169485292722655

`A245538(n+1)/A245547(A256701(n+1))`
-/

namespace A245537.P520169485292722655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245538 (n + 1) : ℚ) / (A245547 (A256701 (n + 1)).toNat : ℚ)

end

end A245537.P520169485292722655

/-! ## A245537.P1904759357969386830

`A245538(n+1)²/A245539(n+1)`
-/

namespace A245537.P1904759357969386830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245538 (n + 1) ^ 2 : ℚ) / (A245539 (n + 1) : ℚ)

end

end A245537.P1904759357969386830

/-! ## A245537.P4123704427603014079

`A245538(n+1)/A245180(n+1)*A245539(n+1)`
-/

namespace A245537.P4123704427603014079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245538 (n + 1) : ℚ) / (A245180 (n + 1) : ℚ) * (A245539 (n + 1) : ℚ)

end

end A245537.P4123704427603014079

/-! ## A245537.P17974111413370589067

`(A245541(n+1)/A245547(n+1))²*A245539(n+1)`
-/

namespace A245537.P17974111413370589067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A245541 (n + 1) : ℚ) / (A245547 (n + 1) : ℚ)) ^ 2 * (A245539 (n + 1) : ℚ)

end

end A245537.P17974111413370589067

/-!
# A245538: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=A083424(k-r-1), or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=2*A083424(k-r-1)*a(j).

The programs for A245538, there is no canonical definition to state claims against.
-/

/-! ## A245538.P8502267612256029704

`A245180(n+1)%(6*A245537(n+1))`
-/

namespace A245538.P8502267612256029704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245180 (n + 1)) (6 * A245537 (n + 1))

end

end A245538.P8502267612256029704

/-! ## A245538.P3651835563017117654

`A080100(A161820(n+1))*A245537(n+1)`
-/

namespace A245538.P3651835563017117654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A161820 (n + 1)).toNat * A245537 (n + 1)

end

end A245538.P3651835563017117654

/-! ## A245538.P14482253209030436021

`A245180(n+1)%A008458(A245537(n+1))`
-/

namespace A245538.P14482253209030436021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245180 (n + 1)) (A008458 (A245537 (n + 1)).toNat)

end

end A245538.P14482253209030436021

/-! ## A245538.P16128444866608618566

`A245180(n+1)/A080100(A161820(n+1))²`
-/

namespace A245538.P16128444866608618566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245180 (n + 1) : ℚ) / (A080100 (A161820 (n + 1)).toNat ^ 2 : ℚ)

end

end A245538.P16128444866608618566

/-! ## A245538.P6227121199684198356

`Δ[A245542(n)/8]%A008458(A245537(n+1))`
-/

namespace A245538.P6227121199684198356
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245542 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A008458 (A245537 (n + 1)).toNat)

end

end A245538.P6227121199684198356

/-! ## A245538.P904824744777997297

`(A160239(n+1)/8)%A008458(A245537(n+1))`
-/

namespace A245538.P904824744777997297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A160239 (n + 1) : ℚ) / 8)) (A008458 (A245537 (n + 1)).toNat)

end

end A245538.P904824744777997297

/-! ## A245538.P8379900759985167787

`A245537(n+1)/A245541(n+1)*A245547(n+1)`
-/

namespace A245538.P8379900759985167787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245537 (n + 1) : ℚ) / (A245541 (n + 1) : ℚ) * (A245547 (n + 1) : ℚ)

end

end A245538.P8379900759985167787

/-! ## A245538.P6737475480321568846

`(A245541(n+1)/A245547(n+1))²*A245180(n+1)`
-/

namespace A245538.P6737475480321568846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A245541 (n + 1) : ℚ) / (A245547 (n + 1) : ℚ)) ^ 2 * (A245180 (n + 1) : ℚ)

end

end A245538.P6737475480321568846

/-! ## A245538.P3893509267144029313

`A245537(n+1)*A245547(A256701(n+1))`
-/

namespace A245538.P3893509267144029313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245537 (n + 1) * A245547 (A256701 (n + 1)).toNat

end

end A245538.P3893509267144029313

/-! ## A245538.P1712631298487531670

`A245180(n+1)/A245547(A256701(n+1))²`
-/

namespace A245538.P1712631298487531670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245180 (n + 1) : ℚ) / (A245547 (A256701 (n + 1)).toNat ^ 2 : ℚ)

end

end A245538.P1712631298487531670

/-!
# A245539: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=A083424(k-r-1), or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=4*A083424(k-r-1)*a(j).

The programs for A245539, there is no canonical definition to state claims against.
-/

/-! ## A245539.P8064904458245149981

`sqrt(A245180(n+1)*A245538(n+1))`
-/

namespace A245539.P8064904458245149981
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A245180 (n + 1) * A245538 (n + 1) : ℝ)

end

end A245539.P8064904458245149981

/-! ## A245539.P1496249320659437737

`A245538(n+1)²/A245537(n+1)`
-/

namespace A245539.P1496249320659437737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245538 (n + 1) ^ 2 : ℚ) / (A245537 (n + 1) : ℚ)

end

end A245539.P1496249320659437737

/-! ## A245539.P10680660953366804717

`sqrt(Δ[A245542(n)/8]*A245538(n+1))`
-/

namespace A245539.P10680660953366804717
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245542 n : ℚ) / 8

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((f1 (n + 1) - f1 n) * (A245538 (n + 1) : ℚ) : ℝ)

end

end A245539.P10680660953366804717

/-! ## A245539.P3794240721967145439

`sqrt(A160239(n+1)/8*A245538(n+1))`
-/

namespace A245539.P3794240721967145439
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A160239 (n + 1) : ℚ) / 8 * (A245538 (n + 1) : ℚ) : ℝ)

end

end A245539.P3794240721967145439

/-! ## A245539.P7838103931379053917

`A080100(A161820(n+1))*A245538(n+1)`
-/

namespace A245539.P7838103931379053917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A161820 (n + 1)).toNat * A245538 (n + 1)

end

end A245539.P7838103931379053917

/-! ## A245539.P17725046906116139413

`A245538(n+1)*A245547(A256701(n+1))`
-/

namespace A245539.P17725046906116139413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245538 (n + 1) * A245547 (A256701 (n + 1)).toNat

end

end A245539.P17725046906116139413

/-! ## A245539.P11553809731158305053

`A245180(n+1)/A080100(A161820(n+1))`
-/

namespace A245539.P11553809731158305053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245180 (n + 1) : ℚ) / (A080100 (A161820 (n + 1)).toNat : ℚ)

end

end A245539.P11553809731158305053

/-! ## A245539.P687452475209922315

`A245180(n+1)/A245547(A256701(n+1))`
-/

namespace A245539.P687452475209922315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245180 (n + 1) : ℚ) / (A245547 (A256701 (n + 1)).toNat : ℚ)

end

end A245539.P687452475209922315

/-! ## A245539.P9782067879280310853

`A080100(A161820(n+1))²*A245537(n+1)`
-/

namespace A245539.P9782067879280310853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A161820 (n + 1)).toNat ^ 2 * A245537 (n + 1)

end

end A245539.P9782067879280310853

/-! ## A245539.P136390092385044384

`A245547(A256701(n+1))²*A245537(n+1)`
-/

namespace A245539.P136390092385044384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245547 (A256701 (n + 1)).toNat ^ 2 * A245537 (n + 1)

end

end A245539.P136390092385044384

/-!
# A245540: Partial sums of A245180.

The programs for A245540, there is no canonical definition to state claims against.
-/

/-! ## A245540.P7241864560272259756

`(A245542(n+1)-1)/8`
-/

namespace A245540.P7241864560272259756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245542 (n + 1) - 1 : ℚ) / 8

end

end A245540.P7241864560272259756

/-! ## A245540.P1876294555237936105

`∑[A245180(n+1)]`
-/

namespace A245540.P1876294555237936105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245540.P1876294555237936105

/-! ## A245540.P6656561253198775758

`∑[Δ[A245542(n)]/8]`
-/

namespace A245540.P6656561253198775758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245542 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245540.P6656561253198775758

/-! ## A245540.P1514517786170402411

`∑[A160239(n+1)/8]`
-/

namespace A245540.P1514517786170402411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160239 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245540.P1514517786170402411

/-! ## A245540.P1016843715555635244

`∑[∑[round(A245543(n)/8)]]`
-/

namespace A245540.P1016843715555635244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A245543 n : ℚ) / 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245540.P1016843715555635244

/-! ## A245540.P1343770500365891051

`A245180(2*(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A245540.P1343770500365891051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A245180 (2 * (n + 1)) + a (n - 1)

end

end A245540.P1343770500365891051

/-! ## A245540.P3104356536577577408

`∑[A026730(A160239(n+1))]`
-/

namespace A245540.P3104356536577577408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (A160239 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245540.P3104356536577577408

/-! ## A245540.P7702956798766935192

`A110962(A245542(n+1))`
-/

namespace A245540.P7702956798766935192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (A245542 (n + 1)).toNat

end

end A245540.P7702956798766935192

/-!
# A245541: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=(k-r)*(k-r+1)/2, or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=((k-r)*(k-r+1)/2)*a(j).

The programs for A245541, there is no canonical definition to state claims against.
-/

/-! ## A245541.P759825505887921616

`∏{e}[A278222(n+1), C(#+1, 2)]`
-/

namespace A245541.P759825505887921616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.choose (Nat.factorization (f1 n).natAbs p + 1) 2

end

end A245541.P759825505887921616

/-! ## A245541.P2853539149151173036

`∏{e}[A278222(n+1), A000217(#)]`
-/

namespace A245541.P2853539149151173036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000217 (Nat.factorization (f1 n).natAbs p)

end

end A245541.P2853539149151173036

/-! ## A245541.P12950712833357715056

`∏{e}[A332815(n+1), A000217(#)]`
-/

namespace A245541.P12950712833357715056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000217 (Nat.factorization (f1 n).natAbs p)

end

end A245541.P12950712833357715056

/-! ## A245541.P10570662497406459006

`∏{e}[A278222(n+1), A119663(#)]`
-/

namespace A245541.P10570662497406459006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A119663 (Nat.factorization (f1 n).natAbs p)

end

end A245541.P10570662497406459006

/-! ## A245541.P2998119606194995155

`∏{e}[A005940(n+2), A000217(#)]`
-/

namespace A245541.P2998119606194995155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000217 (Nat.factorization (f1 n).natAbs p)

end

end A245541.P2998119606194995155

/-! ## A245541.P1433277714254494880

`∏{e}[A005940(n+2), A096895(#)]`
-/

namespace A245541.P1433277714254494880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A096895 (Nat.factorization (f1 n).natAbs p)

end

end A245541.P1433277714254494880

/-! ## A245541.P16601830216922994730

`∏{e}[A005940(n+2), A130488(#)]`
-/

namespace A245541.P16601830216922994730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A130488 (Nat.factorization (f1 n).natAbs p)

end

end A245541.P16601830216922994730

/-! ## A245541.P17575551352893634796

`∏{e}[A005940(n+2)², A160791(#)]`
-/

namespace A245541.P17575551352893634796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A160791 (Nat.factorization (f1 n).natAbs p)

end

end A245541.P17575551352893634796

/-! ## A245541.P2610322065538034762

`∏{e}[A005940(n+2)², A198148(#)]`
-/

namespace A245541.P2610322065538034762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A198148 (Nat.factorization (f1 n).natAbs p)

end

end A245541.P2610322065538034762

/-! ## A245541.P16371470683738380217

`A245537(n+1)/A245538(n+1)*A245547(n+1)`
-/

namespace A245541.P16371470683738380217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245537 (n + 1) : ℚ) / (A245538 (n + 1) : ℚ) * (A245547 (n + 1) : ℚ)

end

end A245541.P16371470683738380217

/-!
# A245542: Partial sums of A160239.

The programs for A245542, there is no canonical definition to state claims against.
-/

/-! ## A245542.P17369155423803674349

`∑[A160239(n)]`
-/

namespace A245542.P17369155423803674349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245542.P17369155423803674349

/-! ## A245542.P678393858296291277

`a(n-1)+8*A245180(n)` with `a(0)=1`
-/

namespace A245542.P678393858296291277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 8 * A245180 n

end

end A245542.P678393858296291277

/-! ## A245542.P15120945390665141257

`A160239(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A245542.P15120945390665141257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160239 (2 * n) + a (n - 1)

end

end A245542.P15120945390665141257

/-! ## A245542.P9738643528714963703

`∑[A245180(4*n+1)]`
-/

namespace A245542.P9738643528714963703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245542.P9738643528714963703

/-! ## A245542.P6542563723744060604

`∑[A245180(A016813(n))%A000579(n+9)]`
-/

namespace A245542.P6542563723744060604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245180 (A016813 n).toNat) (A000579 (n + 9))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245542.P6542563723744060604

/-! ## A245542.P10184613211857777048

`or(1, ∑[A245180(A017077(n))])`
-/

namespace A245542.P10184613211857777048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (A017077 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245542.P10184613211857777048

/-! ## A245542.P10306293504192896113

`∑[A245180(A016813(n))]%A001835(n+2)`
-/

namespace A245542.P10306293504192896113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (A016813 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001835 (n + 2))

end

end A245542.P10306293504192896113

/-! ## A245542.P3463211992389408455

`∑[A245180(A016813(n))^A002828(n²)]`
-/

namespace A245542.P3463211992389408455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245180 (A016813 n).toNat : ℚ) ^ (A002828 (n ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245542.P3463211992389408455

/-!
# A245543: First differences of A160239.

The programs for A245543, there is no canonical definition to state claims against.
-/

/-! ## A245543.P6249164104775906375

`Δ[A160239(n)]`
-/

namespace A245543.P6249164104775906375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245543.P6249164104775906375

/-! ## A245543.P1027672456921203160

`A160239(n+1)-A160239(n)`
-/

namespace A245543.P1027672456921203160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160239 (n + 1) - A160239 n

end

end A245543.P1027672456921203160

/-! ## A245543.P14607432104476105128

`Δ[A245542(n)]-A245180(lcm(4, n)+1)`
-/

namespace A245543.P14607432104476105128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A245180 (Nat.lcm 4 n + 1)

end

end A245543.P14607432104476105128

/-! ## A245543.P16571192872837955601

`Δ[A245542(n)]-A245180(A109045(n)+1)`
-/

namespace A245543.P16571192872837955601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A245180 (A109045 n + 1).toNat

end

end A245543.P16571192872837955601

/-! ## A245543.P12234772888374100417

`Δ[A245180(lcm(4, n)+1)]`
-/

namespace A245543.P12234772888374100417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (Nat.lcm 4 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245543.P12234772888374100417

/-! ## A245543.P13275189840308884051

`Δ[A245180(A109045(n)+1)]`
-/

namespace A245543.P13275189840308884051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (A109045 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245543.P13275189840308884051

/-! ## A245543.P15309414213811717221

`Δ[A245542(n)]-A245180(4*n+1)`
-/

namespace A245543.P15309414213811717221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A245180 (4 * n + 1)

end

end A245543.P15309414213811717221

/-! ## A245543.P15317085402288995165

`Δ[A245180(4*n+1)]`
-/

namespace A245543.P15317085402288995165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245543.P15317085402288995165

/-! ## A245543.P7838180751236288824

`A245180(A016813(n+1))-A245180(A016813(n))`
-/

namespace A245543.P7838180751236288824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (A016813 (n + 1)).toNat - A245180 (A016813 n).toNat

end

end A245543.P7838180751236288824

/-! ## A245543.P7829907760495341504

`A245180(A017077(n+1))-A245180(A017077(n))`
-/

namespace A245543.P7829907760495341504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (A017077 (n + 1)).toNat - A245180 (A017077 n).toNat

end

end A245543.P7829907760495341504

/-! ## A245543.P2220207999286241825

`A245180(A017089(n+1))-A245180(A017089(n))`
-/

namespace A245543.P2220207999286241825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (A017089 (n + 1)).toNat - A245180 (A017089 n).toNat

end

end A245543.P2220207999286241825

/-! ## A245543.P14303992510629727192

`A245180(A158057(n+1))-A245180(A158057(n))`
-/

namespace A245543.P14303992510629727192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (A158057 (n + 1)).toNat - A245180 (A158057 n).toNat

end

end A245543.P14303992510629727192

/-! ## A245543.P15140010479776495536

`A245180(A119413(n+2))-A245180(A119413(2*n+1))`
-/

namespace A245543.P15140010479776495536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (A119413 (n + 2)).toNat - A245180 (A119413 (2 * n + 1)).toNat

end

end A245543.P15140010479776495536

/-! ## A245543.P8866887118701948692

`A245180(A305075(n+2))-A245180(A305075(2*n+1))`
-/

namespace A245543.P8866887118701948692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245180 (A305075 (n + 2)).toNat - A245180 (A305075 (2 * n + 1)).toNat

end

end A245543.P8866887118701948692

/-!
# A245544: Number of essentially controllable graphs on n nodes.

The programs for A245544, there is no canonical definition to state claims against.
-/

/-! ## A245544.P16984362274102830268

`A124059(n+1)+A110654(A003400(n+2))`
-/

namespace A245544.P16984362274102830268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124059 (n + 1) + A110654 (A003400 (n + 2)).toNat

end

end A245544.P16984362274102830268

/-!
# A245545: Number of completely uncontrollable graphs on n nodes.

The programs for A245545, there is no canonical definition to state claims against.
-/

/-! ## A245545.P5632631369487014879

`A242748(A373928(n+1))+round((lcm(3, n)-n)/6)`
-/

namespace A245545.P5632631369487014879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242748 (A373928 (n + 1)).toNat + SequenceMachineLib.roundAway (((Nat.lcm 3 n : ℤ) - (n : ℤ) : ℚ) / 6)

end

end A245545.P5632631369487014879

/-! ## A245545.P4061508862464109178

`A143998(A006013(n))+A131555(n)`
-/

namespace A245545.P4061508862464109178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143998 (A006013 n).toNat + A131555 n

end

end A245545.P4061508862464109178

/-!
# A245546: Number of conditionally controllable graphs on n nodes.

The programs for A245546, there is no canonical definition to state claims against.
-/

/-! ## A245546.P9763068167207182911

`A001349(n+2)-A245544(n+2)-A245545(n+2)`
-/

namespace A245546.P9763068167207182911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 2) - A245544 (n + 2) - A245545 (n + 2)

end

end A245546.P9763068167207182911

/-!
# A245547: Write n>=1 as either n=2^k-2^r with 0 <= r <= k-1, in which case a(2^k-2^r)=(k-r)*(k-r+1)/2, or as n=2^k-2^r+j with 2 <= r <= k-1, 1 <= j < 2^r-1, in which case a(2^k-2^r+j)=(k-r)*(k-r+1)*a(j).

The programs for A245547, there is no canonical definition to state claims against.
-/

/-! ## A245547.P6966991131513480330

`A106737(n+1)/2*A227349(n+1)`
-/

namespace A245547.P6966991131513480330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106737 (n + 1) : ℚ) / 2 * (A227349 (n + 1) : ℚ)

end

end A245547.P6966991131513480330

/-! ## A245547.P11375580599659585259

`A025480(A106737(n+1)*A227349(n+1))`
-/

namespace A245547.P11375580599659585259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A106737 (n + 1) * A227349 (n + 1)).toNat

end

end A245547.P11375580599659585259

/-! ## A245547.P916087235510580944

`A080100(A161820(n+1))*A245541(n+1)`
-/

namespace A245547.P916087235510580944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 (A161820 (n + 1)).toNat * A245541 (n + 1)

end

end A245547.P916087235510580944

/-! ## A245547.P5125617226474703911

`A245538(n+1)/A245537(n+1)*A245541(n+1)`
-/

namespace A245547.P5125617226474703911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245538 (n + 1) : ℚ) / (A245537 (n + 1) : ℚ) * (A245541 (n + 1) : ℚ)

end

end A245547.P5125617226474703911

/-! ## A245547.P11936773951495585462

`A245180(n+1)/A245539(n+1)*A245541(n+1)`
-/

namespace A245547.P11936773951495585462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245180 (n + 1) : ℚ) / (A245539 (n + 1) : ℚ) * (A245541 (n + 1) : ℚ)

end

end A245547.P11936773951495585462

/-! ## A245547.P17605461417595505589

`A245539(n+1)/A245538(n+1)*A245541(n+1)`
-/

namespace A245547.P17605461417595505589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245539 (n + 1) : ℚ) / (A245538 (n + 1) : ℚ) * (A245541 (n + 1) : ℚ)

end

end A245547.P17605461417595505589

/-!
# A245548: Number of distinct sum representations of n by Fibonacci numbers with minimal digit sum.

The programs for A245548, there is no canonical definition to state claims against.
-/

/-! ## A245548.P12880374018848873823

`A337565(A041409(n)%A000040(n+1))`
-/

namespace A245548.P12880374018848873823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337565 (Int.tmod (A041409 n) (A000040 (n + 1))).toNat

end

end A245548.P12880374018848873823

/-! ## A245548.P9293411205085502450

`gcd(A002039(n), A327983(A084386(n)))`
-/

namespace A245548.P9293411205085502450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002039 n) (A327983 (A084386 n).toNat)

end

end A245548.P9293411205085502450

/-! ## A245548.P3597172602810161284

`A014963(gcd(A000376(n+1), A052893(n)))`
-/

namespace A245548.P3597172602810161284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.gcd (A000376 (n + 1)) (A052893 n))

end

end A245548.P3597172602810161284

/-! ## A245548.P7569571465502001645

`A115583(A390329(2*(n+2))+A331843(n))`
-/

namespace A245548.P7569571465502001645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115583 (A390329 (2 * (n + 2)) + A331843 n).toNat

end

end A245548.P7569571465502001645

/-! ## A245548.P16197794217683551396

`A007318(A076091(n+1)%A323727(4*n+2))`
-/

namespace A245548.P16197794217683551396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.tmod (A076091 (n + 1)) (A323727 (4 * n + 2))).toNat

end

end A245548.P16197794217683551396

/-!
# A245549: State of one-dimensional cellular automaton 'sigma' (Rule 30): 000,001,010,011,100,101,110,111 -> 0,0,0,1,1,1,1,0 at generation n, regarded as a binary number.

The programs for A245549, there is no canonical definition to state claims against.
-/

/-! ## A245549.P10862849946150408846

`A007088(A110240(n))`
-/

namespace A245549.P10862849946150408846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A110240 n).toNat

end

end A245549.P10862849946150408846

/-! ## A245549.P7385904764672223740

`A007088(A269168(2^n))`
-/

namespace A245549.P7385904764672223740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A269168 (2 ^ n)).toNat

end

end A245549.P7385904764672223740

/-! ## A245549.P14936687315118056783

`A007088(eq[1, A269165(n)])`
-/

namespace A245549.P14936687315118056783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245549.P14936687315118056783

/-! ## A245549.P1215202783302926040

`A007088(record[A269168(n+1)])`
-/

namespace A245549.P1215202783302926040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A245549.P1215202783302926040

/-!
# A245550: a(0)=0; for n >= 1, a(n) = f(n) - 2*f(floor((n-1)/2)), where f(n) = A006046(n).

The programs for A245550, the canonical program `A245550.P6354447121910343670` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245550 has offset 0).

The definition of A245550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245550.P6354447121910343670

`A006046(floor(n/2))+sqrt(A177241(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A245550

/-- `A006046(floor(n/2))+sqrt(A177241(n))` -/
def P6354447121910343670.Spec : Prop :=
  ∀ n, P6354447121910343670.a n = (A245550 n : ℝ)

end A245550

/-!
# A245551: Expansion of 1/(1 - 2*x - 3*x^2)^(5/2).

The programs for A245551, the canonical program `A245551.P3119843281143866007` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245551 has offset 0).

The definition of A245551 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245551.P3119843281143866007

`(2+3/n)*a(n-1)+(3+9/n)*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245551

/-- `(2+3/n)*a(n-1)+(3+9/n)*a(n-2)` -/
def P3119843281143866007.Spec : Prop :=
  ∀ n, P3119843281143866007.a n = (A245551 n : ℚ)

end A245551

/-! ## A245551.P18216967843736574905

`∑[A371408(n+4)]`
-/

namespace A245551.P18216967843736574905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371408 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245551.P18216967843736574905

namespace A245551

/-- `∑[A371408(n+4)]` -/
def P18216967843736574905.Spec : Prop :=
  ∀ n, P18216967843736574905.a n = A245551 n

end A245551

/-! ## A245551.P7613057754168708692

`∑[∑[∑[n+1]]*A001006(n)]`
-/

namespace A245551.P7613057754168708692
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A001006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245551.P7613057754168708692

namespace A245551

/-- `∑[∑[∑[n+1]]*A001006(n)]` -/
def P7613057754168708692.Spec : Prop :=
  ∀ n, P7613057754168708692.a n = A245551 n

end A245551

/-! ## A245551.P2386398172931754643

`∑[∑[∑[n+1]]*A086246(n+2)]`
-/

namespace A245551.P2386398172931754643
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A086246 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245551.P2386398172931754643

namespace A245551

/-- `∑[∑[∑[n+1]]*A086246(n+2)]` -/
def P2386398172931754643.Spec : Prop :=
  ∀ n, P2386398172931754643.a n = A245551 n

end A245551

/-! ## A245551.P9896731803498869724

`∑[∑[∑[n+1]]*A168049(n+2)]`
-/

namespace A245551.P9896731803498869724
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A168049 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245551.P9896731803498869724

namespace A245551

/-- `∑[∑[∑[n+1]]*A168049(n+2)]` -/
def P9896731803498869724.Spec : Prop :=
  ∀ n, P9896731803498869724.a n = A245551 n

end A245551

/-! ## A245551.P4638775660944553388

`∑[abs(A058187(2*n)*A166587(n+1))]`
-/

namespace A245551.P4638775660944553388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058187 (2 * n) * A166587 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245551.P4638775660944553388

namespace A245551

/-- `∑[abs(A058187(2*n)*A166587(n+1))]` -/
def P4638775660944553388.Spec : Prop :=
  ∀ n, P4638775660944553388.a n = A245551 n

end A245551

/-! ## A245551.P14258590974827012332

`∑[n+1]*A005773(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A245551.P14258590974827012332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005773 (n + 1) - a (n - 1)

end

end A245551.P14258590974827012332

namespace A245551

/-- `∑[n+1]*A005773(n+1)-a(n-1)` -/
def P14258590974827012332.Spec : Prop :=
  ∀ n, P14258590974827012332.a n = A245551 n

end A245551

/-! ## A245551.P11530980686311944403

`A375248(n)/A375259(n)*A375253(n)`
-/

namespace A245551.P11530980686311944403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375248 n : ℚ) / (A375259 n : ℚ) * (A375253 n : ℚ)

end

end A245551.P11530980686311944403

namespace A245551

/-- `A375248(n)/A375259(n)*A375253(n)` -/
def P11530980686311944403.Spec : Prop :=
  ∀ n, P11530980686311944403.a n = (A245551 n : ℚ)

end A245551

/-! ## A245551.P10819211555987248720

`∑[A000292(n+1)*A064189(∑[n])]`
-/

namespace A245551.P10819211555987248720
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A064189 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245551.P10819211555987248720

namespace A245551

/-- `∑[A000292(n+1)*A064189(∑[n])]` -/
def P10819211555987248720.Spec : Prop :=
  ∀ n, P10819211555987248720.a n = A245551 n

end A245551

/-!
# A245552: G.f.: Sum_{n>=0} (2*n+1)*x^(n^2+n+1).

The programs for A245552, the canonical program `A245552.P13288612625142451457` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245552 has offset 0).

The definition of A245552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245552.P8903454579057736835

`Δ[round(sqrt(and(n, -2)))²]`
-/

namespace A245552.P8903454579057736835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.land (n : ℤ) (-2) : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245552.P8903454579057736835

namespace A245552

/-- `Δ[round(sqrt(and(n, -2)))²]` -/
def P8903454579057736835.Spec : Prop :=
  ∀ n, P8903454579057736835.a n = A245552 n

end A245552

/-! ## A245552.P2689679361168633793

`Δ[round(sqrt(or(1, n)-1))²]`
-/

namespace A245552.P2689679361168633793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.lor 1 n : ℤ) - 1 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245552.P2689679361168633793

namespace A245552

/-- `Δ[round(sqrt(or(1, n)-1))²]` -/
def P2689679361168633793.Spec : Prop :=
  ∀ n, P2689679361168633793.a n = A245552 n

end A245552

/-! ## A245552.P13288612625142451457

`Δ[A123578(floor(n/2))²]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245552

/-- `Δ[A123578(floor(n/2))²]` -/
def P13288612625142451457.Spec : Prop :=
  ∀ n, P13288612625142451457.a n = A245552 n

theorem P13288612625142451457.correct : P13288612625142451457.Spec := by
  intro n
  simp only [A245552]

end A245552

/-! ## A245552.P3722914564816715149

`A053187(n)-A053187(and(n, -2))`
-/

namespace A245552.P3722914564816715149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 n - A053187 (Int.land (n : ℤ) (-2)).toNat

end

end A245552.P3722914564816715149

namespace A245552

/-- `A053187(n)-A053187(and(n, -2))` -/
def P3722914564816715149.Spec : Prop :=
  ∀ n, P3722914564816715149.a n = A245552 n

end A245552

/-! ## A245552.P9085965313289697296

`A053187(n)-A053187(n-n%2)`
-/

namespace A245552.P9085965313289697296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 n - A053187 (n - n % 2)

end

end A245552.P9085965313289697296

namespace A245552

/-- `A053187(n)-A053187(n-n%2)` -/
def P9085965313289697296.Spec : Prop :=
  ∀ n, P9085965313289697296.a n = A245552 n

end A245552

/-! ## A245552.P2065874529913424480

`A053187(n)-A053187(2*floor(n/2))`
-/

namespace A245552.P2065874529913424480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053187 n - A053187 (2 * ⌊(n : ℚ) / 2⌋).toNat

end

end A245552.P2065874529913424480

namespace A245552

/-- `A053187(n)-A053187(2*floor(n/2))` -/
def P2065874529913424480.Spec : Prop :=
  ∀ n, P2065874529913424480.a n = A245552 n

end A245552

/-! ## A245552.P1442124191653418723

`∑{d}[n+1, A063524(#-1)*A198954((n+1)/#-1)]`
-/

namespace A245552.P1442124191653418723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063524 (d - 1) * A198954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A245552.P1442124191653418723

namespace A245552

/-- `∑{d}[n+1, A063524(#-1)*A198954((n+1)/#-1)]` -/
def P1442124191653418723.Spec : Prop :=
  ∀ n, P1442124191653418723.a n = A245552 n

end A245552

/-! ## A245552.P10741101076774305009

`A000194(n)²-A000194(A052928(n))²`
-/

namespace A245552.P10741101076774305009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 n ^ 2 - A000194 (A052928 n).toNat ^ 2

end

end A245552.P10741101076774305009

namespace A245552

/-- `A000194(n)²-A000194(A052928(n))²` -/
def P10741101076774305009.Spec : Prop :=
  ∀ n, P10741101076774305009.a n = A245552 n

end A245552

/-! ## A245552.P1342737010328204005

`Δ[∑[char[2*(∑[n]+1)]]²]`
-/

namespace A245552.P1342737010328204005
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f4 j + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A245552.P1342737010328204005

namespace A245552

/-- `Δ[∑[char[2*(∑[n]+1)]]²]` -/
def P1342737010328204005.Spec : Prop :=
  ∀ n, P1342737010328204005.a n = A245552 n

end A245552

/-! ## A245552.P14272869192457649515

`abs(Δ[A274093(A004526(n))])`
-/

namespace A245552.P14272869192457649515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274093 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A245552.P14272869192457649515

namespace A245552

/-- `abs(Δ[A274093(A004526(n))])` -/
def P14272869192457649515.Spec : Prop :=
  ∀ n, P14272869192457649515.a n = A245552 n

end A245552

/-! ## A245552.P1775413729464198482

`A130296(eq[1, A057212(n+1)])-1`
-/

namespace A245552.P1775413729464198482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A245552.P1775413729464198482

namespace A245552

/-- `A130296(eq[1, A057212(n+1)])-1` -/
def P1775413729464198482.Spec : Prop :=
  ∀ n, P1775413729464198482.a n = A245552 n

end A245552

/-! ## A245552.P14448835083710452088

`A037213(eq[0, n*A008425(n)])`
-/

namespace A245552.P14448835083710452088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245552.P14448835083710452088

namespace A245552

/-- `A037213(eq[0, n*A008425(n)])` -/
def P14448835083710452088.Spec : Prop :=
  ∀ n, P14448835083710452088.a n = A245552 n

end A245552

/-! ## A245552.P10407242425328725825

`A037213(eq[A008425(n)², A008425(n)])`
-/

namespace A245552.P10407242425328725825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A245552.P10407242425328725825

namespace A245552

/-- `A037213(eq[A008425(n)², A008425(n)])` -/
def P10407242425328725825.Spec : Prop :=
  ∀ n, P10407242425328725825.a n = A245552 n

end A245552

/-! ## A245552.P5204170968164622046

`A037213(eq[A008425(n), A037213(n+1)])`
-/

namespace A245552.P5204170968164622046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A245552.P5204170968164622046

namespace A245552

/-- `A037213(eq[A008425(n), A037213(n+1)])` -/
def P5204170968164622046.Spec : Prop :=
  ∀ n, P5204170968164622046.a n = A245552 n

end A245552

/-! ## A245552.P786968466372048852

`A037213(eq[A037213(n+1), A131379(n)])`
-/

namespace A245552.P786968466372048852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A245552.P786968466372048852

namespace A245552

/-- `A037213(eq[A037213(n+1), A131379(n)])` -/
def P786968466372048852.Spec : Prop :=
  ∀ n, P786968466372048852.a n = A245552 n

end A245552

/-!
# A245553: A Rauzy fractal sequence: trajectory of 1 under morphism 1 -> 2,3; 2 -> 3; 3 -> 1.

The programs for A245553, there is no canonical definition to state claims against.
-/

/-! ## A245553.P17250062546950783465

`7%(A287160(n+1)+3)`
-/

namespace A245553.P17250062546950783465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A287160 (n + 1) + 3)

end

end A245553.P17250062546950783465

/-! ## A245553.P7560404536457771500

`A003188(a(A287160(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A245553.P7560404536457771500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A003188 (a (A287160 (n + 1)).toNat).toNat

end

end A245553.P7560404536457771500

/-! ## A245553.P5210483220121923546

`A006369(a(A287160(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A245553.P5210483220121923546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006369 (a (A287160 (n + 1)).toNat).toNat

end

end A245553.P5210483220121923546

/-! ## A245553.P389729973816305123

`A026136(a(A287160(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A245553.P389729973816305123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A026136 (a (A287160 (n + 1)).toNat).toNat

end

end A245553.P389729973816305123

/-! ## A245553.P17003552937299936148

`A038722(a(A287160(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A245553.P17003552937299936148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A038722 (a (A287160 (n + 1)).toNat).toNat

end

end A245553.P17003552937299936148

/-! ## A245553.P1026164700588165875

`A054068(a(A287160(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A245553.P1026164700588165875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A054068 (a (A287160 (n + 1)).toNat).toNat

end

end A245553.P1026164700588165875

/-! ## A245553.P18177325214097886659

`A054429(a(A287160(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A245553.P18177325214097886659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A054429 (a (A287160 (n + 1)).toNat).toNat

end

end A245553.P18177325214097886659

/-! ## A245553.P13165175156498528267

`A057501(a(A287160(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A245553.P13165175156498528267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A057501 (a (A287160 (n + 1)).toNat).toNat

end

end A245553.P13165175156498528267

/-! ## A245553.P9830655992601178159

`A069773(a(A287160(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A245553.P9830655992601178159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A069773 (a (A287160 (n + 1)).toNat).toNat

end

end A245553.P9830655992601178159

/-! ## A245553.P5006091255072823736

`A070151(a(A287160(n+1)))` with `a(0)=1, a(1)=2`
-/

namespace A245553.P5006091255072823736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A070151 (a (A287160 (n + 1)).toNat).toNat

end

end A245553.P5006091255072823736

/-! ## A245553.P13725526473715509860

`A002487(a(A287160(n+1))+3)` with `a(0)=1, a(1)=2`
-/

namespace A245553.P13725526473715509860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A002487 (a (A287160 (n + 1)).toNat + 3).toNat

end

end A245553.P13725526473715509860

/-! ## A245553.P4591196857738642153

`A001222(a(A287160(n+1))+6)` with `a(0)=1, a(1)=2`
-/

namespace A245553.P4591196857738642153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001222 (a (A287160 (n + 1)).toNat + 6).toNat

end

end A245553.P4591196857738642153

/-! ## A245553.P11321994647310399988

`∏{p}[A000032(a(A287160(n+1))), #]` with `a(0)=1, a(1)=2`
-/

namespace A245553.P11321994647310399988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000032 (f1 (A287160 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A245553.P11321994647310399988

/-! ## A245553.P14566207066556460585

`∏{p}[A000203(a(A287160(n+1))), #]` with `a(0)=1, a(1)=2`
-/

namespace A245553.P14566207066556460585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A000203 (f1 (A287160 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A245553.P14566207066556460585

/-!
# A245554: A Rauzy fractal sequence: trajectory of 1 under morphism 1 -> 1,2,1,3; 2 -> 3; 3 -> 1.

The programs for A245554, there is no canonical definition to state claims against.
-/

/-! ## A245554.P6118206447313357956

`A050433(A006512(n+5)-A355311(n+3))`
-/

namespace A245554.P6118206447313357956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050433 (A006512 (n + 5) - A355311 (n + 3)).toNat

end

end A245554.P6118206447313357956

/-! ## A245554.P16710806049149504152

`A112798((∏{e}[n+1, #]+∏{p}[n+1, #])^2^∑{e}[n+1, #-1])`
-/

namespace A245554.P16710806049149504152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + ∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℝ) ^ ((2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f3 n), ((Nat.factorization (f3 n) p : ℤ) - 1) : ℤ) : ℝ))).toNat

end

end A245554.P16710806049149504152

/-! ## A245554.P14573316749280016644

`A001511(∑[A246750(2*(n+1))])`
-/

namespace A245554.P14573316749280016644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246750 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245554.P14573316749280016644

/-! ## A245554.P13331942754315488073

`3-A287397(A085986(2*n+1))`
-/

namespace A245554.P13331942754315488073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A287397 (A085986 (2 * n + 1)).toNat

end

end A245554.P13331942754315488073

/-! ## A245554.P4157416412732694429

`A117278(n+2)+A105700(A128209(n))`
-/

namespace A245554.P4157416412732694429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117278 (n + 2) + A105700 (A128209 n).toNat

end

end A245554.P4157416412732694429

/-!
# A245555: Trajectory of 1 under the morphism 1 -> 12, 2 -> 23, 3 -> 31.

The programs for A245555, the canonical program `A245555.P9775693910196987769` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245555 has offset 1).

The definition of A245555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245555.P9775693910196987769

`8%(2*a(and(n, n-1))+1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245555

/-- `8%(2*a(and(n, n-1))+1)` -/
def P9775693910196987769.Spec : Prop :=
  ∀ n, (P9775693910196987769.a n : ℤ) = A245555 (n + 1)

theorem P9775693910196987769.correct : P9775693910196987769.Spec := by
  intro n
  simp only [A245555, Nat.add_sub_cancel]

end A245555

/-! ## A245555.P2017925819188994987

`A071858(n)+1`
-/

namespace A245555.P2017925819188994987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 n + 1

end

end A245555.P2017925819188994987

namespace A245555

/-- `A071858(n)+1` -/
def P2017925819188994987.Spec : Prop :=
  ∀ n, P2017925819188994987.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P16576430790390834761

`A000120(n)%3+1`
-/

namespace A245555.P16576430790390834761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000120 n) 3 + 1

end

end A245555.P16576430790390834761

namespace A245555

/-- `A000120(n)%3+1` -/
def P16576430790390834761.Spec : Prop :=
  ∀ n, P16576430790390834761.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P9591869327747906273

`A000695(n)%3+1`
-/

namespace A245555.P9591869327747906273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000695 n) 3 + 1

end

end A245555.P9591869327747906273

namespace A245555

/-- `A000695(n)%3+1` -/
def P9591869327747906273.Spec : Prop :=
  ∀ n, P9591869327747906273.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P17424817297945124054

`A007088(n)%3+1`
-/

namespace A245555.P17424817297945124054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 n) 3 + 1

end

end A245555.P17424817297945124054

namespace A245555

/-- `A007088(n)%3+1` -/
def P17424817297945124054.Spec : Prop :=
  ∀ n, P17424817297945124054.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P5010489412097114244

`A033052(n)%3+1`
-/

namespace A245555.P5010489412097114244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033052 n) 3 + 1

end

end A245555.P5010489412097114244

namespace A245555

/-- `A033052(n)%3+1` -/
def P5010489412097114244.Spec : Prop :=
  ∀ n, P5010489412097114244.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P6413832397090534886

`A169967(n+1)%3+1`
-/

namespace A245555.P6413832397090534886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169967 (n + 1)) 3 + 1

end

end A245555.P6413832397090534886

namespace A245555

/-- `A169967(n+1)%3+1` -/
def P6413832397090534886.Spec : Prop :=
  ∀ n, P6413832397090534886.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P12596755090358198527

`(2*n-A005187(n))%3+1`
-/

namespace A245555.P12596755090358198527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n : ℤ) - A005187 n) 3 + 1

end

end A245555.P12596755090358198527

namespace A245555

/-- `(2*n-A005187(n))%3+1` -/
def P12596755090358198527.Spec : Prop :=
  ∀ n, P12596755090358198527.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P4242212462235759219

`A011857(a(and(n, n-1))+1)` with `a(0)=1`
-/

namespace A245555.P4242212462235759219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011857 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

end

end A245555.P4242212462235759219

namespace A245555

/-- `A011857(a(and(n, n-1))+1)` -/
def P4242212462235759219.Spec : Prop :=
  ∀ n, P4242212462235759219.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P6733160954284210726

`A235791(a(and(n, n-1))+1)` with `a(0)=1`
-/

namespace A245555.P6733160954284210726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A235791 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

end

end A245555.P6733160954284210726

namespace A245555

/-- `A235791(a(and(n, n-1))+1)` -/
def P6733160954284210726.Spec : Prop :=
  ∀ n, P6733160954284210726.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P16797158172276049286

`A004736(2*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A245555.P16797158172276049286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004736 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A245555.P16797158172276049286

namespace A245555

/-- `A004736(2*a(and(n, n-1)))` -/
def P16797158172276049286.Spec : Prop :=
  ∀ n, P16797158172276049286.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P5625139815028483862

`A091355(2*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A245555.P5625139815028483862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091355 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A245555.P5625139815028483862

namespace A245555

/-- `A091355(2*a(and(n, n-1)))` -/
def P5625139815028483862.Spec : Prop :=
  ∀ n, P5625139815028483862.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P3713162550188307081

`A307744(2*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A245555.P3713162550188307081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A307744 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A245555.P3713162550188307081

namespace A245555

/-- `A307744(2*a(and(n, n-1)))` -/
def P3713162550188307081.Spec : Prop :=
  ∀ n, P3713162550188307081.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P11943928856924249651

`A337410(2*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A245555.P11943928856924249651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A337410 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A245555.P11943928856924249651

namespace A245555

/-- `A337410(2*a(and(n, n-1)))` -/
def P11943928856924249651.Spec : Prop :=
  ∀ n, P11943928856924249651.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P11952877013019189846

`A337411(2*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A245555.P11952877013019189846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A337411 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A245555.P11952877013019189846

namespace A245555

/-- `A337411(2*a(and(n, n-1)))` -/
def P11952877013019189846.Spec : Prop :=
  ∀ n, P11952877013019189846.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P9044497515287187967

`abs(A115131(2*a(and(n, n-1))))` with `a(0)=1`
-/

namespace A245555.P9044497515287187967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A115131 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat|

end

end A245555.P9044497515287187967

namespace A245555

/-- `abs(A115131(2*a(and(n, n-1))))` -/
def P9044497515287187967.Spec : Prop :=
  ∀ n, P9044497515287187967.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P28165639317537709

`A333516((2*a(and(n, n-1)))²)` with `a(0)=1`
-/

namespace A245555.P28165639317537709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A333516 ((2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) ^ 2).toNat

end

end A245555.P28165639317537709

namespace A245555

/-- `A333516((2*a(and(n, n-1)))²)` -/
def P28165639317537709.Spec : Prop :=
  ∀ n, P28165639317537709.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P4825510960816284405

`A010882(A000120(n))`
-/

namespace A245555.P4825510960816284405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A000120 n).toNat

end

end A245555.P4825510960816284405

namespace A245555

/-- `A010882(A000120(n))` -/
def P4825510960816284405.Spec : Prop :=
  ∀ n, P4825510960816284405.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P17964111547571306730

`A028293(A038573(n))`
-/

namespace A245555.P17964111547571306730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028293 (A038573 n).toNat

end

end A245555.P17964111547571306730

namespace A245555

/-- `A028293(A038573(n))` -/
def P17964111547571306730.Spec : Prop :=
  ∀ n, P17964111547571306730.a n = A245555 (n + 1)

end A245555

/-! ## A245555.P14762021091557787889

`A078734(A001316(n))`
-/

namespace A245555.P14762021091557787889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (A001316 n).toNat

end

end A245555.P14762021091557787889

namespace A245555

/-- `A078734(A001316(n))` -/
def P14762021091557787889.Spec : Prop :=
  ∀ n, P14762021091557787889.a n = A245555 (n + 1)

end A245555

/-!
# A245556: Irregular triangle read by rows: T(n,k) (n>=0, 0 <= k <= 2n) = number of triples (u,v,w) with entries in the range 0 to n which have some pair adding up to k.

The programs for A245556, there is no canonical definition to state claims against.
-/

/-! ## A245556.P4746033443377664321

`A071028(n)+3*A004737(n+1)*A000196(n)`
-/

namespace A245556.P4746033443377664321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n + 3 * A004737 (n + 1) * A000196 n

end

end A245556.P4746033443377664321

/-!
# A245558: Square array read by antidiagonals: T(n,k) = number of n-tuples of nonnegative integers (u_0,...,u_{n-1}) satisfying Sum_{j=0..n-1} j*u_j == 1 mod n and Sum_{j=0..n-1} u_j = m.

The programs for A245558, there is no canonical definition to state claims against.
-/

/-! ## A245558.P18289140267784696640

`A185700(comp[∑[n]])`
-/

namespace A245558.P18289140267784696640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185700 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A245558.P18289140267784696640

/-! ## A245558.P10910202386741664979

`A185158(comp[∑[n-1]]+3)`
-/

namespace A245558.P10910202386741664979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185158 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)

end

end A245558.P10910202386741664979

/-! ## A245558.P13953489624442286770

`A051168((n-comp[∑[n]])²-n)`
-/

namespace A245558.P13953489624442286770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051168 (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - (n : ℤ)).toNat

end

end A245558.P13953489624442286770

/-! ## A245558.P6223417851556743382

`A318808(A098350(n+1))`
-/

namespace A245558.P6223417851556743382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (A098350 (n + 1)).toNat

end

end A245558.P6223417851556743382

/-! ## A245558.P12310056485693743825

`lcm((-1)^n, A185700(A014132(n+1)))`
-/

namespace A245558.P12310056485693743825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A185700 (A014132 (n + 1)).toNat)

end

end A245558.P12310056485693743825

/-!
# A245559: Triangle read by rows: entries on or below the main diagonal in A245558.

The programs for A245559, there is no canonical definition to state claims against.
-/

/-! ## A245559.P15176042069486456087

`A318808(A087112(n+1))`
-/

namespace A245559.P15176042069486456087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (A087112 (n + 1)).toNat

end

end A245559.P15176042069486456087

/-! ## A245559.P6975812173930612823

`A185700(A245300(n)+A108872(n+1))`
-/

namespace A245559.P6975812173930612823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185700 (A245300 n + A108872 (n + 1)).toNat

end

end A245559.P6975812173930612823

/-! ## A245559.P6051633319971298894

`A245558(A245300(n)+1)`
-/

namespace A245559.P6051633319971298894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245558 (A245300 n + 1).toNat

end

end A245559.P6051633319971298894

/-!
# A245560: Row sums of triangle in A144480.

The programs for A245560, the canonical program `A245560.P16423341925158403688` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245560 has offset 0).

The definition of A245560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 325 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245560.P12377259866395229039

`A164990(n+2)-2^n`
-/

namespace A245560.P12377259866395229039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164990 (n + 2) - (2 ^ n : ℤ)

end

end A245560.P12377259866395229039

namespace A245560

/-- `A164990(n+2)-2^n` -/
def P12377259866395229039.Spec : Prop :=
  ∀ n, P12377259866395229039.a n = A245560 n

end A245560

/-! ## A245560.P12834783091993823930

`2^n+n/2*A307768(n)`
-/

namespace A245560.P12834783091993823930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) + (n : ℚ) / 2 * (A307768 n : ℚ)

end

end A245560.P12834783091993823930

namespace A245560

/-- `2^n+n/2*A307768(n)` -/
def P12834783091993823930.Spec : Prop :=
  ∀ n, P12834783091993823930.a n = (A245560 n : ℚ)

end A245560

/-! ## A245560.P16423341925158403688

`∑[ceil((n+3)*2^(n-2))]-A100071(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245560

/-- `∑[ceil((n+3)*2^(n-2))]-A100071(n)` -/
def P16423341925158403688.Spec : Prop :=
  ∀ n, P16423341925158403688.a n = A245560 n

theorem P16423341925158403688.correct : P16423341925158403688.Spec := by
  intro n
  simp only [A245560]

end A245560

/-! ## A245560.P13296019703784268478

`A130783(n)+A027306(n)`
-/

namespace A245560.P13296019703784268478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 n + A027306 n

end

end A245560.P13296019703784268478

namespace A245560

/-- `A130783(n)+A027306(n)` -/
def P13296019703784268478.Spec : Prop :=
  ∀ n, P13296019703784268478.a n = A245560 n

end A245560

/-! ## A245560.P338194108170387423

`A323988(n)+A206603(n)`
-/

namespace A245560.P338194108170387423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323988 n + A206603 n

end

end A245560.P338194108170387423

namespace A245560

/-- `A323988(n)+A206603(n)` -/
def P338194108170387423.Spec : Prop :=
  ∀ n, P338194108170387423.a n = A245560 n

end A245560

/-! ## A245560.P17253350720801755494

`A182555(n)+A107373(n+1)`
-/

namespace A245560.P17253350720801755494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182555 n + A107373 (n + 1)

end

end A245560.P17253350720801755494

namespace A245560

/-- `A182555(n)+A107373(n+1)` -/
def P17253350720801755494.Spec : Prop :=
  ∀ n, P17253350720801755494.a n = A245560 n

end A245560

/-! ## A245560.P3666990961460722156

`∑[2^(n-1)/tan(acot(n+2))]-A230137(n)`
-/

namespace A245560.P3666990961460722156
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / Real.tan (SequenceMachineLib.acot (n + 2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A230137 n : ℝ)

end

end A245560.P3666990961460722156

namespace A245560

/-- `∑[2^(n-1)/tan(acot(n+2))]-A230137(n)` -/
def P3666990961460722156.Spec : Prop :=
  ∀ n, P3666990961460722156.a n = (A245560 n : ℝ)

end A245560

/-! ## A245560.P16085888726068933081

`Δ[lcm(n, n/2*(-2)^n)]-n*A210736(n)`
-/

namespace A245560.P16085888726068933081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / 2 * ((-2) ^ n : ℚ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ) * A210736 n

end

end A245560.P16085888726068933081

namespace A245560

/-- `Δ[lcm(n, n/2*(-2)^n)]-n*A210736(n)` -/
def P16085888726068933081.Spec : Prop :=
  ∀ n, P16085888726068933081.a n = A245560 n

end A245560

/-! ## A245560.P9286586631362958828

`A189162(n+1)-A130783(n)`
-/

namespace A245560.P9286586631362958828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189162 (n + 1) - A130783 n

end

end A245560.P9286586631362958828

namespace A245560

/-- `A189162(n+1)-A130783(n)` -/
def P9286586631362958828.Spec : Prop :=
  ∀ n, P9286586631362958828.a n = A245560 n

end A245560

/-! ## A245560.P1277149384682478098

`A001787(n+1)-(A100071(n)+A001787(n))`
-/

namespace A245560.P1277149384682478098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - (A100071 n + A001787 n)

end

end A245560.P1277149384682478098

namespace A245560

/-- `A001787(n+1)-(A100071(n)+A001787(n))` -/
def P1277149384682478098.Spec : Prop :=
  ∀ n, P1277149384682478098.a n = A245560 n

end A245560

/-!
# A245561: a(n) = 5^n - ( (sqrt(5)*phi)^n + (sqrt(5)/phi)^n ) + 1, where phi = golden ratio A001622.

The programs for A245561, the canonical program `A245561.P17001735322799090696` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245561 has offset 0).

The definition of A245561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245561.P17001735322799090696

`5^n-((sqrt(5)*ϕ)^n+(sqrt(5)/ϕ)^n)+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245561

/-- `5^n-((sqrt(5)*ϕ)^n+(sqrt(5)/ϕ)^n)+1` -/
def P17001735322799090696.Spec : Prop :=
  ∀ n, P17001735322799090696.a n = (A245561 n : ℝ)

end A245561

/-!
# A245562: Table read by rows: row n gives list of lengths of runs of 1's in binary expansion of n, starting with high-order bits.

The programs for A245562, there is no canonical definition to state claims against.
-/

/-! ## A245562.P11658658557073954964

`A080576(A004725(n+1))%A085153(n+1)`
-/

namespace A245562.P11658658557073954964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080576 (A004725 (n + 1)).toNat) (A085153 (n + 1))

end

end A245562.P11658658557073954964

/-! ## A245562.P11814820578724508321

`A080576(A129487(n+1))%A194441(3*n+1)`
-/

namespace A245562.P11814820578724508321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080576 (A129487 (n + 1)).toNat) (A194441 (3 * n + 1))

end

end A245562.P11814820578724508321

/-!
# A245563: Table read by rows: row n gives list of lengths of runs of 1's in binary expansion of n, starting with low-order bits.

The programs for A245563, there is no canonical definition to state claims against.
-/

/-! ## A245563.P16859808102290831798

`gcd(A018851(A143166(n)), A126307(n))`
-/

namespace A245563.P16859808102290831798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018851 (A143166 n).toNat) (A126307 n)

end

end A245563.P16859808102290831798

/-! ## A245563.P15931587384899659914

`A106799(A141302(n+1)+A063867(n))`
-/

namespace A245563.P15931587384899659914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A141302 (n + 1) + A063867 n).toNat

end

end A245563.P15931587384899659914

/-! ## A245563.P5253832432342656560

`A089309(A070824(A331967(n+1)))`
-/

namespace A245563.P5253832432342656560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A070824 (A331967 (n + 1)).toNat).toNat

end

end A245563.P5253832432342656560

/-! ## A245563.P11143045732636048577

`A051903(or(A004111(n), A102631(n+1)))`
-/

namespace A245563.P11143045732636048577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Int.lor (A004111 n) (A102631 (n + 1))).toNat

end

end A245563.P11143045732636048577

/-! ## A245563.P12036509601397314855

`A245562(lt[A298154(2*(n+1)), A049301(n+1)])`
-/

namespace A245563.P12036509601397314855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298154 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245562 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A245563.P12036509601397314855

/-!
# A245564: a(n) = Product_{i in row n of A245562} Fibonacci(i+2).

The programs for A245564, the canonical program `A245564.P14365681278449522354` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245564 has offset 0).

The definition of A245564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245564.P8100051569696649310

`A003965(A246029(n))`
-/

namespace A245564.P8100051569696649310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003965 (A246029 n).toNat

end

end A245564.P8100051569696649310

namespace A245564

/-- `A003965(A246029(n))` -/
def P8100051569696649310.Spec : Prop :=
  ∀ n, P8100051569696649310.a n = A245564 n

end A245564

/-! ## A245564.P14365681278449522354

`A253064(n)/A001316(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A245564

/-- `A253064(n)/A001316(n)` -/
def P14365681278449522354.Spec : Prop :=
  ∀ n, P14365681278449522354.a n = (A245564 n : ℚ)

end A245564

/-! ## A245564.P15885789422631524824

`A253064(n)/sqrt(A102376(n))`
-/

namespace A245564.P15885789422631524824
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253064 n : ℝ) / Real.sqrt (A102376 n : ℝ)

end

end A245564.P15885789422631524824

namespace A245564

/-- `A253064(n)/sqrt(A102376(n))` -/
def P15885789422631524824.Spec : Prop :=
  ∀ n, P15885789422631524824.a n = (A245564 n : ℝ)

end A245564

/-! ## A245564.P15998097544701950813

`A253064(n)/Δ[A006046(n)]`
-/

namespace A245564.P15998097544701950813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253064 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A245564.P15998097544701950813

namespace A245564

/-- `A253064(n)/Δ[A006046(n)]` -/
def P15998097544701950813.Spec : Prop :=
  ∀ n, P15998097544701950813.a n = (A245564 n : ℚ)

end A245564

/-! ## A245564.P4878762207707176671

`A253064(n)/A000079(A000120(n))`
-/

namespace A245564.P4878762207707176671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253064 n : ℚ) / (A000079 (A000120 n).toNat : ℚ)

end

end A245564.P4878762207707176671

namespace A245564

/-- `A253064(n)/A000079(A000120(n))` -/
def P4878762207707176671.Spec : Prop :=
  ∀ n, P4878762207707176671.a n = (A245564 n : ℚ)

end A245564

/-! ## A245564.P6414729448610375292

`A253064(n)/(A006046(2*n+1)-A006046(2*n))`
-/

namespace A245564.P6414729448610375292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253064 n : ℚ) / (A006046 (2 * n + 1) - A006046 (2 * n) : ℚ)

end

end A245564.P6414729448610375292

namespace A245564

/-- `A253064(n)/(A006046(2*n+1)-A006046(2*n))` -/
def P6414729448610375292.Spec : Prop :=
  ∀ n, P6414729448610375292.a n = (A245564 n : ℚ)

end A245564

/-! ## A245564.P9444315243124245110

`A253064(n)/A151930(2*n)`
-/

namespace A245564.P9444315243124245110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253064 n : ℚ) / (A151930 (2 * n) : ℚ)

end

end A245564.P9444315243124245110

namespace A245564

/-- `A253064(n)/A151930(2*n)` -/
def P9444315243124245110.Spec : Prop :=
  ∀ n, P9444315243124245110.a n = (A245564 n : ℚ)

end A245564

/-! ## A245564.P2126444797968013514

`A253064(n)/A061142(A005940(n+1))`
-/

namespace A245564.P2126444797968013514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253064 n : ℚ) / (A061142 (A005940 (n + 1)).toNat : ℚ)

end

end A245564.P2126444797968013514

namespace A245564

/-- `A253064(n)/A061142(A005940(n+1))` -/
def P2126444797968013514.Spec : Prop :=
  ∀ n, P2126444797968013514.a n = (A245564 n : ℚ)

end A245564

/-! ## A245564.P132104710837087342

`A166469(A019565(n))`
-/

namespace A245564.P132104710837087342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (A019565 n).toNat

end

end A245564.P132104710837087342

namespace A245564

/-- `A166469(A019565(n))` -/
def P132104710837087342.Spec : Prop :=
  ∀ n, P132104710837087342.a n = A245564 n

end A245564

/-! ## A245564.P15079973629640796916

`A166469(A110765(n))`
-/

namespace A245564.P15079973629640796916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166469 (A110765 n).toNat

end

end A245564.P15079973629640796916

namespace A245564

/-- `A166469(A110765(n))` -/
def P15079973629640796916.Spec : Prop :=
  ∀ n, P15079973629640796916.a n = A245564 n

end A245564

/-!
# A245565: a(n) = Product_{i in row n of A245562} Pell(i+1).

The programs for A245565, the canonical program `A245565.P8152710951243314242` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245565 has offset 0).

The definition of A245565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245565.P11841249927467686214

`A351346(A278222(n))`
-/

namespace A245565.P11841249927467686214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351346 (A278222 n).toNat

end

end A245565.P11841249927467686214

namespace A245565

/-- `A351346(A278222(n))` -/
def P11841249927467686214.Spec : Prop :=
  ∀ n, P11841249927467686214.a n = A245565 n

end A245565

/-! ## A245565.P8152710951243314242

`∏{e}[A005940(n+1), A000129(#+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A245565

/-- `∏{e}[A005940(n+1), A000129(#+1)]` -/
def P8152710951243314242.Spec : Prop :=
  ∀ n, P8152710951243314242.a n = A245565 n

theorem P8152710951243314242.correct : P8152710951243314242.Spec := by
  intro n
  simp only [A245565]

end A245565

/-! ## A245565.P1140111514717629545

`A351346(A005940(n+1))`
-/

namespace A245565.P1140111514717629545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351346 (A005940 (n + 1)).toNat

end

end A245565.P1140111514717629545

namespace A245565

/-- `A351346(A005940(n+1))` -/
def P1140111514717629545.Spec : Prop :=
  ∀ n, P1140111514717629545.a n = A245565 n

end A245565

/-! ## A245565.P1947209783564081582

`A351346(A324394(n)*A324395(n))`
-/

namespace A245565.P1947209783564081582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351346 (A324394 n * A324395 n).toNat

end

end A245565.P1947209783564081582

namespace A245565

/-- `A351346(A324394(n)*A324395(n))` -/
def P1947209783564081582.Spec : Prop :=
  ∀ n, P1947209783564081582.a n = A245565 n

end A245565

/-! ## A245565.P10869076539701977173

`A351346(A337375(n)*A337376(n))`
-/

namespace A245565.P10869076539701977173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351346 (A337375 n * A337376 n).toNat

end

end A245565.P10869076539701977173

namespace A245565

/-- `A351346(A337375(n)*A337376(n))` -/
def P10869076539701977173.Spec : Prop :=
  ∀ n, P10869076539701977173.a n = A245565 n

end A245565

/-! ## A245565.P14185583945142984285

`A351346(A340362(n+1)+A324106(n+1))`
-/

namespace A245565.P14185583945142984285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351346 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A245565.P14185583945142984285

namespace A245565

/-- `A351346(A340362(n+1)+A324106(n+1))` -/
def P14185583945142984285.Spec : Prop :=
  ∀ n, P14185583945142984285.a n = A245565 n

end A245565

/-! ## A245565.P18404290192052513732

`A351346(A332815(n))`
-/

namespace A245565.P18404290192052513732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351346 (A332815 n).toNat

end

end A245565.P18404290192052513732

namespace A245565

/-- `A351346(A332815(n))` -/
def P18404290192052513732.Spec : Prop :=
  ∀ n, P18404290192052513732.a n = A245565 n

end A245565

/-! ## A245565.P11182358597891199656

`A351346(A374717(n+1))`
-/

namespace A245565.P11182358597891199656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351346 (A374717 (n + 1)).toNat

end

end A245565.P11182358597891199656

namespace A245565

/-- `A351346(A374717(n+1))` -/
def P11182358597891199656.Spec : Prop :=
  ∀ n, P11182358597891199656.a n = A245565 n

end A245565

/-!
# A245567: Number of antichain covers of a labeled n-set such that for every two distinct elements in the n-set, there is a set in the antichain cover containing one of the elements but not the other.

The programs for A245567, there is no canonical definition to state claims against.
-/

/-! ## A245567.P2203307508937210798

`A059083(n)-n*a(n-1)` with `a(0)=2`
-/

namespace A245567.P2203307508937210798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A059083 n - (n : ℤ) * a (n - 1)

end

end A245567.P2203307508937210798

/-!
# A245568: Initial members of prime quadruples (n, n+2, n+24, n+26).

The programs for A245568, the canonical program `A245568.P4853739884766155698` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245568 has offset 1).

The definition of A245568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245568.P4853739884766155698

`∩[A001359(n+1)-24, A001359(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A245568

/-- `∩[A001359(n+1)-24, A001359(n+1)]` -/
def P4853739884766155698.Spec : Prop :=
  ∀ n, (P4853739884766155698.a n : ℤ) = A245568 (n + 1)

theorem P4853739884766155698.correct : P4853739884766155698.Spec := by
  intro n
  simp only [A245568, Nat.add_sub_cancel]

end A245568

/-! ## A245568.P17075941339206609964

`∩[A033560(n+1)-2, A033560(n+1)]`
-/

namespace A245568.P17075941339206609964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245568.P17075941339206609964

namespace A245568

/-- `∩[A033560(n+1)-2, A033560(n+1)]` -/
def P17075941339206609964.Spec : Prop :=
  ∀ n, (P17075941339206609964.a n : ℤ) = A245568 (n + 1)

end A245568

/-! ## A245568.P6673813281813568114

`∩[A033560(n+1), A007431(A033560(n+1))]`
-/

namespace A245568.P6673813281813568114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A033560 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245568.P6673813281813568114

namespace A245568

/-- `∩[A033560(n+1), A007431(A033560(n+1))]` -/
def P6673813281813568114.Spec : Prop :=
  ∀ n, (P6673813281813568114.a n : ℤ) = A245568 (n + 1)

end A245568

/-!
# A245570: Rectangular array A read by (upward) antidiagonals: A(n,k) = n/gcd(n,10^k), n,k >= 1.

The programs for A245570, there is no canonical definition to state claims against.
-/

/-! ## A245570.P8013629155909693547

`A004086(lcm(C(comp[∑[n]]-n, 2)-n, A165831(n+1)))`
-/

namespace A245570.P8013629155909693547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.lcm ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) (A165831 (n + 1)))

end

end A245570.P8013629155909693547

/-! ## A245570.P12276367555628963538

`A004086(lcm(A004736(n+1), A165831(n+1)))`
-/

namespace A245570.P12276367555628963538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (Int.lcm (A004736 (n + 1)) (A165831 (n + 1)))

end

end A245570.P12276367555628963538

/-! ## A245570.P7468420771717458745

`gcd(A004736(n+1), A032945(A109835(n+1)))`
-/

namespace A245570.P7468420771717458745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004736 (n + 1)) (A032945 (A109835 (n + 1)).toNat)

end

end A245570.P7468420771717458745

/-! ## A245570.P1779391378759455067

`gcd(A025581(n)+1, A144280(A272915(n+1)))`
-/

namespace A245570.P1779391378759455067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n + 1) (A144280 (A272915 (n + 1)).toNat)

end

end A245570.P1779391378759455067

/-! ## A245570.P4576486913543630708

`A006530(gcd(A004736(n+1), A022163(n)))`
-/

namespace A245570.P4576486913543630708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A004736 (n + 1)) (A022163 n))

end

end A245570.P4576486913543630708

/-!
# A245572: Expansion of phi(q) * phi(q^2) + 2 * phi(-q^2) * phi(q^4) in powers of q where phi() is a Ramanujan theta function.

The programs for A245572, the canonical program `A245572.P8320539794344842408` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245572 has offset 0).

The definition of A245572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245572.P8320539794344842408

`A139093(n)+2*A028572(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A245572

/-- `A139093(n)+2*A028572(n)` -/
def P8320539794344842408.Spec : Prop :=
  ∀ n, P8320539794344842408.a n = A245572 n

theorem P8320539794344842408.correct : P8320539794344842408.Spec := by
  intro n
  simp only [A245572]

end A245572

/-! ## A245572.P2869322701579750528

`4*A129438(n)-A033715(n)`
-/

namespace A245572.P2869322701579750528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A129438 n - A033715 n

end

end A245572.P2869322701579750528

namespace A245572

/-- `4*A129438(n)-A033715(n)` -/
def P2869322701579750528.Spec : Prop :=
  ∀ n, P2869322701579750528.a n = A245572 n

end A245572

/-! ## A245572.P12345271651551950112

`(A092486(n)-n)*A033715(n)`
-/

namespace A245572.P12345271651551950112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092486 n - (n : ℤ)) * A033715 n

end

end A245572.P12345271651551950112

namespace A245572

/-- `(A092486(n)-n)*A033715(n)` -/
def P12345271651551950112.Spec : Prop :=
  ∀ n, P12345271651551950112.a n = A245572 n

end A245572

/-! ## A245572.P12480192071380452160

`A033715(n)+A139093(n)+A082564(n)`
-/

namespace A245572.P12480192071380452160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033715 n + (A139093 n + A082564 n)

end

end A245572.P12480192071380452160

namespace A245572

/-- `A033715(n)+A139093(n)+A082564(n)` -/
def P12480192071380452160.Spec : Prop :=
  ∀ n, P12480192071380452160.a n = A245572 n

end A245572

/-! ## A245572.P11174315909341228850

`A008586(A129438(n))-A129438(A008586(n))`
-/

namespace A245572.P11174315909341228850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A129438 n).toNat - A129438 (A008586 n).toNat

end

end A245572.P11174315909341228850

namespace A245572

/-- `A008586(A129438(n))-A129438(A008586(n))` -/
def P11174315909341228850.Spec : Prop :=
  ∀ n, P11174315909341228850.a n = A245572 n

end A245572

/-!
# A245573: Minimal coin changing sequence for denominations 1, 2, 5 and 10 cents.

The programs for A245573, the canonical program `A245573.P8574744713059270409` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245573 has offset 0).

The definition of A245573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245573.P8574744713059270409

`A090223(n+1)-(A059995(n)+A057355(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245573

/-- `A090223(n+1)-(A059995(n)+A057355(n))` -/
def P8574744713059270409.Spec : Prop :=
  ∀ n, P8574744713059270409.a n = A245573 n

theorem P8574744713059270409.correct : P8574744713059270409.Spec := by
  intro n
  simp only [A245573]

end A245573

/-! ## A245573.P11476596196366391762

`A057536(n)+A059995(n)-A057536(A059995(n))`
-/

namespace A245573.P11476596196366391762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 n + (A059995 n - A057536 (A059995 n).toNat)

end

end A245573.P11476596196366391762

namespace A245573

/-- `A057536(n)+A059995(n)-A057536(A059995(n))` -/
def P11476596196366391762.Spec : Prop :=
  ∀ n, P11476596196366391762.a n = A245573 n

end A245573

/-! ## A245573.P4208910144480642986

`A004526(A081598(2*n+1))-A057355(n)`
-/

namespace A245573.P4208910144480642986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A081598 (2 * n + 1)).toNat - A057355 n

end

end A245573.P4208910144480642986

namespace A245573

/-- `A004526(A081598(2*n+1))-A057355(n)` -/
def P4208910144480642986.Spec : Prop :=
  ∀ n, P4208910144480642986.a n = A245573 n

end A245573

/-! ## A245573.P3976135868864392570

`A011542(5*n)`
-/

namespace A245573.P3976135868864392570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011542 (5 * n)

end

end A245573.P3976135868864392570

namespace A245573

/-- `A011542(5*n)` -/
def P3976135868864392570.Spec : Prop :=
  ∀ n, P3976135868864392570.a n = A245573 n

end A245573

/-! ## A245573.P6703366739923108606

`A011542(A008706(n))%(n+1)`
-/

namespace A245573.P6703366739923108606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011542 (A008706 n).toNat) (n + 1 : ℤ)

end

end A245573.P6703366739923108606

namespace A245573

/-- `A011542(A008706(n))%(n+1)` -/
def P6703366739923108606.Spec : Prop :=
  ∀ n, P6703366739923108606.a n = A245573 n

end A245573

/-! ## A245573.P11896532179332097

`A011542(A008706(n))-A000007(n)`
-/

namespace A245573.P11896532179332097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011542 (A008706 n).toNat - A000007 n

end

end A245573.P11896532179332097

namespace A245573

/-- `A011542(A008706(n))-A000007(n)` -/
def P11896532179332097.Spec : Prop :=
  ∀ n, P11896532179332097.a n = A245573 n

end A245573

/-! ## A245573.P8790649239378159357

`A011542(A016861(n))-1`
-/

namespace A245573.P8790649239378159357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011542 (A016861 n).toNat - 1

end

end A245573.P8790649239378159357

namespace A245573

/-- `A011542(A016861(n))-1` -/
def P8790649239378159357.Spec : Prop :=
  ∀ n, P8790649239378159357.a n = A245573 n

end A245573

/-!
# A245574: Minimal coin changing sequence for denominations 1, 2, 5, 10, 20 and 50 cents.

The programs for A245574, the canonical program `A245574.P5854510550737387433` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245574 has offset 0).

The definition of A245574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245574.P5854510550737387433

`lcm(ceil(n/98), A057536(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A245574

/-- `lcm(ceil(n/98), A057536(n))` -/
def P5854510550737387433.Spec : Prop :=
  ∀ n, (P5854510550737387433.a n : ℤ) = A245574 n

theorem P5854510550737387433.correct : P5854510550737387433.Spec := by
  intro n
  simp only [A245574]

end A245574

/-! ## A245574.P12235906066077479362

`A057536(comp[Δ[5*5^(n+1)]])`
-/

namespace A245574.P12235906066077479362
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * 5 ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057536 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A245574.P12235906066077479362

namespace A245574

/-- `A057536(comp[Δ[5*5^(n+1)]])` -/
def P12235906066077479362.Spec : Prop :=
  ∀ n, P12235906066077479362.a n = A245574 n

end A245574

/-! ## A245574.P7706508687801589701

`dr(A057536(A292579(n)))`
-/

namespace A245574.P7706508687801589701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A057536 (A292579 n).toNat)

end

end A245574.P7706508687801589701

namespace A245574

/-- `dr(A057536(A292579(n)))` -/
def P7706508687801589701.Spec : Prop :=
  ∀ n, (P7706508687801589701.a n : ℤ) = A245574 n

end A245574

/-! ## A245574.P12196546822418209663

`∑{digits}[A292579(n), A014420(#)]`
-/

namespace A245574.P12196546822418209663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014420 x).sum

end

end A245574.P12196546822418209663

namespace A245574

/-- `∑{digits}[A292579(n), A014420(#)]` -/
def P12196546822418209663.Spec : Prop :=
  ∀ n, P12196546822418209663.a n = A245574 n

end A245574

/-! ## A245574.P484082283369086576

`A055641(n)!*A057536(n)`
-/

namespace A245574.P484082283369086576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A055641 n).toNat : ℤ) * A057536 n

end

end A245574.P484082283369086576

namespace A245574

/-- `A055641(n)!*A057536(n)` -/
def P484082283369086576.Spec : Prop :=
  ∀ n, P484082283369086576.a n = A245574 n

end A245574

/-! ## A245574.P9559997888012695505

`A062892(n)!*A057536(n)`
-/

namespace A245574.P9559997888012695505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A062892 n).toNat : ℤ) * A057536 n

end

end A245574.P9559997888012695505

namespace A245574

/-- `A062892(n)!*A057536(n)` -/
def P9559997888012695505.Spec : Prop :=
  ∀ n, P9559997888012695505.a n = A245574 n

end A245574

/-! ## A245574.P10749709187497656663

`∑{digits}[A033619(n+1), A014420(#)]`
-/

namespace A245574.P10749709187497656663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014420 x).sum

end

end A245574.P10749709187497656663

namespace A245574

/-- `∑{digits}[A033619(n+1), A014420(#)]` -/
def P10749709187497656663.Spec : Prop :=
  ∀ n, P10749709187497656663.a n = A245574 n

end A245574

/-! ## A245574.P13688536157926543995

`∑{digits}[A033619(n+1), A265744(#)]`
-/

namespace A245574.P13688536157926543995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A265744 x).sum

end

end A245574.P13688536157926543995

namespace A245574

/-- `∑{digits}[A033619(n+1), A265744(#)]` -/
def P13688536157926543995.Spec : Prop :=
  ∀ n, P13688536157926543995.a n = A245574 n

end A245574

/-! ## A245574.P1352231232242587310

`ceil(A000010(n+1)/98)*A057536(n)`
-/

namespace A245574.P1352231232242587310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1) : ℚ) / 98⌉ * A057536 n

end

end A245574.P1352231232242587310

namespace A245574

/-- `ceil(A000010(n+1)/98)*A057536(n)` -/
def P1352231232242587310.Spec : Prop :=
  ∀ n, P1352231232242587310.a n = A245574 n

end A245574

/-! ## A245574.P9062588193170568752

`ceil(A006530(n+1)/98)*A057536(n)`
-/

namespace A245574.P9062588193170568752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (n + 1) : ℚ) / 98⌉ * A057536 n

end

end A245574.P9062588193170568752

namespace A245574

/-- `ceil(A006530(n+1)/98)*A057536(n)` -/
def P9062588193170568752.Spec : Prop :=
  ∀ n, P9062588193170568752.a n = A245574 n

end A245574

/-! ## A245574.P18162840119787575796

`ceil(A020639(n+1)/98)*A057536(n)`
-/

namespace A245574.P18162840119787575796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020639 (n + 1) : ℚ) / 98⌉ * A057536 n

end

end A245574.P18162840119787575796

namespace A245574

/-- `ceil(A020639(n+1)/98)*A057536(n)` -/
def P18162840119787575796.Spec : Prop :=
  ∀ n, P18162840119787575796.a n = A245574 n

end A245574

/-! ## A245574.P17958934217972034879

`A043562(A000196(n))*A057536(n)`
-/

namespace A245574.P17958934217972034879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A000196 n).toNat * A057536 n

end

end A245574.P17958934217972034879

namespace A245574

/-- `A043562(A000196(n))*A057536(n)` -/
def P17958934217972034879.Spec : Prop :=
  ∀ n, P17958934217972034879.a n = A245574 n

end A245574

/-! ## A245574.P10711947193018973231

`A043562(A059995(n))*A057536(n)`
-/

namespace A245574.P10711947193018973231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A059995 n).toNat * A057536 n

end

end A245574.P10711947193018973231

namespace A245574

/-- `A043562(A059995(n))*A057536(n)` -/
def P10711947193018973231.Spec : Prop :=
  ∀ n, P10711947193018973231.a n = A245574 n

end A245574

/-! ## A245574.P11139547119934906964

`A000045(A177849(n))*A057536(n)`
-/

namespace A245574.P11139547119934906964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A177849 n).toNat * A057536 n

end

end A245574.P11139547119934906964

namespace A245574

/-- `A000045(A177849(n))*A057536(n)` -/
def P11139547119934906964.Spec : Prop :=
  ∀ n, P11139547119934906964.a n = A245574 n

end A245574

/-!
# A245575: Number of ways of writing n as the sum of two quarter-squares (cf. A002620).

The programs for A245575, the canonical program `A245575.P91673300732164970` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245575 has offset 0).

The definition of A245575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245575.P91673300732164970

`Δ[A237526(record[lcm(2, n)])]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A245575

/-- `Δ[A237526(record[lcm(2, n)])]` -/
def P91673300732164970.Spec : Prop :=
  ∀ n, P91673300732164970.a n = A245575 n

theorem P91673300732164970.correct : P91673300732164970.Spec := by
  intro n
  simp only [A245575]

end A245575

/-! ## A245575.P4122273013768220331

`Δ[A237526(record[(2*n)^(n%2)])]`
-/

namespace A245575.P4122273013768220331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245575.P4122273013768220331

namespace A245575

/-- `Δ[A237526(record[(2*n)^(n%2)])]` -/
def P4122273013768220331.Spec : Prop :=
  ∀ n, P4122273013768220331.a n = A245575 n

end A245575

/-! ## A245575.P3476609764528323531

`Δ[A237526(A130824(n))]`
-/

namespace A245575.P3476609764528323531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (A130824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245575.P3476609764528323531

namespace A245575

/-- `Δ[A237526(A130824(n))]` -/
def P3476609764528323531.Spec : Prop :=
  ∀ n, P3476609764528323531.a n = A245575 n

end A245575

/-! ## A245575.P15486642190638713810

`Δ[A237526(record[A064680(n)])]`
-/

namespace A245575.P15486642190638713810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245575.P15486642190638713810

namespace A245575

/-- `Δ[A237526(record[A064680(n)])]` -/
def P15486642190638713810.Spec : Prop :=
  ∀ n, P15486642190638713810.a n = A245575 n

end A245575

/-! ## A245575.P11347184692920050382

`A063725(4*n+1)+A063725(4*n+2)+A063725(n)`
-/

namespace A245575.P11347184692920050382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (4 * n + 1) + (A063725 (4 * n + 2) + A063725 n)

end

end A245575.P11347184692920050382

namespace A245575

/-- `A063725(4*n+1)+A063725(4*n+2)+A063725(n)` -/
def P11347184692920050382.Spec : Prop :=
  ∀ n, P11347184692920050382.a n = A245575 n

end A245575

/-!
# A245576: Primes p such that p and p^2 lack the zero digit in their decimal expansions.

The programs for A245576, there is no canonical definition to state claims against.
-/

/-! ## A245576.P3676947104211284571

`∩[A038618(n+1), A052042(n+1)]`
-/

namespace A245576.P3676947104211284571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245576.P3676947104211284571

/-! ## A245576.P11674105635986617623

`∩[A052042(n+1), A195943(n+1)]`
-/

namespace A245576.P11674105635986617623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245576.P11674105635986617623

/-! ## A245576.P3739622867685000277

`∩[A038618(n+1), A052040(n+1)]`
-/

namespace A245576.P3739622867685000277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245576.P3739622867685000277

/-! ## A245576.P11701824427186561015

`∩[A038618(n+1), A328781(n+1)]`
-/

namespace A245576.P11701824427186561015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245576.P11701824427186561015

/-! ## A245576.P2136614067231581353

`∩[A052042(n+1), A328781(n+1)]`
-/

namespace A245576.P2136614067231581353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245576.P2136614067231581353

/-! ## A245576.P17714407775416200821

`filter[A052042(n+1), A209929(#)]`
-/

namespace A245576.P17714407775416200821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A245576.P17714407775416200821

/-! ## A245576.P1958393302046908804

`∩[A052042(n+1), A052382(n+1)]`
-/

namespace A245576.P1958393302046908804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245576.P1958393302046908804

/-! ## A245576.P16744283341870547060

`filter[A052042(n+1), A168046(#)]`
-/

namespace A245576.P16744283341870547060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A245576.P16744283341870547060

/-!
# A245577: Numbers k such that k^4 is a sum of 4 consecutive primes.

The programs for A245577, there is no canonical definition to state claims against.
-/

/-! ## A245577.P2048376577389500063

`sqrt(∩[A051395(n+1), n²])`
-/

namespace A245577.P2048376577389500063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051395 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A245577.P2048376577389500063

/-!
# A245578: The number of permutations of {0,0,1,1,...,n-1,n-1} that begin with 0 and in which adjacent elements are adjacent mod n.

The programs for A245578, the canonical program `A245578.P6622874759959277109` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245578 has offset 2).

The definition of A245578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245578.P6622874759959277109

`∑[a(n-2)+2]` with `a(0)=1, a(1)=9, a(2)=8, a(3)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245578

/-- `∑[a(n-2)+2]` -/
def P6622874759959277109.Spec : Prop :=
  ∀ n, (P6622874759959277109.a n : ℤ) = A245578 (n + 2)

theorem P6622874759959277109.correct : P6622874759959277109.Spec := by
  intro n
  simp only [A245578, Nat.add_sub_cancel]

end A245578

/-! ## A245578.P3879919508924599160

`∑[n+1]+A168278(n+2)%A226824(n+2)`
-/

namespace A245578.P3879919508924599160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + Int.tmod (A168278 (n + 2)) (A226824 (n + 2))

end

end A245578.P3879919508924599160

namespace A245578

/-- `∑[n+1]+A168278(n+2)%A226824(n+2)` -/
def P3879919508924599160.Spec : Prop :=
  ∀ n, P3879919508924599160.a n = A245578 (n + 2)

end A245578

/-! ## A245578.P14369705439620506932

`A007590(n)+A003485(A062545(n))`
-/

namespace A245578.P14369705439620506932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n + A003485 (A062545 n).toNat

end

end A245578.P14369705439620506932

namespace A245578

/-- `A007590(n)+A003485(A062545(n))` -/
def P14369705439620506932.Spec : Prop :=
  ∀ n, P14369705439620506932.a n = A245578 (n + 2)

end A245578

/-! ## A245578.P1221958331420451893

`lcm(2, A038722(a(n-1)+1)+n+1)` with `a(0)=1`
-/

namespace A245578.P1221958331420451893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 2 (A038722 (a (n - 1) + 1) + (n + 1 : ℤ))

end

end A245578.P1221958331420451893

namespace A245578

/-- `lcm(2, A038722(a(n-1)+1)+n+1)` -/
def P1221958331420451893.Spec : Prop :=
  ∀ n, (P1221958331420451893.a n : ℤ) = A245578 (n + 2)

end A245578

/-! ## A245578.P12519043741495662667

`A038722(A326657(n+3))-3`
-/

namespace A245578.P12519043741495662667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A326657 (n + 3)).toNat - 3

end

end A245578.P12519043741495662667

namespace A245578

/-- `A038722(A326657(n+3))-3` -/
def P12519043741495662667.Spec : Prop :=
  ∀ n, P12519043741495662667.a n = A245578 (n + 2)

end A245578

/-! ## A245578.P6216005315337968465

`A025581(a(n-1))+A000096(n+2)` with `a(0)=1`
-/

namespace A245578.P6216005315337968465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025581 (a (n - 1)).toNat + A000096 (n + 2)

end

end A245578.P6216005315337968465

namespace A245578

/-- `A025581(a(n-1))+A000096(n+2)` -/
def P6216005315337968465.Spec : Prop :=
  ∀ n, P6216005315337968465.a n = A245578 (n + 2)

end A245578

/-! ## A245578.P13006809430146153876

`2*A026741(A038722(a(n-1)+1)+n+1)` with `a(0)=1`
-/

namespace A245578.P13006809430146153876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A026741 (A038722 (a (n - 1) + 1).toNat + (n + 1 : ℤ)).toNat

end

end A245578.P13006809430146153876

namespace A245578

/-- `2*A026741(A038722(a(n-1)+1)+n+1)` -/
def P13006809430146153876.Spec : Prop :=
  ∀ n, P13006809430146153876.a n = A245578 (n + 2)

end A245578

/-!
# A245579: Number of odd divisors of n multiplied by n.

The programs for A245579, the canonical program `A245579.P1038564678599800465` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245579 has offset 1).

The definition of A245579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245579.P1038564678599800465

`(n+1)*A001227(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A245579

/-- `(n+1)*A001227(n+1)` -/
def P1038564678599800465.Spec : Prop :=
  ∀ n, P1038564678599800465.a n = A245579 (n + 1)

theorem P1038564678599800465.correct : P1038564678599800465.Spec := by
  intro n
  simp only [A245579, Nat.add_sub_cancel]

end A245579

/-! ## A245579.P6533496092183329194

`∑{d}[n+1, (n+1)*#%2]`
-/

namespace A245579.P6533496092183329194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) * (d % 2)

end

end A245579.P6533496092183329194

namespace A245579

/-- `∑{d}[n+1, (n+1)*#%2]` -/
def P6533496092183329194.Spec : Prop :=
  ∀ n, (P6533496092183329194.a n : ℤ) = A245579 (n + 1)

end A245579

/-! ## A245579.P11675981252626367357

`∑{d}[n+1, (n+1)*and(1, #)]`
-/

namespace A245579.P11675981252626367357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) * Nat.land 1 d

end

end A245579.P11675981252626367357

namespace A245579

/-- `∑{d}[n+1, (n+1)*and(1, #)]` -/
def P11675981252626367357.Spec : Prop :=
  ∀ n, (P11675981252626367357.a n : ℤ) = A245579 (n + 1)

end A245579

/-! ## A245579.P16700516598090841867

`∑{d}[n+1, and(n+1, (-1)^#)]`
-/

namespace A245579.P16700516598090841867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land (n + 1 : ℤ) ((-1) ^ d)

end

end A245579.P16700516598090841867

namespace A245579

/-- `∑{d}[n+1, and(n+1, (-1)^#)]` -/
def P16700516598090841867.Spec : Prop :=
  ∀ n, P16700516598090841867.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P14666758817849565417

`∑{d}[n+1, A255655(#)]`
-/

namespace A245579.P14666758817849565417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255655 d

end

end A245579.P14666758817849565417

namespace A245579

/-- `∑{d}[n+1, A255655(#)]` -/
def P14666758817849565417.Spec : Prop :=
  ∀ n, P14666758817849565417.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P11376626990944516513

`(n+1)*(A069283(n+1)+1)`
-/

namespace A245579.P11376626990944516513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A069283 (n + 1) + 1)

end

end A245579.P11376626990944516513

namespace A245579

/-- `(n+1)*(A069283(n+1)+1)` -/
def P11376626990944516513.Spec : Prop :=
  ∀ n, P11376626990944516513.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P165612352230028732

`(n+1)/2*A054844(n+1)`
-/

namespace A245579.P165612352230028732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A054844 (n + 1) : ℚ)

end

end A245579.P165612352230028732

namespace A245579

/-- `(n+1)/2*A054844(n+1)` -/
def P165612352230028732.Spec : Prop :=
  ∀ n, P165612352230028732.a n = (A245579 (n + 1) : ℚ)

theorem P165612352230028732.correct : P165612352230028732.Spec := by
  intro n
  simp only [A245579, Nat.add_sub_cancel, A245579.P165612352230028732.a, A245579.P1038564678599800465.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A054844, A054844.P10228147231781804913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245579

/-! ## A245579.P8074157734346454452

`(n+1)*(n+1-A347286(n+1))`
-/

namespace A245579.P8074157734346454452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A347286 (n + 1))

end

end A245579.P8074157734346454452

namespace A245579

/-- `(n+1)*(n+1-A347286(n+1))` -/
def P8074157734346454452.Spec : Prop :=
  ∀ n, P8074157734346454452.a n = A245579 (n + 1)

theorem P8074157734346454452.correct : P8074157734346454452.Spec := by
  intro n
  simp only [A245579, Nat.add_sub_cancel, A245579.P8074157734346454452.a, A245579.P1038564678599800465.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A347286, A347286.P5792309838125408870.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245579

/-! ## A245579.P371248751629226996

`∑{d}[n+1, #*A193356((n+1)/#)]`
-/

namespace A245579.P371248751629226996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A193356 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245579.P371248751629226996

namespace A245579

/-- `∑{d}[n+1, #*A193356((n+1)/#)]` -/
def P371248751629226996.Spec : Prop :=
  ∀ n, P371248751629226996.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P13632283996076445496

`A367870(n+1)+A000593(n+1)`
-/

namespace A245579.P13632283996076445496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367870 (n + 1) + A000593 (n + 1)

end

end A245579.P13632283996076445496

namespace A245579

/-- `A367870(n+1)+A000593(n+1)` -/
def P13632283996076445496.Spec : Prop :=
  ∀ n, P13632283996076445496.a n = A245579 (n + 1)

theorem P13632283996076445496.correct : P13632283996076445496.Spec := by
  intro n
  simp only [A245579, Nat.add_sub_cancel, A245579.P13632283996076445496.a, A245579.P1038564678599800465.a, A000593, A000593.P13640346029616979906.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A367870, A367870.P3261918350467240858.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245579

/-! ## A245579.P11566186925652171489

`A349212(n+1)-A183063(n+1)`
-/

namespace A245579.P11566186925652171489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349212 (n + 1) - A183063 (n + 1)

end

end A245579.P11566186925652171489

namespace A245579

/-- `A349212(n+1)-A183063(n+1)` -/
def P11566186925652171489.Spec : Prop :=
  ∀ n, P11566186925652171489.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P285373340073530330

`(n+1)*A000005(A000265(n+1))`
-/

namespace A245579.P285373340073530330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (A000265 (n + 1)).toNat

end

end A245579.P285373340073530330

namespace A245579

/-- `(n+1)*A000005(A000265(n+1))` -/
def P285373340073530330.Spec : Prop :=
  ∀ n, P285373340073530330.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P5718922891717019633

`(n+1)*A000005(A064989(n+1))`
-/

namespace A245579.P5718922891717019633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (A064989 (n + 1)).toNat

end

end A245579.P5718922891717019633

namespace A245579

/-- `(n+1)*A000005(A064989(n+1))` -/
def P5718922891717019633.Spec : Prop :=
  ∀ n, P5718922891717019633.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P13655195640011603729

`(n+1)*A000005(A332819(n+1))`
-/

namespace A245579.P13655195640011603729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (A332819 (n + 1)).toNat

end

end A245579.P13655195640011603729

namespace A245579

/-- `(n+1)*A000005(A332819(n+1))` -/
def P13655195640011603729.Spec : Prop :=
  ∀ n, P13655195640011603729.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P1328467015463233636

`(n+1)*A000005(A336158(n+1))`
-/

namespace A245579.P1328467015463233636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000005 (A336158 (n + 1)).toNat

end

end A245579.P1328467015463233636

namespace A245579

/-- `(n+1)*A000005(A336158(n+1))` -/
def P1328467015463233636.Spec : Prop :=
  ∀ n, P1328467015463233636.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P1692100690252538065

`A006519(n+1)*A336475(n+1)`
-/

namespace A245579.P1692100690252538065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A336475 (n + 1)

end

end A245579.P1692100690252538065

namespace A245579

/-- `A006519(n+1)*A336475(n+1)` -/
def P1692100690252538065.Spec : Prop :=
  ∀ n, P1692100690252538065.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P8721060109612613986

`A038040(n+1)/A001511(n+1)`
-/

namespace A245579.P8721060109612613986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

end

end A245579.P8721060109612613986

namespace A245579

/-- `A038040(n+1)/A001511(n+1)` -/
def P8721060109612613986.Spec : Prop :=
  ∀ n, P8721060109612613986.a n = (A245579 (n + 1) : ℚ)

end A245579

/-! ## A245579.P10740954954968158550

`A328203(2*(n+1))-A002131(n+1)`
-/

namespace A245579.P10740954954968158550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328203 (2 * (n + 1)) - A002131 (n + 1)

end

end A245579.P10740954954968158550

namespace A245579

/-- `A328203(2*(n+1))-A002131(n+1)` -/
def P10740954954968158550.Spec : Prop :=
  ∀ n, P10740954954968158550.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P1258739513026936216

`∑{d}[n+1, A000010(#)*A000593((n+1)/#)]`
-/

namespace A245579.P1258739513026936216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A000593 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245579.P1258739513026936216

namespace A245579

/-- `∑{d}[n+1, A000010(#)*A000593((n+1)/#)]` -/
def P1258739513026936216.Spec : Prop :=
  ∀ n, P1258739513026936216.a n = A245579 (n + 1)

end A245579

/-! ## A245579.P4154938088752168947

`∑{d}[n+1, A029935(#)*A048272((n+1)/#)]`
-/

namespace A245579.P4154938088752168947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A029935 d * A048272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A245579.P4154938088752168947

namespace A245579

/-- `∑{d}[n+1, A029935(#)*A048272((n+1)/#)]` -/
def P4154938088752168947.Spec : Prop :=
  ∀ n, P4154938088752168947.a n = A245579 (n + 1)

end A245579

/-!
# A245580: Smallest Lucas number L(m) > L(n) that is divisible by the n-th Lucas number L(n) = A000204(n).

The programs for A245580, the canonical program `A245580.P13415138927225758090` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245580 has offset 1).

The definition of A245580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245580.P13415138927225758090

`4*a(n-1)+a(n-2)` with `a(0)=3, a(1)=18, a(2)=76`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245580

/-- `4*a(n-1)+a(n-2)` -/
def P13415138927225758090.Spec : Prop :=
  ∀ n, (P13415138927225758090.a n : ℤ) = A245580 (n + 1)

theorem P13415138927225758090.correct : P13415138927225758090.Spec := by
  intro n
  simp only [A245580, Nat.add_sub_cancel]

end A245580

/-! ## A245580.P3614442190302324542

`ogf((3+6x+x^2)/(1-4x-x^2))`
-/

namespace A245580.P3614442190302324542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, 1] [1, -4, -1] n

end

end A245580.P3614442190302324542

namespace A245580

/-- `ogf((3+6x+x^2)/(1-4x-x^2))` -/
def P3614442190302324542.Spec : Prop :=
  ∀ n, P3614442190302324542.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P11181218330076505173

`round(ϕ^3*a(n-1))` with `a(0)=3, a(1)=18`
-/

namespace A245580.P11181218330076505173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 18] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ))

end

end A245580.P11181218330076505173

namespace A245580

/-- `round(ϕ^3*a(n-1))` -/
def P11181218330076505173.Spec : Prop :=
  ∀ n, P11181218330076505173.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P5294744204959880485

`A000032(ceil(n/γ²)+2)`
-/

namespace A245580.P5294744204959880485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (⌈(n : ℝ) / Real.eulerMascheroniConstant ^ 2⌉ + 2).toNat

end

end A245580.P5294744204959880485

namespace A245580

/-- `A000032(ceil(n/γ²)+2)` -/
def P5294744204959880485.Spec : Prop :=
  ∀ n, P5294744204959880485.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P4532468170923756886

`A000032(3*(n+1))-floor(acot(n))`
-/

namespace A245580.P4532468170923756886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * (n + 1)) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A245580.P4532468170923756886

namespace A245580

/-- `A000032(3*(n+1))-floor(acot(n))` -/
def P4532468170923756886.Spec : Prop :=
  ∀ n, P4532468170923756886.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P750342770570267110

`Δ[floor(A000032(3*n)/2*ϕ²)]`
-/

namespace A245580.P750342770570267110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A000032 (3 * n) : ℚ) / 2 : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245580.P750342770570267110

namespace A245580

/-- `Δ[floor(A000032(3*n)/2*ϕ²)]` -/
def P750342770570267110.Spec : Prop :=
  ∀ n, P750342770570267110.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P13111870857707270808

`round(ϕ²*A000032(2*n+1+n))`
-/

namespace A245580.P13111870857707270808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (A000032 (2 * n + 1 + n) : ℝ))

end

end A245580.P13111870857707270808

namespace A245580

/-- `round(ϕ²*A000032(2*n+1+n))` -/
def P13111870857707270808.Spec : Prop :=
  ∀ n, P13111870857707270808.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P2332171436156799620

`A000204(Δ[A134479(n)])`
-/

namespace A245580.P2332171436156799620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (f1 (n + 1) - f1 n).toNat

end

end A245580.P2332171436156799620

namespace A245580

/-- `A000204(Δ[A134479(n)])` -/
def P2332171436156799620.Spec : Prop :=
  ∀ n, P2332171436156799620.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P16069698910392506190

`A115339(A230628(n+1))`
-/

namespace A245580.P16069698910392506190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (A230628 (n + 1)).toNat

end

end A245580.P16069698910392506190

namespace A245580

/-- `A115339(A230628(n+1))` -/
def P16069698910392506190.Spec : Prop :=
  ∀ n, P16069698910392506190.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P17137367958505659247

`A090244(A308196(n+1))`
-/

namespace A245580.P17137367958505659247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (A308196 (n + 1)).toNat

end

end A245580.P17137367958505659247

namespace A245580

/-- `A090244(A308196(n+1))` -/
def P17137367958505659247.Spec : Prop :=
  ∀ n, P17137367958505659247.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P5433233866745391490

`record[A000032(A113655(n+2))]`
-/

namespace A245580.P5433233866745391490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A113655 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245580.P5433233866745391490

namespace A245580

/-- `record[A000032(A113655(n+2))]` -/
def P5433233866745391490.Spec : Prop :=
  ∀ n, P5433233866745391490.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P5363214149853915055

`record[A000032(A006368(n+3))]`
-/

namespace A245580.P5363214149853915055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A006368 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245580.P5363214149853915055

namespace A245580

/-- `record[A000032(A006368(n+3))]` -/
def P5363214149853915055.Spec : Prop :=
  ∀ n, P5363214149853915055.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P2079006860266219458

`record[A000032(A064455(n+3))]`
-/

namespace A245580.P2079006860266219458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A064455 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245580.P2079006860266219458

namespace A245580

/-- `record[A000032(A064455(n+3))]` -/
def P2079006860266219458.Spec : Prop :=
  ∀ n, P2079006860266219458.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P1528285770154933959

`record[A000032(A130509(n+3))]`
-/

namespace A245580.P1528285770154933959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A130509 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245580.P1528285770154933959

namespace A245580

/-- `record[A000032(A130509(n+3))]` -/
def P1528285770154933959.Spec : Prop :=
  ∀ n, P1528285770154933959.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P11831101445342369352

`A254729(A114119(2*n)+2)`
-/

namespace A245580.P11831101445342369352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (A114119 (2 * n) + 2).toNat

end

end A245580.P11831101445342369352

namespace A245580

/-- `A254729(A114119(2*n)+2)` -/
def P11831101445342369352.Spec : Prop :=
  ∀ n, P11831101445342369352.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P4795284371090055213

`A000204(A103517(n)+1+n)`
-/

namespace A245580.P4795284371090055213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (A103517 n + 1 + (n : ℤ)).toNat

end

end A245580.P4795284371090055213

namespace A245580

/-- `A000204(A103517(n)+1+n)` -/
def P4795284371090055213.Spec : Prop :=
  ∀ n, P4795284371090055213.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P17944543024894411259

`record[A000032(A166517(n+1)+1)]`
-/

namespace A245580.P17944543024894411259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A166517 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245580.P17944543024894411259

namespace A245580

/-- `record[A000032(A166517(n+1)+1)]` -/
def P17944543024894411259.Spec : Prop :=
  ∀ n, P17944543024894411259.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P90420049285591772

`record[A000032(A330396(n+1)+1)]`
-/

namespace A245580.P90420049285591772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A330396 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245580.P90420049285591772

namespace A245580

/-- `record[A000032(A330396(n+1)+1)]` -/
def P90420049285591772.Spec : Prop :=
  ∀ n, P90420049285591772.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P3029314117488565016

`A000032(3*(n+1))-A000007(n)`
-/

namespace A245580.P3029314117488565016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * (n + 1)) - A000007 n

end

end A245580.P3029314117488565016

namespace A245580

/-- `A000032(3*(n+1))-A000007(n)` -/
def P3029314117488565016.Spec : Prop :=
  ∀ n, P3029314117488565016.a n = A245580 (n + 1)

end A245580

/-! ## A245580.P10929110150469637844

`A000032(3*(n+1))-A008683((n+1)²)`
-/

namespace A245580.P10929110150469637844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 * (n + 1)) - A008683 ((n + 1) ^ 2)

end

end A245580.P10929110150469637844

namespace A245580

/-- `A000032(3*(n+1))-A008683((n+1)²)` -/
def P10929110150469637844.Spec : Prop :=
  ∀ n, P10929110150469637844.a n = A245580 (n + 1)

end A245580

/-!
# A245581: a(n) = (5 * (1 + (-1)^(1 + n)) + 2 * n^2) / 4.

The programs for A245581, the canonical program `A245581.P8736042297560333138` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245581 has offset 0).

The definition of A245581 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*(1+(-1)^(1+n))+2*n²)/4` (program `A245581.P9158893459012975523`, by `A245581.P9158893459012975523.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245581.P9158893459012975523

`(5*(1+(-1)^(1+n))+2*n²)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245581.P9158893459012975523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (1 + (-1) ^ (1 + n)) + (2 * n ^ 2 : ℤ) : ℚ) / 4

end

end A245581.P9158893459012975523

namespace A245581

/-- `(5*(1+(-1)^(1+n))+2*n²)/4` -/
def P9158893459012975523.Spec : Prop :=
  ∀ n, P9158893459012975523.a n = (A245581 n : ℚ)

theorem P9158893459012975523.correct : P9158893459012975523.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A245581, Nat.add_sub_cancel, A245581.P9158893459012975523.a, A245581.P8736042297560333138.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A245581, Nat.add_sub_cancel, A245581.P9158893459012975523.a, A245581.P8736042297560333138.a, SequenceMachineLib.memo_apply] at h1 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h3 h4 ⊢
      rw [← h1, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A245581

/-! ## A245581.P8736042297560333138

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245581

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P8736042297560333138.Spec : Prop :=
  ∀ n, P8736042297560333138.a n = A245581 n

theorem P8736042297560333138.correct : P8736042297560333138.Spec := by
  intro n
  simp only [A245581]

end A245581

/-! ## A245581.P6907424608098532669

`xor(1, ∑[abs(or(1, -n))])`
-/

namespace A245581.P6907424608098532669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245581.P6907424608098532669

namespace A245581

/-- `xor(1, ∑[abs(or(1, -n))])` -/
def P6907424608098532669.Spec : Prop :=
  ∀ n, P6907424608098532669.a n = A245581 n

end A245581

/-! ## A245581.P7626380325669543909

`xor(1, ceil(n²/2)+1)`
-/

namespace A245581.P7626380325669543909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (⌈(n ^ 2 : ℚ) / 2⌉ + 1)

end

end A245581.P7626380325669543909

namespace A245581

/-- `xor(1, ceil(n²/2)+1)` -/
def P7626380325669543909.Spec : Prop :=
  ∀ n, P7626380325669543909.a n = A245581 n

end A245581

/-! ## A245581.P10453023116617710790

`floor(xor(2, n²+3)/2)`
-/

namespace A245581.P10453023116617710790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (n ^ 2 + 3) : ℚ) / 2⌋

end

end A245581.P10453023116617710790

namespace A245581

/-- `floor(xor(2, n²+3)/2)` -/
def P10453023116617710790.Spec : Prop :=
  ∀ n, P10453023116617710790.a n = A245581 n

end A245581

/-! ## A245581.P5006843064531846858

`or(1, ∑[or(1, n)])-xor(1, n)`
-/

namespace A245581.P5006843064531846858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - (Nat.xor 1 n : ℤ)

end

end A245581.P5006843064531846858

namespace A245581

/-- `or(1, ∑[or(1, n)])-xor(1, n)` -/
def P5006843064531846858.Spec : Prop :=
  ∀ n, P5006843064531846858.a n = A245581 n

end A245581

/-! ## A245581.P9526498837407341789

`Δ[or(1, n)]+ceil(n²/2)`
-/

namespace A245581.P9526498837407341789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ⌈(n ^ 2 : ℚ) / 2⌉

end

end A245581.P9526498837407341789

namespace A245581

/-- `Δ[or(1, n)]+ceil(n²/2)` -/
def P9526498837407341789.Spec : Prop :=
  ∀ n, P9526498837407341789.a n = A245581 n

end A245581

/-! ## A245581.P268367006738896511

`or(ceil(n²/2), Δ[or(1, n)])`
-/

namespace A245581.P268367006738896511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌈(n ^ 2 : ℚ) / 2⌉ ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A245581.P268367006738896511

namespace A245581

/-- `or(ceil(n²/2), Δ[or(1, n)])` -/
def P268367006738896511.Spec : Prop :=
  ∀ n, P268367006738896511.a n = A245581 n

end A245581

/-! ## A245581.P8254956516862348049

`∑[a(n-2)+2]` with `a(0)=0, a(1)=3, a(2)=-1`
-/

namespace A245581.P8254956516862348049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, -1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245581.P8254956516862348049

namespace A245581

/-- `∑[a(n-2)+2]` -/
def P8254956516862348049.Spec : Prop :=
  ∀ n, P8254956516862348049.a n = A245581 n

end A245581

/-! ## A245581.P8845675936919406555

`3-∑[a(n-2)-2]` with `a(0)=3, a(1)=-3`
-/

namespace A245581.P8845675936919406555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -3] fun n f1 =>
  f1 (n - 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245581.P8845675936919406555

namespace A245581

/-- `3-∑[a(n-2)-2]` -/
def P8845675936919406555.Spec : Prop :=
  ∀ n, P8845675936919406555.a n = A245581 n

end A245581

/-! ## A245581.P4484537595800623288

`ogf((3x-4x^2+3x^3)/(1-2x+2x^3-x^4))`
-/

namespace A245581.P4484537595800623288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -4, 3] [1, -2, 0, 2, -1] n

end

end A245581.P4484537595800623288

namespace A245581

/-- `ogf((3x-4x^2+3x^3)/(1-2x+2x^3-x^4))` -/
def P4484537595800623288.Spec : Prop :=
  ∀ n, P4484537595800623288.a n = A245581 n

end A245581

/-! ## A245581.P11492240024847631848

`a(n-2)+2*(n-1)` with `a(0)=0, a(1)=3`
-/

namespace A245581.P11492240024847631848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + 2 * ((n : ℤ) - 1)

end

end A245581.P11492240024847631848

namespace A245581

/-- `a(n-2)+2*(n-1)` -/
def P11492240024847631848.Spec : Prop :=
  ∀ n, P11492240024847631848.a n = A245581 n

end A245581

/-! ## A245581.P4029454869991644448

`2*n-(2-a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A245581.P4029454869991644448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (2 * n : ℤ) - (2 - a (n - 2))

end

end A245581.P4029454869991644448

namespace A245581

/-- `2*n-(2-a(n-2))` -/
def P4029454869991644448.Spec : Prop :=
  ∀ n, P4029454869991644448.a n = A245581 n

end A245581

/-! ## A245581.P7529220851831052953

`n-2+a(n-2)+n` with `a(0)=0, a(1)=3`
-/

namespace A245581.P7529220851831052953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (n : ℤ) - 2 + (a (n - 2) + (n : ℤ))

end

end A245581.P7529220851831052953

namespace A245581

/-- `n-2+a(n-2)+n` -/
def P7529220851831052953.Spec : Prop :=
  ∀ n, P7529220851831052953.a n = A245581 n

end A245581

/-! ## A245581.P6045769074135062000

`n-(2-a(n-2)-n)` with `a(0)=0, a(1)=3`
-/

namespace A245581.P6045769074135062000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (n : ℤ) - (2 - a (n - 2) - (n : ℤ))

end

end A245581.P6045769074135062000

namespace A245581

/-- `n-(2-a(n-2)-n)` -/
def P6045769074135062000.Spec : Prop :=
  ∀ n, P6045769074135062000.a n = A245581 n

end A245581

/-! ## A245581.P17818785020619172013

`(2*n)²-A195145(n)`
-/

namespace A245581.P17818785020619172013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A195145 n

end

end A245581.P17818785020619172013

namespace A245581

/-- `(2*n)²-A195145(n)` -/
def P17818785020619172013.Spec : Prop :=
  ∀ n, P17818785020619172013.a n = A245581 n

end A245581

/-! ## A245581.P15399357233753700985

`∑[n]+1-A097065(n)`
-/

namespace A245581.P15399357233753700985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A097065 n)

end

end A245581.P15399357233753700985

namespace A245581

/-- `∑[n]+1-A097065(n)` -/
def P15399357233753700985.Spec : Prop :=
  ∀ n, P15399357233753700985.a n = A245581 n

end A245581

/-! ## A245581.P9884892701095521383

`∑[n]+2-A084964(n)`
-/

namespace A245581.P9884892701095521383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 - A084964 n)

end

end A245581.P9884892701095521383

namespace A245581

/-- `∑[n]+2-A084964(n)` -/
def P9884892701095521383.Spec : Prop :=
  ∀ n, P9884892701095521383.a n = A245581 n

end A245581

/-! ## A245581.P16198402572950753285

`∑[3-A040011(n)+n]`
-/

namespace A245581.P16198402572950753285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A040011 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245581.P16198402572950753285

namespace A245581

/-- `∑[3-A040011(n)+n]` -/
def P16198402572950753285.Spec : Prop :=
  ∀ n, P16198402572950753285.a n = A245581 n

end A245581

/-! ## A245581.P16787937636933200016

`A010673(n)+A000982(n)`
-/

namespace A245581.P16787937636933200016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n + A000982 n

end

end A245581.P16787937636933200016

namespace A245581

/-- `A010673(n)+A000982(n)` -/
def P16787937636933200016.Spec : Prop :=
  ∀ n, P16787937636933200016.a n = A245581 n

end A245581

/-!
# A245582: Number of binary strings of length n having a cyclic shift that is a palindrome.

The programs for A245582, there is no canonical definition to state claims against.
-/

/-! ## A245582.P8287055208317715315

`2^n-A337056(A028310(n))`
-/

namespace A245582.P8287055208317715315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A337056 (A028310 n).toNat

end

end A245582.P8287055208317715315

/-! ## A245582.P9078696323273361727

`abs(A000079(n)-A337056(A028310(n)))`
-/

namespace A245582.P9078696323273361727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A337056 (A028310 n).toNat|

end

end A245582.P9078696323273361727

/-! ## A245582.P5579538634024829090

`abs(A337056(A028310(n))-A171449(n))`
-/

namespace A245582.P5579538634024829090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A337056 (A028310 n).toNat - A171449 n|

end

end A245582.P5579538634024829090

/-! ## A245582.P4016546838060998989

`(A000079(n)-A337056(A028310(n)))%A000032(2*n)`
-/

namespace A245582.P4016546838060998989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n - A337056 (A028310 n).toNat) (A000032 (2 * n))

end

end A245582.P4016546838060998989

/-! ## A245582.P4916151247741659838

`(A000079(n)-A337056(A028310(n)))*A014963(10*(n+1))`
-/

namespace A245582.P4916151247741659838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 n - A337056 (A028310 n).toNat) * A014963 (10 * (n + 1))

end

end A245582.P4916151247741659838

/-!
# A245584: Let f(m) put the leftmost digit of the positive integer m at its end; a(n) is the sequence of all positive integers m with f^2(m)=f(m^2).

The programs for A245584, there is no canonical definition to state claims against.
-/

/-! ## A245584.P17384703747300441468

`10*a(n-1)+2` with `a(0)=1, a(1)=2, a(2)=3, a(3)=12`
-/

namespace A245584.P17384703747300441468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 12] fun n a =>
  10 * a (n - 1) + 2

end

end A245584.P17384703747300441468

/-! ## A245584.P13995885293783410459

`or(2, 10*a(n-1))` with `a(0)=1, a(1)=2, a(2)=3, a(3)=12`
-/

namespace A245584.P13995885293783410459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 12] fun n a =>
  Nat.lor 2 (10 * a (n - 1))

end

end A245584.P13995885293783410459

/-! ## A245584.P1334705585291547741

`∩[A045878(n+1), A344939(n)]`
-/

namespace A245584.P1334705585291547741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245584.P1334705585291547741

/-! ## A245584.P14588688696918379220

`∩[A045878(n+1), A102660(n+1)]`
-/

namespace A245584.P14588688696918379220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102660 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245584.P14588688696918379220

/-! ## A245584.P9525159703869714243

`∩[A045878(n+1), A378949(n+1)]`
-/

namespace A245584.P9525159703869714243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245584.P9525159703869714243

/-!
# A245585: Numbers that cannot be written as sum of two quarter-squares, cf. A002620.

The programs for A245585, the canonical program `A245585.P6108915240535495460` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245585 has offset 1).

The definition of A245585 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2576 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245585.P6108915240535495460

`eq[0, A245575(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A245585

/-- `eq[0, A245575(n)]` -/
def P6108915240535495460.Spec : Prop :=
  ∀ n, (P6108915240535495460.a n : ℤ) = A245585 (n + 1)

theorem P6108915240535495460.correct : P6108915240535495460.Spec := by
  intro n
  simp only [A245585, Nat.add_sub_cancel]

end A245585

/-! ## A245585.P5498804616032899539

`lt[A245575(A028310(n)), 1]`
-/

namespace A245585.P5498804616032899539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245575 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A245585.P5498804616032899539

namespace A245585

/-- `lt[A245575(A028310(n)), 1]` -/
def P5498804616032899539.Spec : Prop :=
  ∀ n, (P5498804616032899539.a n : ℤ) = A245585 (n + 1)

end A245585

/-! ## A245585.P17962580377569702531

`lt[A245575(n), cos(A010892(n))]`
-/

namespace A245585.P17962580377569702531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245575 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A010892 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A245585.P17962580377569702531

namespace A245585

/-- `lt[A245575(n), cos(A010892(n))]` -/
def P17962580377569702531.Spec : Prop :=
  ∀ n, (P17962580377569702531.a n : ℤ) = A245585 (n + 1)

end A245585

/-! ## A245585.P6782985356907998013

`lt[2, A070176(4*n)]`
-/

namespace A245585.P6782985356907998013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A245585.P6782985356907998013

namespace A245585

/-- `lt[2, A070176(4*n)]` -/
def P6782985356907998013.Spec : Prop :=
  ∀ n, (P6782985356907998013.a n : ℤ) = A245585 (n + 1)

end A245585

/-! ## A245585.P10687818419044329878

`eq[A070176(4*n+3)+3, A070176(4*n)]`
-/

namespace A245585.P10687818419044329878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (4 * n + 3) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245585.P10687818419044329878

namespace A245585

/-- `eq[A070176(4*n+3)+3, A070176(4*n)]` -/
def P10687818419044329878.Spec : Prop :=
  ∀ n, (P10687818419044329878.a n : ℤ) = A245585 (n + 1)

end A245585

/-!
# A245588: The minimal number of coins needed to make change for n units in a currency system with coins of value 1,2,5,13,34,89,...,Fibonacci(2k-1).

The programs for A245588, the canonical program `A245588.P14787650861621797003` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245588 has offset 0).

The definition of A245588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6181 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245588.P14787650861621797003

`A291711(A026351(n))-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A245588

/-- `A291711(A026351(n))-1` -/
def P14787650861621797003.Spec : Prop :=
  ∀ n, P14787650861621797003.a n = A245588 n

theorem P14787650861621797003.correct : P14787650861621797003.Spec := by
  intro n
  simp only [A245588]

end A245588

/-! ## A245588.P9097544877100921461

`A005812(eq[A053735(n)+1, A005812(n+1)])`
-/

namespace A245588.P9097544877100921461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A245588.P9097544877100921461

namespace A245588

/-- `A005812(eq[A053735(n)+1, A005812(n+1)])` -/
def P9097544877100921461.Spec : Prop :=
  ∀ n, P9097544877100921461.a n = A245588 n

end A245588

/-! ## A245588.P14743355004149544005

`A139351(eq[0, A334076(n)])`
-/

namespace A245588.P14743355004149544005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245588.P14743355004149544005

namespace A245588

/-- `A139351(eq[0, A334076(n)])` -/
def P14743355004149544005.Spec : Prop :=
  ∀ n, P14743355004149544005.a n = A245588 n

end A245588

/-! ## A245588.P3274565338497962540

`A139351(eq[2*n, A265716(n)])`
-/

namespace A245588.P3274565338497962540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245588.P3274565338497962540

namespace A245588

/-- `A139351(eq[2*n, A265716(n)])` -/
def P3274565338497962540.Spec : Prop :=
  ∀ n, P3274565338497962540.a n = A245588 n

end A245588

/-! ## A245588.P17549579495451634751

`A139351(eq[n, A265716(n)/2])`
-/

namespace A245588.P17549579495451634751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265716 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A245588.P17549579495451634751

namespace A245588

/-- `A139351(eq[n, A265716(n)/2])` -/
def P17549579495451634751.Spec : Prop :=
  ∀ n, P17549579495451634751.a n = A245588 n

end A245588

/-! ## A245588.P6710668397671007540

`A139351(eq[n, A265716(n)-n])`
-/

namespace A245588.P6710668397671007540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245588.P6710668397671007540

namespace A245588

/-- `A139351(eq[n, A265716(n)-n])` -/
def P6710668397671007540.Spec : Prop :=
  ∀ n, P6710668397671007540.a n = A245588 n

end A245588

/-! ## A245588.P3444325317091949025

`A139351(eq[A005843(n)², A265716(n)²])`
-/

namespace A245588.P3444325317091949025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265716 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A245588.P3444325317091949025

namespace A245588

/-- `A139351(eq[A005843(n)², A265716(n)²])` -/
def P3444325317091949025.Spec : Prop :=
  ∀ n, P3444325317091949025.a n = A245588 n

end A245588

/-! ## A245588.P4465198707574849426

`A034968(eq[A034968(n), A055091(n)])`
-/

namespace A245588.P4465198707574849426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A245588.P4465198707574849426

namespace A245588

/-- `A034968(eq[A034968(n), A055091(n)])` -/
def P4465198707574849426.Spec : Prop :=
  ∀ n, P4465198707574849426.a n = A245588 n

end A245588

/-! ## A245588.P391911548387878996

`A139352(2*eq[0, A334076(n)])`
-/

namespace A245588.P391911548387878996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245588.P391911548387878996

namespace A245588

/-- `A139352(2*eq[0, A334076(n)])` -/
def P391911548387878996.Spec : Prop :=
  ∀ n, P391911548387878996.a n = A245588 n

end A245588

/-! ## A245588.P5995461494314858957

`A139351(eq[1, A079068(A005940(n+1))])`
-/

namespace A245588.P5995461494314858957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245588.P5995461494314858957

namespace A245588

/-- `A139351(eq[1, A079068(A005940(n+1))])` -/
def P5995461494314858957.Spec : Prop :=
  ∀ n, P5995461494314858957.a n = A245588 n

end A245588

/-!
# A245589: Primes which are the average of the two adjacent primes and also of the two adjacent squarefree numbers.

The programs for A245589, there is no canonical definition to state claims against.
-/

/-! ## A245589.P8907222833010608891

`∩[A006562(n+1), A240475(n+1)]`
-/

namespace A245589.P8907222833010608891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245589.P8907222833010608891

/-! ## A245589.P11946184601349858175

`∩[A075540(n+1), A240475(n+1)]`
-/

namespace A245589.P11946184601349858175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245589.P11946184601349858175

/-! ## A245589.P16293087833323928395

`∩[A225494(n+1), A240475(n+1)]`
-/

namespace A245589.P16293087833323928395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245589.P16293087833323928395

/-! ## A245589.P1807971511699073241

`∩[A216124(n+1), A240475(n+1)]`
-/

namespace A245589.P1807971511699073241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245589.P1807971511699073241

/-! ## A245589.P6240776615034759218

`∩[A006562(n+1), A245289(n+1)]`
-/

namespace A245589.P6240776615034759218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245289 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245589.P6240776615034759218

/-!
# A245590: Primes p such that p^2 + 6 is a semiprime.

The programs for A245590, there is no canonical definition to state claims against.
-/

/-! ## A245590.P23340407148103304

`p?[eq[A001222(n²+6), 2]]`
-/

namespace A245590.P23340407148103304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 6)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245590.P23340407148103304

/-! ## A245590.P15525456407190263425

`eq[A001222(n²+6), A007012(n)]`
-/

namespace A245590.P15525456407190263425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245590.P15525456407190263425

/-! ## A245590.P4299243416108640603

`eq[A005127(n), A008481(A114949(n))]`
-/

namespace A245590.P4299243416108640603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A114949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245590.P4299243416108640603

/-! ## A245590.P10346996228522569938

`eq[A007012(n), A008481(A114949(n))]`
-/

namespace A245590.P10346996228522569938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A114949 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245590.P10346996228522569938

/-! ## A245590.P8737747619441162276

`p?[eq[3, A001222(A255842(n))]]`
-/

namespace A245590.P8737747619441162276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A255842 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A245590.P8737747619441162276

/-!
# A245591: Cubes which are the sum of twin prime pairs.

The programs for A245591, there is no canonical definition to state claims against.
-/

/-! ## A245591.P5161474961116336086

`2*(A172271(n+1)+1)`
-/

namespace A245591.P5161474961116336086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A172271 (n + 1) + 1)

end

end A245591.P5161474961116336086

/-! ## A245591.P17369518267758312674

`(2*A172494(n+1))^3`
-/

namespace A245591.P17369518267758312674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A172494 (n + 1)) ^ 3

end

end A245591.P17369518267758312674

/-! ## A245591.P1563566763837176608

`∩[A226524(n+1), A275023(n+1)]`
-/

namespace A245591.P1563566763837176608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245591.P1563566763837176608

/-! ## A245591.P2333904781118089677

`∑{e}[A006094(n+1), A172271(n+1)+#]`
-/

namespace A245591.P2333904781118089677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A172271 (n + 1) + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A245591.P2333904781118089677

/-! ## A245591.P6426492661811245326

`A016743(A172494(n+1))`
-/

namespace A245591.P6426492661811245326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 (A172494 (n + 1)).toNat

end

end A245591.P6426492661811245326

/-! ## A245591.P6410523080404267546

`∩[A119767(n+1), A016743(n)]`
-/

namespace A245591.P6410523080404267546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016743 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245591.P6410523080404267546

/-! ## A245591.P11524420664982461910

`∩[A119767(n+1), A226524(n+1)]`
-/

namespace A245591.P11524420664982461910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226524 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245591.P11524420664982461910

/-! ## A245591.P1395171820671175523

`∩[A119767(n+1), A275023(n+1)]`
-/

namespace A245591.P1395171820671175523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245591.P1395171820671175523

/-! ## A245591.P11745566391537195734

`A000578(2*A172494(n+1))`
-/

namespace A245591.P11745566391537195734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (2 * A172494 (n + 1)).toNat

end

end A245591.P11745566391537195734

/-!
# A245593: 

The programs for A245593, there is no canonical definition to state claims against.
-/

/-! ## A245593.P8561791168461556198

`∑[10^n]^(n+1)`
-/

namespace A245593.P8561791168461556198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A245593.P8561791168461556198

/-! ## A245593.P13740225499091854063

`abs(Δ[A014824(n)]^(n+1))`
-/

namespace A245593.P13740225499091854063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) ^ (n + 1)|

end

end A245593.P13740225499091854063

/-! ## A245593.P4738701806869257110

`record[floor(10^n/9)^A321801(n)]`
-/

namespace A245593.P4738701806869257110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(10 ^ n : ℚ) / 9⌋ : ℚ) ^ (A321801 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245593.P4738701806869257110

/-! ## A245593.P8077916695967181314

`abs(or(1, -A000042(n+1)^(n+1)))`
-/

namespace A245593.P8077916695967181314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(A000042 (n + 1) ^ (n + 1)))|

end

end A245593.P8077916695967181314

/-! ## A245593.P5052159279898293146

`A002275(n+1)^(n+1)+7*C(n, 12)`
-/

namespace A245593.P5052159279898293146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) ^ (n + 1) + (7 * Nat.choose n 12 : ℤ)

end

end A245593.P5052159279898293146

/-!
# A245594: Numbers k that divide 2^k + 10.

The programs for A245594, there is no canonical definition to state claims against.
-/

/-! ## A245594.P7188717196464618521

`A359544(A053781(n+1))`
-/

namespace A245594.P7188717196464618521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359544 (A053781 (n + 1)).toNat

end

end A245594.P7188717196464618521

/-! ## A245594.P17815431889043966712

`∩[A060253(n+1), A173714(n)]`
-/

namespace A245594.P17815431889043966712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060253 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245594.P17815431889043966712

/-!
# A245596: Number of tilings of an n X 1 rectangle by tiles of dimension 1 X 1 and 2 X 1 such that every tile is next to a tile of different size.

The programs for A245596, the canonical program `A245596.P7360655971269296370` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245596 has offset 0).

The definition of A245596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245596.P7360655971269296370

`a(n-3)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=1, a(5)=1, a(6)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245596

/-- `a(n-3)+a(n-4)+a(n-5)+a(n-6)` -/
def P7360655971269296370.Spec : Prop :=
  ∀ n, (P7360655971269296370.a n : ℤ) = A245596 n

theorem P7360655971269296370.correct : P7360655971269296370.Spec := by
  intro n
  simp only [A245596]

end A245596

/-!
# A245597: Smallest k > 1 such that prime(n)*k^prime(n)-1 is prime.

The programs for A245597, there is no canonical definition to state claims against.
-/

/-! ## A245597.P6457483832716241765

`A239938(p?[A186101(n)])`
-/

namespace A245597.P6457483832716241765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245597.P6457483832716241765

/-! ## A245597.P15511961713039028904

`lcm(2, A239938(Δ[A007504(n)]))`
-/

namespace A245597.P15511961713039028904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A239938 (f1 (n + 1) - f1 n).toNat)

end

end A245597.P15511961713039028904

/-! ## A245597.P5895182380756636033

`A239938(A156037(n+1)+1)`
-/

namespace A245597.P5895182380756636033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (A156037 (n + 1) + 1).toNat

end

end A245597.P5895182380756636033

/-! ## A245597.P13559639638319960144

`A239938(A000040(n+1))+char[1]`
-/

namespace A245597.P13559639638319960144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (A000040 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A245597.P13559639638319960144

/-! ## A245597.P16685778912024189879

`A239938(record[A014963(n+2)])+char[1]`
-/

namespace A245597.P16685778912024189879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A245597.P16685778912024189879

/-! ## A245597.P6370623244209849548

`A239938(A039915(n+1)/ceil(3/(n+1))+1)`
-/

namespace A245597.P6370623244209849548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (SequenceMachineLib.roundAway ((A039915 (n + 1) : ℚ) / (⌈3 / (n + 1 : ℚ)⌉ : ℚ) + 1)).toNat

end

end A245597.P6370623244209849548

/-! ## A245597.P4546263463374275138

`A239938(A007918(record[A037225(n)]))`
-/

namespace A245597.P4546263463374275138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (A007918 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A245597.P4546263463374275138

/-! ## A245597.P16316796310812144779

`A239938(A151800(record[A055672(n)]))`
-/

namespace A245597.P16316796310812144779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (A151800 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A245597.P16316796310812144779

/-! ## A245597.P5106937701702818147

`A239938(p?[A008620(A022426(n))])`
-/

namespace A245597.P5106937701702818147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A022426 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245597.P5106937701702818147

/-! ## A245597.P3813950277946175123

`A239938(p?[A254503(A014132(n+1))])`
-/

namespace A245597.P3813950277946175123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254503 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245597.P3813950277946175123

/-! ## A245597.P12854165696382429939

`A239938(p?[A004442(n)])+A000007(n)`
-/

namespace A245597.P12854165696382429939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A000007 n

end

end A245597.P12854165696382429939

/-! ## A245597.P4104048528016796930

`A239938(p?[A004442(n)]-A000007(n))`
-/

namespace A245597.P4104048528016796930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A000007 n).toNat

end

end A245597.P4104048528016796930

/-! ## A245597.P6039789813683344056

`A239938(A000040(n+1)-A063524(n))`
-/

namespace A245597.P6039789813683344056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239938 (A000040 (n + 1) - A063524 n).toNat

end

end A245597.P6039789813683344056

/-! ## A245597.P5612778412354264922

`A054977(xor(1, n))*A239938(A000040(n+1))`
-/

namespace A245597.P5612778412354264922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (Nat.xor 1 n) * A239938 (A000040 (n + 1)).toNat

end

end A245597.P5612778412354264922

/-! ## A245597.P8528391758448566447

`A014963(4*n+2)*A239938(p?[A004442(n)])`
-/

namespace A245597.P8528391758448566447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A239938 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245597.P8528391758448566447

/-!
# A245598: Smallest k > 1 such that prime(n)*k^prime(n)+1 is prime.

The programs for A245598, there is no canonical definition to state claims against.
-/

/-! ## A245598.P8538539222687070297

`A239666(A000040(n+1))+A000038(n)`
-/

namespace A245598.P8538539222687070297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239666 (A000040 (n + 1)).toNat + A000038 n

end

end A245598.P8538539222687070297

/-! ## A245598.P4116761957102082502

`A159966(A239666(p?[A057979(n)]))`
-/

namespace A245598.P4116761957102082502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 (A239666 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A245598.P4116761957102082502

/-! ## A245598.P137833257373151781

`A239666(A000040(n+1)^A348500(3*(n+1)))`
-/

namespace A245598.P137833257373151781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239666 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) ^ (A348500 (3 * (n + 1)) : ℤ))).toNat

end

end A245598.P137833257373151781

/-!
# A245599: Numbers m with A030101(m) XOR A030109(m) = m for the binary representation of m.

The programs for A245599, the canonical program `A245599.P13363282383343365805` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245599 has offset 1).

The definition of A245599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245599.P13363282383343365805

`9*a(n-1)-8*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A245599

/-- `9*a(n-1)-8*a(n-2)` -/
def P13363282383343365805.Spec : Prop :=
  ∀ n, P13363282383343365805.a n = A245599 (n + 1)

theorem P13363282383343365805.correct : P13363282383343365805.Spec := by
  intro n
  simp only [A245599, Nat.add_sub_cancel]

end A245599

/-! ## A245599.P13667651278740228928

`(5*8^(n+1)-12)/28`
-/

namespace A245599.P13667651278740228928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 8 ^ (n + 1) : ℤ) - 12 : ℚ) / 28

end

end A245599.P13667651278740228928

namespace A245599

/-- `(5*8^(n+1)-12)/28` -/
def P13667651278740228928.Spec : Prop :=
  ∀ n, P13667651278740228928.a n = (A245599 (n + 1) : ℚ)

theorem P13667651278740228928.correct : P13667651278740228928.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A245599, Nat.add_sub_cancel, A245599.P13667651278740228928.a, A245599.P13363282383343365805.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A245599, Nat.add_sub_cancel, A245599.P13667651278740228928.a, A245599.P13363282383343365805.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A245599

/-! ## A245599.P12827450703009587469

`ogf((1+2x)/(1-9x+8x^2))`
-/

namespace A245599.P12827450703009587469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -9, 8] n

end

end A245599.P12827450703009587469

namespace A245599

/-- `ogf((1+2x)/(1-9x+8x^2))` -/
def P12827450703009587469.Spec : Prop :=
  ∀ n, P12827450703009587469.a n = A245599 (n + 1)

end A245599

/-! ## A245599.P14747400199341160723

`8*a(n-1)+3` with `a(0)=1`
-/

namespace A245599.P14747400199341160723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  8 * a (n - 1) + 3

end

end A245599.P14747400199341160723

namespace A245599

/-- `8*a(n-1)+3` -/
def P14747400199341160723.Spec : Prop :=
  ∀ n, (P14747400199341160723.a n : ℤ) = A245599 (n + 1)

end A245599

/-! ## A245599.P13298666524696374714

`lcm(8, a(n-1))+3` with `a(0)=1`
-/

namespace A245599.P13298666524696374714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 8 (a (n - 1)) + 3

end

end A245599.P13298666524696374714

namespace A245599

/-- `lcm(8, a(n-1))+3` -/
def P13298666524696374714.Spec : Prop :=
  ∀ n, (P13298666524696374714.a n : ℤ) = A245599 (n + 1)

end A245599

/-! ## A245599.P12039406967530679096

`or(3, 8*a(n-1))` with `a(0)=1`
-/

namespace A245599.P12039406967530679096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor 3 (8 * a (n - 1))

end

end A245599.P12039406967530679096

namespace A245599

/-- `or(3, 8*a(n-1))` -/
def P12039406967530679096.Spec : Prop :=
  ∀ n, (P12039406967530679096.a n : ℤ) = A245599 (n + 1)

end A245599

/-! ## A245599.P12032771179938804648

`xor(3, 8*a(n-1))` with `a(0)=1`
-/

namespace A245599.P12032771179938804648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 3 (8 * a (n - 1))

end

end A245599.P12032771179938804648

namespace A245599

/-- `xor(3, 8*a(n-1))` -/
def P12032771179938804648.Spec : Prop :=
  ∀ n, (P12032771179938804648.a n : ℤ) = A245599 (n + 1)

end A245599

/-! ## A245599.P15709754929212207193

`∑[8*a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A245599.P15709754929212207193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  8 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245599.P15709754929212207193

namespace A245599

/-- `∑[8*a(n-1)]` -/
def P15709754929212207193.Spec : Prop :=
  ∀ n, (P15709754929212207193.a n : ℤ) = A245599 (n + 1)

end A245599

/-! ## A245599.P7645772542406779847

`5-2*(1-4*a(n-1))` with `a(0)=1`
-/

namespace A245599.P7645772542406779847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 - 2 * (1 - 4 * a (n - 1))

end

end A245599.P7645772542406779847

namespace A245599

/-- `5-2*(1-4*a(n-1))` -/
def P7645772542406779847.Spec : Prop :=
  ∀ n, P7645772542406779847.a n = A245599 (n + 1)

end A245599

/-! ## A245599.P4970854612232234960

`a(n-1)/(1/2)^3+3` with `a(0)=1`
-/

namespace A245599.P4970854612232234960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 3 + 3

end

end A245599.P4970854612232234960

namespace A245599

/-- `a(n-1)/(1/2)^3+3` -/
def P4970854612232234960.Spec : Prop :=
  ∀ n, P4970854612232234960.a n = (A245599 (n + 1) : ℚ)

end A245599

/-! ## A245599.P11386288651272501218

`A113836(Δ[n²])`
-/

namespace A245599.P11386288651272501218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113836 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A245599.P11386288651272501218

namespace A245599

/-- `A113836(Δ[n²])` -/
def P11386288651272501218.Spec : Prop :=
  ∀ n, P11386288651272501218.a n = A245599 (n + 1)

end A245599

/-! ## A245599.P14830134424046331431

`∑[A084215(3*n)]`
-/

namespace A245599.P14830134424046331431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245599.P14830134424046331431

namespace A245599

/-- `∑[A084215(3*n)]` -/
def P14830134424046331431.Spec : Prop :=
  ∀ n, P14830134424046331431.a n = A245599 (n + 1)

end A245599

/-! ## A245599.P9693278606937405365

`A033120(3*n+1)`
-/

namespace A245599.P9693278606937405365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033120 (3 * n + 1)

end

end A245599.P9693278606937405365

namespace A245599

/-- `A033120(3*n+1)` -/
def P9693278606937405365.Spec : Prop :=
  ∀ n, P9693278606937405365.a n = A245599 (n + 1)

end A245599

/-! ## A245599.P9824417446353158989

`∑[2*A067412(n)]-1`
-/

namespace A245599.P9824417446353158989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A245599.P9824417446353158989

namespace A245599

/-- `∑[2*A067412(n)]-1` -/
def P9824417446353158989.Spec : Prop :=
  ∀ n, P9824417446353158989.a n = A245599 (n + 1)

end A245599

/-! ## A245599.P12800255318675872212

`2*A125836(n+1)+1`
-/

namespace A245599.P12800255318675872212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125836 (n + 1) + 1

end

end A245599.P12800255318675872212

namespace A245599

/-- `2*A125836(n+1)+1` -/
def P12800255318675872212.Spec : Prop :=
  ∀ n, P12800255318675872212.a n = A245599 (n + 1)

end A245599

/-! ## A245599.P15614787616962178705

`5*A125835(n+1)+1`
-/

namespace A245599.P15614787616962178705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A125835 (n + 1) + 1

end

end A245599.P15614787616962178705

namespace A245599

/-- `5*A125835(n+1)+1` -/
def P15614787616962178705.Spec : Prop :=
  ∀ n, P15614787616962178705.a n = A245599 (n + 1)

end A245599

/-! ## A245599.P9208092345274888746

`A334930(A004277(n))`
-/

namespace A245599.P9208092345274888746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334930 (A004277 n).toNat

end

end A245599.P9208092345274888746

namespace A245599

/-- `A334930(A004277(n))` -/
def P9208092345274888746.Spec : Prop :=
  ∀ n, P9208092345274888746.a n = A245599 (n + 1)

end A245599

/-! ## A245599.P14951145722621438033

`A334930(A004275(n+1))`
-/

namespace A245599.P14951145722621438033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334930 (A004275 (n + 1)).toNat

end

end A245599.P14951145722621438033

namespace A245599

/-- `A334930(A004275(n+1))` -/
def P14951145722621438033.Spec : Prop :=
  ∀ n, P14951145722621438033.a n = A245599 (n + 1)

end A245599

/-! ## A245599.P2280246363959989184

`A083713(n)+A001018(n)`
-/

namespace A245599.P2280246363959989184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083713 n + A001018 n

end

end A245599.P2280246363959989184

namespace A245599

/-- `A083713(n)+A001018(n)` -/
def P2280246363959989184.Spec : Prop :=
  ∀ n, P2280246363959989184.a n = A245599 (n + 1)

end A245599

/-! ## A245599.P3963465964904487842

`Δ[A046636(n)/2]-A046636(n)`
-/

namespace A245599.P3963465964904487842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046636 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A046636 n : ℚ)

end

end A245599.P3963465964904487842

namespace A245599

/-- `Δ[A046636(n)/2]-A046636(n)` -/
def P3963465964904487842.Spec : Prop :=
  ∀ n, P3963465964904487842.a n = (A245599 (n + 1) : ℚ)

end A245599

