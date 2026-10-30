import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C016
import Seq.B000.C021
import Seq.B000.C026
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C008
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A172603: a(n) = (7n)!/(7!^n).

The programs for A172603, there is no canonical definition to state claims against.
-/

/-! ## A172603.P8976859447194520895

`A187783(eq[7, A025581(n)])`
-/

namespace A172603.P8976859447194520895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172603.P8976859447194520895

/-! ## A172603.P13229851393636167365

`A187783(eq[8, A195663(n)])`
-/

namespace A172603.P13229851393636167365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172603.P13229851393636167365

/-! ## A172603.P13550572243865438851

`∏[A000580(7*A028310(n))]`
-/

namespace A172603.P13550572243865438851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (7 * A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A172603.P13550572243865438851

/-! ## A172603.P1558566522339477195

`A187783(eq[8, A004736(n+1)])`
-/

namespace A172603.P1558566522339477195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172603.P1558566522339477195

/-! ## A172603.P10458095530326091136

`A187783(eq[32, A128307(n+1)])`
-/

namespace A172603.P10458095530326091136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172603.P10458095530326091136

/-!
# A172609: a(n) = (8n)!/(8!^n).

The programs for A172609, there is no canonical definition to state claims against.
-/

/-! ## A172609.P12031531118925368338

`n!*A025040(n)`
-/

namespace A172609.P12031531118925368338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025040 n

end

end A172609.P12031531118925368338

/-! ## A172609.P8528117166289983735

`A269118(n)+A268851(n)`
-/

namespace A172609.P8528117166289983735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269118 n + A268851 n

end

end A172609.P8528117166289983735

/-! ## A172609.P1700783063742606818

`A000142(n)*A025040(n)`
-/

namespace A172609.P1700783063742606818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A025040 n

end

end A172609.P1700783063742606818

/-!
# A172613: a(n) = (9n)!/(9!^n).

The programs for A172613, there is no canonical definition to state claims against.
-/

/-! ## A172613.P252262879936174231

`n!*A025041(n)`
-/

namespace A172613.P252262879936174231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A025041 n

end

end A172613.P252262879936174231

/-! ## A172613.P14365191104636484587

`A089759(eq[9, A002262(n)])`
-/

namespace A172613.P14365191104636484587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172613.P14365191104636484587

/-! ## A172613.P11626816834135477495

`A269119(n)+A268852(n)`
-/

namespace A172613.P11626816834135477495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269119 n + A268852 n

end

end A172613.P11626816834135477495

/-! ## A172613.P15990683523173350921

`A000142(n)*A025041(n)`
-/

namespace A172613.P15990683523173350921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A025041 n

end

end A172613.P15990683523173350921

/-!
# A172620: Number of n X n 0..2 arrays with row sums 12 and column sums 12.

The programs for A172620, there is no canonical definition to state claims against.
-/

/-! ## A172620.P7716613181844821408

`lcm(A257493(A169696(n+1)), A304975(n))`
-/

namespace A172620.P7716613181844821408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A257493 (A169696 (n + 1)).toNat) (A304975 n)

end

end A172620.P7716613181844821408

/-! ## A172620.P16367372181435653584

`A000681(A341806(3*n+8))*A104320(n)`
-/

namespace A172620.P16367372181435653584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000681 (A341806 (3 * n + 8)).toNat * A104320 n

end

end A172620.P16367372181435653584

/-! ## A172620.P13747028775102738299

`A008552(A038698(2*n+3))%A046854(A329789(n+1))`
-/

namespace A172620.P13747028775102738299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008552 (A038698 (2 * n + 3)).toNat) (A046854 (A329789 (n + 1)).toNat)

end

end A172620.P13747028775102738299

/-!
# A172623: Number of n X n 0..2 arrays with row sums 10 and column sums 10.

The programs for A172623, there is no canonical definition to state claims against.
-/

/-! ## A172623.P9762845915390132378

`A172728(n+1)^A338116(n+2)`
-/

namespace A172623.P9762845915390132378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172728 (n + 1) : ℚ) ^ (A338116 (n + 2) : ℤ)

end

end A172623.P9762845915390132378

/-! ## A172623.P16884069370344365641

