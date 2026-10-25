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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A112601: a(n) = prime(b(n)) where b(n) = b(n-2) + a(n-1) (with b(1)=1, b(2)=2).

The programs for A112601, there is no canonical definition to state claims against.
-/

/-! ## A112601.P11424504061648923767

`A023049(A023758(n+1)+A005700(n))`
-/

namespace A112601.P11424504061648923767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023049 (A023758 (n + 1) + A005700 n).toNat

end

end A112601.P11424504061648923767

/-! ## A112601.P12334066726256226736

`p?[A007682(n)+n!]`
-/

namespace A112601.P12334066726256226736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007682 n + (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112601.P12334066726256226736

/-!
# A112603: Number of representations of n as the sum of a square and a triangular number.

The programs for A112603, the canonical program `A112603.P10073116027546116725` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112603 has offset 0).

The definition of A112603 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002325, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112603.P10073116027546116725

`A002325(8*n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A112603

/-- `A002325(8*n+1)` -/
def P10073116027546116725.Spec : Prop :=
  ∀ n, P10073116027546116725.a n = A112603 n

theorem P10073116027546116725.correct : P10073116027546116725.Spec := by
  intro n
  simp only [A112603]

end A112603

/-! ## A112603.P14765155714303527165

`A125095(4*n)`
-/

namespace A112603.P14765155714303527165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125095 (4 * n)

end

end A112603.P14765155714303527165

namespace A112603

/-- `A125095(4*n)` -/
def P14765155714303527165.Spec : Prop :=
  ∀ n, P14765155714303527165.a n = A112603 n

end A112603

/-! ## A112603.P2013534027687595899

`A113411(4*n)`
-/

namespace A112603.P2013534027687595899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 (4 * n)

end

end A112603.P2013534027687595899

namespace A112603

/-- `A113411(4*n)` -/
def P2013534027687595899.Spec : Prop :=
  ∀ n, P2013534027687595899.a n = A112603 n

end A112603

/-! ## A112603.P16564423163683493199

`A113411(A008574(n))-A008574(n)%2`
-/

namespace A112603.P16564423163683493199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113411 (A008574 n).toNat - Int.tmod (A008574 n) 2

end

end A112603.P16564423163683493199

namespace A112603

/-- `A113411(A008574(n))-A008574(n)%2` -/
def P16564423163683493199.Spec : Prop :=
  ∀ n, P16564423163683493199.a n = A112603 n

end A112603

/-! ## A112603.P6750627850631204959

`A000007(n)+A113411(A008574(n))%A008574(n)`
-/

namespace A112603.P6750627850631204959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (A113411 (A008574 n).toNat) (A008574 n)

end

end A112603.P6750627850631204959

namespace A112603

/-- `A000007(n)+A113411(A008574(n))%A008574(n)` -/
def P6750627850631204959.Spec : Prop :=
  ∀ n, P6750627850631204959.a n = A112603 n

end A112603

/-! ## A112603.P2652098037588934010

`A129438(8*n+1)`
-/

namespace A112603.P2652098037588934010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129438 (8 * n + 1)

end

end A112603.P2652098037588934010

namespace A112603

/-- `A129438(8*n+1)` -/
def P2652098037588934010.Spec : Prop :=
  ∀ n, P2652098037588934010.a n = A112603 n

end A112603

/-! ## A112603.P3601156765008832727

`A133693(8*n+1)`
-/

namespace A112603.P3601156765008832727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133693 (8 * n + 1)

end

end A112603.P3601156765008832727

namespace A112603

/-- `A133693(8*n+1)` -/
def P3601156765008832727.Spec : Prop :=
  ∀ n, P3601156765008832727.a n = A112603 n

end A112603

/-! ## A112603.P14729611479689289794

`A244543(8*n+1)`
-/

namespace A112603.P14729611479689289794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244543 (8 * n + 1)

end

end A112603.P14729611479689289794

namespace A112603

/-- `A244543(8*n+1)` -/
def P14729611479689289794.Spec : Prop :=
  ∀ n, P14729611479689289794.a n = A112603 n

end A112603

/-! ## A112603.P15808154613127009244

`A033715(7*n+1+n)/2`
-/

namespace A112603.P15808154613127009244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033715 (7 * n + 1 + n) : ℚ) / 2

end

end A112603.P15808154613127009244

namespace A112603

/-- `A033715(7*n+1+n)/2` -/
def P15808154613127009244.Spec : Prop :=
  ∀ n, P15808154613127009244.a n = (A112603 n : ℚ)

end A112603

/-! ## A112603.P9039259066337096146

`A129134(8*n+1)`
-/

namespace A112603.P9039259066337096146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129134 (8 * n + 1)

end

end A112603.P9039259066337096146

namespace A112603

/-- `A129134(8*n+1)` -/
def P9039259066337096146.Spec : Prop :=
  ∀ n, P9039259066337096146.a n = A112603 n

end A112603

/-!
# A112604: Number of representations of n as a sum of three times a square and two times a triangular number.

The programs for A112604, the canonical program `A112604.P7169979849370553245` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112604 has offset 0).

The definition of A112604 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033762, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112604.P7169979849370553245

`A033762(2*n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A112604

/-- `A033762(2*n)` -/
def P7169979849370553245.Spec : Prop :=
  ∀ n, P7169979849370553245.a n = A112604 n

theorem P7169979849370553245.correct : P7169979849370553245.Spec := by
  intro n
  simp only [A112604]

end A112604

/-! ## A112604.P10536441489356554088

`A002324(4*n+1)`
-/

namespace A112604.P10536441489356554088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (4 * n + 1)

end

end A112604.P10536441489356554088

namespace A112604

/-- `A002324(4*n+1)` -/
def P10536441489356554088.Spec : Prop :=
  ∀ n, P10536441489356554088.a n = A112604 n

end A112604

/-! ## A112604.P7076566214939526831

`abs(A262774(n))`
-/

namespace A112604.P7076566214939526831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262774 n|

end

end A112604.P7076566214939526831

namespace A112604

/-- `abs(A262774(n))` -/
def P7076566214939526831.Spec : Prop :=
  ∀ n, P7076566214939526831.a n = A112604 n

end A112604

/-! ## A112604.P16816274306294847396

`A096936(4*n+1)`
-/

namespace A112604.P16816274306294847396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (4 * n + 1)

end

end A112604.P16816274306294847396

namespace A112604

/-- `A096936(4*n+1)` -/
def P16816274306294847396.Spec : Prop :=
  ∀ n, P16816274306294847396.a n = A112604 n

end A112604

/-! ## A112604.P16208159779378612262

`A115979(4*n+1)`
-/

namespace A112604.P16208159779378612262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (4 * n + 1)

end

end A112604.P16208159779378612262

namespace A112604

/-- `A115979(4*n+1)` -/
def P16208159779378612262.Spec : Prop :=
  ∀ n, P16208159779378612262.a n = A112604 n

end A112604

/-! ## A112604.P7013699101233879652

`A217220(A016813(n))/4`
-/

namespace A112604.P7013699101233879652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 (A016813 n).toNat : ℚ) / 4

end

end A112604.P7013699101233879652

namespace A112604

/-- `A217220(A016813(n))/4` -/
def P7013699101233879652.Spec : Prop :=
  ∀ n, P7013699101233879652.a n = (A112604 n : ℚ)

end A112604

/-! ## A112604.P1560370291054143439

`A033999(n)*A262774(n)`
-/

namespace A112604.P1560370291054143439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A262774 n

end

end A112604.P1560370291054143439

namespace A112604

/-- `A033999(n)*A262774(n)` -/
def P1560370291054143439.Spec : Prop :=
  ∀ n, P1560370291054143439.a n = A112604 n

end A112604

/-! ## A112604.P5231875121362359248

`A057079(n)*A262774(n)`
-/

namespace A112604.P5231875121362359248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A262774 n

end

end A112604.P5231875121362359248

namespace A112604

/-- `A057079(n)*A262774(n)` -/
def P5231875121362359248.Spec : Prop :=
  ∀ n, P5231875121362359248.a n = A112604 n

end A112604

/-! ## A112604.P17742387823036498435

`A130151(n)*A262774(n)`
-/

namespace A112604.P17742387823036498435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 n * A262774 n

end

end A112604.P17742387823036498435

namespace A112604

/-- `A130151(n)*A262774(n)` -/
def P17742387823036498435.Spec : Prop :=
  ∀ n, P17742387823036498435.a n = A112604 n

end A112604

/-! ## A112604.P7720910192267017999

`A131556(n)*A262774(n)`
-/

namespace A112604.P7720910192267017999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131556 n * A262774 n

end

end A112604.P7720910192267017999

namespace A112604

/-- `A131556(n)*A262774(n)` -/
def P7720910192267017999.Spec : Prop :=
  ∀ n, P7720910192267017999.a n = A112604 n

end A112604

/-! ## A112604.P14707133925706116611

`A132951(n)*A262774(n)`
-/

namespace A112604.P14707133925706116611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132951 n * A262774 n

end

end A112604.P14707133925706116611

namespace A112604

/-- `A132951(n)*A262774(n)` -/
def P14707133925706116611.Spec : Prop :=
  ∀ n, P14707133925706116611.a n = A112604 n

end A112604

/-! ## A112604.P14274583057424280120

`gcd(A000038(n), A262774(n))`
-/

namespace A112604.P14274583057424280120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A262774 n)

end

end A112604.P14274583057424280120

namespace A112604

/-- `gcd(A000038(n), A262774(n))` -/
def P14274583057424280120.Spec : Prop :=
  ∀ n, (P14274583057424280120.a n : ℤ) = A112604 n

end A112604

/-! ## A112604.P5977297141433618860

`lcm(A000034(n), A262774(n))`
-/

namespace A112604.P5977297141433618860
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A262774 n)

end

end A112604.P5977297141433618860

namespace A112604

/-- `lcm(A000034(n), A262774(n))` -/
def P5977297141433618860.Spec : Prop :=
  ∀ n, (P5977297141433618860.a n : ℤ) = A112604 n

end A112604

/-! ## A112604.P18045343783080626053

`A253243(n)/A061347(n+1)`
-/

namespace A112604.P18045343783080626053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253243 n : ℚ) / (A061347 (n + 1) : ℚ)

end

end A112604.P18045343783080626053

namespace A112604

/-- `A253243(n)/A061347(n+1)` -/
def P18045343783080626053.Spec : Prop :=
  ∀ n, P18045343783080626053.a n = (A112604 n : ℚ)

end A112604

/-! ## A112604.P3493613116318693186

`abs(A262780(2*n))`
-/

namespace A112604.P3493613116318693186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262780 (2 * n)|

end

end A112604.P3493613116318693186

namespace A112604

/-- `abs(A262780(2*n))` -/
def P3493613116318693186.Spec : Prop :=
  ∀ n, P3493613116318693186.a n = A112604 n

end A112604

/-! ## A112604.P10524919283344807879

`A005881(2*n)/2`
-/

namespace A112604.P10524919283344807879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005881 (2 * n) : ℚ) / 2

end

end A112604.P10524919283344807879

namespace A112604

/-- `A005881(2*n)/2` -/
def P10524919283344807879.Spec : Prop :=
  ∀ n, P10524919283344807879.a n = (A112604 n : ℚ)

theorem P10524919283344807879.correct : P10524919283344807879.Spec := by
  intro n
  simp only [A112604, Nat.add_sub_cancel, A112604.P10524919283344807879.a, A112604.P7169979849370553245.a, A005881, A005881.P8037099234371923042.a, A033762, A033762.P13282187029160693838.a, A122860, A122860.P11540737575163240451.f1, A122860.P11540737575163240451.a, A033999, A033999.P17703899380244199787.a, A049347, A049347.P9996747395155426839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112604

/-! ## A112604.P8423748528724454283

`A001281(A005881(2*n))`
-/

namespace A112604.P8423748528724454283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005881 (2 * n)).toNat

end

end A112604.P8423748528724454283

namespace A112604

/-- `A001281(A005881(2*n))` -/
def P8423748528724454283.Spec : Prop :=
  ∀ n, P8423748528724454283.a n = A112604 n

end A112604

/-! ## A112604.P2798670639790078008

`A033716(A005408(2*n))/2`
-/

namespace A112604.P2798670639790078008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 (A005408 (2 * n)).toNat : ℚ) / 2

end

end A112604.P2798670639790078008

namespace A112604

/-- `A033716(A005408(2*n))/2` -/
def P2798670639790078008.Spec : Prop :=
  ∀ n, P2798670639790078008.a n = (A112604 n : ℚ)

end A112604

/-! ## A112604.P10814935651127649955

`A129449(2*n)`
-/

namespace A112604.P10814935651127649955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129449 (2 * n)

end

end A112604.P10814935651127649955

namespace A112604

/-- `A129449(2*n)` -/
def P10814935651127649955.Spec : Prop :=
  ∀ n, P10814935651127649955.a n = A112604 n

end A112604

/-! ## A112604.P17146154112069946523

`A359307(2*n+1)-A359325(2*n+1)`
-/

namespace A112604.P17146154112069946523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359307 (2 * n + 1) - A359325 (2 * n + 1)

end

end A112604.P17146154112069946523

namespace A112604

/-- `A359307(2*n+1)-A359325(2*n+1)` -/
def P17146154112069946523.Spec : Prop :=
  ∀ n, P17146154112069946523.a n = A112604 n

end A112604

/-!
# A112605: Number of representations of n as a sum of a square and six times a triangular number.

The programs for A112605, the canonical program `A112605.P15074569082545500884` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112605 has offset 0).

The definition of A112605 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112605.P15074569082545500884

`A002324(4*n+3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112605

/-- `A002324(4*n+3)` -/
def P15074569082545500884.Spec : Prop :=
  ∀ n, P15074569082545500884.a n = A112605 n

theorem P15074569082545500884.correct : P15074569082545500884.Spec := by
  intro n
  simp only [A112605]

end A112605

/-! ## A112605.P17181205858014540446

`abs(A262726(n))`
-/

namespace A112605.P17181205858014540446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262726 n|

end

end A112605.P17181205858014540446

namespace A112605

/-- `abs(A262726(n))` -/
def P17181205858014540446.Spec : Prop :=
  ∀ n, P17181205858014540446.a n = A112605 n

end A112605

/-! ## A112605.P9999341478806202443

`A096936(4*n+3)`
-/

namespace A112605.P9999341478806202443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (4 * n + 3)

end

end A112605.P9999341478806202443

namespace A112605

/-- `A096936(4*n+3)` -/
def P9999341478806202443.Spec : Prop :=
  ∀ n, P9999341478806202443.a n = A112605 n

end A112605

/-! ## A112605.P4488483214965917572

`A115979(4*n+3)`
-/

namespace A112605.P4488483214965917572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (4 * n + 3)

end

end A112605.P4488483214965917572

namespace A112605

/-- `A115979(4*n+3)` -/
def P4488483214965917572.Spec : Prop :=
  ∀ n, P4488483214965917572.a n = A112605 n

end A112605

/-! ## A112605.P16564930121364689288

`A033716(4*n+3)/2`
-/

namespace A112605.P16564930121364689288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 (4 * n + 3) : ℚ) / 2

end

end A112605.P16564930121364689288

namespace A112605

/-- `A033716(4*n+3)/2` -/
def P16564930121364689288.Spec : Prop :=
  ∀ n, P16564930121364689288.a n = (A112605 n : ℚ)

end A112605

/-! ## A112605.P7494651423107065584

`A033999(n)*A262726(n)`
-/

namespace A112605.P7494651423107065584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A262726 n

end

end A112605.P7494651423107065584

namespace A112605

/-- `A033999(n)*A262726(n)` -/
def P7494651423107065584.Spec : Prop :=
  ∀ n, P7494651423107065584.a n = A112605 n

end A112605

/-! ## A112605.P14223181268549318383

`A131713(n)*A246838(n)`
-/

namespace A112605.P14223181268549318383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n * A246838 n

end

end A112605.P14223181268549318383

namespace A112605

/-- `A131713(n)*A246838(n)` -/
def P14223181268549318383.Spec : Prop :=
  ∀ n, P14223181268549318383.a n = A112605 n

end A112605

/-! ## A112605.P6271398145475500619

`gcd(A000038(n), A262726(n))`
-/

namespace A112605.P6271398145475500619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A262726 n)

end

end A112605.P6271398145475500619

namespace A112605

/-- `gcd(A000038(n), A262726(n))` -/
def P6271398145475500619.Spec : Prop :=
  ∀ n, (P6271398145475500619.a n : ℤ) = A112605 n

end A112605

/-! ## A112605.P18148750298459387998

`lcm(A000034(n), A262726(n))`
-/

namespace A112605.P18148750298459387998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A262726 n)

end

end A112605.P18148750298459387998

namespace A112605

/-- `lcm(A000034(n), A262726(n))` -/
def P18148750298459387998.Spec : Prop :=
  ∀ n, (P18148750298459387998.a n : ℤ) = A112605 n

end A112605

/-! ## A112605.P6503383203306093692

`(2-A057079(n)²)*A246838(n)`
-/

namespace A112605.P6503383203306093692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A057079 n ^ 2) * A246838 n

end

end A112605.P6503383203306093692

namespace A112605

/-- `(2-A057079(n)²)*A246838(n)` -/
def P6503383203306093692.Spec : Prop :=
  ∀ n, P6503383203306093692.a n = A112605 n

end A112605

/-! ## A112605.P3007026834596299918

`(2-A132954(n)²)*A246838(n)`
-/

namespace A112605.P3007026834596299918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A132954 n ^ 2) * A246838 n

end

end A112605.P3007026834596299918

namespace A112605

/-- `(2-A132954(n)²)*A246838(n)` -/
def P3007026834596299918.Spec : Prop :=
  ∀ n, P3007026834596299918.a n = A112605 n

end A112605

/-! ## A112605.P3749922352472493310

`A100051(n+1)*A262726(n)`
-/

namespace A112605.P3749922352472493310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 (n + 1) * A262726 n

end

end A112605.P3749922352472493310

namespace A112605

/-- `A100051(n+1)*A262726(n)` -/
def P3749922352472493310.Spec : Prop :=
  ∀ n, P3749922352472493310.a n = A112605 n

end A112605

/-! ## A112605.P73470050543053701

`A057079(n+2)*A262726(n)`
-/

namespace A112605.P73470050543053701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (n + 2) * A262726 n

end

end A112605.P73470050543053701

namespace A112605

/-- `A057079(n+2)*A262726(n)` -/
def P73470050543053701.Spec : Prop :=
  ∀ n, P73470050543053701.a n = A112605 n

end A112605

/-! ## A112605.P5034230800732603777

`A033762(Δ[n²])`
-/

namespace A112605.P5034230800732603777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A112605.P5034230800732603777

namespace A112605

/-- `A033762(Δ[n²])` -/
def P5034230800732603777.Spec : Prop :=
  ∀ n, P5034230800732603777.a n = A112605 n

end A112605

/-! ## A112605.P10203191982970199899

`abs(A262780(Δ[n²]))`
-/

namespace A112605.P10203191982970199899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A262780 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A112605.P10203191982970199899

namespace A112605

/-- `abs(A262780(Δ[n²]))` -/
def P10203191982970199899.Spec : Prop :=
  ∀ n, P10203191982970199899.a n = A112605 n

end A112605

/-! ## A112605.P17384054986505261827

`A005881(Δ[n²])/2`
-/

namespace A112605.P17384054986505261827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005881 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A112605.P17384054986505261827

namespace A112605

/-- `A005881(Δ[n²])/2` -/
def P17384054986505261827.Spec : Prop :=
  ∀ n, P17384054986505261827.a n = (A112605 n : ℚ)

end A112605

/-! ## A112605.P7810194748423213423

`abs(A129449(2*n+1))`
-/

namespace A112605.P7810194748423213423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129449 (2 * n + 1)|

end

end A112605.P7810194748423213423

namespace A112605

/-- `abs(A129449(2*n+1))` -/
def P7810194748423213423.Spec : Prop :=
  ∀ n, P7810194748423213423.a n = A112605 n

end A112605

/-! ## A112605.P6680362673104495717

`A001281(A005881(2*n+1))`
-/

namespace A112605.P6680362673104495717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005881 (2 * n + 1)).toNat

end

end A112605.P6680362673104495717

namespace A112605

/-- `A001281(A005881(2*n+1))` -/
def P6680362673104495717.Spec : Prop :=
  ∀ n, P6680362673104495717.a n = A112605 n

end A112605

/-! ## A112605.P7389456244778882133

`gcd(A130706(n), A262780(2*n+1))`
-/

namespace A112605.P7389456244778882133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A262780 (2 * n + 1))

end

end A112605.P7389456244778882133

namespace A112605

/-- `gcd(A130706(n), A262780(2*n+1))` -/
def P7389456244778882133.Spec : Prop :=
  ∀ n, (P7389456244778882133.a n : ℤ) = A112605 n

end A112605

/-! ## A112605.P4242181050406379056

`filter[A033762(2*n+1), A071024(#)]`
-/

namespace A112605.P4242181050406379056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071024 (f1 j).toNat = 1) n)

end

end A112605.P4242181050406379056

namespace A112605

/-- `filter[A033762(2*n+1), A071024(#)]` -/
def P4242181050406379056.Spec : Prop :=
  ∀ n, P4242181050406379056.a n = A112605 n

end A112605

/-!
# A112606: Number of representations of n as a sum of six times a square and a triangular number.

The programs for A112606, the canonical program `A112606.P17885378761059741003` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112606 has offset 0).

The definition of A112606 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A112604, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112606.P17885378761059741003

`A112604(2*n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A112606

/-- `A112604(2*n)` -/
def P17885378761059741003.Spec : Prop :=
  ∀ n, P17885378761059741003.a n = A112606 n

theorem P17885378761059741003.correct : P17885378761059741003.Spec := by
  intro n
  simp only [A112606]

end A112606

/-! ## A112606.P12379785959719296417

`A112608(3*n)`
-/

namespace A112606.P12379785959719296417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112608 (3 * n)

end

end A112606.P12379785959719296417

namespace A112606

/-- `A112608(3*n)` -/
def P12379785959719296417.Spec : Prop :=
  ∀ n, P12379785959719296417.a n = A112606 n

end A112606

/-! ## A112606.P12762280897962299749

`A123484(24*n+3)`
-/

namespace A112606.P12762280897962299749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123484 (24 * n + 3)

end

end A112606.P12762280897962299749

namespace A112606

/-- `A123484(24*n+3)` -/
def P12762280897962299749.Spec : Prop :=
  ∀ n, P12762280897962299749.a n = A112606 n

end A112606

/-! ## A112606.P5264977810433959000

`A260941(n)/A131713(n)`
-/

namespace A112606.P5264977810433959000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260941 n : ℚ) / (A131713 n : ℚ)

end

end A112606.P5264977810433959000

namespace A112606

/-- `A260941(n)/A131713(n)` -/
def P5264977810433959000.Spec : Prop :=
  ∀ n, P5264977810433959000.a n = (A112606 n : ℚ)

end A112606

/-! ## A112606.P6281482842513594315

`A096936(8*n+1)`
-/

namespace A112606.P6281482842513594315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (8 * n + 1)

end

end A112606.P6281482842513594315

namespace A112606

/-- `A096936(8*n+1)` -/
def P6281482842513594315.Spec : Prop :=
  ∀ n, P6281482842513594315.a n = A112606 n

end A112606

/-! ## A112606.P3621619406270976349

`A115979(8*n+1)`
-/

namespace A112606.P3621619406270976349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (8 * n + 1)

end

end A112606.P3621619406270976349

namespace A112606

/-- `A115979(8*n+1)` -/
def P3621619406270976349.Spec : Prop :=
  ∀ n, P3621619406270976349.a n = A112606 n

end A112606

/-! ## A112606.P14705660790435672982

`A033716(sqrt(A017078(n)))/2`
-/

namespace A112606.P14705660790435672982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 (SequenceMachineLib.roundAway (Real.sqrt (A017078 n : ℝ))).toNat : ℚ) / 2

end

end A112606.P14705660790435672982

namespace A112606

/-- `A033716(sqrt(A017078(n)))/2` -/
def P14705660790435672982.Spec : Prop :=
  ∀ n, P14705660790435672982.a n = (A112606 n : ℚ)

end A112606

/-! ## A112606.P4706328514195642619

`A262774(2*n)`
-/

namespace A112606.P4706328514195642619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262774 (2 * n)

end

end A112606.P4706328514195642619

namespace A112606

/-- `A262774(2*n)` -/
def P4706328514195642619.Spec : Prop :=
  ∀ n, P4706328514195642619.a n = A112606 n

end A112606

/-! ## A112606.P17281476700705688410

`A253243(2*n)/A061347(n+2)`
-/

namespace A112606.P17281476700705688410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253243 (2 * n) : ℚ) / (A061347 (n + 2) : ℚ)

end

end A112606.P17281476700705688410

namespace A112606

/-- `A253243(2*n)/A061347(n+2)` -/
def P17281476700705688410.Spec : Prop :=
  ∀ n, P17281476700705688410.a n = (A112606 n : ℚ)

end A112606

/-! ## A112606.P2647656471288957993

`A260943(3*n)`
-/

namespace A112606.P2647656471288957993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260943 (3 * n)

end

end A112606.P2647656471288957993

namespace A112606

/-- `A260943(3*n)` -/
def P2647656471288957993.Spec : Prop :=
  ∀ n, P2647656471288957993.a n = A112606 n

end A112606

/-! ## A112606.P11909529303658645643

`A033762(4*n)`
-/

namespace A112606.P11909529303658645643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (4 * n)

end

end A112606.P11909529303658645643

namespace A112606

/-- `A033762(4*n)` -/
def P11909529303658645643.Spec : Prop :=
  ∀ n, P11909529303658645643.a n = A112606 n

theorem P11909529303658645643.correct : P11909529303658645643.Spec := by
  intro n
  simp only [A112606, Nat.add_sub_cancel, A112606.P11909529303658645643.a, A112606.P17885378761059741003.a, A033762, A033762.P13282187029160693838.a, A112604, A112604.P7169979849370553245.a, A122860, A122860.P11540737575163240451.f1, A122860.P11540737575163240451.a, A033999, A033999.P17703899380244199787.a, A049347, A049347.P9996747395155426839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112606

/-! ## A112606.P17833910233268442719

`A262780(4*n)`
-/

namespace A112606.P17833910233268442719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262780 (4 * n)

end

end A112606.P17833910233268442719

namespace A112606

/-- `A262780(4*n)` -/
def P17833910233268442719.Spec : Prop :=
  ∀ n, P17833910233268442719.a n = A112606 n

end A112606

/-! ## A112606.P1109986650556995612

`A001281(A005881(4*n))`
-/

namespace A112606.P1109986650556995612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A005881 (4 * n)).toNat

end

end A112606.P1109986650556995612

namespace A112606

/-- `A001281(A005881(4*n))` -/
def P1109986650556995612.Spec : Prop :=
  ∀ n, P1109986650556995612.a n = A112606 n

end A112606

/-! ## A112606.P17805592543782656468

`A129449(4*n)`
-/

namespace A112606.P17805592543782656468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129449 (4 * n)

end

end A112606.P17805592543782656468

namespace A112606

/-- `A129449(4*n)` -/
def P17805592543782656468.Spec : Prop :=
  ∀ n, P17805592543782656468.a n = A112606 n

end A112606

/-! ## A112606.P7751679924013359563

`A112605(6*n)`
-/

namespace A112606.P7751679924013359563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112605 (6 * n)

end

end A112606.P7751679924013359563

namespace A112606

/-- `A112605(6*n)` -/
def P7751679924013359563.Spec : Prop :=
  ∀ n, P7751679924013359563.a n = A112606 n

end A112606

/-! ## A112606.P6991178784635335530

`A246838(6*n)`
-/

namespace A112606.P6991178784635335530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246838 (6 * n)

end

end A112606.P6991178784635335530

namespace A112606

/-- `A246838(6*n)` -/
def P6991178784635335530.Spec : Prop :=
  ∀ n, P6991178784635335530.a n = A112606 n

end A112606

/-! ## A112606.P6681794402894325295

`A262726(6*n)`
-/

namespace A112606.P6681794402894325295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262726 (6 * n)

end

end A112606.P6681794402894325295

namespace A112606

/-- `A262726(6*n)` -/
def P6681794402894325295.Spec : Prop :=
  ∀ n, P6681794402894325295.a n = A112606 n

end A112606

/-! ## A112606.P15160586394151219188

`A002324(8*n+1)`
-/

namespace A112606.P15160586394151219188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (8 * n + 1)

end

end A112606.P15160586394151219188

namespace A112606

/-- `A002324(8*n+1)` -/
def P15160586394151219188.Spec : Prop :=
  ∀ n, P15160586394151219188.a n = A112606 n

end A112606

/-! ## A112606.P11721994958931911820

`A136748(8*n+1)`
-/

namespace A112606.P11721994958931911820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136748 (8 * n + 1)

end

end A112606.P11721994958931911820

namespace A112606

/-- `A136748(8*n+1)` -/
def P11721994958931911820.Spec : Prop :=
  ∀ n, P11721994958931911820.a n = A112606 n

end A112606

/-! ## A112606.P4804026845836886145

`A035178(A271114(n)+2*n)`
-/

namespace A112606.P4804026845836886145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035178 (A271114 n + (2 * n : ℤ)).toNat

end

end A112606.P4804026845836886145

namespace A112606

/-- `A035178(A271114(n)+2*n)` -/
def P4804026845836886145.Spec : Prop :=
  ∀ n, P4804026845836886145.a n = A112606 n

end A112606

/-!
# A112607: Number of representations of n as a sum of a triangular number and twelve times a triangular number.

The programs for A112607, the canonical program `A112607.P8830648316655267802` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112607 has offset 0).

The definition of A112607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112607.P1674340263928783815

`A119395(8*(n+1)+5)`
-/

namespace A112607.P1674340263928783815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 (8 * (n + 1) + 5)

end

end A112607.P1674340263928783815

namespace A112607

/-- `A119395(8*(n+1)+5)` -/
def P1674340263928783815.Spec : Prop :=
  ∀ n, P1674340263928783815.a n = A112607 n

end A112607

/-! ## A112607.P8830648316655267802

`A112604(2*n+3)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A112607

/-- `A112604(2*n+3)/2` -/
def P8830648316655267802.Spec : Prop :=
  ∀ n, P8830648316655267802.a n = (A112607 n : ℚ)

end A112607

/-! ## A112607.P9490236749706660015

`A112609(3*n+4)`
-/

namespace A112607.P9490236749706660015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112609 (3 * n + 4)

end

end A112607.P9490236749706660015

namespace A112607

/-- `A112609(3*n+4)` -/
def P9490236749706660015.Spec : Prop :=
  ∀ n, P9490236749706660015.a n = A112607 n

end A112607

/-! ## A112607.P9696077476193812175

`A088534(8*n+13)`
-/

namespace A112607.P9696077476193812175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088534 (8 * n + 13)

end

end A112607.P9696077476193812175

namespace A112607

/-- `A088534(8*n+13)` -/
def P9696077476193812175.Spec : Prop :=
  ∀ n, P9696077476193812175.a n = A112607 n

end A112607

/-! ## A112607.P4242282280050536744

`A092573(8*(n+1)+5)`
-/

namespace A112607.P4242282280050536744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 (8 * (n + 1) + 5)

end

end A112607.P4242282280050536744

namespace A112607

/-- `A092573(8*(n+1)+5)` -/
def P4242282280050536744.Spec : Prop :=
  ∀ n, P4242282280050536744.a n = A112607 n

end A112607

/-!
# A112608: Number of representations of n as a sum of a twice a square and three times a triangular number.

The programs for A112608, the canonical program `A112608.P8858731485303109573` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112608 has offset 0).

The definition of A112608 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002324, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112608.P8858731485303109573

`A002324(8*n+3)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112608

/-- `A002324(8*n+3)` -/
def P8858731485303109573.Spec : Prop :=
  ∀ n, P8858731485303109573.a n = A112608 n

theorem P8858731485303109573.correct : P8858731485303109573.Spec := by
  intro n
  simp only [A112608]

end A112608

/-! ## A112608.P12255990369693060712

`A061347(n+1)*A260943(n)`
-/

namespace A112608.P12255990369693060712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1) * A260943 n

end

end A112608.P12255990369693060712

namespace A112608

/-- `A061347(n+1)*A260943(n)` -/
def P12255990369693060712.Spec : Prop :=
  ∀ n, P12255990369693060712.a n = A112608 n

end A112608

/-! ## A112608.P6212199585069740323

`A115979(A017089(n)+1)`
-/

namespace A112608.P6212199585069740323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (A017089 n + 1).toNat

end

end A112608.P6212199585069740323

namespace A112608

/-- `A115979(A017089(n)+1)` -/
def P6212199585069740323.Spec : Prop :=
  ∀ n, P6212199585069740323.a n = A112608 n

end A112608

/-! ## A112608.P946241696680656056

`A096936(A004771(n)-4)`
-/

namespace A112608.P946241696680656056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (A004771 n - 4).toNat

end

end A112608.P946241696680656056

namespace A112608

/-- `A096936(A004771(n)-4)` -/
def P946241696680656056.Spec : Prop :=
  ∀ n, P946241696680656056.a n = A112608 n

end A112608

/-! ## A112608.P15599470224503591723

`A217220(A017101(n))/4`
-/

namespace A112608.P15599470224503591723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217220 (A017101 n).toNat : ℚ) / 4

end

end A112608.P15599470224503591723

namespace A112608

/-- `A217220(A017101(n))/4` -/
def P15599470224503591723.Spec : Prop :=
  ∀ n, P15599470224503591723.a n = (A112608 n : ℚ)

end A112608

/-! ## A112608.P13001317970328623024

`A096936(A017197(n)-n)`
-/

namespace A112608.P13001317970328623024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (A017197 n - (n : ℤ)).toNat

end

end A112608.P13001317970328623024

namespace A112608

/-- `A096936(A017197(n)-n)` -/
def P13001317970328623024.Spec : Prop :=
  ∀ n, P13001317970328623024.a n = A112608 n

end A112608

/-! ## A112608.P14531625479428496758

`A115979(A017197(n)-n)`
-/

namespace A112608.P14531625479428496758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (A017197 n - (n : ℤ)).toNat

end

end A112608.P14531625479428496758

namespace A112608

/-- `A115979(A017197(n)-n)` -/
def P14531625479428496758.Spec : Prop :=
  ∀ n, P14531625479428496758.a n = A112608 n

end A112608

/-! ## A112608.P12988266554204800727

`A262726(2*n)`
-/

namespace A112608.P12988266554204800727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262726 (2 * n)

end

end A112608.P12988266554204800727

namespace A112608

/-- `A262726(2*n)` -/
def P12988266554204800727.Spec : Prop :=
  ∀ n, P12988266554204800727.a n = A112608 n

end A112608

/-! ## A112608.P5053057371580957507

`A262726(A005843(n))%A000040(n+1)`
-/

namespace A112608.P5053057371580957507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A262726 (A005843 n).toNat) (A000040 (n + 1))

end

end A112608.P5053057371580957507

namespace A112608

/-- `A262726(A005843(n))%A000040(n+1)` -/
def P5053057371580957507.Spec : Prop :=
  ∀ n, P5053057371580957507.a n = A112608 n

end A112608

/-! ## A112608.P6759691906073724824

`A112605(2*n)`
-/

namespace A112608.P6759691906073724824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112605 (2 * n)

end

end A112608.P6759691906073724824

namespace A112608

/-- `A112605(2*n)` -/
def P6759691906073724824.Spec : Prop :=
  ∀ n, P6759691906073724824.a n = A112608 n

theorem P6759691906073724824.correct : P6759691906073724824.Spec := by
  intro n
  simp only [A112608, Nat.add_sub_cancel, A112608.P6759691906073724824.a, A112608.P8858731485303109573.a, A002324, A002324.P17421748272452344756.a, A112605, A112605.P15074569082545500884.a, A001817, A001817.P2839206695684961582.f1, A001817.P2839206695684961582.a, A001822, A001822.P18157722536970199446.f1, A001822.P18157722536970199446.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A112608

/-! ## A112608.P12226641332080685204

`A096936(A008574(2*n+1)-1)`
-/

namespace A112608.P12226641332080685204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (A008574 (2 * n + 1) - 1).toNat

end

end A112608.P12226641332080685204

namespace A112608

/-- `A096936(A008574(2*n+1)-1)` -/
def P12226641332080685204.Spec : Prop :=
  ∀ n, P12226641332080685204.a n = A112608 n

end A112608

/-! ## A112608.P10883643026419343880

`A057079(2*n)*A246838(2*n)`
-/

namespace A112608.P10883643026419343880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 (2 * n) * A246838 (2 * n)

end

end A112608.P10883643026419343880

namespace A112608

/-- `A057079(2*n)*A246838(2*n)` -/
def P10883643026419343880.Spec : Prop :=
  ∀ n, P10883643026419343880.a n = A112608 n

end A112608

/-! ## A112608.P2016287662175498734

`A132954(2*n)*A246838(2*n)`
-/

namespace A112608.P2016287662175498734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 (2 * n) * A246838 (2 * n)

end

end A112608.P2016287662175498734

namespace A112608

/-- `A132954(2*n)*A246838(2*n)` -/
def P2016287662175498734.Spec : Prop :=
  ∀ n, P2016287662175498734.a n = A112608 n

end A112608

/-! ## A112608.P16620963571523660842

`A112606(3*n+1)`
-/

namespace A112608.P16620963571523660842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112606 (3 * n + 1)

end

end A112608.P16620963571523660842

namespace A112608

/-- `A112606(3*n+1)` -/
def P16620963571523660842.Spec : Prop :=
  ∀ n, P16620963571523660842.a n = A112608 n

end A112608

/-! ## A112608.P10165032997753548954

`A033762(4*n+1)`
-/

namespace A112608.P10165032997753548954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033762 (4 * n + 1)

end

end A112608.P10165032997753548954

namespace A112608

/-- `A033762(4*n+1)` -/
def P10165032997753548954.Spec : Prop :=
  ∀ n, P10165032997753548954.a n = A112608 n

end A112608

/-! ## A112608.P14849463311861840301

`A262780(4*n+1)`
-/

namespace A112608.P14849463311861840301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262780 (4 * n + 1)

end

end A112608.P14849463311861840301

namespace A112608

/-- `A262780(4*n+1)` -/
def P14849463311861840301.Spec : Prop :=
  ∀ n, P14849463311861840301.a n = A112608 n

end A112608

/-! ## A112608.P11147395374965257457

`A112604(7*n+2-n)`
-/

namespace A112608.P11147395374965257457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112604 (7 * n + 2 - n)

end

end A112608.P11147395374965257457

namespace A112608

/-- `A112604(7*n+2-n)` -/
def P11147395374965257457.Spec : Prop :=
  ∀ n, P11147395374965257457.a n = A112608 n

end A112608

/-! ## A112608.P16277643631715793588

`A262774(A016789(2*n))`
-/

namespace A112608.P16277643631715793588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262774 (A016789 (2 * n)).toNat

end

end A112608.P16277643631715793588

namespace A112608

/-- `A262774(A016789(2*n))` -/
def P16277643631715793588.Spec : Prop :=
  ∀ n, P16277643631715793588.a n = A112608 n

end A112608

/-! ## A112608.P17676963732761472181

`A260943(A017197(n))`
-/

namespace A112608.P17676963732761472181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260943 (A017197 n).toNat

end

end A112608.P17676963732761472181

namespace A112608

/-- `A260943(A017197(n))` -/
def P17676963732761472181.Spec : Prop :=
  ∀ n, P17676963732761472181.a n = A112608 n

end A112608

/-!
# A112609: Number of representations of n as a sum of three times a triangular number and four times a triangular number.

The programs for A112609, the canonical program `A112609.P8066156262677695015` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112609 has offset 0).

The definition of A112609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112609.P4941099368817393768

`A260944(n)/A131713(n)`
-/

namespace A112609.P4941099368817393768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260944 n : ℚ) / (A131713 n : ℚ)

end

end A112609.P4941099368817393768

namespace A112609

/-- `A260944(n)/A131713(n)` -/
def P4941099368817393768.Spec : Prop :=
  ∀ n, P4941099368817393768.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P13848953580208152960

`A119395(8*n+7)`
-/

namespace A112609.P13848953580208152960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 (8 * n + 7)

end

end A112609.P13848953580208152960

namespace A112609

/-- `A119395(8*n+7)` -/
def P13848953580208152960.Spec : Prop :=
  ∀ n, P13848953580208152960.a n = A112609 n

end A112609

/-! ## A112609.P15864024747097905010

`A033716(8*n+7)/4`
-/

namespace A112609.P15864024747097905010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033716 (8 * n + 7) : ℚ) / 4

end

end A112609.P15864024747097905010

namespace A112609

/-- `A033716(8*n+7)/4` -/
def P15864024747097905010.Spec : Prop :=
  ∀ n, P15864024747097905010.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P16334602320748458084

`A096936(A004771(n))/2`
-/

namespace A112609.P16334602320748458084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A096936 (A004771 n).toNat : ℚ) / 2

end

end A112609.P16334602320748458084

namespace A112609

/-- `A096936(A004771(n))/2` -/
def P16334602320748458084.Spec : Prop :=
  ∀ n, P16334602320748458084.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P10777430940682608483

`A112605(Δ[n²])/2`
-/

namespace A112609.P10777430940682608483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112605 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A112609.P10777430940682608483

namespace A112609

/-- `A112605(Δ[n²])/2` -/
def P10777430940682608483.Spec : Prop :=
  ∀ n, P10777430940682608483.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P13893165543592168698

`abs(A262726(2*n+1)/2)`
-/

namespace A112609.P13893165543592168698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A262726 (2 * n + 1) : ℚ) / 2|

end

end A112609.P13893165543592168698

namespace A112609

/-- `abs(A262726(2*n+1)/2)` -/
def P13893165543592168698.Spec : Prop :=
  ∀ n, P13893165543592168698.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P896842202874876169

`1/2*A112605(A005408(n))`
-/

namespace A112609.P896842202874876169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A112605 (A005408 n).toNat : ℚ)

end

end A112609.P896842202874876169

namespace A112609

/-- `1/2*A112605(A005408(n))` -/
def P896842202874876169.Spec : Prop :=
  ∀ n, P896842202874876169.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P7420367582973461176

`A071045(A112605(2*n+1)+1)`
-/

namespace A112609.P7420367582973461176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 (A112605 (2 * n + 1) + 1).toNat

end

end A112609.P7420367582973461176

namespace A112609

/-- `A071045(A112605(2*n+1)+1)` -/
def P7420367582973461176.Spec : Prop :=
  ∀ n, P7420367582973461176.a n = A112609 n

end A112609

/-! ## A112609.P8066156262677695015

`A071045(1-A262726(2*n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A112609

/-- `A071045(1-A262726(2*n+1))` -/
def P8066156262677695015.Spec : Prop :=
  ∀ n, P8066156262677695015.a n = A112609 n

theorem P8066156262677695015.correct : P8066156262677695015.Spec := by
  intro n
  simp only [A112609]

end A112609

/-! ## A112609.P17650683891403593368

`gcd(A262726(2*n+1)/2, A000038(n))`
-/

namespace A112609.P17650683891403593368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A262726 (2 * n + 1) : ℚ) / 2)) (A000038 n)

end

end A112609.P17650683891403593368

namespace A112609

/-- `gcd(A262726(2*n+1)/2, A000038(n))` -/
def P17650683891403593368.Spec : Prop :=
  ∀ n, (P17650683891403593368.a n : ℤ) = A112609 n

end A112609

/-! ## A112609.P10914839087769335242

`A246838(2*n+1)/(A131713(n+1)+1)`
-/

namespace A112609.P10914839087769335242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246838 (2 * n + 1) : ℚ) / (A131713 (n + 1) + 1 : ℚ)

end

end A112609.P10914839087769335242

namespace A112609

/-- `A246838(2*n+1)/(A131713(n+1)+1)` -/
def P10914839087769335242.Spec : Prop :=
  ∀ n, P10914839087769335242.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P11561474536359162189

`A262726(2*n+1)/(A000038(n+1)-2)`
-/

namespace A112609.P11561474536359162189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262726 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A112609.P11561474536359162189

namespace A112609

/-- `A262726(2*n+1)/(A000038(n+1)-2)` -/
def P11561474536359162189.Spec : Prop :=
  ∀ n, P11561474536359162189.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P7945407792203826246

`A262726(2*n+1)/(A002483(2*n)-2)`
-/

namespace A112609.P7945407792203826246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262726 (2 * n + 1) : ℚ) / (A002483 (2 * n) - 2 : ℚ)

end

end A112609.P7945407792203826246

namespace A112609

/-- `A262726(2*n+1)/(A002483(2*n)-2)` -/
def P7945407792203826246.Spec : Prop :=
  ∀ n, P7945407792203826246.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P3911457202384658834

`A246838(2*n+1)/(A132954(2*n)-2)`
-/

namespace A112609.P3911457202384658834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246838 (2 * n + 1) : ℚ) / (A132954 (2 * n) - 2 : ℚ)

end

end A112609.P3911457202384658834

namespace A112609

/-- `A246838(2*n+1)/(A132954(2*n)-2)` -/
def P3911457202384658834.Spec : Prop :=
  ∀ n, P3911457202384658834.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P7053366736947663283

`lcm(A000034(n+1), A262726(2*n+1))/2`
-/

namespace A112609.P7053366736947663283
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A262726 (2 * n + 1)) : ℚ) / 2

end

end A112609.P7053366736947663283

namespace A112609

/-- `lcm(A000034(n+1), A262726(2*n+1))/2` -/
def P7053366736947663283.Spec : Prop :=
  ∀ n, P7053366736947663283.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P8923632934537208237

`A262726(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A112609.P8923632934537208237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262726 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A112609.P8923632934537208237

namespace A112609

/-- `A262726(2*n+1)/(A033999(2*n+1)-1)` -/
def P8923632934537208237.Spec : Prop :=
  ∀ n, P8923632934537208237.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P14786296196690777194

`A246838(2*n+1)/(1-A057079(2*n+1))`
-/

namespace A112609.P14786296196690777194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246838 (2 * n + 1) : ℚ) / (1 - A057079 (2 * n + 1) : ℚ)

end

end A112609.P14786296196690777194

namespace A112609

/-- `A246838(2*n+1)/(1-A057079(2*n+1))` -/
def P14786296196690777194.Spec : Prop :=
  ∀ n, P14786296196690777194.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P18257939114880934088

`A262726(2*n+1)/A000034(2*n+1)-A262726(2*n+1)`
-/

namespace A112609.P18257939114880934088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262726 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A262726 (2 * n + 1) : ℚ)

end

end A112609.P18257939114880934088

namespace A112609

/-- `A262726(2*n+1)/A000034(2*n+1)-A262726(2*n+1)` -/
def P18257939114880934088.Spec : Prop :=
  ∀ n, P18257939114880934088.a n = (A112609 n : ℚ)

end A112609

/-! ## A112609.P6259013048515780864

`A112607(3*n+1)`
-/

namespace A112609.P6259013048515780864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112607 (3 * n + 1)

end

end A112609.P6259013048515780864

namespace A112609

/-- `A112607(3*n+1)` -/
def P6259013048515780864.Spec : Prop :=
  ∀ n, P6259013048515780864.a n = A112609 n

end A112609

/-! ## A112609.P4550612271098358599

`A033762(4*n+3)/2`
-/

namespace A112609.P4550612271098358599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033762 (4 * n + 3) : ℚ) / 2

end

end A112609.P4550612271098358599

namespace A112609

/-- `A033762(4*n+3)/2` -/
def P4550612271098358599.Spec : Prop :=
  ∀ n, P4550612271098358599.a n = (A112609 n : ℚ)

end A112609

/-!
# A112610: Number of representations of n as a sum of two squares and two triangular numbers.

The programs for A112610, the canonical program `A112610.P4001663693552824813` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112610 has offset 0).

The definition of A112610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112610.P4001663693552824813

`∑{d}[4*n+1, #]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112610

/-- `∑{d}[4*n+1, #]` -/
def P4001663693552824813.Spec : Prop :=
  ∀ n, (P4001663693552824813.a n : ℤ) = A112610 n

theorem P4001663693552824813.correct : P4001663693552824813.Spec := by
  intro n
  simp only [A112610]

end A112610

/-! ## A112610.P15785837793939260953

`A008438(2*n)`
-/

namespace A112610.P15785837793939260953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (2 * n)

end

end A112610.P15785837793939260953

namespace A112610

/-- `A008438(2*n)` -/
def P15785837793939260953.Spec : Prop :=
  ∀ n, P15785837793939260953.a n = A112610 n

theorem P15785837793939260953.correct : P15785837793939260953.Spec := by
  intro n
  simp only [A112610, Nat.add_sub_cancel, A112610.P15785837793939260953.a, A112610.P4001663693552824813.f1, A112610.P4001663693552824813.a, A008438, A008438.P10724248590758397010.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112610

/-! ## A112610.P8434034149211588675

`A000203(4*n+1)`
-/

namespace A112610.P8434034149211588675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (4 * n + 1)

end

end A112610.P8434034149211588675

namespace A112610

/-- `A000203(4*n+1)` -/
def P8434034149211588675.Spec : Prop :=
  ∀ n, P8434034149211588675.a n = A112610 n

end A112610

/-! ## A112610.P8211851473309205883

`A000203(or(2, 8*n))/3`
-/

namespace A112610.P8211851473309205883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (Nat.lor 2 (8 * n)) : ℚ) / 3

end

end A112610.P8211851473309205883

namespace A112610

/-- `A000203(or(2, 8*n))/3` -/
def P8211851473309205883.Spec : Prop :=
  ∀ n, P8211851473309205883.a n = (A112610 n : ℚ)

end A112610

/-! ## A112610.P14839905064531611650

`A000203(xor(2, 8*n))/3`
-/

namespace A112610.P14839905064531611650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (Nat.xor 2 (8 * n)) : ℚ) / 3

end

end A112610.P14839905064531611650

namespace A112610

/-- `A000203(xor(2, 8*n))/3` -/
def P14839905064531611650.Spec : Prop :=
  ∀ n, P14839905064531611650.a n = (A112610 n : ℚ)

end A112610

/-! ## A112610.P17312365205953249363

`root(A000203(xor(1, 4*n)), 2)²`
-/

namespace A112610.P17312365205953249363
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000203 (Nat.xor 1 (4 * n)) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A112610.P17312365205953249363

namespace A112610

/-- `root(A000203(xor(1, 4*n)), 2)²` -/
def P17312365205953249363.Spec : Prop :=
  ∀ n, P17312365205953249363.a n = (A112610 n : ℝ)

end A112610

/-! ## A112610.P780262861772576633

`or(A000203(or(1, 4*n)), char[2])`
-/

namespace A112610.P780262861772576633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000203 (Nat.lor 1 (4 * n))) ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A112610.P780262861772576633

namespace A112610

/-- `or(A000203(or(1, 4*n)), char[2])` -/
def P780262861772576633.Spec : Prop :=
  ∀ n, P780262861772576633.a n = A112610 n

end A112610

/-! ## A112610.P97785936651357500

`A000203(Δ[(2*n)²]-2)/3`
-/

namespace A112610.P97785936651357500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 2).toNat : ℚ) / 3

end

end A112610.P97785936651357500

namespace A112610

/-- `A000203(Δ[(2*n)²]-2)/3` -/
def P97785936651357500.Spec : Prop :=
  ∀ n, P97785936651357500.a n = (A112610 n : ℚ)

end A112610

/-! ## A112610.P17754574843915803919

`xor(1, xor(1, A000203(xor(1, 2*2*n))))`
-/

namespace A112610.P17754574843915803919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A000203 (Nat.xor 1 (2 * (2 * n)))))

end

end A112610.P17754574843915803919

namespace A112610

/-- `xor(1, xor(1, A000203(xor(1, 2*2*n))))` -/
def P17754574843915803919.Spec : Prop :=
  ∀ n, P17754574843915803919.a n = A112610 n

end A112610

/-! ## A112610.P17651131091066130118

`A363407(n+1)+A363317(n+1)`
-/

namespace A112610.P17651131091066130118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363407 (n + 1) + A363317 (n + 1)

end

end A112610.P17651131091066130118

namespace A112610

/-- `A363407(n+1)+A363317(n+1)` -/
def P17651131091066130118.Spec : Prop :=
  ∀ n, P17651131091066130118.a n = A112610 n

end A112610

/-! ## A112610.P10183514628496929715

`A005879(2*n)/8`
-/

namespace A112610.P10183514628496929715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005879 (2 * n) : ℚ) / 8

end

end A112610.P10183514628496929715

namespace A112610

/-- `A005879(2*n)/8` -/
def P10183514628496929715.Spec : Prop :=
  ∀ n, P10183514628496929715.a n = (A112610 n : ℚ)

end A112610

/-! ## A112610.P14702491404299303098

`A121613(2*n)`
-/

namespace A112610.P14702491404299303098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121613 (2 * n)

end

end A112610.P14702491404299303098

namespace A112610

/-- `A121613(2*n)` -/
def P14702491404299303098.Spec : Prop :=
  ∀ n, P14702491404299303098.a n = A112610 n

end A112610

/-! ## A112610.P9044345606218318366

`A115607(4*n+1)`
-/

namespace A112610.P9044345606218318366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (4 * n + 1)

end

end A112610.P9044345606218318366

namespace A112610

/-- `A115607(4*n+1)` -/
def P9044345606218318366.Spec : Prop :=
  ∀ n, P9044345606218318366.a n = A112610 n

end A112610

/-! ## A112610.P656876015264033435

`A005880(2*n)/2`
-/

namespace A112610.P656876015264033435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005880 (2 * n) : ℚ) / 2

end

end A112610.P656876015264033435

namespace A112610

/-- `A005880(2*n)/2` -/
def P656876015264033435.Spec : Prop :=
  ∀ n, P656876015264033435.a n = (A112610 n : ℚ)

end A112610

/-! ## A112610.P3262846629164384206

`A239052(Δ[n²])/3`
-/

namespace A112610.P3262846629164384206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239052 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A112610.P3262846629164384206

namespace A112610

/-- `A239052(Δ[n²])/3` -/
def P3262846629164384206.Spec : Prop :=
  ∀ n, P3262846629164384206.a n = (A112610 n : ℚ)

end A112610

/-! ## A112610.P11459159443857664350

`A069184(4*n+1)`
-/

namespace A112610.P11459159443857664350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069184 (4 * n + 1)

end

end A112610.P11459159443857664350

namespace A112610

/-- `A069184(4*n+1)` -/
def P11459159443857664350.Spec : Prop :=
  ∀ n, P11459159443857664350.a n = A112610 n

end A112610

/-! ## A112610.P1629429520471366566

`A003973(A064216(2*n+1))`
-/

namespace A112610.P1629429520471366566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A064216 (2 * n + 1)).toNat

end

end A112610.P1629429520471366566

namespace A112610

/-- `A003973(A064216(2*n+1))` -/
def P1629429520471366566.Spec : Prop :=
  ∀ n, P1629429520471366566.a n = A112610 n

end A112610

/-! ## A112610.P2651015430871949235

`A003973(A243502(2*n+1)/2)`
-/

namespace A112610.P2651015430871949235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (SequenceMachineLib.roundAway ((A243502 (2 * n + 1) : ℚ) / 2)).toNat

end

end A112610.P2651015430871949235

namespace A112610

/-- `A003973(A243502(2*n+1)/2)` -/
def P2651015430871949235.Spec : Prop :=
  ∀ n, P2651015430871949235.a n = A112610 n

end A112610

/-! ## A112610.P17045618375228739194

`A000593(4*n+1)`
-/

namespace A112610.P17045618375228739194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (4 * n + 1)

end

end A112610.P17045618375228739194

namespace A112610

/-- `A000593(4*n+1)` -/
def P17045618375228739194.Spec : Prop :=
  ∀ n, P17045618375228739194.a n = A112610 n

end A112610

/-! ## A112610.P886265623433787567

`A002129(4*n+1)`
-/

namespace A112610.P886265623433787567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (4 * n + 1)

end

end A112610.P886265623433787567

namespace A112610

/-- `A002129(4*n+1)` -/
def P886265623433787567.Spec : Prop :=
  ∀ n, P886265623433787567.a n = A112610 n

end A112610

/-!
# A112611: a(n) = 5*a(n-1) + 45*a(n-3) - 225*a(n-4), a(0)=0, a(1)=4, a(2)=24, a(3)=60, a(4)=480.

The programs for A112611, the canonical program `A112611.P11571972898519123272` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112611 has offset 0).

The definition of A112611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+45*a(n-3)-225*a(n-4)` (program `A112611.P11571972898519123272`, by `A112611.P11571972898519123272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112611.P11571972898519123272

`5*a(n-1)+45*a(n-3)-225*a(n-4)` with `a(0)=0, a(1)=4, a(2)=24, a(3)=60`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112611

/-- `5*a(n-1)+45*a(n-3)-225*a(n-4)` -/
def P11571972898519123272.Spec : Prop :=
  ∀ n, P11571972898519123272.a n = A112611 n

theorem P11571972898519123272.correct : P11571972898519123272.Spec := by
  intro n
  simp only [A112611]

end A112611

/-!
# A112618: Let T(n) = A000073(n+1), n >= 1; a(n) = smallest k such that prime(n) divides T(k).

The programs for A112618, there is no canonical definition to state claims against.
-/

/-! ## A112618.P9018141566199468651

`A112312(n+1)-1`
-/

namespace A112618.P9018141566199468651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112312 (n + 1) - 1

end

end A112618.P9018141566199468651

/-! ## A112618.P3631097389892362804

`A023443(A112312(n+1))`
-/

namespace A112618.P3631097389892362804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A112312 (n + 1)).toNat

end

end A112618.P3631097389892362804

/-! ## A112618.P5596024467831785440

`A112305(p?[xor(1, n)+1])`
-/

namespace A112618.P5596024467831785440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A112618.P5596024467831785440

/-! ## A112618.P14691650116670709682