`A000681(A300700(3*a(n-1)+1-a(n-2)))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A172623.P16884069370344365641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  A000681 (A300700 (3 * a (n - 1) + (1 - a (n - 2))).toNat).toNat

end

end A172623.P16884069370344365641

/-!
# A172624: Numbers k such that 2*A000005(k) = 3*A000005(k+1).

The programs for A172624, the canonical program `A172624.P1675348428344907413` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172624 has offset 1).

The definition of A172624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172624.P1675348428344907413

`eq[3, A145154(n)/A062011(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A172624

/-- `eq[3, A145154(n)/A062011(n+1)]` -/
def P1675348428344907413.Spec : Prop :=
  ∀ n, (P1675348428344907413.a n : ℤ) = A172624 (n + 1)

theorem P1675348428344907413.correct : P1675348428344907413.Spec := by
  intro n
  simp only [A172624, Nat.add_sub_cancel]

end A172624

/-! ## A172624.P7308463696132315652

`eq[6, A145154(n)/A000005(n+1)]`
-/

namespace A172624.P7308463696132315652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145154 n : ℚ) / (A000005 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A172624.P7308463696132315652

namespace A172624

/-- `eq[6, A145154(n)/A000005(n+1)]` -/
def P7308463696132315652.Spec : Prop :=
  ∀ n, (P7308463696132315652.a n : ℤ) = A172624 (n + 1)

theorem P7308463696132315652.correct : P7308463696132315652.Spec := by
  intro n
  simp only [A172624, Nat.add_sub_cancel, A172624.P7308463696132315652.f1, A172624.P7308463696132315652.f2, A172624.P7308463696132315652.a, A172624.P1675348428344907413.f1, A172624.P1675348428344907413.f2, A172624.P1675348428344907413.a, A000005, A000005.P16091521709108585461.a, A062011, A062011.P17525320077853469406.a, A145154, A145154.P3148683332276423765.f1, A145154.P3148683332276423765.f2, A145154.P3148683332276423765.a, A007504, A007504.P14310834286015847203.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A014284, A014284.P18183547548072881472.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A172624

/-! ## A172624.P10739557967722795831

`eq[A032741(n), A061034(A061034(n+1))]`
-/

namespace A172624.P10739557967722795831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061034 (A061034 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172624.P10739557967722795831

namespace A172624

/-- `eq[A032741(n), A061034(A061034(n+1))]` -/
def P10739557967722795831.Spec : Prop :=
  ∀ n, (P10739557967722795831.a n : ℤ) = A172624 (n + 1)

end A172624

/-! ## A172624.P667401717108935860

`eq[A032741(n), A276625(A061142(n+1))]`
-/

namespace A172624.P667401717108935860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (A061142 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A172624.P667401717108935860

namespace A172624

/-- `eq[A032741(n), A276625(A061142(n+1))]` -/
def P667401717108935860.Spec : Prop :=
  ∀ n, (P667401717108935860.a n : ℤ) = A172624 (n + 1)

end A172624

/-!
# A172628: Number of n X n 0..2 arrays with row sums 7 and column sums 7.

The programs for A172628, there is no canonical definition to state claims against.
-/

/-! ## A172628.P16489153639964549885

`n*A222275(A027994(n))`
-/

namespace A172628.P16489153639964549885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A222275 (A027994 n).toNat

end

end A172628.P16489153639964549885

/-!
# A172629: Number of n X n 0..2 arrays with row sums 8 and column sums 8.

The programs for A172629, there is no canonical definition to state claims against.
-/

/-! ## A172629.P1561711381954960289

`A145880(4*ceil(2^(n-1)))`
-/

namespace A172629.P1561711381954960289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145880 (4 * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A172629.P1561711381954960289

/-!
# A172631: Number of n X n 0..2 arrays with row sums 16 and column sums 16.

The programs for A172631, there is no canonical definition to state claims against.
-/

/-! ## A172631.P14661258562380563375

`A282377(n+1)*A321725(A285250(3*n+5))`
-/

namespace A172631.P14661258562380563375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282377 (n + 1) * A321725 (A285250 (3 * n + 5)).toNat

end

end A172631.P14661258562380563375

/-! ## A172631.P11510824474001634142

`A172535(A151800(n))*A321725(A285250(3*n+5))`
-/

namespace A172631.P11510824474001634142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172535 (A151800 n).toNat * A321725 (A285250 (3 * n + 5)).toNat

end

end A172631.P11510824474001634142

/-!
# A172634: Number of n X 3 0..2 arrays with row sums 3 and column sums n.

The programs for A172634, the canonical program `A172634.P5672896076105477540` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172634 has offset 0).

The definition of A172634 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172634.P5672896076105477540

`∑{#}[n, (-1)^(n+#)*C(n, #)*A000172(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A172634

/-- `∑{#}[n, (-1)^(n+#)*C(n, #)*A000172(#)]` -/
def P5672896076105477540.Spec : Prop :=
  ∀ n, P5672896076105477540.a n = A172634 n

theorem P5672896076105477540.correct : P5672896076105477540.Spec := by
  intro n
  simp only [A172634]

end A172634

/-! ## A172634.P13957632078237174462

`∑{#}[n, C(n, #)*A002898(#)]`
-/

namespace A172634.P13957632078237174462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A002898 k

end

end A172634.P13957632078237174462

namespace A172634

/-- `∑{#}[n, C(n, #)*A002898(#)]` -/
def P13957632078237174462.Spec : Prop :=
  ∀ n, P13957632078237174462.a n = A172634 n

end A172634

/-! ## A172634.P7301987077146038950

`A328747(∑[n+3]+n+3)`
-/

namespace A172634.P7301987077146038950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328747 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A172634.P7301987077146038950

namespace A172634

/-- `A328747(∑[n+3]+n+3)` -/
def P7301987077146038950.Spec : Prop :=
  ∀ n, P7301987077146038950.a n = A172634 n

end A172634

/-! ## A172634.P465997798114747283

`A334549(∑[n+3]+6)`
-/

namespace A172634.P465997798114747283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A172634.P465997798114747283

namespace A172634

/-- `A334549(∑[n+3]+6)` -/
def P465997798114747283.Spec : Prop :=
  ∀ n, P465997798114747283.a n = A172634 n

end A172634

/-! ## A172634.P13827262061327713854

`or(1, A334549(A046691(n+2)))`
-/

namespace A172634.P13827262061327713854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A334549 (A046691 (n + 2)).toNat)

end

end A172634.P13827262061327713854

namespace A172634

/-- `or(1, A334549(A046691(n+2)))` -/
def P13827262061327713854.Spec : Prop :=
  ∀ n, P13827262061327713854.a n = A172634 n

end A172634

/-!
# A172636: Number of n X 7 0..2 arrays with row sums 7 and column sums n.

The programs for A172636, there is no canonical definition to state claims against.
-/

/-! ## A172636.P1997112585600764703

`A334549(A155212(n+5))`
-/

namespace A172636.P1997112585600764703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A155212 (n + 5)).toNat

end

end A172636.P1997112585600764703

/-! ## A172636.P10284747230865524692

`A334549(A051936(n+9)+1)`
-/

namespace A172636.P10284747230865524692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A051936 (n + 9) + 1).toNat

end

end A172636.P10284747230865524692

/-!
# A172638: Number of n X 8 0..2 arrays with row sums 8 and column sums n.

The programs for A172638, there is no canonical definition to state claims against.
-/

/-! ## A172638.P13019172519630989658

`A334549(A051936(n+10))`
-/

namespace A172638.P13019172519630989658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A051936 (n + 10)).toNat

end

end A172638.P13019172519630989658

/-! ## A172638.P13738882441026863137

`A334549(A056000(n+6)+1)`
-/

namespace A172638.P13738882441026863137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A056000 (n + 6) + 1).toNat

end

end A172638.P13738882441026863137

/-!
# A172639: Number of n X 5 0..2 arrays with row sums 5 and column sums n.

The programs for A172639, there is no canonical definition to state claims against.
-/

/-! ## A172639.P1671814790513877541

`A334549(A055999(n+4))`
-/

namespace A172639.P1671814790513877541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A055999 (n + 4)).toNat