`A112305(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A112618.P14691650116670709682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A112618.P14691650116670709682

/-! ## A112618.P7826575906869510233

`A112305(Δ[A007504(n)])`
-/

namespace A112618.P7826575906869510233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (n + 1) - f1 n).toNat

end

end A112618.P7826575906869510233

/-! ## A112618.P3796699882433360353

`A112305(record[A051698(n)])`
-/

namespace A112618.P3796699882433360353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112618.P3796699882433360353

/-! ## A112618.P2868688478098309652

`A112305(p?[A001057(n)])`
-/

namespace A112618.P2868688478098309652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A112618.P2868688478098309652

/-! ## A112618.P18313142094249096133

`A112305(A000040(n+1))`
-/

namespace A112618.P18313142094249096133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (A000040 (n + 1)).toNat

end

end A112618.P18313142094249096133

/-! ## A112618.P17501689668498492028

`A112305(A008578(n+2))`
-/

namespace A112618.P17501689668498492028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (A008578 (n + 2)).toNat

end

end A112618.P17501689668498492028

/-! ## A112618.P9374936476162261544

`A112305(A182986(n+2))`
-/

namespace A112618.P9374936476162261544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (A182986 (n + 2)).toNat

end

end A112618.P9374936476162261544

/-! ## A112618.P3907624229662803895

`A112305(eq[1, A003415(n)])`
-/

namespace A112618.P3907624229662803895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112618.P3907624229662803895

/-! ## A112618.P6359447672516832675

`A112305(eq[1, A032741(n)])`
-/

namespace A112618.P6359447672516832675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112618.P6359447672516832675

/-! ## A112618.P15237146233056882461

`A112305(eq[2, A005128(n)])`
-/

namespace A112618.P15237146233056882461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112618.P15237146233056882461

/-! ## A112618.P18034929960938489758

`A112305(eq[2, A077462(n)])`
-/

namespace A112618.P18034929960938489758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112618.P18034929960938489758

/-! ## A112618.P13687329919877102644

`A112305(record[A006530(n+2)])`
-/

namespace A112618.P13687329919877102644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112618.P13687329919877102644

/-! ## A112618.P4572299913099593144

`A112305(record[A014963(n+2)])`
-/

namespace A112618.P4572299913099593144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112618.P4572299913099593144

/-! ## A112618.P2276044533778643090

`A112305(record[A020639(n+2)])`
-/

namespace A112618.P2276044533778643090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112618.P2276044533778643090

/-! ## A112618.P7539673140970257688

`A112305(record[A000010(n+1)+1])`
-/

namespace A112618.P7539673140970257688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A112618.P7539673140970257688

/-! ## A112618.P11795614884794566338

`A112305(eq[n, A000010(n+1)]+1)`
-/

namespace A112618.P11795614884794566338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A112618.P11795614884794566338

/-! ## A112618.P16161859637007027683

`A112305(A007504(n+1)-A007504(n))`
-/

namespace A112618.P16161859637007027683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112305 (A007504 (n + 1) - A007504 n).toNat

end

end A112618.P16161859637007027683

/-!
# A112619: Number of connected simple graphs with n vertices, n+2 edges, and vertex degrees no more than 4.

The programs for A112619, there is no canonical definition to state claims against.
-/

/-! ## A112619.P15208850879172100802

`A054899(A149441(n))`
-/

namespace A112619.P15208850879172100802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A149441 n).toNat

end

end A112619.P15208850879172100802

/-! ## A112619.P3317834177352958550

`A090620(A149603(n))`
-/

namespace A112619.P3317834177352958550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (A149603 n).toNat

end

end A112619.P3317834177352958550

/-! ## A112619.P3345265041442443937

`∑[A066339(A228732(n!))]`
-/

namespace A112619.P3345265041442443937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A228732 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112619.P3345265041442443937

/-! ## A112619.P8925279596971751971

`A111892(A133186(n)+A015521(n))`
-/

namespace A112619.P8925279596971751971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111892 (A133186 n + A015521 n).toNat

end

end A112619.P8925279596971751971

/-!
# A112620: If b(n,1) = n; b(n,m) is number of terms among {b(n,1), b(n,2), ..., b(n,m-1)} which are coprime to m, then a(n) = b(n,n).

The programs for A112620, there is no canonical definition to state claims against.
-/

/-! ## A112620.P4210112123920365468

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A316824(A000285(n))`
-/

namespace A112620.P4210112123920365468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A316824 (A000285 n).toNat : ℚ)

end

end A112620.P4210112123920365468

/-! ## A112620.P10442305460708594696

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A341591(A372957(n))`
-/

namespace A112620.P10442305460708594696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A341591 (A372957 n).toNat : ℚ)

end

end A112620.P10442305460708594696

/-! ## A112620.P2208851713643223366

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-A189011(A086323(n+1))`
-/

namespace A112620.P2208851713643223366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - (A189011 (A086323 (n + 1)).toNat : ℚ)

end

end A112620.P2208851713643223366

/-! ## A112620.P11903634478859578828

`A079998(A317413(n))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1`
-/

namespace A112620.P11903634478859578828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079998 (A317413 n).toNat : ℚ) + ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1)

end

end A112620.P11903634478859578828

/-! ## A112620.P3261670069183580026

`A129186(A081492(n+1))+(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]-1`
-/

namespace A112620.P3261670069183580026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129186 (A081492 (n + 1)).toNat : ℚ) + ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) - 1)

end

end A112620.P3261670069183580026

/-!
# A112621: If p^b(p,n) is the highest power of the prime p dividing n, then a(n) = sum_{p|n} b(p,n)^b(p,n).

The programs for A112621, the canonical program `A112621.P7951644899415739276` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112621 has offset 1).

The definition of A112621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112621.P7951644899415739276

`∑{e}[n+1, #^#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112621

/-- `∑{e}[n+1, #^#]` -/
def P7951644899415739276.Spec : Prop :=
  ∀ n, (P7951644899415739276.a n : ℤ) = A112621 (n + 1)

theorem P7951644899415739276.correct : P7951644899415739276.Spec := by
  intro n
  simp only [A112621, Nat.add_sub_cancel]

end A112621

/-! ## A112621.P7078835648476782589

`floor(∑{e}[n+1, root(#, 1/#)])`
-/

namespace A112621.P7078835648476782589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ (1 / (1 / (Nat.factorization (f1 n) p : ℚ) : ℝ))⌋

end

end A112621.P7078835648476782589

namespace A112621

/-- `floor(∑{e}[n+1, root(#, 1/#)])` -/
def P7078835648476782589.Spec : Prop :=
  ∀ n, P7078835648476782589.a n = A112621 (n + 1)

end A112621

/-! ## A112621.P9686614303691997902

`ceil(∑{e}[n+1, root(#, 1/#)])`
-/

namespace A112621.P9686614303691997902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ (1 / (1 / (Nat.factorization (f1 n) p : ℚ) : ℝ))⌉

end

end A112621.P9686614303691997902

namespace A112621

/-- `ceil(∑{e}[n+1, root(#, 1/#)])` -/
def P9686614303691997902.Spec : Prop :=
  ∀ n, P9686614303691997902.a n = A112621 (n + 1)

end A112621

/-! ## A112621.P2676394313047089388

`round(∑{e}[n+1, root(#, 1/#)])`
-/

namespace A112621.P2676394313047089388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ (1 / (1 / (Nat.factorization (f1 n) p : ℚ) : ℝ)))

end

end A112621.P2676394313047089388

namespace A112621

/-- `round(∑{e}[n+1, root(#, 1/#)])` -/
def P2676394313047089388.Spec : Prop :=
  ∀ n, P2676394313047089388.a n = A112621 (n + 1)

end A112621

/-! ## A112621.P5801496221702387191

`A045512(A320390(n+1))`
-/

namespace A112621.P5801496221702387191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A320390 (n + 1)).toNat

end

end A112621.P5801496221702387191

namespace A112621

/-- `A045512(A320390(n+1))` -/
def P5801496221702387191.Spec : Prop :=
  ∀ n, P5801496221702387191.a n = A112621 (n + 1)

end A112621

/-!
# A112622: If p^b(p,n) is the highest power of the prime p dividing n, then a(n) = product_{p|n} b(p,n)^b(p,n).

The programs for A112622, the canonical program `A112622.P5570949909410218831` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112622 has offset 1).

The definition of A112622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112622.P5570949909410218831

`∏{e}[n+1, #^#]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112622

/-- `∏{e}[n+1, #^#]` -/
def P5570949909410218831.Spec : Prop :=
  ∀ n, (P5570949909410218831.a n : ℤ) = A112622 (n + 1)

theorem P5570949909410218831.correct : P5570949909410218831.Spec := by
  intro n
  simp only [A112622, Nat.add_sub_cancel]

end A112622

/-! ## A112622.P13567522416318422542

`∏{e}[n+1, root(#, 2/#)]²`
-/

namespace A112622.P13567522416318422542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ (1 / (2 / (Nat.factorization (f1 n) p : ℚ) : ℝ))) ^ 2

end

end A112622.P13567522416318422542

namespace A112622

/-- `∏{e}[n+1, root(#, 2/#)]²` -/
def P13567522416318422542.Spec : Prop :=
  ∀ n, P13567522416318422542.a n = (A112622 (n + 1) : ℝ)

end A112622

/-! ## A112622.P16816341828800434225

`2^∑{e}[n+1, #*log2(#)]`
-/

namespace A112622.P16816341828800434225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) * Real.logb 2 (Nat.factorization (f1 n) p : ℝ))

end

end A112622.P16816341828800434225

namespace A112622

/-- `2^∑{e}[n+1, #*log2(#)]` -/
def P16816341828800434225.Spec : Prop :=
  ∀ n, P16816341828800434225.a n = (A112622 (n + 1) : ℝ)

end A112622

/-! ## A112622.P8836763189164380282

`round(∏{e}[n+1, root(#, 1/#)])`
-/

namespace A112622.P8836763189164380282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ (1 / (1 / (Nat.factorization (f1 n) p : ℚ) : ℝ)))

end

end A112622.P8836763189164380282

namespace A112622

/-- `round(∏{e}[n+1, root(#, 1/#)])` -/
def P8836763189164380282.Spec : Prop :=
  ∀ n, P8836763189164380282.a n = A112622 (n + 1)

end A112622

/-! ## A112622.P8886441049147510911

`∏{p}[n+1, val(n+1, #)^val(n+1, #)]`
-/

namespace A112622.P8886441049147510911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p ^ SequenceMachineLib.valuation (n + 1) p

end

end A112622.P8886441049147510911

namespace A112622

/-- `∏{p}[n+1, val(n+1, #)^val(n+1, #)]` -/
def P8886441049147510911.Spec : Prop :=
  ∀ n, (P8886441049147510911.a n : ℤ) = A112622 (n + 1)

end A112622

/-! ## A112622.P8845698224124772416

`A061510(A320390(n+1))`
-/

namespace A112622.P8845698224124772416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061510 (A320390 (n + 1)).toNat

end

end A112622.P8845698224124772416

namespace A112622

/-- `A061510(A320390(n+1))` -/
def P8845698224124772416.Spec : Prop :=
  ∀ n, P8845698224124772416.a n = A112622 (n + 1)

end A112622

/-! ## A112622.P15533623565871969253

`A089247(A005361(n+1)^A324912(n+1))`
-/

namespace A112622.P15533623565871969253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (SequenceMachineLib.roundAway ((A005361 (n + 1) : ℚ) ^ (A324912 (n + 1) : ℤ))).toNat

end

end A112622.P15533623565871969253

namespace A112622

/-- `A089247(A005361(n+1)^A324912(n+1))` -/
def P15533623565871969253.Spec : Prop :=
  ∀ n, P15533623565871969253.a n = A112622 (n + 1)

end A112622

/-!
# A112623: If p^b(p,n) is the highest power of the prime p dividing n, then a(n) = sum_{p|n} b(p,n)!.

The programs for A112623, the canonical program `A112623.P6838822928638503357` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112623 has offset 1).

The definition of A112623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112623.P6838822928638503357

`∑{e}[n+1, #!]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112623

/-- `∑{e}[n+1, #!]` -/
def P6838822928638503357.Spec : Prop :=
  ∀ n, (P6838822928638503357.a n : ℤ) = A112623 (n + 1)

theorem P6838822928638503357.correct : P6838822928638503357.Spec := by
  intro n
  simp only [A112623, Nat.add_sub_cancel]

end A112623

/-! ## A112623.P6787539401425174307

`∑{p}[n+1, val(n+1, #)!]`
-/

namespace A112623.P6787539401425174307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (SequenceMachineLib.valuation (n + 1) p)

end

end A112623.P6787539401425174307

namespace A112623

/-- `∑{p}[n+1, val(n+1, #)!]` -/
def P6787539401425174307.Spec : Prop :=
  ∀ n, (P6787539401425174307.a n : ℤ) = A112623 (n + 1)

end A112623

/-! ## A112623.P12183103698680643271

`∑{e}[n+1, A000142(#)]`
-/

namespace A112623.P12183103698680643271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000142 (Nat.factorization (f1 n) p)

end

end A112623.P12183103698680643271

namespace A112623

/-- `∑{e}[n+1, A000142(#)]` -/
def P12183103698680643271.Spec : Prop :=
  ∀ n, P12183103698680643271.a n = A112623 (n + 1)

theorem P12183103698680643271.correct : P12183103698680643271.Spec := by
  intro n
  simp only [A112623, Nat.add_sub_cancel, A112623.P12183103698680643271.f1, A112623.P12183103698680643271.a, A112623.P6838822928638503357.f1, A112623.P6838822928638503357.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112623

/-! ## A112623.P7147866170426245153

`A276075(A181819(n+1))`
-/

namespace A112623.P7147866170426245153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (A181819 (n + 1)).toNat

end

end A112623.P7147866170426245153

namespace A112623

/-- `A276075(A181819(n+1))` -/
def P7147866170426245153.Spec : Prop :=
  ∀ n, P7147866170426245153.a n = A112623 (n + 1)

end A112623

/-! ## A112623.P790504458793920915

`log(∏{e}[n+1, exp(#!)])`
-/

namespace A112623.P790504458793920915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorial (Nat.factorization (f1 n) p) : ℝ))

end

end A112623.P790504458793920915

namespace A112623

/-- `log(∏{e}[n+1, exp(#!)])` -/
def P790504458793920915.Spec : Prop :=
  ∀ n, P790504458793920915.a n = (A112623 (n + 1) : ℝ)

end A112623

/-! ## A112623.P14836827118596587372

`val(∏{e}[n+1, 2^#!], 2)`
-/

namespace A112623.P14836827118596587372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorial (Nat.factorization (f1 n) p)) 2

end

end A112623.P14836827118596587372

namespace A112623

/-- `val(∏{e}[n+1, 2^#!], 2)` -/
def P14836827118596587372.Spec : Prop :=
  ∀ n, (P14836827118596587372.a n : ℤ) = A112623 (n + 1)

end A112623

/-!
# A112624: If p^b(p,n) is the highest power of the prime p dividing n, then a(n) = Product_{p|n} b(p,n)!.

The programs for A112624, the canonical program `A112624.P11439798300109135207` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112624 has offset 1).

The definition of A112624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112624.P7419544507916740206

`A000142(A067029(n+1))*a(A028234(n+1)-1)` with `a(0)=1, a(1)=1`
-/

namespace A112624.P7419544507916740206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000142 (A067029 (n + 1)).toNat * a (A028234 (n + 1) - 1).toNat

end

end A112624.P7419544507916740206

namespace A112624

/-- `A000142(A067029(n+1))*a(A028234(n+1)-1)` -/
def P7419544507916740206.Spec : Prop :=
  ∀ n, P7419544507916740206.a n = A112624 (n + 1)

end A112624

/-! ## A112624.P17925985136333546816

`A246660(A156552(n+1))`
-/

namespace A112624.P17925985136333546816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 (A156552 (n + 1)).toNat

end

end A112624.P17925985136333546816

namespace A112624

/-- `A246660(A156552(n+1))` -/
def P17925985136333546816.Spec : Prop :=
  ∀ n, P17925985136333546816.a n = A112624 (n + 1)

end A112624

/-! ## A112624.P11439798300109135207

`∏{e}[n+1, #!]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112624

/-- `∏{e}[n+1, #!]` -/
def P11439798300109135207.Spec : Prop :=
  ∀ n, (P11439798300109135207.a n : ℤ) = A112624 (n + 1)

theorem P11439798300109135207.correct : P11439798300109135207.Spec := by
  intro n
  simp only [A112624, Nat.add_sub_cancel]

end A112624

/-! ## A112624.P10192683980565779089

`exp(∑{e}[n+1, log(#!)])`
-/

namespace A112624.P10192683980565779089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (Nat.factorial (Nat.factorization (f1 n) p) : ℝ))

end

end A112624.P10192683980565779089

namespace A112624

/-- `exp(∑{e}[n+1, log(#!)])` -/
def P10192683980565779089.Spec : Prop :=
  ∀ n, P10192683980565779089.a n = (A112624 (n + 1) : ℝ)

end A112624

/-! ## A112624.P15497711496219880239

`∏{p}[n+1, val(n+1, #)!]`
-/

namespace A112624.P15497711496219880239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (SequenceMachineLib.valuation (n + 1) p)

end

end A112624.P15497711496219880239

namespace A112624

/-- `∏{p}[n+1, val(n+1, #)!]` -/
def P15497711496219880239.Spec : Prop :=
  ∀ n, (P15497711496219880239.a n : ℤ) = A112624 (n + 1)

end A112624

/-! ## A112624.P6597060898018085624

`abs(∏{e}[2*n-(n-1), -#!])`
-/

namespace A112624.P6597060898018085624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorial (Nat.factorization (f1 n).natAbs p) : ℤ))|

end

end A112624.P6597060898018085624

namespace A112624

/-- `abs(∏{e}[2*n-(n-1), -#!])` -/
def P6597060898018085624.Spec : Prop :=
  ∀ n, P6597060898018085624.a n = A112624 (n + 1)

end A112624

/-! ## A112624.P6904347632838716780

`sqrt(∏{e}[2*n-(n-1), #!²])`
-/

namespace A112624.P6904347632838716780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorial (Nat.factorization (f1 n).natAbs p) ^ 2 : ℕ) : ℝ)

end

end A112624.P6904347632838716780

namespace A112624

/-- `sqrt(∏{e}[2*n-(n-1), #!²])` -/
def P6904347632838716780.Spec : Prop :=
  ∀ n, P6904347632838716780.a n = (A112624 (n + 1) : ℝ)

end A112624

/-! ## A112624.P12534847528422076652

`∏{d}[n+1, A306694(#)]`
-/

namespace A112624.P12534847528422076652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A306694 d

end

end A112624.P12534847528422076652

namespace A112624

/-- `∏{d}[n+1, A306694(#)]` -/
def P12534847528422076652.Spec : Prop :=
  ∀ n, P12534847528422076652.a n = A112624 (n + 1)

end A112624

/-! ## A112624.P16955738766702195333

`∏{e}[n+1, A000142(#)]`
-/

namespace A112624.P16955738766702195333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000142 (Nat.factorization (f1 n) p)

end

end A112624.P16955738766702195333

namespace A112624

/-- `∏{e}[n+1, A000142(#)]` -/
def P16955738766702195333.Spec : Prop :=
  ∀ n, P16955738766702195333.a n = A112624 (n + 1)

theorem P16955738766702195333.correct : P16955738766702195333.Spec := by
  intro n
  simp only [A112624, Nat.add_sub_cancel, A112624.P16955738766702195333.f1, A112624.P16955738766702195333.a, A112624.P11439798300109135207.f1, A112624.P11439798300109135207.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112624

/-! ## A112624.P10539715893462636206

`∏{e}[n+1, A038507(#)-1]`
-/

namespace A112624.P10539715893462636206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (A038507 (Nat.factorization (f1 n) p) - 1)

end

end A112624.P10539715893462636206

namespace A112624

/-- `∏{e}[n+1, A038507(#)-1]` -/
def P10539715893462636206.Spec : Prop :=
  ∀ n, P10539715893462636206.a n = A112624 (n + 1)

theorem P10539715893462636206.correct : P10539715893462636206.Spec := by
  intro n
  simp only [A112624, Nat.add_sub_cancel, A112624.P10539715893462636206.f1, A112624.P10539715893462636206.a, A112624.P11439798300109135207.f1, A112624.P11439798300109135207.a, A038507, A038507.P6297172410669872132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112624

/-! ## A112624.P10020119766256015165

`A206497(A212173(n+1))`
-/

namespace A112624.P10020119766256015165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206497 (A212173 (n + 1)).toNat

end

end A112624.P10020119766256015165

namespace A112624

/-- `A206497(A212173(n+1))` -/
def P10020119766256015165.Spec : Prop :=
  ∀ n, P10020119766256015165.a n = A112624 (n + 1)

end A112624

/-! ## A112624.P9268161330458012778

`A321898(A181819(n+1))`
-/

namespace A112624.P9268161330458012778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321898 (A181819 (n + 1)).toNat

end

end A112624.P9268161330458012778

namespace A112624

/-- `A321898(A181819(n+1))` -/
def P9268161330458012778.Spec : Prop :=
  ∀ n, P9268161330458012778.a n = A112624 (n + 1)

end A112624

/-! ## A112624.P10934662495680942384

`A130675(n+1)/A008480(n+1)`
-/

namespace A112624.P10934662495680942384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130675 (n + 1) : ℚ) / (A008480 (n + 1) : ℚ)

end

end A112624.P10934662495680942384

namespace A112624

/-- `A130675(n+1)/A008480(n+1)` -/
def P10934662495680942384.Spec : Prop :=
  ∀ n, P10934662495680942384.a n = (A112624 (n + 1) : ℚ)

end A112624

/-! ## A112624.P10510388331135354083

`A318762(n+1)/A124794(n+1)`
-/

namespace A112624.P10510388331135354083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318762 (n + 1) : ℚ) / (A124794 (n + 1) : ℚ)

end

end A112624.P10510388331135354083

namespace A112624

/-- `A318762(n+1)/A124794(n+1)` -/
def P10510388331135354083.Spec : Prop :=
  ∀ n, P10510388331135354083.a n = (A112624 (n + 1) : ℚ)

end A112624

/-! ## A112624.P6061754609483138802

`A000142(A001222(n+1))/A008480(n+1)`
-/

namespace A112624.P6061754609483138802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (A001222 (n + 1)).toNat : ℚ) / (A008480 (n + 1) : ℚ)

end

end A112624.P6061754609483138802

namespace A112624

/-- `A000142(A001222(n+1))/A008480(n+1)` -/
def P6061754609483138802.Spec : Prop :=
  ∀ n, P6061754609483138802.a n = (A112624 (n + 1) : ℚ)

end A112624

/-! ## A112624.P14375272262423118249

`A318808(2*(n+1))/A124794(n+1)`
-/

namespace A112624.P14375272262423118249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318808 (2 * (n + 1)) : ℚ) / (A124794 (n + 1) : ℚ)

end

end A112624.P14375272262423118249

namespace A112624

/-- `A318808(2*(n+1))/A124794(n+1)` -/
def P14375272262423118249.Spec : Prop :=
  ∀ n, P14375272262423118249.a n = (A112624 (n + 1) : ℚ)

end A112624

/-! ## A112624.P18072162617295900591

`A318810(2*(n+1))/A124794(n+1)`
-/

namespace A112624.P18072162617295900591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318810 (2 * (n + 1)) : ℚ) / (A124794 (n + 1) : ℚ)

end

end A112624.P18072162617295900591

namespace A112624

/-- `A318810(2*(n+1))/A124794(n+1)` -/
def P18072162617295900591.Spec : Prop :=
  ∀ n, P18072162617295900591.a n = (A112624 (n + 1) : ℚ)

end A112624

/-! ## A112624.P10066541968750307643

`A206497(A000040(A320389(n+1)))`
-/

namespace A112624.P10066541968750307643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206497 (A000040 (A320389 (n + 1)).toNat).toNat

end

end A112624.P10066541968750307643

namespace A112624

/-- `A206497(A000040(A320389(n+1)))` -/
def P10066541968750307643.Spec : Prop :=
  ∀ n, P10066541968750307643.a n = A112624 (n + 1)

end A112624

/-!
# A112626: Triangle read by rows: T(n,k) = Sum_{j=0..n} binomial(n, k+j)*2^(n-k-j).

The programs for A112626, there is no canonical definition to state claims against.
-/

/-! ## A112626.P2566905859051761688

`A193824(comp[∑[n]])`
-/

namespace A112626.P2566905859051761688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193824 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A112626.P2566905859051761688

/-! ## A112626.P2553760913016800353

`or(1, A193824(A080036(n)))`
-/

namespace A112626.P2553760913016800353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193824 (A080036 n).toNat)

end

end A112626.P2553760913016800353

/-! ## A112626.P10068936690167640721

`or(1, A193824(A014132(n+1)))`
-/

namespace A112626.P10068936690167640721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A193824 (A014132 (n + 1)).toNat)

end

end A112626.P10068936690167640721

/-! ## A112626.P12390616263805559267

`A193823(A099375(n)+n)`
-/

namespace A112626.P12390616263805559267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (A099375 n + (n : ℤ)).toNat

end

end A112626.P12390616263805559267

/-! ## A112626.P12506438387879754547

`A193823(A212012(n+1)-1+n)`
-/

namespace A112626.P12506438387879754547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (A212012 (n + 1) - 1 + (n : ℤ)).toNat

end

end A112626.P12506438387879754547

/-! ## A112626.P2220490144960262357

`A193823(A038722(n+1)+A003056(n))`
-/

namespace A112626.P2220490144960262357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (A038722 (n + 1) + A003056 n).toNat

end

end A112626.P2220490144960262357

/-! ## A112626.P5411980883692310279

`A193823(A114327(n)+A007401(n+1))`
-/

namespace A112626.P5411980883692310279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (A114327 n + A007401 (n + 1)).toNat

end

end A112626.P5411980883692310279

/-! ## A112626.P4821469377598646412

`A193823(A127739(n+1)+A025581(n))`
-/

namespace A112626.P4821469377598646412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (A127739 (n + 1) + A025581 n).toNat

end

end A112626.P4821469377598646412

/-! ## A112626.P13668275179568794004

`A193823(A380649(n+1))`
-/

namespace A112626.P13668275179568794004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193823 (A380649 (n + 1)).toNat

end

end A112626.P13668275179568794004

/-!
# A112627: Decimal equivalent of number defined by last k bits of the infinite binary string ...0011001100110011 (numbers with leading zeros omitted).

The programs for A112627, the canonical program `A112627.P15147668256515634994` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112627 has offset 1).

The definition of A112627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112627.P15147668256515634994

`4^n-(4+(-4)^(n+1))/20`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112627

/-- `4^n-(4+(-4)^(n+1))/20` -/
def P15147668256515634994.Spec : Prop :=
  ∀ n, P15147668256515634994.a n = (A112627 (n + 1) : ℚ)

end A112627

/-! ## A112627.P1767223307687073044

`∑[2^comp[or(2, n)]]`
-/

namespace A112627.P1767223307687073044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P1767223307687073044

namespace A112627

/-- `∑[2^comp[or(2, n)]]` -/
def P1767223307687073044.Spec : Prop :=
  ∀ n, (P1767223307687073044.a n : ℤ) = A112627 (n + 1)

end A112627

/-! ## A112627.P14778375983448570873

`∑[2^lt[n, or(2, n)]]`
-/

namespace A112627.P14778375983448570873
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P14778375983448570873

namespace A112627

/-- `∑[2^lt[n, or(2, n)]]` -/
def P14778375983448570873.Spec : Prop :=
  ∀ n, (P14778375983448570873.a n : ℤ) = A112627 (n + 1)

end A112627

/-! ## A112627.P6657479782551525917

`∑[2^lt[n, xor(2, n)]]`
-/

namespace A112627.P6657479782551525917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P6657479782551525917

namespace A112627

/-- `∑[2^lt[n, xor(2, n)]]` -/
def P6657479782551525917.Spec : Prop :=
  ∀ n, (P6657479782551525917.a n : ℤ) = A112627 (n + 1)

end A112627

/-! ## A112627.P12715199260953583451

`∑[16*a(n-2)]` with `a(0)=1, a(1)=2`
-/

namespace A112627.P12715199260953583451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  16 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P12715199260953583451

namespace A112627

/-- `∑[16*a(n-2)]` -/
def P12715199260953583451.Spec : Prop :=
  ∀ n, (P12715199260953583451.a n : ℤ) = A112627 (n + 1)

end A112627

/-! ## A112627.P11231863495409532057

`∑[record[2^xor(2, n)]]/4`
-/

namespace A112627.P11231863495409532057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A112627.P11231863495409532057

namespace A112627

/-- `∑[record[2^xor(2, n)]]/4` -/
def P11231863495409532057.Spec : Prop :=
  ∀ n, P11231863495409532057.a n = (A112627 (n + 1) : ℚ)

end A112627

/-! ## A112627.P6317120706364043103

`∑[2^(and(n, -2)+n)]`
-/

namespace A112627.P6317120706364043103
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.land (n : ℤ) (-2) + (n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P6317120706364043103

namespace A112627

/-- `∑[2^(and(n, -2)+n)]` -/
def P6317120706364043103.Spec : Prop :=
  ∀ n, P6317120706364043103.a n = (A112627 (n + 1) : ℚ)

end A112627

/-! ## A112627.P10042095963805805490

`∑[record[and(2, n+2)^n]]`
-/

namespace A112627.P10042095963805805490
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (n + 2) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P10042095963805805490

namespace A112627

/-- `∑[record[and(2, n+2)^n]]` -/
def P10042095963805805490.Spec : Prop :=
  ∀ n, (P10042095963805805490.a n : ℤ) = A112627 (n + 1)

end A112627

/-! ## A112627.P12239007224806439972

`∑[2^(2*n-n%2)]`
-/

namespace A112627.P12239007224806439972
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - ((n % 2 : ℕ) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P12239007224806439972

namespace A112627

/-- `∑[2^(2*n-n%2)]` -/
def P12239007224806439972.Spec : Prop :=
  ∀ n, P12239007224806439972.a n = (A112627 (n + 1) : ℚ)

end A112627

/-! ## A112627.P18268078256102899036

`∑[4^n/gcd(2, n+1)]`
-/

namespace A112627.P18268078256102899036
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℚ) / (Nat.gcd 2 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P18268078256102899036

namespace A112627

/-- `∑[4^n/gcd(2, n+1)]` -/
def P18268078256102899036.Spec : Prop :=
  ∀ n, P18268078256102899036.a n = (A112627 (n + 1) : ℚ)

end A112627

/-! ## A112627.P2919072824216289276

`∑[2^(or(1, n)+n-1)]`
-/

namespace A112627.P2919072824216289276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.lor 1 n : ℤ) + ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P2919072824216289276

namespace A112627

/-- `∑[2^(or(1, n)+n-1)]` -/
def P2919072824216289276.Spec : Prop :=
  ∀ n, P2919072824216289276.a n = (A112627 (n + 1) : ℚ)

end A112627

/-! ## A112627.P12469819005777848219

`∑[2^(2*n-and(1, n))]`
-/

namespace A112627.P12469819005777848219
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * n : ℤ) - (Nat.land 1 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P12469819005777848219

namespace A112627

/-- `∑[2^(2*n-and(1, n))]` -/
def P12469819005777848219.Spec : Prop :=
  ∀ n, P12469819005777848219.a n = (A112627 (n + 1) : ℚ)

end A112627

/-! ## A112627.P6178072167358589217

`∑[2^∑[C(3, a(n-1))]]` with `a(0)=0`
-/

namespace A112627.P6178072167358589217
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.choose 3 (f2 (n - 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P6178072167358589217

namespace A112627

/-- `∑[2^∑[C(3, a(n-1))]]` -/
def P6178072167358589217.Spec : Prop :=
  ∀ n, (P6178072167358589217.a n : ℤ) = A112627 (n + 1)

end A112627

/-! ## A112627.P12677435438586792017

`∑[a(n-2)/(1/4)²]` with `a(0)=1, a(1)=2`
-/

namespace A112627.P12677435438586792017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 4) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P12677435438586792017

namespace A112627

/-- `∑[a(n-2)/(1/4)²]` -/
def P12677435438586792017.Spec : Prop :=
  ∀ n, P12677435438586792017.a n = (A112627 (n + 1) : ℚ)

end A112627

/-! ## A112627.P3675330792668472852

`∑[2^∑[4-a(n-1)]]` with `a(0)=0, a(1)=1`
-/

namespace A112627.P3675330792668472852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P3675330792668472852

namespace A112627

/-- `∑[2^∑[4-a(n-1)]]` -/
def P3675330792668472852.Spec : Prop :=
  ∀ n, P3675330792668472852.a n = (A112627 (n + 1) : ℚ)

end A112627

/-! ## A112627.P10724875343223981524

`∑[4^(n-1)*gcd(4, 2*n)]`
-/

namespace A112627.P10724875343223981524
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.gcd 4 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P10724875343223981524

namespace A112627

/-- `∑[4^(n-1)*gcd(4, 2*n)]` -/
def P10724875343223981524.Spec : Prop :=
  ∀ n, P10724875343223981524.a n = (A112627 (n + 1) : ℚ)

end A112627

/-! ## A112627.P14868221644474099149

`∑[record[A099087(n)]]`
-/

namespace A112627.P14868221644474099149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P14868221644474099149

namespace A112627

/-- `∑[record[A099087(n)]]` -/
def P14868221644474099149.Spec : Prop :=
  ∀ n, P14868221644474099149.a n = A112627 (n + 1)

end A112627

/-! ## A112627.P12534049509406735849

`∑[record[A108474(n)]]`
-/

namespace A112627.P12534049509406735849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108474 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P12534049509406735849

namespace A112627

/-- `∑[record[A108474(n)]]` -/
def P12534049509406735849.Spec : Prop :=
  ∀ n, P12534049509406735849.a n = A112627 (n + 1)

end A112627

/-! ## A112627.P5350644557838429353

`∑[record[A320770(n)]]`
-/

namespace A112627.P5350644557838429353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320770 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P5350644557838429353

namespace A112627

/-- `∑[record[A320770(n)]]` -/
def P5350644557838429353.Spec : Prop :=
  ∀ n, P5350644557838429353.a n = A112627 (n + 1)

end A112627

/-! ## A112627.P200401818718493012

`∑[record[A363524(n)]]`
-/

namespace A112627.P200401818718493012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363524 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112627.P200401818718493012

namespace A112627

/-- `∑[record[A363524(n)]]` -/
def P200401818718493012.Spec : Prop :=
  ∀ n, P200401818718493012.a n = A112627 (n + 1)

end A112627

/-!
# A112630: Squares of the form 3S + 4, where S is a semiprime.

The programs for A112630, there is no canonical definition to state claims against.
-/

/-! ## A112630.P915825510504352799

`3*A112666(n+1)+4`
-/

namespace A112630.P915825510504352799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A112666 (n + 1) + 4

end

end A112630.P915825510504352799

/-! ## A112630.P18357857420570779303

`A016777(A112666(n+1)+1)`
-/

namespace A112630.P18357857420570779303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A112666 (n + 1) + 1).toNat

end

end A112630.P18357857420570779303

/-! ## A112630.P17482167173485878500

`A112652(A112666(n+1)+2)`
-/

namespace A112630.P17482167173485878500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112652 (A112666 (n + 1) + 2).toNat

end

end A112630.P17482167173485878500

/-! ## A112630.P3612555568978594759

`A033627(A112666(n+1)+3)`
-/

namespace A112630.P3612555568978594759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (A112666 (n + 1) + 3).toNat

end

end A112630.P3612555568978594759

/-! ## A112630.P914452125830583163

`A016789(A112666(n+1)+1)-1`
-/

namespace A112630.P914452125830583163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A112666 (n + 1) + 1).toNat - 1

end

end A112630.P914452125830583163

/-!
# A112631: Rightmost term of each row of triangle A112599. (For n >= 2, a(n) = number of terms in the (n-1)th row of triangle A112599 which are coprime to n.)

The programs for A112631, there is no canonical definition to state claims against.
-/

/-! ## A112631.P10700082002003183901

`A112599(∑[n+1])`
-/

namespace A112631.P10700082002003183901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112631.P10700082002003183901

/-! ## A112631.P11559511131283838539

`A112599(A000217(n+1))%73`
-/

namespace A112631.P11559511131283838539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112599 (A000217 (n + 1)).toNat) 73

end

end A112631.P11559511131283838539

/-! ## A112631.P14657806734132249939

`A112599(A000096(n)+1)%(n+2)`
-/

namespace A112631.P14657806734132249939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112599 (A000096 n + 1).toNat) (n + 2 : ℤ)

end

end A112631.P14657806734132249939

/-! ## A112631.P5595918356561561522

`lcm(A097807(n), A112599(A000096(n)+1))`
-/

namespace A112631.P5595918356561561522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A112599 (A000096 n + 1).toNat)

end

end A112631.P5595918356561561522

/-! ## A112631.P14705735960023580276

`∑{d}[A112599(A000217(n+1)), A000010(#)]`
-/

namespace A112631.P14705735960023580276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112599 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A112631.P14705735960023580276

/-! ## A112631.P4558374326802870276

`A007318(C(3, n))*A112599(A000217(n+1))`
-/

namespace A112631.P4558374326802870276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A112599 (A000217 (n + 1)).toNat

end

end A112631.P4558374326802870276

/-! ## A112631.P8656809230758403213

`A112599(A000217(n+1))+char[A000108(n+7)]`
-/

namespace A112631.P8656809230758403213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 7)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112599 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A112631.P8656809230758403213

/-! ## A112631.P6413545599760914878

`A112599(A000217(n+1))+A008683(4*(n+1))`
-/

namespace A112631.P6413545599760914878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112599 (A000217 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A112631.P6413545599760914878

/-! ## A112631.P11996177932121515452

`A112599(A000217(n+1))^A014963(4*n+2)`
-/

namespace A112631.P11996177932121515452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112599 (A000217 (n + 1)).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A112631.P11996177932121515452

/-! ## A112631.P17994206325616317182

`A000041(C(2, n+2))*A112599(A000217(n+1))`
-/

namespace A112631.P17994206325616317182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A112599 (A000217 (n + 1)).toNat

end

end A112631.P17994206325616317182

/-!
# A112632: Excess of 3k - 1 primes over 3k + 1 primes, beginning with 2.

The programs for A112632, the canonical program `A112632.P1974851305689260056` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112632 has offset 1).

The definition of A112632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112632.P11354924893079112996

`A174695(n+1)+1`
-/

namespace A112632.P11354924893079112996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174695 (n + 1) + 1

end

end A112632.P11354924893079112996

namespace A112632

/-- `A174695(n+1)+1` -/
def P11354924893079112996.Spec : Prop :=
  ∀ n, P11354924893079112996.a n = A112632 (n + 1)

theorem P11354924893079112996.correct : P11354924893079112996.Spec := by
  intro n
  simp only [A112632, Nat.add_sub_cancel, A112632.P11354924893079112996.a, A112632.P1974851305689260056.f1, A112632.P1974851305689260056.a, A008864, A008864.P9177617808325052279.a, A174695, A174695.P15433505935837686491.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112632

/-! ## A112632.P3171302983104439969

`abs(∑[A134323(n+1)])`
-/

namespace A112632.P3171302983104439969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A112632.P3171302983104439969

namespace A112632

/-- `abs(∑[A134323(n+1)])` -/
def P3171302983104439969.Spec : Prop :=
  ∀ n, P3171302983104439969.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P2958130923127440501

`∑[A173950(n+1)]+1`
-/

namespace A112632.P2958130923127440501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A112632.P2958130923127440501

namespace A112632

/-- `∑[A173950(n+1)]+1` -/
def P2958130923127440501.Spec : Prop :=
  ∀ n, P2958130923127440501.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P1974851305689260056

`∑[1-A008864(n+1)%3]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112632

/-- `∑[1-A008864(n+1)%3]` -/
def P1974851305689260056.Spec : Prop :=
  ∀ n, P1974851305689260056.a n = A112632 (n + 1)

theorem P1974851305689260056.correct : P1974851305689260056.Spec := by
  intro n
  simp only [A112632, Nat.add_sub_cancel]

end A112632

/-! ## A112632.P12598771279884133823

`∑[A072055(n+1)%3-1]`
-/

namespace A112632.P12598771279884133823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072055 (n + 1)) 3 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112632.P12598771279884133823

namespace A112632

/-- `∑[A072055(n+1)%3-1]` -/
def P12598771279884133823.Spec : Prop :=
  ∀ n, P12598771279884133823.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P18016945883024698610

`∑[1-(A000040(n+1)+1)%3]`
-/

namespace A112632.P18016945883024698610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (A000040 (n + 1) + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112632.P18016945883024698610

namespace A112632

/-- `∑[1-(A000040(n+1)+1)%3]` -/
def P18016945883024698610.Spec : Prop :=
  ∀ n, P18016945883024698610.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P5961045459891119181

`A323048(1-∑[A134323(n+1)])`
-/

namespace A112632.P5961045459891119181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (1 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112632.P5961045459891119181

namespace A112632

/-- `A323048(1-∑[A134323(n+1)])` -/
def P5961045459891119181.Spec : Prop :=
  ∀ n, P5961045459891119181.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P17017320615363565018

`A321856(A000040(n+1))`
-/

namespace A112632.P17017320615363565018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A000040 (n + 1)).toNat

end

end A112632.P17017320615363565018

namespace A112632

/-- `A321856(A000040(n+1))` -/
def P17017320615363565018.Spec : Prop :=
  ∀ n, P17017320615363565018.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P13308158899944173153

`A321856(A008864(n+1))`
-/

namespace A112632.P13308158899944173153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A008864 (n + 1)).toNat

end

end A112632.P13308158899944173153

namespace A112632

/-- `A321856(A008864(n+1))` -/
def P13308158899944173153.Spec : Prop :=
  ∀ n, P13308158899944173153.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P13217628468890126192

`A321856(A028815(n+1))`
-/

namespace A112632.P13217628468890126192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A028815 (n + 1)).toNat

end

end A112632.P13217628468890126192

namespace A112632

/-- `A321856(A028815(n+1))` -/
def P13217628468890126192.Spec : Prop :=
  ∀ n, P13217628468890126192.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P9924699372617378349

`A321856(A078444(n+1))`
-/

namespace A112632.P9924699372617378349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A078444 (n + 1)).toNat

end

end A112632.P9924699372617378349

namespace A112632

/-- `A321856(A078444(n+1))` -/
def P9924699372617378349.Spec : Prop :=
  ∀ n, P9924699372617378349.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P2797904245236853193

`A321856(A162800(n+1))`
-/

namespace A112632.P2797904245236853193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A162800 (n + 1)).toNat

end

end A112632.P2797904245236853193

namespace A112632

/-- `A321856(A162800(n+1))` -/
def P2797904245236853193.Spec : Prop :=
  ∀ n, P2797904245236853193.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P3064489945222294042

`A321856(A175216(n+1))`
-/

namespace A112632.P3064489945222294042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A175216 (n + 1)).toNat

end

end A112632.P3064489945222294042

namespace A112632

/-- `A321856(A175216(n+1))` -/
def P3064489945222294042.Spec : Prop :=
  ∀ n, P3064489945222294042.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P5596828222948642462

`A321856(A350171(n+1))`
-/

namespace A112632.P5596828222948642462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A350171 (n + 1)).toNat

end

end A112632.P5596828222948642462

namespace A112632

/-- `A321856(A350171(n+1))` -/
def P5596828222948642462.Spec : Prop :=
  ∀ n, P5596828222948642462.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P4640527034174789264

`A321856(A065514(n+2))`
-/

namespace A112632.P4640527034174789264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A065514 (n + 2)).toNat

end

end A112632.P4640527034174789264

namespace A112632

/-- `A321856(A065514(n+2))` -/
def P4640527034174789264.Spec : Prop :=
  ∀ n, P4640527034174789264.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P16666357361866332011

`∑[A163811(A008578(n+2))]+1`
-/

namespace A112632.P16666357361866332011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A112632.P16666357361866332011

namespace A112632

/-- `∑[A163811(A008578(n+2))]+1` -/
def P16666357361866332011.Spec : Prop :=
  ∀ n, P16666357361866332011.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P2199569992880948506

`2-∑[A128834(p?[A167171(n+1)])]`
-/

namespace A112632.P2199569992880948506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112632.P2199569992880948506

namespace A112632

/-- `2-∑[A128834(p?[A167171(n+1)])]` -/
def P2199569992880948506.Spec : Prop :=
  ∀ n, P2199569992880948506.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P17541643895074437151

`∑[A128834(p?[A167171(n+1)]+3)]+2`
-/

namespace A112632.P17541643895074437151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A112632.P17541643895074437151

namespace A112632

/-- `∑[A128834(p?[A167171(n+1)]+3)]+2` -/
def P17541643895074437151.Spec : Prop :=
  ∀ n, P17541643895074437151.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P9062715678697564128

`A321856(A157049(n+1))`
-/

namespace A112632.P9062715678697564128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A157049 (n + 1)).toNat

end

end A112632.P9062715678697564128

namespace A112632

/-- `A321856(A157049(n+1))` -/
def P9062715678697564128.Spec : Prop :=
  ∀ n, P9062715678697564128.a n = A112632 (n + 1)

end A112632

/-! ## A112632.P12208184786542744566

`A321856(A140785(n+1))`
-/

namespace A112632.P12208184786542744566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (A140785 (n + 1)).toNat

end

end A112632.P12208184786542744566

namespace A112632

/-- `A321856(A140785(n+1))` -/
def P12208184786542744566.Spec : Prop :=
  ∀ n, P12208184786542744566.a n = A112632 (n + 1)

end A112632

/-!
# A112633: Mersenne prime indices that are also Gaussian primes.

The programs for A112633, there is no canonical definition to state claims against.
-/

/-! ## A112633.P18319731718493753328

`A000043(A112648(n+1))`
-/

namespace A112633.P18319731718493753328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (A112648 (n + 1)).toNat

end

end A112633.P18319731718493753328

/-! ## A112633.P11783060699628554857

`A000043(eq[3, A126044(n+1)]+1)`
-/

namespace A112633.P11783060699628554857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A112633.P11783060699628554857

/-! ## A112633.P14003170589573141953

`A000043(lt[1, A080172(n+2)]+2)`
-/

namespace A112633.P14003170589573141953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080172 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A112633.P14003170589573141953

/-! ## A112633.P9888691218924935380

`A000043(eq[4, A138125(n+1)]+1)`
-/

namespace A112633.P9888691218924935380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A112633.P9888691218924935380

/-! ## A112633.P17720999794608025858

`A000043(eq[7, A080172(n+1)]+1)`
-/

namespace A112633.P17720999794608025858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A112633.P17720999794608025858

/-!
# A112634: Mersenne prime indices that are not Gaussian primes.

The programs for A112634, there is no canonical definition to state claims against.
-/

/-! ## A112634.P1338324229939109952

`A145040(n%a(n-1))` with `a(0)=2`
-/

namespace A112634.P1338324229939109952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A145040 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A112634.P1338324229939109952

/-! ## A112634.P16296747668180919121

`A145040(gcd(n, n*a(n-1)))` with `a(0)=2`
-/

namespace A112634.P16296747668180919121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A145040 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)))

end

end A112634.P16296747668180919121

/-! ## A112634.P9022600692722023443

`A145040(C(n, a(n-1))/2+n)` with `a(0)=2`
-/

namespace A112634.P9022600692722023443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A145040 (SequenceMachineLib.roundAway ((Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ))).toNat

end

end A112634.P9022600692722023443

/-! ## A112634.P7253606087520325433

`A000043(A112649(n+1))`
-/

namespace A112634.P7253606087520325433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (A112649 (n + 1)).toNat

end

end A112634.P7253606087520325433

/-! ## A112634.P13057076847442193934

`A000043(lt[A080172(n+1), 4]+1)`
-/

namespace A112634.P13057076847442193934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080172 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000043 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A112634.P13057076847442193934

/-!
# A112635: a(n) = rightmost term of n-th row of triangle A112592. (For n >= 2, a(n) = number of terms in the (n-1)th row of triangle A112592 which are coprime to n.)

The programs for A112635, there is no canonical definition to state claims against.
-/

/-! ## A112635.P4832598773665384558

`A112592(∏{p}[n+1, #]+∑[n])`
-/

namespace A112635.P4832598773665384558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112592 (∏ p ∈ Nat.primeFactors (f1 n), p + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A112635.P4832598773665384558

/-! ## A112635.P12889955627106603431

`A112592(A007947(n+1)+∑[n])`
-/

namespace A112635.P12889955627106603431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112592 (A007947 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A112635.P12889955627106603431

/-! ## A112635.P2736340446429524803

`A112592(A015052(n+1)+∑[n])`
-/

namespace A112635.P2736340446429524803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112592 (A015052 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A112635.P2736340446429524803

/-! ## A112635.P10241118923697101185

`A112592(A015053(n+1)+∑[n])`
-/

namespace A112635.P10241118923697101185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112592 (A015053 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A112635.P10241118923697101185

/-! ## A112635.P3844771024676372811

`A112592(A019554(n+1)+∑[n])`
-/

namespace A112635.P3844771024676372811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112592 (A019554 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A112635.P3844771024676372811

/-! ## A112635.P2188939001078599749

`A112592(A331737(n+1)+∑[n])`
-/

namespace A112635.P2188939001078599749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112592 (A331737 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A112635.P2188939001078599749

/-! ## A112635.P13573368604236575094

`A112592(∑[n+1])`
-/

namespace A112635.P13573368604236575094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112592 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112635.P13573368604236575094

/-!
# A112637: a(n) = b(n)*lcm{1,2,..,n}^3 where b(n) is a sequence of rationals arising in irrationality proof of zeta(3).

The programs for A112637, there is no canonical definition to state claims against.
-/

/-! ## A112637.P5780077951521574936

`A059415(n)/A059416(n)*A003418(n)^3`
-/

namespace A112637.P5780077951521574936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059415 n : ℚ) / (A059416 n : ℚ) * (A003418 n ^ 3 : ℚ)

end

end A112637.P5780077951521574936

/-! ## A112637.P13374634722478794774

`A171484(n)/2`
-/

namespace A112637.P13374634722478794774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171484 n : ℚ) / 2

end

end A112637.P13374634722478794774

/-!
# A112638: Power each digit individually according to its position and add the numbers.

The programs for A112638, there is no canonical definition to state claims against.
-/

/-! ## A112638.P10163564432095282950

`A068522(a(n-1))` with `a(0)=2`
-/

namespace A112638.P10163564432095282950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A068522 (a (n - 1)).toNat

end

end A112638.P10163564432095282950

/-! ## A112638.P10017100520170068749

`A352502(A378267(n+1))`
-/

namespace A112638.P10017100520170068749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352502 (A378267 (n + 1)).toNat

end

end A112638.P10017100520170068749

/-!
# A112639: a(n) = floor(r^n) where r is the smallest Pisot number (real root r=1.3247179... of x^3-x-1).

The programs for A112639, the canonical program `A112639.P13019784231059881199` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112639 has offset 0).

The definition of A112639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112639.P13019784231059881199

`floor(((1/2+sqrt(23/108))^(1/3)+(1/2-sqrt(23/108))^(1/3))^n)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112639

/-- `floor(((1/2+sqrt(23/108))^(1/3)+(1/2-sqrt(23/108))^(1/3))^n)` -/
def P13019784231059881199.Spec : Prop :=
  ∀ n, P13019784231059881199.a n = A112639 n

theorem P13019784231059881199.correct : P13019784231059881199.Spec := by
  intro n
  simp only [A112639]

end A112639

/-! ## A112639.P8356735113640629853

`ceil(sqrt(A001608(2*n)))-1`
-/

namespace A112639.P8356735113640629853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001608 (2 * n) : ℝ)⌉ - 1

end

end A112639.P8356735113640629853

namespace A112639

/-- `ceil(sqrt(A001608(2*n)))-1` -/
def P8356735113640629853.Spec : Prop :=
  ∀ n, P8356735113640629853.a n = A112639 n

end A112639

/-! ## A112639.P12967033461253620054

`A000027(floor(sqrt(A001608(2*n))))`
-/

namespace A112639.P12967033461253620054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.sqrt (A001608 (2 * n))).toNat

end

end A112639.P12967033461253620054

namespace A112639

/-- `A000027(floor(sqrt(A001608(2*n))))` -/
def P12967033461253620054.Spec : Prop :=
  ∀ n, P12967033461253620054.a n = A112639 n

end A112639

/-! ## A112639.P7982335605228593887

`A205579(n)-char[A051017(n+1)]`
-/

namespace A112639.P7982335605228593887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051017 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205579 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A112639.P7982335605228593887

namespace A112639

/-- `A205579(n)-char[A051017(n+1)]` -/
def P7982335605228593887.Spec : Prop :=
  ∀ n, P7982335605228593887.a n = A112639 n

end A112639

/-! ## A112639.P11491794640355579871

`A205579(n)-char[comp[A051016(n+1)-1]+1]`
-/

namespace A112639.P11491794640355579871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051016 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205579 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A112639.P11491794640355579871

namespace A112639

/-- `A205579(n)-char[comp[A051016(n+1)-1]+1]` -/
def P11491794640355579871.Spec : Prop :=
  ∀ n, P11491794640355579871.a n = A112639 n

end A112639

/-!
# A112641: Weight distribution of quadratic residue code of length 23 over GF(3).

The programs for A112641, there is no canonical definition to state claims against.
-/

/-! ## A112641.P18080467091802197109

`A167654((a(n-1)+val(n, 2))!)` with `a(0)=1`
-/

namespace A112641.P18080467091802197109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167654 (Nat.factorial (a (n - 1) + (SequenceMachineLib.valuation n 2 : ℤ)).toNat)

end

end A112641.P18080467091802197109

/-! ## A112641.P12778742043243232561

`A027356(A045908(n)+1)`
-/

namespace A112641.P12778742043243232561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027356 (A045908 n + 1).toNat

end

end A112641.P12778742043243232561

/-! ## A112641.P13740323537111631683

`A153011(A060816(n)+7)`
-/

namespace A112641.P13740323537111631683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153011 (A060816 n + 7).toNat

end

end A112641.P13740323537111631683

/-! ## A112641.P12328796315493213105

`A020639(n!)*A105547(n)`
-/

namespace A112641.P12328796315493213105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.factorial n) * A105547 n

end

end A112641.P12328796315493213105

/-! ## A112641.P4549368260993375252

`A066099(3^n)*A105547(n)`
-/

namespace A112641.P4549368260993375252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (3 ^ n) * A105547 n

end

end A112641.P4549368260993375252

/-!
# A112643: Odd squarefree abundant numbers.

The programs for A112643, there is no canonical definition to state claims against.
-/

/-! ## A112643.P10382925670313258174

`sqrt(A391430(n+1))`
-/

namespace A112643.P10382925670313258174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A391430 (n + 1) : ℝ)

end

end A112643.P10382925670313258174

/-! ## A112643.P8458822737107755291

`A387153(n+1)/2`
-/

namespace A112643.P8458822737107755291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387153 (n + 1) : ℚ) / 2

end

end A112643.P8458822737107755291

/-! ## A112643.P9098052107132866419

`gcd(A387153(n+1), A391430(n+1))`
-/

namespace A112643.P9098052107132866419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A387153 (n + 1)) (A391430 (n + 1))

end

end A112643.P9098052107132866419

/-! ## A112643.P16916302952958137916

`∩[A005231(n+1), A091495(n+1)]`
-/

namespace A112643.P16916302952958137916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112643.P16916302952958137916

/-! ## A112643.P3278016426777065731

`∩[A091495(n+1), A127666(n+1)]`
-/

namespace A112643.P3278016426777065731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112643.P3278016426777065731

/-! ## A112643.P15677465389668657171

`∩[A091495(n+1), A174865(n+1)]`
-/

namespace A112643.P15677465389668657171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112643.P15677465389668657171

/-! ## A112643.P15586248066041973117

`∩[A091495(n+1), A293186(n+1)]`
-/

namespace A112643.P15586248066041973117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112643.P15586248066041973117

/-! ## A112643.P17161567628374426897

`∩[A091495(n+1), A333950(n+1)]`
-/

namespace A112643.P17161567628374426897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112643.P17161567628374426897

/-! ## A112643.P3214039025461621757

`∩[A091495(n+1), A339938(n+1)]`
-/

namespace A112643.P3214039025461621757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112643.P3214039025461621757

/-!
# A112644: Odd and squarefree abundant numbers not divisible by 5.

The programs for A112644, there is no canonical definition to state claims against.
-/

/-! ## A112644.P3665778007626438693

`A115343(A187829(n+1))/10`
-/

namespace A112644.P3665778007626438693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115343 (A187829 (n + 1)).toNat : ℚ) / 10

end

end A112644.P3665778007626438693

/-! ## A112644.P2844521218662228760

`A115343(n+1)/A040383(A062341(n+1))`
-/

namespace A112644.P2844521218662228760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115343 (n + 1) : ℚ) / (A040383 (A062341 (n + 1)).toNat : ℚ)

end

end A112644.P2844521218662228760

/-! ## A112644.P3637186445023267909

`A115343(n+1)/A040383(A099007(n+1))`
-/

namespace A112644.P3637186445023267909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115343 (n + 1) : ℚ) / (A040383 (A099007 (n + 1)).toNat : ℚ)

end

end A112644.P3637186445023267909

/-! ## A112644.P14400456730316768006

`A115343(n+1)/A260152(A177214(n+1))`
-/

namespace A112644.P14400456730316768006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115343 (n + 1) : ℚ) / (A260152 (A177214 (n + 1)).toNat : ℚ)

end

end A112644.P14400456730316768006

/-! ## A112644.P1201953134301233553

`A115343(n+1)/A040383(A288898(n))`
-/

namespace A112644.P1201953134301233553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115343 (n + 1) : ℚ) / (A040383 (A288898 n).toNat : ℚ)

end

end A112644.P1201953134301233553

/-!
# A112648: Integers k for which the k-th Mersenne prime exponent is a Gaussian prime (3 mod 4).

The programs for A112648, there is no canonical definition to state claims against.
-/

/-! ## A112648.P7882626521219938410

`eq[3, A126044(n+1)]+1`
-/

namespace A112648.P7882626521219938410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112648.P7882626521219938410

/-! ## A112648.P15560118937471940990

`lt[1, A080172(n+2)]+2`
-/

namespace A112648.P15560118937471940990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080172 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A112648.P15560118937471940990

/-! ## A112648.P4475416983631591820

`eq[4, A138125(n+1)]+1`
-/

namespace A112648.P4475416983631591820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112648.P4475416983631591820

/-! ## A112648.P9713511060226681779

`eq[7, A080172(n+1)]+1`
-/

namespace A112648.P9713511060226681779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080172 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112648.P9713511060226681779

/-! ## A112648.P10288303784431379607

`lt[A138125(n+2), 5]+2`
-/

namespace A112648.P10288303784431379607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138125 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A112648.P10288303784431379607

/-!
# A112649: Numbers k such that the k-th Mersenne prime exponent is not a Gaussian prime (not 3 mod 4).

The programs for A112649, there is no canonical definition to state claims against.
-/

/-! ## A112649.P15887807051516709400

`lt[A080172(n+1), 4]+1`
-/

namespace A112649.P15887807051516709400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080172 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A112649.P15887807051516709400

/-! ## A112649.P8312555782617975633

`eq[2, and(2, A050475(n+1))]+1`
-/

namespace A112649.P8312555782617975633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A050475 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112649.P8312555782617975633

/-! ## A112649.P14730439181425481490

`eq[2, and(2, -A000043(n+1))]+1`
-/

namespace A112649.P14730439181425481490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-A000043 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112649.P14730439181425481490

/-! ## A112649.P10618074171186186637

`comp[A112648(n+1)-1]+1`
-/

namespace A112649.P10618074171186186637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112648 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A112649.P10618074171186186637

/-! ## A112649.P6034267301575537334

`comp[∪[A112648(n+1), A048397(n)]]`
-/

namespace A112649.P6034267301575537334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112648 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048397 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A112649.P6034267301575537334

/-!
# A112651: Numbers k such that k^2 == k (mod 11).

The programs for A112651, the canonical program `A112651.P5743016938550411569` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112651 has offset 1).

The definition of A112651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112651.P5743016938550411569

`11*(n+1)-a(n-1)-21` with `a(0)=0`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112651

/-- `11*(n+1)-a(n-1)-21` -/
def P5743016938550411569.Spec : Prop :=
  ∀ n, P5743016938550411569.a n = A112651 (n + 1)

theorem P5743016938550411569.correct : P5743016938550411569.Spec := by
  intro n
  simp only [A112651, Nat.add_sub_cancel]

end A112651

/-! ## A112651.P9025902377430840720

`11*(n+1)/2-31/4-9*(-1)^(n+1)/4`
-/

namespace A112651.P9025902377430840720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 * (n + 1) : ℚ) / 2 - (31 : ℚ) / 4 - (9 * (-1) ^ (n + 1) : ℚ) / 4

end

end A112651.P9025902377430840720

namespace A112651

/-- `11*(n+1)/2-31/4-9*(-1)^(n+1)/4` -/
def P9025902377430840720.Spec : Prop :=
  ∀ n, P9025902377430840720.a n = (A112651 (n + 1) : ℚ)

theorem P9025902377430840720.correct : P9025902377430840720.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A112651, Nat.add_sub_cancel, A112651.P9025902377430840720.a, A112651.P5743016938550411569.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A112651, Nat.add_sub_cancel, A112651.P9025902377430840720.a, A112651.P5743016938550411569.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A112651

/-! ## A112651.P3326723779095017542

`record[n/(n%11)!]`
-/

namespace A112651.P3326723779095017542
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (n % 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112651.P3326723779095017542

namespace A112651

/-- `record[n/(n%11)!]` -/
def P3326723779095017542.Spec : Prop :=
  ∀ n, P3326723779095017542.a n = (A112651 (n + 1) : ℚ)

end A112651

/-! ## A112651.P9464096748192239038

`∑[C(10, a(n-1))]` with `a(0)=0`
-/

namespace A112651.P9464096748192239038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 10 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P9464096748192239038

namespace A112651

/-- `∑[C(10, a(n-1))]` -/
def P9464096748192239038.Spec : Prop :=
  ∀ n, (P9464096748192239038.a n : ℤ) = A112651 (n + 1)

end A112651

/-! ## A112651.P10532324103841673465

`∑[11-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A112651.P10532324103841673465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P10532324103841673465

namespace A112651

/-- `∑[11-a(n-1)]` -/
def P10532324103841673465.Spec : Prop :=
  ∀ n, P10532324103841673465.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P6116583794453828622

`∑[floor(10^((n-1)%2))]`
-/

namespace A112651.P6116583794453828622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P6116583794453828622

namespace A112651

/-- `∑[floor(10^((n-1)%2))]` -/
def P6116583794453828622.Spec : Prop :=
  ∀ n, P6116583794453828622.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P12479786958047754074

`∑[∑[ogf((x+10x^2)/(1+x))]]`
-/

namespace A112651.P12479786958047754074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 10] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P12479786958047754074

namespace A112651

/-- `∑[∑[ogf((x+10x^2)/(1+x))]]` -/
def P12479786958047754074.Spec : Prop :=
  ∀ n, P12479786958047754074.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P12166510816780602796

`ogf((x+10x^2)/(1-x-x^2+x^3))`
-/

namespace A112651.P12166510816780602796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 10] [1, -1, -1, 1] n

end

end A112651.P12166510816780602796

namespace A112651

/-- `ogf((x+10x^2)/(1-x-x^2+x^3))` -/
def P12166510816780602796.Spec : Prop :=
  ∀ n, P12166510816780602796.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P14373626304269179960

`3*(4-(1-a(n-2))/3)` with `a(0)=0, a(1)=1`
-/

namespace A112651.P14373626304269179960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * (4 - (1 - a (n - 2)) / 3)

end

end A112651.P14373626304269179960

namespace A112651

/-- `3*(4-(1-a(n-2))/3)` -/
def P14373626304269179960.Spec : Prop :=
  ∀ n, P14373626304269179960.a n = (A112651 (n + 1) : ℚ)

end A112651

/-! ## A112651.P18009110970095857594

`∑[A010691(a(n-1))]` with `a(0)=0`
-/

namespace A112651.P18009110970095857594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A010691 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P18009110970095857594

namespace A112651

/-- `∑[A010691(a(n-1))]` -/
def P18009110970095857594.Spec : Prop :=
  ∀ n, P18009110970095857594.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P18182037962165414639

`∑[A220468(a(n-1))]` with `a(0)=0`
-/

namespace A112651.P18182037962165414639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A220468 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P18182037962165414639

namespace A112651

/-- `∑[A220468(a(n-1))]` -/
def P18182037962165414639.Spec : Prop :=
  ∀ n, P18182037962165414639.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P15586684053324051916

`∑[A280410(a(n-1))]` with `a(0)=0`
-/

namespace A112651.P15586684053324051916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A280410 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P15586684053324051916

namespace A112651

/-- `∑[A280410(a(n-1))]` -/
def P15586684053324051916.Spec : Prop :=
  ∀ n, P15586684053324051916.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P7677428704601993090

`∑[A283393(a(n-1))]` with `a(0)=0`
-/

namespace A112651.P7677428704601993090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A283393 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P7677428704601993090

namespace A112651

/-- `∑[A283393(a(n-1))]` -/
def P7677428704601993090.Spec : Prop :=
  ∀ n, P7677428704601993090.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P14171600734432714636

`∑[A286082(a(n-1))]` with `a(0)=0`
-/

namespace A112651.P14171600734432714636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A286082 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P14171600734432714636

namespace A112651

/-- `∑[A286082(a(n-1))]` -/
def P14171600734432714636.Spec : Prop :=
  ∀ n, P14171600734432714636.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P14790698334891369083

`∑[A286196(a(n-1))]` with `a(0)=0`
-/

namespace A112651.P14790698334891369083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A286196 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P14790698334891369083

namespace A112651

/-- `∑[A286196(a(n-1))]` -/
def P14790698334891369083.Spec : Prop :=
  ∀ n, P14790698334891369083.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P2723514947631665797

`∑[A286770(a(n-1))]` with `a(0)=0`
-/

namespace A112651.P2723514947631665797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A286770 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P2723514947631665797

namespace A112651

/-- `∑[A286770(a(n-1))]` -/
def P2723514947631665797.Spec : Prop :=
  ∀ n, P2723514947631665797.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P3427180902608805839

`∑[A287077(a(n-1))]` with `a(0)=0`
-/

namespace A112651.P3427180902608805839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A287077 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P3427180902608805839

namespace A112651

/-- `∑[A287077(a(n-1))]` -/
def P3427180902608805839.Spec : Prop :=
  ∀ n, P3427180902608805839.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P15057766182237926768

`∑[A287714(a(n-1))]` with `a(0)=0`
-/

namespace A112651.P15057766182237926768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A287714 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P15057766182237926768

namespace A112651

/-- `∑[A287714(a(n-1))]` -/
def P15057766182237926768.Spec : Prop :=
  ∀ n, P15057766182237926768.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P4538322192598681607

`∑[A287975(a(n-1))]` with `a(0)=0`
-/

namespace A112651.P4538322192598681607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A287975 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P4538322192598681607

namespace A112651

/-- `∑[A287975(a(n-1))]` -/
def P4538322192598681607.Spec : Prop :=
  ∀ n, P4538322192598681607.a n = A112651 (n + 1)

end A112651

/-! ## A112651.P1854217783319937880

`∑[A288296(a(n-1))]` with `a(0)=0`
-/

namespace A112651.P1854217783319937880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A288296 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112651.P1854217783319937880

namespace A112651

/-- `∑[A288296(a(n-1))]` -/
def P1854217783319937880.Spec : Prop :=
  ∀ n, P1854217783319937880.a n = A112651 (n + 1)

end A112651

/-!
# A112652: a(n) squared is congruent to a(n) (mod 12).

The programs for A112652, the canonical program `A112652.P585217647459750132` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112652 has offset 0).

The definition of A112652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112652.P585217647459750132

`2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112652

/-- `2*a(n-1)-2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P585217647459750132.Spec : Prop :=
  ∀ n, P585217647459750132.a n = A112652 n

theorem P585217647459750132.correct : P585217647459750132.Spec := by
  intro n
  simp only [A112652]

end A112652

/-! ## A112652.P8857447173995223353

`A087960(n)+3*n-1`
-/

namespace A112652.P8857447173995223353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n + (3 * n : ℤ) - 1

end

end A112652.P8857447173995223353

namespace A112652

/-- `A087960(n)+3*n-1` -/
def P8857447173995223353.Spec : Prop :=
  ∀ n, P8857447173995223353.a n = A112652 n

end A112652

/-! ## A112652.P7278958802510843262

`and(3*n, -3)`
-/

namespace A112652.P7278958802510843262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 * n : ℤ) (-3)

end

end A112652.P7278958802510843262

namespace A112652

/-- `and(3*n, -3)` -/
def P7278958802510843262.Spec : Prop :=
  ∀ n, P7278958802510843262.a n = A112652 n

end A112652

/-! ## A112652.P18056622710296927825

`or(2, 3*n)-2`
-/

namespace A112652.P18056622710296927825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * n) : ℤ) - 2

end

end A112652.P18056622710296927825

namespace A112652

/-- `or(2, 3*n)-2` -/
def P18056622710296927825.Spec : Prop :=
  ∀ n, P18056622710296927825.a n = A112652 n

end A112652

/-! ## A112652.P17942025043320141443

`xor(2, or(2, 3*n))`
-/

namespace A112652.P17942025043320141443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.lor 2 (3 * n))