end

end A172639.P1671814790513877541

/-! ## A172639.P9085441667515790213

`A334549(A155212(n+3)+2)`
-/

namespace A172639.P9085441667515790213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A155212 (n + 3) + 2).toNat

end

end A172639.P9085441667515790213

/-! ## A172639.P8929951173005981506

`A334549(A052905(n+3)+10)`
-/

namespace A172639.P8929951173005981506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A052905 (n + 3) + 10).toNat

end

end A172639.P8929951173005981506

/-!
# A172641: Number of n X 9 0..2 arrays with row sums 9 and column sums n.

The programs for A172641, there is no canonical definition to state claims against.
-/

/-! ## A172641.P9685781189163482264

`A334549(eq[10, A144328(n+1)]-1)`
-/

namespace A172641.P9685781189163482264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 1)

end

end A172641.P9685781189163482264

/-!
# A172642: Number of n X 4 0..2 arrays with row sums 4 and column sums n.

The programs for A172642, there is no canonical definition to state claims against.
-/

/-! ## A172642.P14062722142100890353

`A334549(A052905(n+3))`
-/

namespace A172642.P14062722142100890353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A052905 (n + 3)).toNat

end

end A172642.P14062722142100890353

/-! ## A172642.P2543898638566493732

`A334549(A056119(n)+16)`
-/

namespace A172642.P2543898638566493732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A056119 n + 16).toNat

end

end A172642.P2543898638566493732

/-! ## A172642.P11199845062072156994

`A334549(A055999(n+3)+1)`
-/

namespace A172642.P11199845062072156994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A055999 (n + 3) + 1).toNat

end

end A172642.P11199845062072156994

/-! ## A172642.P7687002215076082668

`A334549(A155212(n+1)+12)`
-/

namespace A172642.P7687002215076082668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A155212 (n + 1) + 12).toNat

end

end A172642.P7687002215076082668

/-! ## A172642.P16397515792755522553

`A334549(eq[A134309(n)+4, A002262(n)])`
-/

namespace A172642.P16397515792755522553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134309 n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A172642.P16397515792755522553

/-!
# A172645: Number of n X n 0..2 arrays with row sums n and column sums n.

The programs for A172645, there is no canonical definition to state claims against.
-/

/-! ## A172645.P1874729383805481715

`A334549(∑[4*(n+1)])`
-/

namespace A172645.P1874729383805481715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172645.P1874729383805481715

/-!
# A172654: Number of 2*n X n 0..2 arrays with row sums 8 and column sums 16.

The programs for A172654, there is no canonical definition to state claims against.
-/

/-! ## A172654.P12835842614464478910

`A172696(A172688(2^(n-3)-a(n-3)))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A172654.P12835842614464478910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A172696 (A172688 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - (a (n - 3) : ℚ))).toNat).toNat

end

end A172654.P12835842614464478910

/-!
# A172662: Number of 2*n X n 0..2 arrays with row sums n and column sums 2*n.

The programs for A172662, there is no canonical definition to state claims against.
-/

/-! ## A172662.P14079672859286085870

`A334549(A062725(n+1))`
-/

namespace A172662.P14079672859286085870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 (A062725 (n + 1)).toNat

end

end A172662.P14079672859286085870

/-!
# A172665: Number of 3*n X n 0..2 arrays with row sums 8 and column sums 24.

The programs for A172665, there is no canonical definition to state claims against.
-/

/-! ## A172665.P5440552621299882614

`A172697(A153582(2^(n-3)-a(n-3)))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A172665.P5440552621299882614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n a =>
  A172697 (A153582 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - (a (n - 3) : ℚ))).toNat).toNat

end

end A172665.P5440552621299882614

/-!
# A172675: Number of 3*n X 3 0..2 arrays with row sums 2 and column sums 2*n.

The programs for A172675, there is no canonical definition to state claims against.
-/

/-! ## A172675.P4185299738647933051

`A328345(3*(n+1))`
-/

namespace A172675.P4185299738647933051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328345 (3 * (n + 1))

end

end A172675.P4185299738647933051

/-! ## A172675.P16832674245989529702

`record[A328345(A134199(n+1))]`
-/

namespace A172675.P16832674245989529702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328345 (A134199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A172675.P16832674245989529702