end

end A112652.P17942025043320141443

namespace A112652

/-- `xor(2, or(2, 3*n))` -/
def P17942025043320141443.Spec : Prop :=
  ∀ n, (P17942025043320141443.a n : ℤ) = A112652 n

end A112652

/-! ## A112652.P14167318489324548094

`Δ[n²]+or(2, n-3)`
-/

namespace A112652.P14167318489324548094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + Int.lor 2 ((n : ℤ) - 3)

end

end A112652.P14167318489324548094

namespace A112652

/-- `Δ[n²]+or(2, n-3)` -/
def P14167318489324548094.Spec : Prop :=
  ∀ n, P14167318489324548094.a n = A112652 n

end A112652

/-! ## A112652.P3860106852218849117

`a(n-4)+12` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9`
-/

namespace A112652.P3860106852218849117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 9] fun n a =>
  a (n - 4) + 12

end

end A112652.P3860106852218849117

namespace A112652

/-- `a(n-4)+12` -/
def P3860106852218849117.Spec : Prop :=
  ∀ n, (P3860106852218849117.a n : ℤ) = A112652 n

end A112652

/-! ## A112652.P7978899873983881187

`∑[6-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A112652.P7978899873983881187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112652.P7978899873983881187

namespace A112652

/-- `∑[6-a(n-2)]` -/
def P7978899873983881187.Spec : Prop :=
  ∀ n, P7978899873983881187.a n = A112652 n

end A112652

/-! ## A112652.P10960069572132764264

`3*n-2*∑[n]%2`
-/

namespace A112652.P10960069572132764264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - ((2 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) : ℕ) : ℤ)

end

end A112652.P10960069572132764264

namespace A112652

/-- `3*n-2*∑[n]%2` -/
def P10960069572132764264.Spec : Prop :=
  ∀ n, P10960069572132764264.a n = A112652 n

end A112652

/-! ## A112652.P6686385989027943585

`3*n-(n²+n)%4`
-/

namespace A112652.P6686385989027943585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - (((n ^ 2 + n) % 4 : ℕ) : ℤ)

end

end A112652.P6686385989027943585

namespace A112652

/-- `3*n-(n²+n)%4` -/
def P6686385989027943585.Spec : Prop :=
  ∀ n, P6686385989027943585.a n = A112652 n

end A112652

/-! ## A112652.P13266307604838820714

`3*n+(-1)^∑[n]-1`
-/

namespace A112652.P13266307604838820714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + ((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A112652.P13266307604838820714

namespace A112652

/-- `3*n+(-1)^∑[n]-1` -/
def P13266307604838820714.Spec : Prop :=
  ∀ n, P13266307604838820714.a n = A112652 n

end A112652

/-! ## A112652.P6984087659807504818

`ogf((x+2x^2+3x^3)/(1-2x+2x^2-2x^3+x^4))`
-/

namespace A112652.P6984087659807504818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 3] [1, -2, 2, -2, 1] n

end

end A112652.P6984087659807504818

namespace A112652

/-- `ogf((x+2x^2+3x^3)/(1-2x+2x^2-2x^3+x^4))` -/
def P6984087659807504818.Spec : Prop :=
  ∀ n, P6984087659807504818.a n = A112652 n

end A112652

/-! ## A112652.P15280177045393800874

`∪[or(2, n+3)+2*n+1, n²]`
-/

namespace A112652.P15280177045393800874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (n + 3) + (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A112652.P15280177045393800874

namespace A112652

/-- `∪[or(2, n+3)+2*n+1, n²]` -/
def P15280177045393800874.Spec : Prop :=
  ∀ n, (P15280177045393800874.a n : ℤ) = A112652 n

end A112652

/-! ## A112652.P5983132445851797685

`∑[A194716(n)%8]`
-/

namespace A112652.P5983132445851797685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194716 n) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112652.P5983132445851797685

namespace A112652

/-- `∑[A194716(n)%8]` -/
def P5983132445851797685.Spec : Prop :=
  ∀ n, P5983132445851797685.a n = A112652 n

end A112652

/-! ## A112652.P5460868437257940819

`∑[A194720(n)%8]`
-/

namespace A112652.P5460868437257940819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194720 n) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112652.P5460868437257940819

namespace A112652

/-- `∑[A194720(n)%8]` -/
def P5460868437257940819.Spec : Prop :=
  ∀ n, P5460868437257940819.a n = A112652 n

end A112652

/-! ## A112652.P429986384683345304

`∪[A108752(n+1)+1, n²]`
-/

namespace A112652.P429986384683345304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108752 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A112652.P429986384683345304

namespace A112652

/-- `∪[A108752(n+1)+1, n²]` -/
def P429986384683345304.Spec : Prop :=
  ∀ n, (P429986384683345304.a n : ℤ) = A112652 n

end A112652

/-! ## A112652.P5140121406816453822

`xor(A068073(n), A276283(n))`
-/

namespace A112652.P5140121406816453822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A068073 n) (A276283 n)

end

end A112652.P5140121406816453822

namespace A112652

/-- `xor(A068073(n), A276283(n))` -/
def P5140121406816453822.Spec : Prop :=
  ∀ n, P5140121406816453822.a n = A112652 n

end A112652

/-! ## A112652.P329762391551318950

`A017233(n)%A013574(n+1)`
-/

namespace A112652.P329762391551318950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017233 n) (A013574 (n + 1))

end

end A112652.P329762391551318950

namespace A112652

/-- `A017233(n)%A013574(n+1)` -/
def P329762391551318950.Spec : Prop :=
  ∀ n, P329762391551318950.a n = A112652 n

end A112652

/-! ## A112652.P14093725821840779055

`xor(2, A174398(n+2)-2)`
-/

namespace A112652.P14093725821840779055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A174398 (n + 2) - 2)

end

end A112652.P14093725821840779055

namespace A112652

/-- `xor(2, A174398(n+2)-2)` -/
def P14093725821840779055.Spec : Prop :=
  ∀ n, P14093725821840779055.a n = A112652 n

end A112652

/-! ## A112652.P4182475647156073305

`A042948(A047269(n+1))`
-/

namespace A112652.P4182475647156073305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A047269 (n + 1)).toNat

end

end A112652.P4182475647156073305

namespace A112652

/-- `A042948(A047269(n+1))` -/
def P4182475647156073305.Spec : Prop :=
  ∀ n, P4182475647156073305.a n = A112652 n

end A112652

/-!
# A112653: a(n) squared is congruent to a(n) (mod 13).

The programs for A112653, the canonical program `A112653.P14135923856175535075` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112653 has offset 0).

The definition of A112653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112653.P14135923856175535075

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=13`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112653

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P14135923856175535075.Spec : Prop :=
  ∀ n, P14135923856175535075.a n = A112653 n

theorem P14135923856175535075.correct : P14135923856175535075.Spec := by
  intro n
  simp only [A112653]

end A112653

/-! ## A112653.P12528847364953857026

`13+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A112653.P12528847364953857026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  13 + a (n - 2)

end

end A112653.P12528847364953857026

namespace A112653

/-- `13+a(n-2)` -/
def P12528847364953857026.Spec : Prop :=
  ∀ n, (P12528847364953857026.a n : ℤ) = A112653 n

end A112653

/-! ## A112653.P11545873449384726372

`∑[C(12, a(n-1))]` with `a(0)=0`
-/

namespace A112653.P11545873449384726372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 12 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112653.P11545873449384726372

namespace A112653

/-- `∑[C(12, a(n-1))]` -/
def P11545873449384726372.Spec : Prop :=
  ∀ n, (P11545873449384726372.a n : ℤ) = A112653 n

end A112653

/-! ## A112653.P14845236974071306262

`11*floor(n/2)+n`
-/

namespace A112653.P14845236974071306262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ⌊(n : ℚ) / 2⌋ + (n : ℤ)

end

end A112653.P14845236974071306262

namespace A112653

/-- `11*floor(n/2)+n` -/
def P14845236974071306262.Spec : Prop :=
  ∀ n, P14845236974071306262.a n = A112653 n

end A112653

/-! ## A112653.P11070202586196822002

`∑[13-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A112653.P11070202586196822002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  13 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112653.P11070202586196822002

namespace A112653

/-- `∑[13-a(n-1)]` -/
def P11070202586196822002.Spec : Prop :=
  ∀ n, P11070202586196822002.a n = A112653 n

end A112653

/-! ## A112653.P3681802870605951375

`4*(4-(3-a(n-2))/4)` with `a(0)=0, a(1)=1`
-/

namespace A112653.P3681802870605951375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (4 - (3 - a (n - 2)) / 4)

end

end A112653.P3681802870605951375

namespace A112653

/-- `4*(4-(3-a(n-2))/4)` -/
def P3681802870605951375.Spec : Prop :=
  ∀ n, P3681802870605951375.a n = (A112653 n : ℚ)

end A112653

/-! ## A112653.P921754394193669311

`∑[A051725(a(n-1))]` with `a(0)=0`
-/

namespace A112653.P921754394193669311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A051725 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112653.P921754394193669311

namespace A112653

/-- `∑[A051725(a(n-1))]` -/
def P921754394193669311.Spec : Prop :=
  ∀ n, P921754394193669311.a n = A112653 n

end A112653

/-! ## A112653.P11083660764741487934

`∑[A242591(a(n-1))]` with `a(0)=0`
-/

namespace A112653.P11083660764741487934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A242591 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112653.P11083660764741487934

namespace A112653

/-- `∑[A242591(a(n-1))]` -/
def P11083660764741487934.Spec : Prop :=
  ∀ n, P11083660764741487934.a n = A112653 n

end A112653

/-! ## A112653.P8274471551118866284

`∑[A281823(a(n-1))]` with `a(0)=0`
-/

namespace A112653.P8274471551118866284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A281823 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112653.P8274471551118866284

namespace A112653

/-- `∑[A281823(a(n-1))]` -/
def P8274471551118866284.Spec : Prop :=
  ∀ n, P8274471551118866284.a n = A112653 n

end A112653

/-! ## A112653.P5514917373895002726

`∪[A008595(n), A190991(n)]`
-/

namespace A112653.P5514917373895002726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A112653.P5514917373895002726

namespace A112653

/-- `∪[A008595(n), A190991(n)]` -/
def P5514917373895002726.Spec : Prop :=
  ∀ n, (P5514917373895002726.a n : ℤ) = A112653 n

end A112653

/-! ## A112653.P1146283326022282935

`A102438(n)%A155095(n+1)`
-/

namespace A112653.P1146283326022282935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102438 n) (A155095 (n + 1))

end

end A112653.P1146283326022282935

namespace A112653

/-- `A102438(n)%A155095(n+1)` -/
def P1146283326022282935.Spec : Prop :=
  ∀ n, P1146283326022282935.a n = A112653 n

end A112653

/-! ## A112653.P15798448968652473938

`A131877(n)%A175887(n+1)`
-/

namespace A112653.P15798448968652473938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131877 n) (A175887 (n + 1))

end

end A112653.P15798448968652473938

namespace A112653

/-- `A131877(n)%A175887(n+1)` -/
def P15798448968652473938.Spec : Prop :=
  ∀ n, P15798448968652473938.a n = A112653 n

end A112653

/-! ## A112653.P9386258724430549357

`A278126(n)%A258589(n+1)`
-/

namespace A112653.P9386258724430549357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278126 n) (A258589 (n + 1))

end

end A112653.P9386258724430549357

namespace A112653

/-- `A278126(n)%A258589(n+1)` -/
def P9386258724430549357.Spec : Prop :=
  ∀ n, P9386258724430549357.a n = A112653 n

end A112653

/-! ## A112653.P11690046898355243068

`∪[A175886(2*n+1), A008595(n)]`
-/

namespace A112653.P11690046898355243068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A112653.P11690046898355243068

namespace A112653

/-- `∪[A175886(2*n+1), A008595(n)]` -/
def P11690046898355243068.Spec : Prop :=
  ∀ n, (P11690046898355243068.a n : ℤ) = A112653 n

end A112653

/-! ## A112653.P11001998634505559310

`(A151979(n+1)+A047274(n+1))/2`
-/

namespace A112653.P11001998634505559310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151979 (n + 1) + A047274 (n + 1) : ℚ) / 2

end

end A112653.P11001998634505559310

namespace A112653

/-- `(A151979(n+1)+A047274(n+1))/2` -/
def P11001998634505559310.Spec : Prop :=
  ∀ n, P11001998634505559310.a n = (A112653 n : ℚ)

end A112653

/-! ## A112653.P7329627032892019477

`A112655(A032766(n))`
-/

namespace A112653.P7329627032892019477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112655 (A032766 n).toNat

end

end A112653.P7329627032892019477

namespace A112653

/-- `A112655(A032766(n))` -/
def P7329627032892019477.Spec : Prop :=
  ∀ n, P7329627032892019477.a n = A112653 n

end A112653

/-! ## A112653.P9796129410952750159

`A090169(A047225(n+1))`
-/

namespace A112653.P9796129410952750159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090169 (A047225 (n + 1)).toNat

end

end A112653.P9796129410952750159

namespace A112653

/-- `A090169(A047225(n+1))` -/
def P9796129410952750159.Spec : Prop :=
  ∀ n, P9796129410952750159.a n = A112653 n

end A112653

/-! ## A112653.P1915084248457456588

`∩[A090169(n), A112655(n)]`
-/

namespace A112653.P1915084248457456588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090169 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112655 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112653.P1915084248457456588

namespace A112653

/-- `∩[A090169(n), A112655(n)]` -/
def P1915084248457456588.Spec : Prop :=
  ∀ n, (P1915084248457456588.a n : ℤ) = A112653 n

end A112653

/-! ## A112653.P11760735983884175941

`lt[atan(n)*A167628(n), 2]`
-/

namespace A112653.P11760735983884175941
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ) * (A167628 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A112653.P11760735983884175941

namespace A112653

/-- `lt[atan(n)*A167628(n), 2]` -/
def P11760735983884175941.Spec : Prop :=
  ∀ n, (P11760735983884175941.a n : ℤ) = A112653 n

end A112653

/-! ## A112653.P16629098535420938190

`eq[n, n*A014022(n)²]`
-/

namespace A112653.P16629098535420938190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A014022 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112653.P16629098535420938190

namespace A112653

/-- `eq[n, n*A014022(n)²]` -/
def P16629098535420938190.Spec : Prop :=
  ∀ n, (P16629098535420938190.a n : ℤ) = A112653 n

end A112653

/-!
# A112654: Numbers k such that k^3 == k (mod 11).

The programs for A112654, the canonical program `A112654.P3817290245725075535` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112654 has offset 1).

The definition of A112654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112654.P3817290245725075535

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=10, a(3)=11`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112654

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P3817290245725075535.Spec : Prop :=
  ∀ n, P3817290245725075535.a n = A112654 (n + 1)

theorem P3817290245725075535.correct : P3817290245725075535.Spec := by
  intro n
  simp only [A112654, Nat.add_sub_cancel]

end A112654

/-! ## A112654.P13806328923693939585

`8*round(n/3)+n`
-/

namespace A112654.P13806328923693939585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.roundAway ((n : ℚ) / 3) + (n : ℤ)

end

end A112654.P13806328923693939585

namespace A112654

/-- `8*round(n/3)+n` -/
def P13806328923693939585.Spec : Prop :=
  ∀ n, P13806328923693939585.a n = A112654 (n + 1)

end A112654

/-! ## A112654.P5517150166997923549

`∑[or(1, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=9`
-/

namespace A112654.P5517150166997923549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 9] fun n f1 =>
  Nat.lor 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112654.P5517150166997923549

namespace A112654

/-- `∑[or(1, a(n-3))]` -/
def P5517150166997923549.Spec : Prop :=
  ∀ n, (P5517150166997923549.a n : ℤ) = A112654 (n + 1)

end A112654

/-! ## A112654.P17345267687684293041

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=9, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A112654.P17345267687684293041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 9, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112654.P17345267687684293041

namespace A112654

/-- `∑[floor(a(n-3))]` -/
def P17345267687684293041.Spec : Prop :=
  ∀ n, (P17345267687684293041.a n : ℤ) = A112654 (n + 1)

end A112654

/-! ## A112654.P8941125721397065219

`∑[comp[2*(n+1)]²%12]`
-/

namespace A112654.P8941125721397065219
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 2 % 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112654.P8941125721397065219

namespace A112654

/-- `∑[comp[2*(n+1)]²%12]` -/
def P8941125721397065219.Spec : Prop :=
  ∀ n, (P8941125721397065219.a n : ℤ) = A112654 (n + 1)

end A112654

/-! ## A112654.P12991958831185616849

`∑[gcd((n+1)², a(2%n))]` with `a(0)=0, a(1)=1`
-/

namespace A112654.P12991958831185616849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  Nat.gcd ((n + 1) ^ 2) (f1 (2 % n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112654.P12991958831185616849

namespace A112654

/-- `∑[gcd((n+1)², a(2%n))]` -/
def P12991958831185616849.Spec : Prop :=
  ∀ n, (P12991958831185616849.a n : ℤ) = A112654 (n + 1)

end A112654

/-! ## A112654.P11946308064109136918

`∑[a(n-3)^a(n-1)]` with `a(0)=0, a(1)=1, a(2)=9, a(3)=1`
-/

namespace A112654.P11946308064109136918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 9, 1] fun n f1 =>
  f1 (n - 3) ^ f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112654.P11946308064109136918

namespace A112654

/-- `∑[a(n-3)^a(n-1)]` -/
def P11946308064109136918.Spec : Prop :=
  ∀ n, (P11946308064109136918.a n : ℤ) = A112654 (n + 1)

end A112654

/-! ## A112654.P14986850882796730234

`∑[gcd(∑[n], A004273(n))²]`
-/

namespace A112654.P14986850882796730234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A004273 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112654.P14986850882796730234

namespace A112654

/-- `∑[gcd(∑[n], A004273(n))²]` -/
def P14986850882796730234.Spec : Prop :=
  ∀ n, (P14986850882796730234.a n : ℤ) = A112654 (n + 1)

end A112654

/-! ## A112654.P17820048420327859878

`∑[gcd(3*n, record[A006257(n)])²]`
-/

namespace A112654.P17820048420327859878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * n : ℤ) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112654.P17820048420327859878

namespace A112654

/-- `∑[gcd(3*n, record[A006257(n)])²]` -/
def P17820048420327859878.Spec : Prop :=
  ∀ n, (P17820048420327859878.a n : ℤ) = A112654 (n + 1)

end A112654

/-! ## A112654.P12707265795082704545

`∑[ceil(log2(A194716(n)%6+1))²]`
-/

namespace A112654.P12707265795082704545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Int.tmod (A194716 n) 6 + 1 : ℝ)⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112654.P12707265795082704545

namespace A112654

/-- `∑[ceil(log2(A194716(n)%6+1))²]` -/
def P12707265795082704545.Spec : Prop :=
  ∀ n, P12707265795082704545.a n = A112654 (n + 1)

end A112654

/-! ## A112654.P10130168206597851305

`A347836(n+1)%A017041(n)`
-/

namespace A112654.P10130168206597851305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347836 (n + 1)) (A017041 n)

end

end A112654.P10130168206597851305

namespace A112654

/-- `A347836(n+1)%A017041(n)` -/
def P10130168206597851305.Spec : Prop :=
  ∀ n, P10130168206597851305.a n = A112654 (n + 1)

end A112654

/-! ## A112654.P5664841148501362648

`∪[A112651(n+1), A017509(n)]`
-/

namespace A112654.P5664841148501362648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A112654.P5664841148501362648

namespace A112654

/-- `∪[A112651(n+1), A017509(n)]` -/
def P5664841148501362648.Spec : Prop :=
  ∀ n, (P5664841148501362648.a n : ℤ) = A112654 (n + 1)

end A112654

/-! ## A112654.P17761596888655964968

`∪[A175885(n+1), A008593(n)]`
-/

namespace A112654.P17761596888655964968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A112654.P17761596888655964968

namespace A112654

/-- `∪[A175885(n+1), A008593(n)]` -/
def P17761596888655964968.Spec : Prop :=
  ∀ n, (P17761596888655964968.a n : ℤ) = A112654 (n + 1)

end A112654

/-! ## A112654.P8002542923021697823

`∪[A112651(n+1), A175885(n+1)]`
-/

namespace A112654.P8002542923021697823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A112654.P8002542923021697823

namespace A112654

/-- `∪[A112651(n+1), A175885(n+1)]` -/
def P8002542923021697823.Spec : Prop :=
  ∀ n, (P8002542923021697823.a n : ℤ) = A112654 (n + 1)

end A112654

/-! ## A112654.P17340118298260846076

`∪[A112651(n+2)-1, A112651(n+2)]`
-/

namespace A112654.P17340118298260846076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112651 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A112654.P17340118298260846076

namespace A112654

/-- `∪[A112651(n+2)-1, A112651(n+2)]` -/
def P17340118298260846076.Spec : Prop :=
  ∀ n, (P17340118298260846076.a n : ℤ) = A112654 (n + 1)

end A112654

/-! ## A112654.P3095454583213729127

`A265188(A047217(n+2))`
-/

namespace A112654.P3095454583213729127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265188 (A047217 (n + 2)).toNat

end

end A112654.P3095454583213729127

namespace A112654

/-- `A265188(A047217(n+2))` -/
def P3095454583213729127.Spec : Prop :=
  ∀ n, P3095454583213729127.a n = A112654 (n + 1)

end A112654

/-! ## A112654.P16836588588364803240

`A265188(A008854(n+1)+1)`
-/

namespace A112654.P16836588588364803240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265188 (A008854 (n + 1) + 1).toNat

end

end A112654.P16836588588364803240

namespace A112654

/-- `A265188(A008854(n+1)+1)` -/
def P16836588588364803240.Spec : Prop :=
  ∀ n, P16836588588364803240.a n = A112654 (n + 1)

end A112654

/-! ## A112654.P362184535669116065

`A265187(A281899(n+1))`
-/

namespace A112654.P362184535669116065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A281899 (n + 1)).toNat

end

end A112654.P362184535669116065

namespace A112654

/-- `A265187(A281899(n+1))` -/
def P362184535669116065.Spec : Prop :=
  ∀ n, P362184535669116065.a n = A112654 (n + 1)

end A112654

/-! ## A112654.P9141417772461225530

`A265187(A054966(n+1)+1)`
-/

namespace A112654.P9141417772461225530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A054966 (n + 1) + 1).toNat

end

end A112654.P9141417772461225530

namespace A112654

/-- `A265187(A054966(n+1)+1)` -/
def P9141417772461225530.Spec : Prop :=
  ∀ n, P9141417772461225530.a n = A112654 (n + 1)

end A112654

/-! ## A112654.P3107827197280464659

`A265187(A305859(n+1)-n)`
-/

namespace A112654.P3107827197280464659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (A305859 (n + 1) - (n : ℤ)).toNat

end

end A112654.P3107827197280464659

namespace A112654

/-- `A265187(A305859(n+1)-n)` -/
def P3107827197280464659.Spec : Prop :=
  ∀ n, P3107827197280464659.a n = A112654 (n + 1)

end A112654

/-!
# A112655: a(n) cubed is congruent to a(n) (mod 13).

The programs for A112655, the canonical program `A112655.P8324034344638757100` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112655 has offset 0).

The definition of A112655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112655.P8324034344638757100

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=12, a(3)=13`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112655

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P8324034344638757100.Spec : Prop :=
  ∀ n, P8324034344638757100.a n = A112655 n

theorem P8324034344638757100.correct : P8324034344638757100.Spec := by
  intro n
  simp only [A112655]

end A112655

/-! ## A112655.P16362305667040556518

`10*round(n/3)+n`
-/

namespace A112655.P16362305667040556518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * SequenceMachineLib.roundAway ((n : ℚ) / 3) + (n : ℤ)

end

end A112655.P16362305667040556518

namespace A112655

/-- `10*round(n/3)+n` -/
def P16362305667040556518.Spec : Prop :=
  ∀ n, P16362305667040556518.a n = A112655 n

end A112655

/-! ## A112655.P13954366678208546274

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=11, a(3)=1`
-/

namespace A112655.P13954366678208546274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 11, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112655.P13954366678208546274

namespace A112655

/-- `∑[abs(a(n-3))]` -/
def P13954366678208546274.Spec : Prop :=
  ∀ n, (P13954366678208546274.a n : ℤ) = A112655 n

end A112655

/-! ## A112655.P7321911171780547260

`∑[or(1, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=11`
-/

namespace A112655.P7321911171780547260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 11] fun n f1 =>
  Nat.lor 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112655.P7321911171780547260

namespace A112655

/-- `∑[or(1, a(n-3))]` -/
def P7321911171780547260.Spec : Prop :=
  ∀ n, (P7321911171780547260.a n : ℤ) = A112655 n

end A112655

/-! ## A112655.P4322611363938893622

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=11, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A112655.P4322611363938893622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 11, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112655.P4322611363938893622

namespace A112655

/-- `∑[floor(a(n-3))]` -/
def P4322611363938893622.Spec : Prop :=
  ∀ n, (P4322611363938893622.a n : ℤ) = A112655 n

end A112655

/-! ## A112655.P9305846025726555694

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=11, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A112655.P9305846025726555694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 11, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112655.P9305846025726555694

namespace A112655

/-- `∑[ceil(a(n-3))]` -/
def P9305846025726555694.Spec : Prop :=
  ∀ n, (P9305846025726555694.a n : ℤ) = A112655 n

end A112655

/-! ## A112655.P7328196155069326840

`∑[round(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=11, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A112655.P7328196155069326840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 11, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112655.P7328196155069326840

namespace A112655

/-- `∑[round(a(n-3))]` -/
def P7328196155069326840.Spec : Prop :=
  ∀ n, (P7328196155069326840.a n : ℤ) = A112655 n

end A112655

/-! ## A112655.P1042577002224685533

`∑[A006530(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=11, a(3)=1`
-/

namespace A112655.P1042577002224685533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 11, 1] fun n f1 =>
  A006530 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112655.P1042577002224685533

namespace A112655

/-- `∑[A006530(a(n-3))]` -/
def P1042577002224685533.Spec : Prop :=
  ∀ n, P1042577002224685533.a n = A112655 n

end A112655

/-! ## A112655.P12152900864226271598

`∑[A014963(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=11, a(3)=1`
-/

namespace A112655.P12152900864226271598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 11, 1] fun n f1 =>
  A014963 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112655.P12152900864226271598

namespace A112655

/-- `∑[A014963(a(n-3))]` -/
def P12152900864226271598.Spec : Prop :=
  ∀ n, P12152900864226271598.a n = A112655 n

end A112655

/-! ## A112655.P14924463352053117997

`∑[A020639(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=11, a(3)=1`
-/

namespace A112655.P14924463352053117997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 11, 1] fun n f1 =>
  A020639 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112655.P14924463352053117997

namespace A112655

/-- `∑[A020639(a(n-3))]` -/
def P14924463352053117997.Spec : Prop :=
  ∀ n, P14924463352053117997.a n = A112655 n

end A112655

/-! ## A112655.P6311613815376627368

`∪[A175886(n+1), A008595(n)]`
-/

namespace A112655.P6311613815376627368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008595 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A112655.P6311613815376627368

namespace A112655

/-- `∪[A175886(n+1), A008595(n)]` -/
def P6311613815376627368.Spec : Prop :=
  ∀ n, (P6311613815376627368.a n : ℤ) = A112655 n

end A112655

/-! ## A112655.P4574167304296841346

`∪[A175886(n+1), A112653(n)]`
-/

namespace A112655.P4574167304296841346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A112655.P4574167304296841346

namespace A112655

/-- `∪[A175886(n+1), A112653(n)]` -/
def P4574167304296841346.Spec : Prop :=
  ∀ n, (P4574167304296841346.a n : ℤ) = A112655 n

end A112655

/-!
# A112656: Shortest side (or short leg) of primitive Pythagorean triangles sorted on middle side (or long leg) A020883.

The programs for A112656, there is no canonical definition to state claims against.
-/

/-! ## A112656.P7453415454339527827

`A343893(n+1)-A343892(n+1)`
-/

namespace A112656.P7453415454339527827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343893 (n + 1) - A343892 (n + 1)

end

end A112656.P7453415454339527827

/-! ## A112656.P17009194566051496234

`A343891(3*(n+1))-A343892(n+1)`
-/

namespace A112656.P17009194566051496234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343891 (3 * (n + 1)) - A343892 (n + 1)

end

end A112656.P17009194566051496234

/-! ## A112656.P5006596559170436812

`A343893(n+1)-A343891(3*n+2)`
-/

namespace A112656.P5006596559170436812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343893 (n + 1) - A343891 (3 * n + 2)

end

end A112656.P5006596559170436812

/-! ## A112656.P2758795919252838759

`A343891(3*(n+1))-A343891(3*n+2)`
-/

namespace A112656.P2758795919252838759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343891 (3 * (n + 1)) - A343891 (3 * n + 2)

end

end A112656.P2758795919252838759

/-! ## A112656.P1776385128154286122

`A020883(n+1)-A343894(n+1)%A343893(n+1)`
-/

namespace A112656.P1776385128154286122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1) - Int.tmod (A343894 (n + 1)) (A343893 (n + 1))

end

end A112656.P1776385128154286122

/-! ## A112656.P14534679511710545894

`A343894(n+1)-(A024354(n+1)+2*A343892(n+1))`
-/

namespace A112656.P14534679511710545894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343894 (n + 1) - (A024354 (n + 1) + 2 * A343892 (n + 1))

end

end A112656.P14534679511710545894

/-! ## A112656.P7683310899498758262

`A020883(n+1)+A113482(n+1)-A343892(n+1)-A343892(n+1)`
-/

namespace A112656.P7683310899498758262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020883 (n + 1) + (A113482 (n + 1) - A343892 (n + 1)) - A343892 (n + 1)

end

end A112656.P7683310899498758262

/-! ## A112656.P468107217311366775

`A343893(n+1)-(A020883(n+1)+A113482(n+1)-A343893(n+1))`
-/

namespace A112656.P468107217311366775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343893 (n + 1) - (A020883 (n + 1) + (A113482 (n + 1) - A343893 (n + 1)))

end

end A112656.P468107217311366775

/-! ## A112656.P10438753662581211858

`A343893(n+1)-(A024354(n+1)+A113482(n+1)-A343893(n+1))`
-/

namespace A112656.P10438753662581211858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343893 (n + 1) - (A024354 (n + 1) + (A113482 (n + 1) - A343893 (n + 1)))

end

end A112656.P10438753662581211858

/-! ## A112656.P10017351315175415422

`A343893(n+1)-(A343894(n+1)-(A343893(n+1)+A024354(n+1)))`
-/

namespace A112656.P10017351315175415422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343893 (n + 1) - (A343894 (n + 1) - (A343893 (n + 1) + A024354 (n + 1)))

end

end A112656.P10017351315175415422

/-!
# A112657: A Motzkin transform of Jacobsthal numbers.

The programs for A112657, there is no canonical definition to state claims against.
-/

/-! ## A112657.P5722713652552099728

`3*A059738(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A112657.P5722713652552099728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A059738 (n - 1) - a (n - 1)

end

end A112657.P5722713652552099728

/-! ## A112657.P15961581299975896386

`A130044(A007717(n))`
-/

namespace A112657.P15961581299975896386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130044 (A007717 n).toNat

end

end A112657.P15961581299975896386

/-!
# A112658: Dean's Word: Omega 2,1: the trajectory of 0 -> 01, 1 -> 21, 2 -> 03, 3 -> 23.

The programs for A112658, the canonical program `A112658.P12640801077354906466` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112658 has offset 1).

The definition of A112658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112658.P5244891822737203957

`ceil(n/2^val(n+1, 2))%4`
-/

namespace A112658.P5244891822737203957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌉ 4

end

end A112658.P5244891822737203957

namespace A112658

/-- `ceil(n/2^val(n+1, 2))%4` -/
def P5244891822737203957.Spec : Prop :=
  ∀ n, P5244891822737203957.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P18170764812583847289

`round(n/2^val(n+1, 2))%4`
-/

namespace A112658.P18170764812583847289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) 4

end

end A112658.P18170764812583847289

namespace A112658

/-- `round(n/2^val(n+1, 2))%4` -/
def P18170764812583847289.Spec : Prop :=
  ∀ n, P18170764812583847289.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P18180604460301617104

`and(3, ceil(n/2^val(n+1, 2)))`
-/

namespace A112658.P18180604460301617104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ⌈(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌉

end

end A112658.P18180604460301617104

namespace A112658

/-- `and(3, ceil(n/2^val(n+1, 2)))` -/
def P18180604460301617104.Spec : Prop :=
  ∀ n, P18180604460301617104.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P2102336337990663464

`and(3, round(n/2^val(n+1, 2)))`
-/

namespace A112658.P2102336337990663464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (SequenceMachineLib.roundAway ((n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))

end

end A112658.P2102336337990663464

namespace A112658

/-- `and(3, round(n/2^val(n+1, 2)))` -/
def P2102336337990663464.Spec : Prop :=
  ∀ n, P2102336337990663464.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P12640801077354906466

`Δ[or(1, n)]!-Δ[xor(n, 2*n)]%2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112658

/-- `Δ[or(1, n)]!-Δ[xor(n, 2*n)]%2` -/
def P12640801077354906466.Spec : Prop :=
  ∀ n, P12640801077354906466.a n = A112658 (n + 1)

theorem P12640801077354906466.correct : P12640801077354906466.Spec := by
  intro n
  simp only [A112658, Nat.add_sub_cancel]

end A112658

/-! ## A112658.P13468930400208010427

`(floor(n/2^val(n+1, 2))+n²)%4`
-/

namespace A112658.P13468930400208010427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + (n ^ 2 : ℤ)) 4

end

end A112658.P13468930400208010427

namespace A112658

/-- `(floor(n/2^val(n+1, 2))+n²)%4` -/
def P13468930400208010427.Spec : Prop :=
  ∀ n, P13468930400208010427.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P20695496534162888

`and(3, floor(n/2^val(n+1, 2))+n²)`
-/

namespace A112658.P20695496534162888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + (n ^ 2 : ℤ))

end

end A112658.P20695496534162888

namespace A112658

/-- `and(3, floor(n/2^val(n+1, 2))+n²)` -/
def P20695496534162888.Spec : Prop :=
  ∀ n, P20695496534162888.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P8186029393108395918

`and(n%2+2, (n+1)/and(n+1, -(n+1)))`
-/

namespace A112658.P8186029393108395918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n % 2 + 2 : ℕ) : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))

end

end A112658.P8186029393108395918

namespace A112658

/-- `and(n%2+2, (n+1)/and(n+1, -(n+1)))` -/
def P8186029393108395918.Spec : Prop :=
  ∀ n, P8186029393108395918.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P9723590894447950898

`A343180(n)-1`
-/

namespace A112658.P9723590894447950898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343180 n - 1

end

end A112658.P9723590894447950898

namespace A112658

/-- `A343180(n)-1` -/
def P9723590894447950898.Spec : Prop :=
  ∀ n, P9723590894447950898.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P9258591037996944253

`A306546(n+1)%4`
-/

namespace A112658.P9258591037996944253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306546 (n + 1)) 4

end

end A112658.P9258591037996944253

namespace A112658

/-- `A306546(n+1)%4` -/
def P9258591037996944253.Spec : Prop :=
  ∀ n, P9258591037996944253.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P17243918774182460206

`and(n²+2, A099545(n+1))`
-/

namespace A112658.P17243918774182460206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 + 2 : ℤ) (A099545 (n + 1))

end

end A112658.P17243918774182460206

namespace A112658

/-- `and(n²+2, A099545(n+1))` -/
def P17243918774182460206.Spec : Prop :=
  ∀ n, P17243918774182460206.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P11010965992543883487

`n%2+1-Δ[A005811(n)]`
-/

namespace A112658.P11010965992543883487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) - (f1 (n + 1) - f1 n)

end

end A112658.P11010965992543883487

namespace A112658

/-- `n%2+1-Δ[A005811(n)]` -/
def P11010965992543883487.Spec : Prop :=
  ∀ n, P11010965992543883487.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P12047338252085273229

`and(A000265(n+1)%4, or(2, n))`
-/

namespace A112658.P12047338252085273229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A000265 (n + 1)) 4) (Nat.lor 2 n : ℤ)

end

end A112658.P12047338252085273229

namespace A112658

/-- `and(A000265(n+1)%4, or(2, n))` -/
def P12047338252085273229.Spec : Prop :=
  ∀ n, P12047338252085273229.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P6384762456472704116

`and(3, ceil(n/2^A007814(n+1)))`
-/

namespace A112658.P6384762456472704116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ⌈(n : ℚ) / (2 : ℚ) ^ (A007814 (n + 1) : ℤ)⌉

end

end A112658.P6384762456472704116

namespace A112658

/-- `and(3, ceil(n/2^A007814(n+1)))` -/
def P6384762456472704116.Spec : Prop :=
  ∀ n, P6384762456472704116.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P4368954334129930062

`A000032(ceil(ratio[acot(xor(n, 2*n))]))-log2(gcd(2, n))`
-/

namespace A112658.P4368954334129930062
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Nat.xor n (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000032 ⌈f1 (n + 1) / f1 n⌉.toNat : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A112658.P4368954334129930062

namespace A112658

/-- `A000032(ceil(ratio[acot(xor(n, 2*n))]))-log2(gcd(2, n))` -/
def P4368954334129930062.Spec : Prop :=
  ∀ n, P4368954334129930062.a n = (A112658 (n + 1) : ℝ)

end A112658

/-! ## A112658.P16183641369088723659

`and((n+1)/2^val(n+1, 2), A020639(3*(n+2)))`
-/

namespace A112658.P16183641369088723659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A020639 (3 * (n + 2)))

end

end A112658.P16183641369088723659

namespace A112658

/-- `and((n+1)/2^val(n+1, 2), A020639(3*(n+2)))` -/
def P16183641369088723659.Spec : Prop :=
  ∀ n, P16183641369088723659.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P3544711725202375436

`A193682(A090077(n))`
-/

namespace A112658.P3544711725202375436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193682 (A090077 n).toNat

end

end A112658.P3544711725202375436

namespace A112658

/-- `A193682(A090077(n))` -/
def P3544711725202375436.Spec : Prop :=
  ∀ n, P3544711725202375436.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P3430130546560815082

`A010873(A306546(n+1))`
-/

namespace A112658.P3430130546560815082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A306546 (n + 1)).toNat

end

end A112658.P3430130546560815082

namespace A112658

/-- `A010873(A306546(n+1))` -/
def P3430130546560815082.Spec : Prop :=
  ∀ n, P3430130546560815082.a n = A112658 (n + 1)

end A112658

/-! ## A112658.P5453839313005676643

`A001538(n)%A343180(n)`
-/

namespace A112658.P5453839313005676643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001538 n) (A343180 n)

end

end A112658.P5453839313005676643

namespace A112658

/-- `A001538(n)%A343180(n)` -/
def P5453839313005676643.Spec : Prop :=
  ∀ n, P5453839313005676643.a n = A112658 (n + 1)

end A112658

/-!
# A112659: a(1) = 1. For n >= 2, a(n) = number of earlier terms of the sequence which are divisible by a different number of distinct primes than n.

The programs for A112659, there is no canonical definition to state claims against.
-/

/-! ## A112659.P2300865272622304112

`A309776(A011782(n)+∑{p}[n+1, gcd(n, #)])`
-/

namespace A112659.P2300865272622304112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309776 (A011782 n + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A112659.P2300865272622304112

/-! ## A112659.P4034034369683511735

`A309776(A011782(n)+∑{e}[∏{p}[n+1, #], #])`
-/

namespace A112659.P4034034369683511735
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309776 (A011782 n + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A112659.P4034034369683511735

/-! ## A112659.P13362481782832583752

`A309776(A011782(n)+A001221(n+1))`
-/

namespace A112659.P13362481782832583752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309776 (A011782 n + A001221 (n + 1)).toNat

end

end A112659.P13362481782832583752

/-! ## A112659.P8926251327843180204

`A309776(A011782(n)+∑{p}[n+1, A001222(#)])`
-/

namespace A112659.P8926251327843180204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309776 (A011782 n + ∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat

end

end A112659.P8926251327843180204

/-! ## A112659.P12427345208116169508

`A309776(A011782(n)+A001222(∏{p}[n+1, #]))`
-/

namespace A112659.P12427345208116169508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309776 (A011782 n + A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A112659.P12427345208116169508

/-!
# A112660: a(n) = (p-1)! mod p^2 where p = n-th prime.

The programs for A112660, the canonical program `A112660.P11454736749846847626` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112660 has offset 1).

The definition of A112660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5367 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112660.P11454736749846847626

`A330526(n+1)%A001248(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112660

/-- `A330526(n+1)%A001248(n+1)` -/
def P11454736749846847626.Spec : Prop :=
  ∀ n, P11454736749846847626.a n = A112660 (n + 1)

theorem P11454736749846847626.correct : P11454736749846847626.Spec := by
  intro n
  simp only [A112660, Nat.add_sub_cancel]

end A112660

/-! ## A112660.P16479704198758466596

`A242427(A000040(n+1))/p?[A007989(n)]`
-/

namespace A112660.P16479704198758466596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242427 (A000040 (n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A112660.P16479704198758466596

namespace A112660

/-- `A242427(A000040(n+1))/p?[A007989(n)]` -/
def P16479704198758466596.Spec : Prop :=
  ∀ n, P16479704198758466596.a n = (A112660 (n + 1) : ℚ)

end A112660

/-! ## A112660.P5810246468795132629

`A242427(A008578(n+2))/A008578(n+2)`
-/

namespace A112660.P5810246468795132629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242427 (A008578 (n + 2)).toNat : ℚ) / (A008578 (n + 2) : ℚ)

end

end A112660.P5810246468795132629

namespace A112660

/-- `A242427(A008578(n+2))/A008578(n+2)` -/
def P5810246468795132629.Spec : Prop :=
  ∀ n, P5810246468795132629.a n = (A112660 (n + 1) : ℚ)

end A112660

/-! ## A112660.P2852548547403757626

`A242427(A067747(2*n+1))/Δ[A007504(n)]`
-/

namespace A112660.P2852548547403757626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242427 (A067747 (2 * n + 1)).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A112660.P2852548547403757626

namespace A112660

/-- `A242427(A067747(2*n+1))/Δ[A007504(n)]` -/
def P2852548547403757626.Spec : Prop :=
  ∀ n, P2852548547403757626.a n = (A112660 (n + 1) : ℚ)

end A112660

/-! ## A112660.P171952244179082890

`A242427(p?[A000040(n+1)])/A000040(n+1)`
-/

namespace A112660.P171952244179082890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242427 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / (A000040 (n + 1) : ℚ)

end

end A112660.P171952244179082890

namespace A112660

/-- `A242427(p?[A000040(n+1)])/A000040(n+1)` -/
def P171952244179082890.Spec : Prop :=
  ∀ n, P171952244179082890.a n = (A112660 (n + 1) : ℚ)

end A112660

/-! ## A112660.P1719941540026163639

`A242427(A067747(2*n+1))/record[A014963(n+2)]`
-/

namespace A112660.P1719941540026163639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242427 (A067747 (2 * n + 1)).toNat : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A112660.P1719941540026163639

namespace A112660

/-- `A242427(A067747(2*n+1))/record[A014963(n+2)]` -/
def P1719941540026163639.Spec : Prop :=
  ∀ n, P1719941540026163639.a n = (A112660 (n + 1) : ℚ)

end A112660

/-!
# A112661: Sum of digits of sum of previous 3 terms.

The programs for A112661, the canonical program `A112661.P14649977540274646719` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112661 has offset 0).

The definition of A112661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112661.P14649977540274646719

`A007953(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112661

/-- `A007953(a(n-1)+a(n-2)+a(n-3))` -/
def P14649977540274646719.Spec : Prop :=
  ∀ n, P14649977540274646719.a n = A112661 n

theorem P14649977540274646719.correct : P14649977540274646719.Spec := by
  intro n
  simp only [A112661]

end A112661

/-!
# A112662: Cubes of the form semiprime(k) + k-th composite number.

The programs for A112662, there is no canonical definition to state claims against.
-/

/-! ## A112662.P2944182775315997022

`A117851(n+1)^3`
-/

namespace A112662.P2944182775315997022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117851 (n + 1) ^ 3

end

end A112662.P2944182775315997022

/-! ## A112662.P3727963948188879761

`A000578(A117851(n+1))`
-/

namespace A112662.P3727963948188879761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A117851 (n + 1)).toNat

end

end A112662.P3727963948188879761

/-! ## A112662.P13961792447547694262

`record[A117851(A117910(n))^3]`
-/

namespace A112662.P13961792447547694262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117851 (A117910 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112662.P13961792447547694262

/-! ## A112662.P6938809334282062068

`A000093(A117851(n+1)²)`
-/

namespace A112662.P6938809334282062068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A117851 (n + 1) ^ 2).toNat

end

end A112662.P6938809334282062068

/-! ## A112662.P3667627747582442666

`A028310(A117851(n+1)²)*A117851(n+1)`
-/

namespace A112662.P3667627747582442666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A117851 (n + 1) ^ 2).toNat * A117851 (n + 1)

end

end A112662.P3667627747582442666

/-!
# A112664: Lengths of k-cycles (k > 1) of permutation A114650 in order of their first appearance.

The programs for A112664, there is no canonical definition to state claims against.
-/

/-! ## A112664.P1762157643795222304

`record[A114728(ceil(log2(3*n+2)))]`
-/

namespace A112664.P1762157643795222304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114728 ⌈Real.logb 2 (3 * n + 2 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112664.P1762157643795222304

/-!
# A112666: Semiprimes n such that 3*n + 4 is a square.

The programs for A112666, there is no canonical definition to state claims against.
-/

/-! ## A112666.P1995258939865852783

`∩[A001358(n+1), A271675(n+1)]`
-/

namespace A112666.P1995258939865852783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112666.P1995258939865852783

/-! ## A112666.P6228630242996069578

`filter[A271675(n+2), A064911(#)]`
-/

namespace A112666.P6228630242996069578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271675 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A112666.P6228630242996069578

/-! ## A112666.P13744474038795259537

`(A112630(n+1)-4)/3`
-/

namespace A112666.P13744474038795259537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112630 (n + 1) - 4 : ℚ) / 3

end

end A112666.P13744474038795259537

/-! ## A112666.P16723150196394653220

`∩[A077136(n+1), A271675(n+1)]`
-/

namespace A112666.P16723150196394653220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112666.P16723150196394653220

/-! ## A112666.P6129014450674050757

`∩[A176540(n+1), A271675(n+1)]`
-/

namespace A112666.P6129014450674050757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271675 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112666.P6129014450674050757

/-!
# A112668: Triangle read by rows: row n gives an n-term geometric progression with first term 1 such that the sum of the n terms is a multiple of n.

The programs for A112668, there is no canonical definition to state claims against.
-/

/-! ## A112668.P18395062210404872514

`A074792(A002024(n+1))^A002262(n)`
-/

namespace A112668.P18395062210404872514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074792 (A002024 (n + 1)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A112668.P18395062210404872514

/-! ## A112668.P18446071786821775142

`A083503(A002024(n+1))^A002262(A028310(n))`
-/

namespace A112668.P18446071786821775142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083503 (A002024 (n + 1)).toNat : ℚ) ^ (A002262 (A028310 n).toNat : ℤ)

end

end A112668.P18446071786821775142

/-! ## A112668.P4945814804854420723

`A074792(A002024(n+1))^A001222(A059268(n))`
-/

namespace A112668.P4945814804854420723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074792 (A002024 (n + 1)).toNat : ℚ) ^ (A001222 (A059268 n).toNat : ℤ)

end

end A112668.P4945814804854420723

/-! ## A112668.P11199357853697395780

`A318510(A003057(n+2)^A002262(n))`
-/

namespace A112668.P11199357853697395780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318510 (SequenceMachineLib.roundAway ((A003057 (n + 2) : ℚ) ^ (A002262 n : ℤ))).toNat

end

end A112668.P11199357853697395780

/-! ## A112668.P13578502349696337253

`A074792(A076112(n+1))^A002262(n)`
-/

namespace A112668.P13578502349696337253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074792 (A076112 (n + 1)).toNat : ℚ) ^ (A002262 n : ℤ)

end

end A112668.P13578502349696337253

/-!
# A112670: Smallest positive integer that has a different number of digits in each of the bases 2 through n.

The programs for A112670, there is no canonical definition to state claims against.
-/

/-! ## A112670.P6833971455825325240

`A112672(n+2)^A112671(n+2)`
-/

namespace A112670.P6833971455825325240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112672 (n + 2) : ℚ) ^ (A112671 (n + 2) : ℤ)

end

end A112670.P6833971455825325240

/-! ## A112670.P6738650683453499895

`A003320(A112672(n+2)+A112671(n+2))`
-/

namespace A112670.P6738650683453499895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003320 (A112672 (n + 2) + A112671 (n + 2)).toNat

end

end A112670.P6738650683453499895

/-! ## A112670.P11317005910748252460

`A112672(n+2)^A194245(A185595(n+2))`
-/

namespace A112670.P11317005910748252460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112672 (n + 2) : ℚ) ^ (A194245 (A185595 (n + 2)).toNat : ℤ)

end

end A112670.P11317005910748252460

/-! ## A112670.P11746288949122552862

`(A000196(A076608(or(1, n²)))+2)^A112671(n+2)`
-/

namespace A112670.P11746288949122552862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000196 (A076608 (Nat.lor 1 (n ^ 2))).toNat + 2 : ℚ) ^ (A112671 (n + 2) : ℤ)

end

end A112670.P11746288949122552862

/-! ## A112670.P11508731554913141320

`(1-A076881(A189658(2*(n+1)))+n)^A112671(n+2)`
-/

namespace A112670.P11508731554913141320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A076881 (A189658 (2 * (n + 1))).toNat + (n : ℤ) : ℚ) ^ (A112671 (n + 2) : ℤ)

end

end A112670.P11508731554913141320

/-!
# A112671: Exponents arising in A112670.

The programs for A112671, there is no canonical definition to state claims against.
-/

/-! ## A112671.P6916131188756627312

`A003056(∑[A003056(A134449(n+1))])`
-/

namespace A112671.P6916131188756627312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A134449 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112671.P6916131188756627312

/-! ## A112671.P14710474005718687034

`A121902(A098568(n+4)+A050509(n))`
-/

namespace A112671.P14710474005718687034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A098568 (n + 4) + A050509 n).toNat

end

end A112671.P14710474005718687034

/-! ## A112671.P11697777645110267232

`A121902(A100862(n+4)+A050509(n))`
-/

namespace A112671.P11697777645110267232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A100862 (n + 4) + A050509 n).toNat

end

end A112671.P11697777645110267232

/-!
# A112672: Bases arising in A112670.

The programs for A112672, there is no canonical definition to state claims against.
-/

/-! ## A112672.P4013930698732076650

`A036042(A036036(n+1)+A036018(2*n+1))`
-/

namespace A112672.P4013930698732076650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A036036 (n + 1) + A036018 (2 * n + 1)).toNat

end

end A112672.P4013930698732076650

/-! ## A112672.P11537793696403709997

`A036042(A206487(n+2)+A036018(2*n+1))`
-/

namespace A112672.P11537793696403709997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036042 (A206487 (n + 2) + A036018 (2 * n + 1)).toNat

end

end A112672.P11537793696403709997

/-! ## A112672.P820899829031149359

`A048766(A007369(3*(n+1))+∑[4*C(n, 2)]+n)`
-/

namespace A112672.P820899829031149359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A007369 (3 * (n + 1)) + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)).toNat

end

end A112672.P820899829031149359

/-! ## A112672.P18144030388977136245

`A048766(A071621(n+1)+A005900(n))`
-/

namespace A112672.P18144030388977136245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A071621 (n + 1) + A005900 n).toNat

end

end A112672.P18144030388977136245

/-! ## A112672.P7482805272962115671

`A130233(A143590(n+1))`
-/

namespace A112672.P7482805272962115671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A143590 (n + 1)).toNat

end

end A112672.P7482805272962115671

/-!
# A112673: Smallest positive integer that has a different number of distinct digits in each of the bases 2 through n.

The programs for A112673, there is no canonical definition to state claims against.
-/

/-! ## A112673.P6132014806420586910

`or(A268600(n), A268620(A221412(n)))`
-/

namespace A112673.P6132014806420586910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A268600 n) (A268620 (A221412 n).toNat)

end

end A112673.P6132014806420586910

/-!
# A112674: Numbers of the form (2^(i*j)-1)/((2^i-1)*(2^j-1)) where gcd(i,j) = 1.

The programs for A112674, there is no canonical definition to state claims against.
-/

/-! ## A112674.P15111959746325174691

`record[A064085(n+1)%A024776(n+1)]`
-/

namespace A112674.P15111959746325174691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064085 (n + 1)) (A024776 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A112674.P15111959746325174691

/-! ## A112674.P6421875274827070023

`A192528(lt[lcm(n+4, 2-n), A134787(2*n+1)])`
-/

namespace A112674.P6421875274827070023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 4 : ℤ) (2 - (n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134787 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192528 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A112674.P6421875274827070023

/-! ## A112674.P5092124442241400164

`eq[2*n+1, A129594(3*n+1)]+1`
-/

namespace A112674.P5092124442241400164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A112674.P5092124442241400164

/-!
# A112675: Number of directed Hamiltonian paths on a triangular grid, n vertices on each side.

The programs for A112675, there is no canonical definition to state claims against.
-/

/-! ## A112675.P13159368511306224726

`∑[A108658(n)]*A308144(n+1)`
-/

namespace A112675.P13159368511306224726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108658 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A308144 (n + 1)

end

end A112675.P13159368511306224726

/-! ## A112675.P13718833752762414862

`A036452(n+1)*A308144(n+1)`
-/

namespace A112675.P13718833752762414862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A308144 (n + 1)

end

end A112675.P13718833752762414862

/-! ## A112675.P3146678697960198142

`2*A308144(n+1)-A014376(n)`
-/

namespace A112675.P3146678697960198142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308144 (n + 1) - A014376 n

end

end A112675.P3146678697960198142

/-! ## A112675.P17068526072072234525

`A000032(A014376(n))*A308144(n+1)`
-/

namespace A112675.P17068526072072234525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A014376 n).toNat * A308144 (n + 1)

end

end A112675.P17068526072072234525

/-! ## A112675.P13174995783224423318

`A014963(A000079(n))*A308144(n+1)`
-/

namespace A112675.P13174995783224423318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000079 n).toNat * A308144 (n + 1)

end

end A112675.P13174995783224423318

/-!
# A112676: Number of (undirected) Hamiltonian cycles on a triangular grid, n vertices on each side.

The programs for A112676, there is no canonical definition to state claims against.
-/

/-! ## A112676.P14417331621574727791

`ceil(A174589(n+1)/2)`
-/

namespace A112676.P14417331621574727791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174589 (n + 1) : ℚ) / 2⌉

end

end A112676.P14417331621574727791

/-! ## A112676.P15631366609985781490

`A174589(n+1)/A006530(A267584(n))`
-/

namespace A112676.P15631366609985781490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174589 (n + 1) : ℚ) / (A006530 (A267584 n).toNat : ℚ)

end

end A112676.P15631366609985781490

/-! ## A112676.P14330781200995584664

`A174589(n+1)/A020639(A338474(n))`
-/

namespace A112676.P14330781200995584664
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174589 (n + 1) : ℚ) / (A020639 (A338474 n).toNat : ℚ)

end

end A112676.P14330781200995584664

/-! ## A112676.P8072781715678953756

`A174589(n+1)/A267584(A267584(n)-1)`
-/

namespace A112676.P8072781715678953756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174589 (n + 1) : ℚ) / (A267584 (A267584 n - 1).toNat : ℚ)

end

end A112676.P8072781715678953756

/-! ## A112676.P830010084867868803

`A174589(n+1)/A020639(A053285(n))`
-/

namespace A112676.P830010084867868803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174589 (n + 1) : ℚ) / (A020639 (A053285 n).toNat : ℚ)

end

end A112676.P830010084867868803

/-!
# A112677: Sum of digits of the sum of the previous 4 terms.

The programs for A112677, the canonical program `A112677.P5150274563826689285` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112677 has offset 0).

The definition of A112677 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A112677.P5150274563826689285

`A007953(a(n-1)+a(n-2)+a(n-3)+a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112677

/-- `A007953(a(n-1)+a(n-2)+a(n-3)+a(n-4))` -/
def P5150274563826689285.Spec : Prop :=
  ∀ n, P5150274563826689285.a n = A112677 n

theorem P5150274563826689285.correct : P5150274563826689285.Spec := by
  intro n
  simp only [A112677]

end A112677

/-!
# A112679: Even numbers which form exclusively the shortest side of primitive Pythagorean triangles.

The programs for A112679, there is no canonical definition to state claims against.
-/

/-! ## A112679.P1315865910150128961

`∩[2*n, A112680(n+1)]`
-/

namespace A112679.P1315865910150128961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P1315865910150128961

/-! ## A112679.P17049681071465401522

`filter[A112680(n+1), A121262(#)]`
-/

namespace A112679.P17049681071465401522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A112679.P17049681071465401522

/-! ## A112679.P6727645947414902689

`filter[A112680(n+1), A354097(#)]`
-/

namespace A112679.P6727645947414902689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A112679.P6727645947414902689

/-! ## A112679.P14260715513871615326

`∩[A112680(n+1), A008574(n)]`
-/

namespace A112679.P14260715513871615326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P14260715513871615326

/-! ## A112679.P3543234619947230911

`∩[A112680(n+1), A008586(n)]`
-/

namespace A112679.P3543234619947230911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P3543234619947230911

/-! ## A112679.P12332915085754027934

`∩[A112680(n+1), A118286(n+1)]`
-/

namespace A112679.P12332915085754027934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P12332915085754027934

/-! ## A112679.P17219549875655780394

`∩[A112680(n+1), A139270(n+1)]`
-/

namespace A112679.P17219549875655780394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P17219549875655780394

/-! ## A112679.P9835825378378141727

`∩[A112680(n+1), A157932(n+1)]`
-/

namespace A112679.P9835825378378141727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P9835825378378141727

/-! ## A112679.P2584941758198314434

`∩[A112680(n+1), A162648(n+1)]`
-/

namespace A112679.P2584941758198314434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P2584941758198314434

/-! ## A112679.P6438847494727271823

`∩[A112680(n+1), A176100(n+1)]`
-/

namespace A112679.P6438847494727271823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P6438847494727271823

/-! ## A112679.P2278699865866847105

`∩[A112680(n+1), A192544(n+1)]`
-/

namespace A112679.P2278699865866847105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P2278699865866847105

/-! ## A112679.P16383698304502101470

`∩[A112680(n+1), A282671(n+1)]`
-/

namespace A112679.P16383698304502101470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P16383698304502101470

/-! ## A112679.P6010426074336471992

`∩[A112680(n+1), A354591(n+1)]`
-/

namespace A112679.P6010426074336471992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P6010426074336471992

/-! ## A112679.P9714996275774166740

`A112680(eq[2, gcd(2, A112680(n+1))]+1)`
-/

namespace A112679.P9714996275774166740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A112680 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A112679.P9714996275774166740

/-! ## A112679.P12391983394030296738

`∩[A112680(n+1), A020739(n)]`
-/

namespace A112679.P12391983394030296738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P12391983394030296738

/-! ## A112679.P6415131932267784958

`∩[A112680(n+1), A020744(n)]`
-/

namespace A112679.P6415131932267784958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020744 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P6415131932267784958

/-! ## A112679.P4961191992922704099

`∩[A112680(n+1), A004277(n)]`
-/

namespace A112679.P4961191992922704099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P4961191992922704099

/-! ## A112679.P6091118311902694380

`∩[A112680(n+1), A103517(n)]`
-/

namespace A112679.P6091118311902694380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P6091118311902694380

/-! ## A112679.P13451012424581959070

`∩[A112680(n+1), A163300(n+1)]`
-/

namespace A112679.P13451012424581959070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P13451012424581959070

/-! ## A112679.P17806495498618264967

`∩[A112680(n+1), A004275(n)]`
-/

namespace A112679.P17806495498618264967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A112679.P17806495498618264967

/-!
# A112680: Numbers which form exclusively the shortest side of primitive Pythagorean triangles.

The programs for A112680, there is no canonical definition to state claims against.
-/

/-! ## A112680.P12750732913187148950

`∪[A112398(n+1), A112679(n+1)]`
-/

namespace A112680.P12750732913187148950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A112680.P12750732913187148950

/-!
# A112681: Primes such that the sum of the predecessor and successor primes is divisible by 3.

The programs for A112681, the canonical program `A112681.P2005893278622678890` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112681 has offset 1).

The definition of A112681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112681.P1992547932170285606

`A000040(eq[0, A048448(n)%6])`
-/

namespace A112681.P1992547932170285606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048448 n) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112681.P1992547932170285606

namespace A112681

/-- `A000040(eq[0, A048448(n)%6])` -/
def P1992547932170285606.Spec : Prop :=
  ∀ n, P1992547932170285606.a n = A112681 (n + 1)

end A112681

/-! ## A112681.P2005893278622678890

`A000040(eq[1, A106671(n+2)]+3)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A112681

/-- `A000040(eq[1, A106671(n+2)]+3)` -/
def P2005893278622678890.Spec : Prop :=
  ∀ n, P2005893278622678890.a n = A112681 (n + 1)

theorem P2005893278622678890.correct : P2005893278622678890.Spec := by
  intro n
  simp only [A112681, Nat.add_sub_cancel]

end A112681

/-! ## A112681.P12610676523464717008

`A000040(eq[3, A112545(n+2)]+2)`
-/

namespace A112681.P12610676523464717008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A112681.P12610676523464717008

namespace A112681

/-- `A000040(eq[3, A112545(n+2)]+2)` -/
def P12610676523464717008.Spec : Prop :=
  ∀ n, P12610676523464717008.a n = A112681 (n + 1)

end A112681

/-! ## A112681.P9709681315652753727

`A000040(eq[0, A176099(n+1)%3])`
-/

namespace A112681.P9709681315652753727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176099 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A112681.P9709681315652753727

namespace A112681

/-- `A000040(eq[0, A176099(n+1)%3])` -/
def P9709681315652753727.Spec : Prop :=
  ∀ n, P9709681315652753727.a n = A112681 (n + 1)

end A112681

/-! ## A112681.P9469382636402604749

`p?[A008864(n+3)-A106671(n+2)]`
-/

namespace A112681.P9469382636402604749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 3) - A106671 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112681.P9469382636402604749

namespace A112681

/-- `p?[A008864(n+3)-A106671(n+2)]` -/
def P9469382636402604749.Spec : Prop :=
  ∀ n, P9469382636402604749.a n = A112681 (n + 1)

end A112681

/-! ## A112681.P15204792462302135042

`p?[2*A006254(n+2)-A106671(n+2)]`
-/

namespace A112681.P15204792462302135042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006254 (n + 2) - A106671 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A112681.P15204792462302135042

namespace A112681

/-- `p?[2*A006254(n+2)-A106671(n+2)]` -/
def P15204792462302135042.Spec : Prop :=
  ∀ n, P15204792462302135042.a n = A112681 (n + 1)

end A112681

/-! ## A112681.P4704100808283445492

`A000040(A173147(n+1))`
-/

namespace A112681.P4704100808283445492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A173147 (n + 1)).toNat

end

end A112681.P4704100808283445492

namespace A112681

/-- `A000040(A173147(n+1))` -/
def P4704100808283445492.Spec : Prop :=
  ∀ n, P4704100808283445492.a n = A112681 (n + 1)

end A112681

/-! ## A112681.P5463926011769505132

`A008578(A173147(n+1)+1)`
-/

namespace A112681.P5463926011769505132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A173147 (n + 1) + 1).toNat

end

end A112681.P5463926011769505132

namespace A112681

/-- `A008578(A173147(n+1)+1)` -/
def P5463926011769505132.Spec : Prop :=
  ∀ n, P5463926011769505132.a n = A112681 (n + 1)

end A112681

/-! ## A112681.P13526030039352198306

`A065091(A173147(n+1)-1)`
-/

namespace A112681.P13526030039352198306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A173147 (n + 1) - 1).toNat

end

end A112681.P13526030039352198306

namespace A112681

/-- `A065091(A173147(n+1)-1)` -/
def P13526030039352198306.Spec : Prop :=
  ∀ n, P13526030039352198306.a n = A112681 (n + 1)

end A112681

/-! ## A112681.P7416038877529248030

`A071621(A173147(n+1)-6)`
-/

namespace A112681.P7416038877529248030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (A173147 (n + 1) - 6).toNat

end

end A112681.P7416038877529248030

namespace A112681

/-- `A071621(A173147(n+1)-6)` -/
def P7416038877529248030.Spec : Prop :=
  ∀ n, P7416038877529248030.a n = A112681 (n + 1)

end A112681

/-!
# A112682: Triangle read by rows: T(n,k) counts the occurrences of integer k in the sequence generated by replacing integer i with the sorted sequence of divisors of (i+1), starting on 1 and iterating n times.

The programs for A112682, there is no canonical definition to state claims against.
-/

/-! ## A112682.P16811853124343017837

`A204849(n)-A321936(A039599(n))`
-/

namespace A112682.P16811853124343017837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204849 n - A321936 (A039599 n).toNat

end

end A112682.P16811853124343017837

/-! ## A112682.P18259254037372969130

`A033185(n+1)-A185284(A038207(n))`
-/

namespace A112682.P18259254037372969130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1) - A185284 (A038207 n).toNat

end

end A112682.P18259254037372969130

/-! ## A112682.P12971038767578301590

`A033185(n+1)-A302110(A004148(n))`
-/

namespace A112682.P12971038767578301590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1) - A302110 (A004148 n).toNat

end

end A112682.P12971038767578301590

/-! ## A112682.P5510398892984951385

`A339428(n+1)-A185284(A038207(n))`
-/

namespace A112682.P5510398892984951385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339428 (n + 1) - A185284 (A038207 n).toNat

end

end A112682.P5510398892984951385

/-! ## A112682.P1445036482335200949

`A033185(n+1)-A206499(A004613(n+1))`
-/

namespace A112682.P1445036482335200949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1) - A206499 (A004613 (n + 1)).toNat

end

end A112682.P1445036482335200949

/-!
# A112684: Similar to A112683, but using the recurrence x(i) = x(i-1)^2 + x(i-n) mod 3.

The programs for A112684, there is no canonical definition to state claims against.
-/

/-! ## A112684.P2099796100505252604

`A071437(∑[∑[A041048(n)]])`
-/

namespace A112684.P2099796100505252604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041048 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071437 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A112684.P2099796100505252604

/-!
# A112685: a(n)=5a(n-2)+2a(n-3).

The programs for A112685, the canonical program `A112685.P1285648142756729821` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112685 has offset 0).

The definition of A112685 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)+2*a(n-3)` (program `A112685.P1285648142756729821`, by `A112685.P1285648142756729821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A112685.P1285648142756729821

`5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112685

/-- `5*a(n-2)+2*a(n-3)` -/
def P1285648142756729821.Spec : Prop :=
  ∀ n, (P1285648142756729821.a n : ℤ) = A112685 n

theorem P1285648142756729821.correct : P1285648142756729821.Spec := by
  intro n
  simp only [A112685]

end A112685

/-! ## A112685.P7124574507290001461

`((-2)^(n+1)+9*A000129(n+1)-15*A000129(n))/7`
-/

namespace A112685.P7124574507290001461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-2) ^ (n + 1) + 9 * A000129 (n + 1) - 15 * A000129 n : ℚ) / 7

end

end A112685.P7124574507290001461

namespace A112685

/-- `((-2)^(n+1)+9*A000129(n+1)-15*A000129(n))/7` -/
def P7124574507290001461.Spec : Prop :=
  ∀ n, P7124574507290001461.a n = (A112685 n : ℚ)

end A112685

/-! ## A112685.P6991287877080561658

`ogf((1+x-4x^2)/(1-5x^2-2x^3))`
-/

namespace A112685.P6991287877080561658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -4] [1, 0, -5, -2] n

end

end A112685.P6991287877080561658

namespace A112685

/-- `ogf((1+x-4x^2)/(1-5x^2-2x^3))` -/
def P6991287877080561658.Spec : Prop :=
  ∀ n, P6991287877080561658.a n = A112685 n

end A112685

/-! ## A112685.P9304183708039702537

`A001333(n)-2*A135138(n)`
-/

namespace A112685.P9304183708039702537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n - 2 * A135138 n

end

end A112685.P9304183708039702537

namespace A112685

/-- `A001333(n)-2*A135138(n)` -/
def P9304183708039702537.Spec : Prop :=
  ∀ n, P9304183708039702537.a n = A112685 n

end A112685

/-! ## A112685.P2862988349458145113

`A135138(n+1)+abs(A176981(n))`
-/

namespace A112685.P2862988349458145113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135138 (n + 1) + |A176981 n|

end

end A112685.P2862988349458145113

namespace A112685

/-- `A135138(n+1)+abs(A176981(n))` -/
def P2862988349458145113.Spec : Prop :=
  ∀ n, P2862988349458145113.a n = A112685 n

end A112685

/-! ## A112685.P17048401669669939409

`Δ[A000129(n)]-2*A135138(n)`
-/

namespace A112685.P17048401669669939409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2 * A135138 n

end

end A112685.P17048401669669939409

namespace A112685

/-- `Δ[A000129(n)]-2*A135138(n)` -/
def P17048401669669939409.Spec : Prop :=
  ∀ n, P17048401669669939409.a n = A112685 n

end A112685

/-! ## A112685.P10640913874657963798

`A135139(n)-(A135138(n)+A000129(n))`
-/

namespace A112685.P10640913874657963798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135139 n - (A135138 n + A000129 n)

end

end A112685.P10640913874657963798

namespace A112685

/-- `A135139(n)-(A135138(n)+A000129(n))` -/
def P10640913874657963798.Spec : Prop :=
  ∀ n, P10640913874657963798.a n = A112685 n

end A112685

/-! ## A112685.P5498291235363788537

`A221172(n+1)+A000129(n)-A135139(n+1)`
-/

namespace A112685.P5498291235363788537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221172 (n + 1) + (A000129 n - A135139 (n + 1))

end

end A112685.P5498291235363788537

namespace A112685

/-- `A221172(n+1)+A000129(n)-A135139(n+1)` -/
def P5498291235363788537.Spec : Prop :=
  ∀ n, P5498291235363788537.a n = A112685 n

end A112685

/-! ## A112685.P1334456928166051045

`A000129(n+1)+A078343(n+1)-A135139(n+1)`
-/

namespace A112685.P1334456928166051045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A078343 (n + 1) - A135139 (n + 1))

end

end A112685.P1334456928166051045

namespace A112685

/-- `A000129(n+1)+A078343(n+1)-A135139(n+1)` -/
def P1334456928166051045.Spec : Prop :=
  ∀ n, P1334456928166051045.a n = A112685 n

end A112685

/-! ## A112685.P3827483137987098917

`Δ[A048654(n)-∑[A135139(n)]]`
-/

namespace A112685.P3827483137987098917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135139 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112685.P3827483137987098917

namespace A112685

/-- `Δ[A048654(n)-∑[A135139(n)]]` -/
def P3827483137987098917.Spec : Prop :=
  ∀ n, P3827483137987098917.a n = A112685 n

end A112685

/-! ## A112685.P14420937280539136259

`Δ[A048654(n)]-A135139(n+1)`
-/

namespace A112685.P14420937280539136259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A135139 (n + 1)

end

end A112685.P14420937280539136259

namespace A112685

/-- `Δ[A048654(n)]-A135139(n+1)` -/
def P14420937280539136259.Spec : Prop :=
  ∀ n, P14420937280539136259.a n = A112685 n

end A112685

/-! ## A112685.P17632461288635393696

`A048654(n+1)-(A135139(n+1)+A048654(n))`
-/

namespace A112685.P17632461288635393696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (n + 1) - (A135139 (n + 1) + A048654 n)

end

end A112685.P17632461288635393696

namespace A112685

/-- `A048654(n+1)-(A135139(n+1)+A048654(n))` -/
def P17632461288635393696.Spec : Prop :=
  ∀ n, P17632461288635393696.a n = A112685 n

end A112685

/-!
# A112687: Numbers n that cannot be decomposed into the sum of at most 4 square numbers when using the following algorithm: Repeat the following 2 steps 4 times: 1-find the largest square s smaller than n; 2-n=n-s Numbers that can be decomposed yield final values of n=0. The sequence presented is of those numbers where n is not 0 when this algorithm ends.

The programs for A112687, the canonical program `A112687.P16478719925873435881` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112687 has offset 1).

The definition of A112687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3605 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112687.P15750751012843996116

`eq[1, A225407(a(A053186(n)))]` with `a(0)=7`
-/

namespace A112687.P15750751012843996116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f2 =>
  A225407 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112687.P15750751012843996116

namespace A112687

/-- `eq[1, A225407(a(A053186(n)))]` -/
def P15750751012843996116.Spec : Prop :=
  ∀ n, (P15750751012843996116.a n : ℤ) = A112687 (n + 1)

end A112687

/-! ## A112687.P17657728876354347141

`eq[1, A000010(a(A053186(n)))]` with `a(0)=25`
-/

namespace A112687.P17657728876354347141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f2 =>
  A000010 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112687.P17657728876354347141

namespace A112687

/-- `eq[1, A000010(a(A053186(n)))]` -/
def P17657728876354347141.Spec : Prop :=
  ∀ n, (P17657728876354347141.a n : ℤ) = A112687 (n + 1)

end A112687

/-! ## A112687.P16478719925873435881

`eq[1, A062108(a(A053186(n)))]` with `a(0)=25`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112687

/-- `eq[1, A062108(a(A053186(n)))]` -/
def P16478719925873435881.Spec : Prop :=
  ∀ n, (P16478719925873435881.a n : ℤ) = A112687 (n + 1)

theorem P16478719925873435881.correct : P16478719925873435881.Spec := by
  intro n
  simp only [A112687, Nat.add_sub_cancel]

end A112687

/-! ## A112687.P1633575606701359829

`eq[1, A110654(a(A053186(n)))]` with `a(0)=25`
-/

namespace A112687.P1633575606701359829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [25] fun n f2 =>
  A110654 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112687.P1633575606701359829

namespace A112687

/-- `eq[1, A110654(a(A053186(n)))]` -/
def P1633575606701359829.Spec : Prop :=
  ∀ n, (P1633575606701359829.a n : ℤ) = A112687 (n + 1)

end A112687

/-! ## A112687.P17459030209785947355

`eq[2, A008619(a(A053186(n)))]` with `a(0)=29`
-/

namespace A112687.P17459030209785947355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [29] fun n f2 =>
  A008619 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A112687.P17459030209785947355

namespace A112687

/-- `eq[2, A008619(a(A053186(n)))]` -/
def P17459030209785947355.Spec : Prop :=
  ∀ n, (P17459030209785947355.a n : ℤ) = A112687 (n + 1)

end A112687

/-!
# A112689: A modified Chebyshev transform of the Jacobsthal numbers.

The programs for A112689, the canonical program `A112689.P8115970611655230584` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112689 has offset 0).

The definition of A112689 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112689.P8115970611655230584

`floor((n+4)/6+(1-(-1)^n)*(-1)^floor(n/2)/4)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112689

/-- `floor((n+4)/6+(1-(-1)^n)*(-1)^floor(n/2)/4)` -/
def P8115970611655230584.Spec : Prop :=
  ∀ n, P8115970611655230584.a n = A112689 n

theorem P8115970611655230584.correct : P8115970611655230584.Spec := by
  intro n
  simp only [A112689]

end A112689

/-! ## A112689.P16013407916430530187

`∑[n²%3-char[or(2, n)]]`
-/

namespace A112689.P16013407916430530187
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 3 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112689.P16013407916430530187

namespace A112689

/-- `∑[n²%3-char[or(2, n)]]` -/
def P16013407916430530187.Spec : Prop :=
  ∀ n, P16013407916430530187.a n = A112689 n

end A112689

/-! ## A112689.P9822284686610313283

`ceil(n/3-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A112689.P9822284686610313283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌈(n : ℚ) / 3 - (a (n - 2) : ℚ)⌉

end

end A112689.P9822284686610313283

namespace A112689

/-- `ceil(n/3-a(n-2))` -/
def P9822284686610313283.Spec : Prop :=
  ∀ n, P9822284686610313283.a n = A112689 n

end A112689

/-! ## A112689.P11948674504909112028

`∑[1-or(1, ∑[n+1])%3]`
-/

namespace A112689.P11948674504909112028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112689.P11948674504909112028

namespace A112689

/-- `∑[1-or(1, ∑[n+1])%3]` -/
def P11948674504909112028.Spec : Prop :=
  ∀ n, P11948674504909112028.a n = A112689 n

end A112689

/-! ## A112689.P5732436100238695225

`∑[∑[ogf(x/(1+x+2x^2+x^3+x^4))]]`
-/

namespace A112689.P5732436100238695225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, 1, 2, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112689.P5732436100238695225

namespace A112689

/-- `∑[∑[ogf(x/(1+x+2x^2+x^3+x^4))]]` -/
def P5732436100238695225.Spec : Prop :=
  ∀ n, P5732436100238695225.a n = A112689 n

end A112689

/-! ## A112689.P4672640111529359042

`a(n-3)+∑[n]%2` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A112689.P4672640111529359042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A112689.P4672640111529359042

namespace A112689

/-- `a(n-3)+∑[n]%2` -/
def P4672640111529359042.Spec : Prop :=
  ∀ n, (P4672640111529359042.a n : ℤ) = A112689 n

end A112689

/-! ## A112689.P11288013907101134911

`a(n-3)+and(1, ∑[n])` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A112689.P11288013907101134911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 3) + Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A112689.P11288013907101134911

namespace A112689

/-- `a(n-3)+and(1, ∑[n])` -/
def P11288013907101134911.Spec : Prop :=
  ∀ n, (P11288013907101134911.a n : ℤ) = A112689 n

end A112689

/-! ## A112689.P7471510834694291022

`a(n-3)+a(n%4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0`
-/

namespace A112689.P7471510834694291022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0] fun n a =>
  a (n - 3) + a (n % 4)

end

end A112689.P7471510834694291022

namespace A112689

/-- `a(n-3)+a(n%4)` -/
def P7471510834694291022.Spec : Prop :=
  ∀ n, (P7471510834694291022.a n : ℤ) = A112689 n

end A112689

/-! ## A112689.P4173230330071162604

`round((n+1)/3-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A112689.P4173230330071162604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / 3 - (a (n - 2) : ℚ))

end

end A112689.P4173230330071162604

namespace A112689

/-- `round((n+1)/3-a(n-2))` -/
def P4173230330071162604.Spec : Prop :=
  ∀ n, P4173230330071162604.a n = A112689 n

end A112689

/-! ## A112689.P6487581625688836272

`a(and(2, n+1))+a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A112689.P6487581625688836272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (Nat.land 2 (n + 1)) + a (n - 3)

end

end A112689.P6487581625688836272

namespace A112689

/-- `a(and(2, n+1))+a(n-3)` -/
def P6487581625688836272.Spec : Prop :=
  ∀ n, (P6487581625688836272.a n : ℤ) = A112689 n

end A112689

/-! ## A112689.P2729507668690341695

`∑[1-(a(n-1)+a(n-2))]-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A112689.P2729507668690341695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  1 - (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A112689.P2729507668690341695

namespace A112689

/-- `∑[1-(a(n-1)+a(n-2))]-a(n-2)` -/
def P2729507668690341695.Spec : Prop :=
  ∀ n, P2729507668690341695.a n = A112689 n

end A112689

/-! ## A112689.P4620609775115748762

`∑[1-a(n-1)-a(n-2)]-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A112689.P4620609775115748762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  1 - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 2)

end

end A112689.P4620609775115748762

namespace A112689

/-- `∑[1-a(n-1)-a(n-2)]-a(n-2)` -/
def P4620609775115748762.Spec : Prop :=
  ∀ n, P4620609775115748762.a n = A112689 n

end A112689

/-! ## A112689.P304122492974948049

`∑[A112690(n)]`
-/

namespace A112689.P304122492974948049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112689.P304122492974948049

namespace A112689

/-- `∑[A112690(n)]` -/
def P304122492974948049.Spec : Prop :=
  ∀ n, P304122492974948049.a n = A112689 n

end A112689

/-! ## A112689.P8212326692256532264

`A002264(A060806(n+1))`
-/

namespace A112689.P8212326692256532264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A060806 (n + 1)).toNat

end

end A112689.P8212326692256532264

namespace A112689

/-- `A002264(A060806(n+1))` -/
def P8212326692256532264.Spec : Prop :=
  ∀ n, P8212326692256532264.a n = A112689 n

end A112689

/-! ## A112689.P17490529533321743123

`A004525(n)-A002264(n)`
-/

namespace A112689.P17490529533321743123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n - A002264 n

end

end A112689.P17490529533321743123

namespace A112689

/-- `A004525(n)-A002264(n)` -/
def P17490529533321743123.Spec : Prop :=
  ∀ n, P17490529533321743123.a n = A112689 n

end A112689

/-! ## A112689.P4972613074101116117

`A008621(n)-A008679(n)`
-/

namespace A112689.P4972613074101116117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n - A008679 n

end

end A112689.P4972613074101116117

namespace A112689

/-- `A008621(n)-A008679(n)` -/
def P4972613074101116117.Spec : Prop :=
  ∀ n, P4972613074101116117.a n = A112689 n

end A112689

/-! ## A112689.P18021519234329933183

`A002265(n)+1-A008679(n)`
-/

namespace A112689.P18021519234329933183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + (1 - A008679 n)

end

end A112689.P18021519234329933183

namespace A112689

/-- `A002265(n)+1-A008679(n)` -/
def P18021519234329933183.Spec : Prop :=
  ∀ n, P18021519234329933183.a n = A112689 n

end A112689

/-! ## A112689.P12148603724084609182

`A004525(n)+1-A008620(n)`
-/

namespace A112689.P12148603724084609182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (1 - A008620 n)

end

end A112689.P12148603724084609182

namespace A112689

/-- `A004525(n)+1-A008620(n)` -/
def P12148603724084609182.Spec : Prop :=
  ∀ n, P12148603724084609182.a n = A112689 n

end A112689

/-! ## A112689.P11576299702525401046

`A047229(n+1)-A004773(n)`
-/

namespace A112689.P11576299702525401046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1) - A004773 n

end

end A112689.P11576299702525401046

namespace A112689

/-- `A047229(n+1)-A004773(n)` -/
def P11576299702525401046.Spec : Prop :=
  ∀ n, P11576299702525401046.a n = A112689 n

end A112689

/-! ## A112689.P11132713004316909494

`A011960(n+1)-A011765(n+1)`
-/

namespace A112689.P11132713004316909494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (n + 1) - A011765 (n + 1)

end

end A112689.P11132713004316909494

namespace A112689

/-- `A011960(n+1)-A011765(n+1)` -/
def P11132713004316909494.Spec : Prop :=
  ∀ n, P11132713004316909494.a n = A112689 n

end A112689

/-!
# A112690: Expansion of 1/(1 + x^2 - x^3 - x^5).

The programs for A112690, the canonical program `A112690.P9750610771820535361` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112690 has offset 0).

The definition of A112690 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112690.P9750610771820535361

`2*floor(n/4)+floor((n+2)/3)-floor(n/3)-floor(n/2)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112690

/-- `2*floor(n/4)+floor((n+2)/3)-floor(n/3)-floor(n/2)` -/
def P9750610771820535361.Spec : Prop :=
  ∀ n, P9750610771820535361.a n = A112690 n

theorem P9750610771820535361.correct : P9750610771820535361.Spec := by
  intro n
  simp only [A112690]

end A112690

/-!
# A112691: a(n) = J(n+1) mod J(n), J(n)=A001045(n).

The programs for A112691, the canonical program `A112691.P14171447995897287328` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112691 has offset 0).

The definition of A112691 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A112691.P14171447995897287328

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=1, a(5)=10, a(6)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A112691

/-- `5*a(n-2)-4*a(n-4)` -/
def P14171447995897287328.Spec : Prop :=
  ∀ n, P14171447995897287328.a n = A112691 n

theorem P14171447995897287328.correct : P14171447995897287328.Spec := by
  intro n
  simp only [A112691]

end A112691

/-! ## A112691.P12420951657137074249

`∑[4*a(n-2)]-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A112691.P12420951657137074249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2] fun n f1 =>
  4 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A112691.P12420951657137074249

namespace A112691

/-- `∑[4*a(n-2)]-a(n-1)` -/
def P12420951657137074249.Spec : Prop :=
  ∀ n, P12420951657137074249.a n = A112691 n

end A112691

/-! ## A112691.P13916305541231668303

`and(A305750(n), A327767(n+1))`
-/

namespace A112691.P13916305541231668303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305750 n) (A327767 (n + 1))

end

end A112691.P13916305541231668303

namespace A112691

/-- `and(A305750(n), A327767(n+1))` -/
def P13916305541231668303.Spec : Prop :=
  ∀ n, P13916305541231668303.a n = A112691 n

end A112691

/-! ## A112691.P17051658659804242752

`gcd(val(A023105(n), 4), A167030(n))`
-/

namespace A112691.P17051658659804242752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.valuation (A023105 n).toNat 4 : ℤ) (A167030 n)

end

end A112691.P17051658659804242752

namespace A112691

/-- `gcd(val(A023105(n), 4), A167030(n))` -/
def P17051658659804242752.Spec : Prop :=
  ∀ n, (P17051658659804242752.a n : ℤ) = A112691 n

end A112691

/-! ## A112691.P17214976178113712404

`A078008(n)%xor(3, A128209(n))`
-/

namespace A112691.P17214976178113712404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078008 n) (Int.xor 3 (A128209 n))

end

end A112691.P17214976178113712404

namespace A112691

/-- `A078008(n)%xor(3, A128209(n))` -/
def P17214976178113712404.Spec : Prop :=
  ∀ n, P17214976178113712404.a n = A112691 n

end A112691

/-! ## A112691.P17659695201783304108

`(2^n)%(abs(1-A001045(n))+1)`
-/

namespace A112691.P17659695201783304108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (|1 - A001045 n| + 1)

end

end A112691.P17659695201783304108

namespace A112691

/-- `(2^n)%(abs(1-A001045(n))+1)` -/
def P17659695201783304108.Spec : Prop :=
  ∀ n, P17659695201783304108.a n = A112691 n

end A112691

/-! ## A112691.P18355543674041652933

`and(A152046(n), A286772(n))`
-/

namespace A112691.P18355543674041652933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152046 n) (A286772 n)

end

end A112691.P18355543674041652933

namespace A112691

/-- `and(A152046(n), A286772(n))` -/
def P18355543674041652933.Spec : Prop :=
  ∀ n, P18355543674041652933.a n = A112691 n

end A112691

/-! ## A112691.P13803242095104622159

`and(A152046(n), A287192(n))`
-/

namespace A112691.P13803242095104622159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152046 n) (A287192 n)

end

end A112691.P13803242095104622159

namespace A112691

/-- `and(A152046(n), A287192(n))` -/
def P13803242095104622159.Spec : Prop :=
  ∀ n, P13803242095104622159.a n = A112691 n

end A112691

/-! ## A112691.P14700040694431870732

`and(A167167(n), A286772(n))`
-/

namespace A112691.P14700040694431870732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167167 n) (A286772 n)

end

end A112691.P14700040694431870732

namespace A112691

/-- `and(A167167(n), A286772(n))` -/
def P14700040694431870732.Spec : Prop :=
  ∀ n, P14700040694431870732.a n = A112691 n

end A112691

/-! ## A112691.P14353604815285006565

`and(A167167(n), A287192(n))`
-/

namespace A112691.P14353604815285006565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167167 n) (A287192 n)

end

end A112691.P14353604815285006565

namespace A112691

/-- `and(A167167(n), A287192(n))` -/
def P14353604815285006565.Spec : Prop :=
  ∀ n, P14353604815285006565.a n = A112691 n

end A112691

/-! ## A112691.P3380560468404248473

`and(A280412(n), A305750(n))`
-/

namespace A112691.P3380560468404248473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280412 n) (A305750 n)

end

end A112691.P3380560468404248473

namespace A112691

/-- `and(A280412(n), A305750(n))` -/
def P3380560468404248473.Spec : Prop :=
  ∀ n, P3380560468404248473.a n = A112691 n

end A112691

/-! ## A112691.P397206204264510257

`and(A286772(n), A305750(n))`
-/

namespace A112691.P397206204264510257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A286772 n) (A305750 n)

end

end A112691.P397206204264510257

namespace A112691

/-- `and(A286772(n), A305750(n))` -/
def P397206204264510257.Spec : Prop :=
  ∀ n, P397206204264510257.a n = A112691 n

end A112691

/-! ## A112691.P10119357493953817498

`A000079(n)%(A001045(n)+A000038(n))`
-/

namespace A112691.P10119357493953817498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A001045 n + A000038 n)

end

end A112691.P10119357493953817498

namespace A112691

/-- `A000079(n)%(A001045(n)+A000038(n))` -/
def P10119357493953817498.Spec : Prop :=
  ∀ n, P10119357493953817498.a n = A112691 n

end A112691

/-! ## A112691.P14572373453831598155

`and(A282799(n), A286772(n))`
-/

namespace A112691.P14572373453831598155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282799 n) (A286772 n)

end

end A112691.P14572373453831598155

namespace A112691

/-- `and(A282799(n), A286772(n))` -/
def P14572373453831598155.Spec : Prop :=
  ∀ n, P14572373453831598155.a n = A112691 n

end A112691

/-! ## A112691.P6013048342616153578

`A052992(n)%xor(1, A167030(n))`
-/

namespace A112691.P6013048342616153578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052992 n) (Int.xor 1 (A167030 n))

end

end A112691.P6013048342616153578

namespace A112691

/-- `A052992(n)%xor(1, A167030(n))` -/
def P6013048342616153578.Spec : Prop :=
  ∀ n, P6013048342616153578.a n = A112691 n

end A112691

/-! ## A112691.P14764393759226386699

`and(A133649(n), A286772(n))`
-/

namespace A112691.P14764393759226386699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133649 n) (A286772 n)

end

end A112691.P14764393759226386699

namespace A112691

/-- `and(A133649(n), A286772(n))` -/
def P14764393759226386699.Spec : Prop :=
  ∀ n, P14764393759226386699.a n = A112691 n

end A112691

/-! ## A112691.P955267392641426113

`and(A133649(n), A287192(n))`
-/

namespace A112691.P955267392641426113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133649 n) (A287192 n)

end

end A112691.P955267392641426113

namespace A112691

/-- `and(A133649(n), A287192(n))` -/
def P955267392641426113.Spec : Prop :=
  ∀ n, P955267392641426113.a n = A112691 n

end A112691

/-! ## A112691.P7098160891263381387

`A112031(2*n+3)%A112031(A004273(n))`
-/

namespace A112691.P7098160891263381387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112031 (2 * n + 3)) (A112031 (A004273 n).toNat)

end

end A112691.P7098160891263381387

namespace A112691

/-- `A112031(2*n+3)%A112031(A004273(n))` -/
def P7098160891263381387.Spec : Prop :=
  ∀ n, P7098160891263381387.a n = A112691 n

end A112691

/-! ## A112691.P2893923106237541272

`and(A127981(n+1), A286772(n))`
-/

namespace A112691.P2893923106237541272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127981 (n + 1)) (A286772 n)

end

end A112691.P2893923106237541272

namespace A112691

/-- `and(A127981(n+1), A286772(n))` -/
def P2893923106237541272.Spec : Prop :=
  ∀ n, P2893923106237541272.a n = A112691 n

end A112691

/-! ## A112691.P3427805147641475337

`and(A127981(n+1), A287192(n))`
-/

namespace A112691.P3427805147641475337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A127981 (n + 1)) (A287192 n)

end

end A112691.P3427805147641475337

namespace A112691

/-- `and(A127981(n+1), A287192(n))` -/
def P3427805147641475337.Spec : Prop :=
  ∀ n, P3427805147641475337.a n = A112691 n

end A112691

/-!
# A112693: Row sums of array A112692.

The programs for A112693, there is no canonical definition to state claims against.
-/

/-! ## A112693.P12917410585711829194

`∏[-((n+1)*a(n-1))]/2` with `a(0)=2`
-/

namespace A112693.P12917410585711829194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -((n + 1 : ℤ) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A112693.P12917410585711829194

/-! ## A112693.P14390892336462837480

`A156926(n+1)/2`
-/

namespace A112693.P14390892336462837480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156926 (n + 1) : ℚ) / 2

end

end A112693.P14390892336462837480

/-! ## A112693.P7617892555515398101

`Δ[∑[A156926(n)]/2]`
-/

namespace A112693.P7617892555515398101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156926 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A112693.P7617892555515398101

/-! ## A112693.P3994412320773372458

`∏[∏[A260196(n)-n]]`
-/

namespace A112693.P3994412320773372458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A112693.P3994412320773372458

/-!
# A112695: Number of steps needed to reach 4,2,1 in Collatz' 3*n+1 conjecture.

The programs for A112695, there is no canonical definition to state claims against.
-/

/-! ## A112695.P16635474505854865326

`or(C(2, n), A139399(n+1))`
-/

namespace A112695.P16635474505854865326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A139399 (n + 1))

end

end A112695.P16635474505854865326

/-! ## A112695.P13519922440228366533

`A153330(n)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A112695.P13519922440228366533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  A153330 n + a (n - 1)

end

end A112695.P13519922440228366533

/-! ## A112695.P4602679442440086224

`A008908(n+1)-3%Δ[n²]`
-/

namespace A112695.P4602679442440086224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - Int.tmod 3 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A112695.P4602679442440086224

/-! ## A112695.P4839454993630933554

`abs(A006577(C(2, C(3, n²))+n)-2)`
-/

namespace A112695.P4839454993630933554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006577 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n) - 2|

end

end A112695.P4839454993630933554

/-! ## A112695.P1725218646689476375

`A006577(n+1)-a((n+1)%n)` with `a(0)=1, a(1)=2`
-/

namespace A112695.P1725218646689476375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006577 (n + 1) - a ((n + 1) % n)

end

end A112695.P1725218646689476375

/-! ## A112695.P359551032426967031

`A139399(n+1)+A130706(n)`
-/

namespace A112695.P359551032426967031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + A130706 n

end

end A112695.P359551032426967031

/-! ## A112695.P15216015191135449255

`A006577(abs((n+2)*(1-gcd(n+3, n-1)/2))+lcm(4, n+1)/4)`
-/

namespace A112695.P15216015191135449255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.roundAway (|(n + 2 : ℚ) * (1 - (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) : ℚ) / 2)| + (Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

end

end A112695.P15216015191135449255

/-! ## A112695.P851975508079604310

`A006577(A075884(n+1))`
-/

namespace A112695.P851975508079604310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A075884 (n + 1)).toNat

end

end A112695.P851975508079604310

/-! ## A112695.P17761012862777460479

`A006577(A076536(2*(n+1)))`
-/

namespace A112695.P17761012862777460479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A076536 (2 * (n + 1))).toNat

end

end A112695.P17761012862777460479

/-! ## A112695.P9246588105428564453

`A006577(A006370(A006370(n+1)))`
-/

namespace A112695.P9246588105428564453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A006370 (A006370 (n + 1)).toNat).toNat

end

end A112695.P9246588105428564453

/-! ## A112695.P6954612244344431221

`A344276(3*A075884(n+1))`
-/

namespace A112695.P6954612244344431221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344276 (3 * A075884 (n + 1)).toNat

end

end A112695.P6954612244344431221

/-! ## A112695.P11696573670386995574

`A139399(4*A075884(n+1))`
-/

namespace A112695.P11696573670386995574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (4 * A075884 (n + 1)).toNat

end

end A112695.P11696573670386995574

/-! ## A112695.P9013165158003887297

`A139399(n+1)+A130713(n²)`
-/

namespace A112695.P9013165158003887297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (n + 1) + A130713 (n ^ 2)

end

end A112695.P9013165158003887297

/-!
# A112696: Partial sum of Catalan numbers A000108 multiplied by powers of 2.

The programs for A112696, the canonical program `A112696.P14907744198856643035` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A112696 has offset 0).

The definition of A112696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A112696.P14383541649639634549

`∑[C(2*n, n)/(n+1)*2^n]`
-/

namespace A112696.P14383541649639634549
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P14383541649639634549

namespace A112696

/-- `∑[C(2*n, n)/(n+1)*2^n]` -/
def P14383541649639634549.Spec : Prop :=
  ∀ n, P14383541649639634549.a n = (A112696 n : ℚ)

end A112696

/-! ## A112696.P5553454983581935574

`∑[(2-3/(n+1))*4*a(n-1)]` with `a(0)=1`
-/

namespace A112696.P5553454983581935574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 - 3 / (n + 1 : ℚ)) * (4 * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P5553454983581935574

namespace A112696

/-- `∑[(2-3/(n+1))*4*a(n-1)]` -/
def P5553454983581935574.Spec : Prop :=
  ∀ n, P5553454983581935574.a n = (A112696 n : ℚ)

end A112696

/-! ## A112696.P14907744198856643035

`∑[A151374(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A112696

/-- `∑[A151374(n)]` -/
def P14907744198856643035.Spec : Prop :=
  ∀ n, P14907744198856643035.a n = A112696 n

theorem P14907744198856643035.correct : P14907744198856643035.Spec := by
  intro n
  simp only [A112696]

end A112696

/-! ## A112696.P15518707191190175140

`∑[record[A110510(n)]]`
-/

namespace A112696.P15518707191190175140
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110510 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P15518707191190175140

namespace A112696

/-- `∑[record[A110510(n)]]` -/
def P15518707191190175140.Spec : Prop :=
  ∀ n, P15518707191190175140.a n = A112696 n

end A112696

/-! ## A112696.P17317728821172790260

`∑[A052701(n+1)]`
-/

namespace A112696.P17317728821172790260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P17317728821172790260

namespace A112696

/-- `∑[A052701(n+1)]` -/
def P17317728821172790260.Spec : Prop :=
  ∀ n, P17317728821172790260.a n = A112696 n

end A112696

/-! ## A112696.P6390992482278944201

`∑[abs(A114193(∑[n]))]`
-/

namespace A112696.P6390992482278944201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114193 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P6390992482278944201

namespace A112696

/-- `∑[abs(A114193(∑[n]))]` -/
def P6390992482278944201.Spec : Prop :=
  ∀ n, P6390992482278944201.a n = A112696 n

end A112696

/-! ## A112696.P11554102339365928570

`∑[A025225(n+1)/2]`
-/

namespace A112696.P11554102339365928570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025225 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P11554102339365928570

namespace A112696

/-- `∑[A025225(n+1)/2]` -/
def P11554102339365928570.Spec : Prop :=
  ∀ n, P11554102339365928570.a n = (A112696 n : ℚ)

end A112696

/-! ## A112696.P14243446757286329098

`∑[A115125(n+1)/2]`
-/

namespace A112696.P14243446757286329098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A115125 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P14243446757286329098

namespace A112696

/-- `∑[A115125(n+1)/2]` -/
def P14243446757286329098.Spec : Prop :=
  ∀ n, P14243446757286329098.a n = (A112696 n : ℚ)

end A112696

/-! ## A112696.P15955375741516598756

`∑[2^n*A000108(n)]`
-/

namespace A112696.P15955375741516598756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P15955375741516598756

namespace A112696

/-- `∑[2^n*A000108(n)]` -/
def P15955375741516598756.Spec : Prop :=
  ∀ n, P15955375741516598756.a n = A112696 n

end A112696

/-! ## A112696.P9427599662278938508

`∑[A000108(n)*A000079(n)]`
-/

namespace A112696.P9427599662278938508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P9427599662278938508

namespace A112696

/-- `∑[A000108(n)*A000079(n)]` -/
def P9427599662278938508.Spec : Prop :=
  ∀ n, P9427599662278938508.a n = A112696 n

theorem P9427599662278938508.correct : P9427599662278938508.Spec := by
  intro n
  simp only [A112696, Nat.add_sub_cancel, A112696.P9427599662278938508.f1, A112696.P9427599662278938508.a, A112696.P14907744198856643035.f1, A112696.P14907744198856643035.a, A000079, A000079.P10855139691139572931.a, A000108, A000108.P17551949696095299361.a, A151374, A151374.P6151249607190276974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112696

/-! ## A112696.P17396236243765887584

`∑[A011782(n)*A068875(n)]`
-/

namespace A112696.P17396236243765887584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A068875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P17396236243765887584

namespace A112696

/-- `∑[A011782(n)*A068875(n)]` -/
def P17396236243765887584.Spec : Prop :=
  ∀ n, P17396236243765887584.a n = A112696 n

end A112696

/-! ## A112696.P18097770920122612740

`∑[A122803(n)*A168491(n)]`
-/

namespace A112696.P18097770920122612740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n * A168491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P18097770920122612740

namespace A112696

/-- `∑[A122803(n)*A168491(n)]` -/
def P18097770920122612740.Spec : Prop :=
  ∀ n, P18097770920122612740.a n = A112696 n

end A112696

/-! ## A112696.P16173827296195349483

`∑[abs(A000079(n)*A168491(n))]`
-/

namespace A112696.P16173827296195349483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n * A168491 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P16173827296195349483

namespace A112696

/-- `∑[abs(A000079(n)*A168491(n))]` -/
def P16173827296195349483.Spec : Prop :=
  ∀ n, P16173827296195349483.a n = A112696 n

end A112696

/-! ## A112696.P13863622377575666670

`∑[A000108(n)*∑[A011782(n)]]`
-/

namespace A112696.P13863622377575666670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P13863622377575666670

namespace A112696

/-- `∑[A000108(n)*∑[A011782(n)]]` -/
def P13863622377575666670.Spec : Prop :=
  ∀ n, P13863622377575666670.a n = A112696 n

end A112696

/-! ## A112696.P7846327169739450728

`∑[A000079(n)*A039599(∑[n])]`
-/

namespace A112696.P7846327169739450728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A039599 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P7846327169739450728

namespace A112696

/-- `∑[A000079(n)*A039599(∑[n])]` -/
def P7846327169739450728.Spec : Prop :=
  ∀ n, P7846327169739450728.a n = A112696 n

end A112696

/-! ## A112696.P14392437666418715175

`∑[A000108(n)*Δ[A000225(n)]]`
-/

namespace A112696.P14392437666418715175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P14392437666418715175

namespace A112696

/-- `∑[A000108(n)*Δ[A000225(n)]]` -/
def P14392437666418715175.Spec : Prop :=
  ∀ n, P14392437666418715175.a n = A112696 n

theorem P14392437666418715175.correct : P14392437666418715175.Spec := by
  intro n
  simp only [A112696, Nat.add_sub_cancel, A112696.P14392437666418715175.f2, A112696.P14392437666418715175.f1, A112696.P14392437666418715175.a, A112696.P14907744198856643035.f1, A112696.P14907744198856643035.a, A000108, A000108.P17551949696095299361.a, A000225, A000225.P6535533121115206393.a, A151374, A151374.P6151249607190276974.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A112696

/-! ## A112696.P10057563080739088735

`∑[A000079(n)*A120588(n+1)]`
-/

namespace A112696.P10057563080739088735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P10057563080739088735

namespace A112696

/-- `∑[A000079(n)*A120588(n+1)]` -/
def P10057563080739088735.Spec : Prop :=
  ∀ n, P10057563080739088735.a n = A112696 n

end A112696

/-! ## A112696.P10694915060724528929

`∑[A000108(n)*A131577(n+1)]`
-/

namespace A112696.P10694915060724528929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A131577 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P10694915060724528929

namespace A112696

/-- `∑[A000108(n)*A131577(n+1)]` -/
def P10694915060724528929.Spec : Prop :=
  ∀ n, P10694915060724528929.a n = A112696 n

end A112696

/-! ## A112696.P8230368695142763771

`∑[A000079(n)*A028304(2*n)]`
-/

namespace A112696.P8230368695142763771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P8230368695142763771

namespace A112696

/-- `∑[A000079(n)*A028304(2*n)]` -/
def P8230368695142763771.Spec : Prop :=
  ∀ n, P8230368695142763771.a n = A112696 n

end A112696

/-! ## A112696.P3752101442453789414

`∑[A011782(n+1)*A028304(2*n)]`
-/

namespace A112696.P3752101442453789414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112696.P3752101442453789414

namespace A112696

/-- `∑[A011782(n+1)*A028304(2*n)]` -/
def P3752101442453789414.Spec : Prop :=
  ∀ n, P3752101442453789414.a n = A112696 n

end A112696

/-!
# A112697: Partial sum of Catalan numbers (A000108) multiplied by powers of 3.

The programs for A112697, there is no canonical definition to state claims against.
-/

/-! ## A112697.P14481432504666584013

`∑[3^n/(n+1)*C(2*n, n)]`
-/

namespace A112697.P14481432504666584013
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112697.P14481432504666584013

/-! ## A112697.P16860866450479005093

`∑[3*(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A112697.P16860866450479005093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 * ((4 - 6 / (n + 1 : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112697.P16860866450479005093

/-! ## A112697.P10908274578734891285

`∑[A005159(n)]`
-/

namespace A112697.P10908274578734891285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112697.P10908274578734891285

/-! ## A112697.P4771473162819944409

`∑[record[A110518(n)]]`
-/

namespace A112697.P4771473162819944409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110518 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112697.P4771473162819944409

/-! ## A112697.P18050743693719776357

`∑[A156909(2*(n+1))]`
-/

namespace A112697.P18050743693719776357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156909 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112697.P18050743693719776357

/-! ## A112697.P17969847566250458265

`∑[A025226(n+1)/3]`
-/

namespace A112697.P17969847566250458265
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025226 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112697.P17969847566250458265

/-! ## A112697.P15931839647175511728

`∑[3^n*A000108(n)]`
-/

namespace A112697.P15931839647175511728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112697.P15931839647175511728

/-! ## A112697.P12943885854543037219

`∑[A000108(n)*A000244(n)]`
-/

namespace A112697.P12943885854543037219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112697.P12943885854543037219

/-! ## A112697.P3212501778390330324

`∑[A168491(n)*A352779(n)]`
-/

namespace A112697.P3212501778390330324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n * A352779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112697.P3212501778390330324

/-! ## A112697.P12124766192470838989

`∑[A000244(n)*A039599(∑[n])]`
-/

namespace A112697.P12124766192470838989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A039599 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112697.P12124766192470838989

/-!
# A112698: Partial sum of (Catalan numbers A000108 multiplied by powers of 4).

The programs for A112698, there is no canonical definition to state claims against.
-/

/-! ## A112698.P7739699998162533762

`∑[C(2*n, n)/(n+1)*4^n]`
-/

namespace A112698.P7739699998162533762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (4 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112698.P7739699998162533762

/-! ## A112698.P7252450310513001792

`∑[4*(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A112698.P7252450310513001792
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * ((4 - 6 / (n + 1 : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112698.P7252450310513001792

/-! ## A112698.P13231832315416011671

`∑[A151403(n)]`
-/

namespace A112698.P13231832315416011671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112698.P13231832315416011671

/-! ## A112698.P9227327602244323936

`∑[A052704(n+1)]`
-/

namespace A112698.P9227327602244323936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112698.P9227327602244323936

/-! ## A112698.P3448143600537463419

`∑[A052707(n+1)/2]`
-/

namespace A112698.P3448143600537463419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052707 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112698.P3448143600537463419

/-! ## A112698.P4504588903487848093

`∑[4^n*A000108(n)]`
-/

namespace A112698.P4504588903487848093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112698.P4504588903487848093

/-! ## A112698.P6468330900595702701

`∑[A000108(n)*A000302(n)]`
-/

namespace A112698.P6468330900595702701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112698.P6468330900595702701

/-! ## A112698.P11205390818817139798

`∑[A000108(n)*A000079(n)²]`
-/

namespace A112698.P11205390818817139798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000079 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112698.P11205390818817139798

/-! ## A112698.P10561199156553452903

`∑[A000108(n)*Δ[A002450(n)]]`
-/

namespace A112698.P10561199156553452903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112698.P10561199156553452903

/-! ## A112698.P11010435234869745657

`∑[A000108(n)*record[A077959(n)]]`
-/

namespace A112698.P11010435234869745657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112698.P11010435234869745657

/-!
# A112699: Partial sum of Catalan numbers A000108 multiplied by powers of 5.

The programs for A112699, there is no canonical definition to state claims against.
-/

/-! ## A112699.P10928869874826175280

`∑[5*(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A112699.P10928869874826175280
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * ((4 - 6 / (n + 1 : ℚ)) * f1 (n - 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112699.P10928869874826175280

/-! ## A112699.P6998044179434433600

`∑[A156058(n)]`
-/

namespace A112699.P6998044179434433600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112699.P6998044179434433600

/-! ## A112699.P1559871173543654216

`∑[5^n*A000108(n)]`
-/

namespace A112699.P1559871173543654216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112699.P1559871173543654216

/-! ## A112699.P14555821928798797019

`∑[5^n*A008313(n²)]`
-/

namespace A112699.P14555821928798797019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A008313 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112699.P14555821928798797019

/-! ## A112699.P955028800283059397

`∑[5^n*A039599(∑[n])]`
-/

namespace A112699.P955028800283059397
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A039599 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112699.P955028800283059397

/-! ## A112699.P4693126135960028002

`∑[5^n*A057977(2*n)]`
-/

namespace A112699.P4693126135960028002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A057977 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112699.P4693126135960028002

/-! ## A112699.P3588555241275599320

`∑[5^n*A126324(2*n)]`
-/

namespace A112699.P3588555241275599320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) * A126324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112699.P3588555241275599320

/-! ## A112699.P5145096362031724487

`∑[A000108(n)*A000351(n)]`
-/

namespace A112699.P5145096362031724487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112699.P5145096362031724487

/-! ## A112699.P11059062577600827070

`∑[A000108(n)*∑[A005054(n)]]`
-/

namespace A112699.P11059062577600827070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112699.P11059062577600827070

/-! ## A112699.P7481651370999099396

`∑[A000108(n)*A038243(∑[n])]`
-/

namespace A112699.P7481651370999099396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A038243 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A112699.P7481651370999099396

