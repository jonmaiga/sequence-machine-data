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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C043
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
import Seq.B001.C014
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A247700: Numbers which have d digits "d", whenever one of their digits is "d", ordered by largest digit, then by size of the number.

The programs for A247700, there is no canonical definition to state claims against.
-/

/-! ## A247700.P15430377331876301113

`A108571(record[A057889(A264846(n+1))])`
-/

namespace A247700.P15430377331876301113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A264846 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247700.P15430377331876301113

/-!
# A247701: Numbers whose digits are nondecreasing and which have exactly d digits "d" whenever there is at least one digit "d".

The programs for A247701, there is no canonical definition to state claims against.
-/

/-! ## A247701.P10323643574866303110

`record[A139337(A048307(n))]`
-/

namespace A247701.P10323643574866303110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A048307 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247701.P10323643574866303110

/-! ## A247701.P3019515697419467924

`A140057(lt[A005933(n), A005912(n)])`
-/

namespace A247701.P3019515697419467924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005933 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005912 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247701.P3019515697419467924

/-! ## A247701.P6134921588748440744

`record[A139337(A205960(n+1))]`
-/

namespace A247701.P6134921588748440744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A205960 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247701.P6134921588748440744

/-!
# A247702: Number T(n,k) of tilings of a 5 X n rectangle with pentominoes of any shape and exactly k pentominoes of shape F; triangle T(n,k), n>=0, 0<=k<=max(delta_{3,n},floor((n-2)/2)*2), read by rows.

The programs for A247702, there is no canonical definition to state claims against.
-/

/-! ## A247702.P1303066017626244477

`A247707(n)-A113446(A115441(n+1))`
-/

namespace A247702.P1303066017626244477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247707 n - A113446 (A115441 (n + 1)).toNat

end

end A247702.P1303066017626244477

/-!
# A247707: Number T(n,k) of tilings of a 5 X n rectangle with pentominoes of any shape and exactly k pentominoes of shape T; triangle T(n,k), n>=0, 0<=k<=max(0,floor(2*(n-1)/3)), read by rows.

The programs for A247707, there is no canonical definition to state claims against.
-/

/-! ## A247707.P11866660194730531769

`A328756(A028310(n^A288006(n)))`
-/

namespace A247707.P11866660194730531769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328756 (A028310 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A288006 n : ℤ))).toNat).toNat

end

end A247707.P11866660194730531769

/-! ## A247707.P3267938547031893696

`A247702(n)+A113446(A115441(n+1))`
-/

namespace A247707.P3267938547031893696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247702 n + A113446 (A115441 (n + 1)).toNat

end

end A247707.P3267938547031893696

/-!
# A247710: Number T(n,k) of tilings of a 5 X n rectangle with pentominoes of any shape and exactly k pentominoes of shape W; triangle T(n,k), n>=0, 0<=k<=max(0,floor((n-2)/2)*2) read by rows.

The programs for A247710, there is no canonical definition to state claims against.
-/

/-! ## A247710.P3329312731718248338

`A247774(n)`
-/

namespace A247710.P3329312731718248338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247774 n

end

end A247710.P3329312731718248338

/-!
# A247711: Number T(n,k) of tilings of a 5 X n rectangle with pentominoes of any shape and exactly k pentominoes of shape X; triangle T(n,k), n>=0, read by rows.

The programs for A247711, there is no canonical definition to state claims against.
-/

/-! ## A247711.P5022561736250554229

`A028234(A129921(2*n)+2)`
-/

namespace A247711.P5022561736250554229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A129921 (2 * n) + 2).toNat

end

end A247711.P5022561736250554229

/-! ## A247711.P16347759843769610327

`A280498(A240312(n)+A107585(n))`
-/

namespace A247711.P16347759843769610327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280498 (A240312 n + A107585 n).toNat

end

end A247711.P16347759843769610327

/-!
# A247713: Number T(n,k) of tilings of a 5 X n rectangle with pentominoes of any shape and exactly k pentominoes of shape Z; triangle T(n,k), n>=0, read by rows.

The programs for A247713, there is no canonical definition to state claims against.
-/

/-! ## A247713.P2197284628881501944

`A247702(n)+A185284((n+1)²)`
-/

namespace A247713.P2197284628881501944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247702 n + A185284 ((n + 1) ^ 2)

end

end A247713.P2197284628881501944

/-!
# A247714: Position of A036561(n) in sequence A003586.

The programs for A247714, there is no canonical definition to state claims against.
-/

/-! ## A247714.P9733436035904068259

`A255975(∑[char[∑[n]]]²-n)`
-/

namespace A247714.P9733436035904068259
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255975 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A247714.P9733436035904068259

/-! ## A247714.P1486879929669388898

`A372744(A255975(1+n))`
-/

namespace A247714.P1486879929669388898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372744 (A255975 (1 + n)).toNat

end

end A247714.P1486879929669388898

/-! ## A247714.P7313144302107884681

`A322026(2^(row(n)-col(n))*3^col(n))`
-/

namespace A247714.P7313144302107884681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (3 ^ SequenceMachineLib.triCol n : ℚ))).toNat

end

end A247714.P7313144302107884681

/-! ## A247714.P8408883995992742434

`A071521(A036561(n))`
-/

namespace A247714.P8408883995992742434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071521 (A036561 n).toNat

end

end A247714.P8408883995992742434

/-! ## A247714.P16073401355531368999

`A069924(A094615(n))`
-/

namespace A247714.P16073401355531368999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069924 (A094615 n).toNat

end

end A247714.P16073401355531368999

/-!
# A247717: Numbers n such that A033493(n)/A008908(n) is an integer.

The programs for A247717, there is no canonical definition to state claims against.
-/

/-! ## A247717.P5582012743674889053

`eq[A083208(n+1), A215781(A091018(n))]`
-/

namespace A247717.P5582012743674889053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (A091018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247717.P5582012743674889053

/-!
# A247718: Decimal expansion of Integral_{0..Pi/2} exp(t)*cos(t) dt.

The programs for A247718, there is no canonical definition to state claims against.
-/

/-! ## A247718.P17108137043769404116

`A097666(n)+A010051(A059562(a(n-2)+1)+1)` with `a(0)=1, a(1)=9`
-/

namespace A247718.P17108137043769404116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  A097666 (n + 1) + A010051 (A059562 (a (n - 2) + 1).toNat + 1).toNat

end

end A247718.P17108137043769404116

/-!
# A247720: Number of length n+3 0..2 arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247720, the canonical program `A247720.P14333623328461256008` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247720 has offset 1).

The definition of A247720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247720.P14333623328461256008

`2*a(n-1)+2*a(n-4)-4*a(n-5)` with `a(0)=48, a(1)=90, a(2)=172, a(3)=334, a(4)=656`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A247720

/-- `2*a(n-1)+2*a(n-4)-4*a(n-5)` -/
def P14333623328461256008.Spec : Prop :=
  ∀ n, P14333623328461256008.a n = A247720 (n + 1)

theorem P14333623328461256008.correct : P14333623328461256008.Spec := by
  intro n
  simp only [A247720, Nat.add_sub_cancel]

end A247720

/-! ## A247720.P1383742610862934854

`A288732(n)+A020714(n+3)+6`
-/

namespace A247720.P1383742610862934854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288732 n + A020714 (n + 3) + 6

end

end A247720.P1383742610862934854

namespace A247720

/-- `A288732(n)+A020714(n+3)+6` -/
def P1383742610862934854.Spec : Prop :=
  ∀ n, P1383742610862934854.a n = A247720 (n + 1)

end A247720

/-! ## A247720.P1367784903752234299

`A247726(∑[n+2])`
-/

namespace A247720.P1367784903752234299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247720.P1367784903752234299

namespace A247720

/-- `A247726(∑[n+2])` -/
def P1367784903752234299.Spec : Prop :=
  ∀ n, P1367784903752234299.a n = A247720 (n + 1)

end A247720

/-! ## A247720.P2737463914748460358

`record[A247726(A000096(A137735(n)))]`
-/

namespace A247720.P2737463914748460358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000096 (A137735 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247720.P2737463914748460358

namespace A247720

/-- `record[A247726(A000096(A137735(n)))]` -/
def P2737463914748460358.Spec : Prop :=
  ∀ n, P2737463914748460358.a n = A247720 (n + 1)

end A247720

/-! ## A247720.P18440319427333166775

`record[A247726(A000096(A004736(n+1)))]`
-/

namespace A247720.P18440319427333166775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247720.P18440319427333166775

namespace A247720

/-- `record[A247726(A000096(A004736(n+1)))]` -/
def P18440319427333166775.Spec : Prop :=
  ∀ n, P18440319427333166775.a n = A247720 (n + 1)

end A247720

/-! ## A247720.P12225037169256530744

`record[A247726(A000096(A027749(n+1)))]`
-/

namespace A247720.P12225037169256530744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000096 (A027749 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247720.P12225037169256530744

namespace A247720

/-- `record[A247726(A000096(A027749(n+1)))]` -/
def P12225037169256530744.Spec : Prop :=
  ∀ n, P12225037169256530744.a n = A247720 (n + 1)

end A247720

/-! ## A247720.P4865817872677452963

`record[A247726(A000096(A054576(n+1)))]`
-/

namespace A247720.P4865817872677452963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000096 (A054576 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247720.P4865817872677452963

namespace A247720

/-- `record[A247726(A000096(A054576(n+1)))]` -/
def P4865817872677452963.Spec : Prop :=
  ∀ n, P4865817872677452963.a n = A247720 (n + 1)

end A247720

/-! ## A247720.P6794490056317438982

`record[A247726(A000096(A162751(n+1)))]`
-/

namespace A247720.P6794490056317438982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000096 (A162751 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247720.P6794490056317438982

namespace A247720

/-- `record[A247726(A000096(A162751(n+1)))]` -/
def P6794490056317438982.Spec : Prop :=
  ∀ n, P6794490056317438982.a n = A247720 (n + 1)

end A247720

/-!
# A247721: Number of length n+3 0..3 arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247721, there is no canonical definition to state claims against.
-/

/-! ## A247721.P16927269214671483590

`A247726(∑[n+3]+1)`
-/

namespace A247721.P16927269214671483590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247721.P16927269214671483590

/-!
# A247722: Number of length n+3 0..4 arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247722, there is no canonical definition to state claims against.
-/

/-! ## A247722.P4499543132760139975

`A247726(A027379(n+2))`
-/

namespace A247722.P4499543132760139975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A027379 (n + 2)).toNat

end

end A247722.P4499543132760139975

/-!
# A247723: Number of length n+3 0..5 arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247723, there is no canonical definition to state claims against.
-/

/-! ## A247723.P14909198976572325138

`A247726(Δ[A264443(n)])`
-/

namespace A247723.P14909198976572325138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (f1 (n + 1) - f1 n).toNat

end

end A247723.P14909198976572325138

/-!
# A247724: Number of length n+3 0..6 arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247724, there is no canonical definition to state claims against.
-/

/-! ## A247724.P14710206120492701602

`A247726(A052905(n+3))`
-/

namespace A247724.P14710206120492701602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A052905 (n + 3)).toNat

end

end A247724.P14710206120492701602

/-!
# A247725: Number of length n+3 0..7 arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247725, there is no canonical definition to state claims against.
-/

/-! ## A247725.P2076171243135130125

`A247726(A055999(4+n))`
-/

namespace A247725.P2076171243135130125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A055999 (4 + n)).toNat

end

end A247725.P2076171243135130125

/-!
# A247727: Number of length 1+3 0..n arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247727, the canonical program `A247727.P1820377216581337255` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247727 has offset 1).

The definition of A247727 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247727.P1820377216581337255

`8*C(1+∑[1+n], 2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A247727

/-- `8*C(1+∑[1+n], 2)` -/
def P1820377216581337255.Spec : Prop :=
  ∀ n, (P1820377216581337255.a n : ℤ) = A247727 (n + 1)

theorem P1820377216581337255.correct : P1820377216581337255.Spec := by
  intro n
  simp only [A247727, Nat.add_sub_cancel]

end A247727

/-! ## A247727.P14864140056951120259

`(3+n*(3+n))²-1`
-/

namespace A247727.P14864140056951120259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 + n * (3 + n)) ^ 2 : ℤ) - 1

end

end A247727.P14864140056951120259

namespace A247727

/-- `(3+n*(3+n))²-1` -/
def P14864140056951120259.Spec : Prop :=
  ∀ n, P14864140056951120259.a n = A247727 (n + 1)

end A247727

/-! ## A247727.P9273342466025533820

`xor(1, ((n+3)*n+3)²)`
-/

namespace A247727.P9273342466025533820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (((n + 3) * n + 3) ^ 2)

end

end A247727.P9273342466025533820

namespace A247727

/-- `xor(1, ((n+3)*n+3)²)` -/
def P9273342466025533820.Spec : Prop :=
  ∀ n, (P9273342466025533820.a n : ℤ) = A247727 (n + 1)

end A247727

/-! ## A247727.P13860259980596982032

`∑[∑[∑[24+a(n-1)]]]` with `a(0)=8, a(1)=24`
-/

namespace A247727.P13860259980596982032
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [8, 24] fun n f3 =>
  24 + f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247727.P13860259980596982032

namespace A247727

/-- `∑[∑[∑[24+a(n-1)]]]` -/
def P13860259980596982032.Spec : Prop :=
  ∀ n, (P13860259980596982032.a n : ℤ) = A247727 (n + 1)

end A247727

/-! ## A247727.P5748241416048121545

`∑[lcm(2, Δ[(n²+1+n)²])]`
-/

namespace A247727.P5748241416048121545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1 + n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247727.P5748241416048121545

namespace A247727

/-- `∑[lcm(2, Δ[(n²+1+n)²])]` -/
def P5748241416048121545.Spec : Prop :=
  ∀ n, (P5748241416048121545.a n : ℤ) = A247727 (n + 1)

end A247727

/-! ## A247727.P2660404566672616523

`ogf((8+8x+8x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A247727.P2660404566672616523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 8, 8] [1, -5, 10, -10, 5, -1] n

end

end A247727.P2660404566672616523

namespace A247727

/-- `ogf((8+8x+8x^2)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P2660404566672616523.Spec : Prop :=
  ∀ n, P2660404566672616523.a n = A247727 (n + 1)

end A247727

/-! ## A247727.P4368280334590235723

`and(-2, ((n+1)²+n+2)²)`
-/

namespace A247727.P4368280334590235723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (((n + 1) ^ 2 + (n + 2)) ^ 2 : ℤ)

end

end A247727.P4368280334590235723

namespace A247727

/-- `and(-2, ((n+1)²+n+2)²)` -/
def P4368280334590235723.Spec : Prop :=
  ∀ n, P4368280334590235723.a n = A247727 (n + 1)

end A247727

/-! ## A247727.P13395942792728601610

`record[((2-n)²+n-1)²-1]`
-/

namespace A247727.P13395942792728601610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 + ((n : ℤ) - 1)) ^ 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247727.P13395942792728601610

namespace A247727

/-- `record[((2-n)²+n-1)²-1]` -/
def P13395942792728601610.Spec : Prop :=
  ∀ n, P13395942792728601610.a n = A247727 (n + 1)

end A247727

/-! ## A247727.P12089289367864755500

`lcm(n+1, 1-((n+1)²+n+2)²)`
-/

namespace A247727.P12089289367864755500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (1 - (((n + 1) ^ 2 + (n + 2)) ^ 2 : ℤ))

end

end A247727.P12089289367864755500

namespace A247727

/-- `lcm(n+1, 1-((n+1)²+n+2)²)` -/
def P12089289367864755500.Spec : Prop :=
  ∀ n, (P12089289367864755500.a n : ℤ) = A247727 (n + 1)

end A247727

/-! ## A247727.P1395886028967742539

`(n+2)*∑[lcm(n, 2*n+1)+(n+2)²]`
-/

namespace A247727.P1395886028967742539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 * n + 1) + (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247727.P1395886028967742539

namespace A247727

/-- `(n+2)*∑[lcm(n, 2*n+1)+(n+2)²]` -/
def P1395886028967742539.Spec : Prop :=
  ∀ n, (P1395886028967742539.a n : ℤ) = A247727 (n + 1)

end A247727

/-! ## A247727.P11924812954014487788

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=8, a(1)=48, a(2)=168, a(3)=440, a(4)=960`
-/

namespace A247727.P11924812954014487788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 48, 168, 440, 960] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A247727.P11924812954014487788

namespace A247727

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11924812954014487788.Spec : Prop :=
  ∀ n, P11924812954014487788.a n = A247727 (n + 1)

end A247727

/-! ## A247727.P5398553333134377064

`8*A002817(n+1)`
-/

namespace A247727.P5398553333134377064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A002817 (n + 1)

end

end A247727.P5398553333134377064

namespace A247727

/-- `8*A002817(n+1)` -/
def P5398553333134377064.Spec : Prop :=
  ∀ n, P5398553333134377064.a n = A247727 (n + 1)

end A247727

/-! ## A247727.P4823058527520354474

`∑[A008511(n+1)/2]`
-/

namespace A247727.P4823058527520354474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008511 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247727.P4823058527520354474

namespace A247727

/-- `∑[A008511(n+1)/2]` -/
def P4823058527520354474.Spec : Prop :=
  ∀ n, P4823058527520354474.a n = (A247727 (n + 1) : ℚ)

end A247727

/-! ## A247727.P16624100381959443959

`∑[4*A034262(n+1)]`
-/

namespace A247727.P16624100381959443959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A034262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247727.P16624100381959443959

namespace A247727

/-- `∑[4*A034262(n+1)]` -/
def P16624100381959443959.Spec : Prop :=
  ∀ n, P16624100381959443959.a n = A247727 (n + 1)

end A247727

/-! ## A247727.P5612115836215737927

`(A008514(n+1)-1)/2`
-/

namespace A247727.P5612115836215737927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008514 (n + 1) - 1 : ℚ) / 2

end

end A247727.P5612115836215737927

namespace A247727

/-- `(A008514(n+1)-1)/2` -/
def P5612115836215737927.Spec : Prop :=
  ∀ n, P5612115836215737927.a n = (A247727 (n + 1) : ℚ)

end A247727

/-! ## A247727.P7944207959184528611

`(n+1)*(A261893(n+1)+1)`
-/

namespace A247727.P7944207959184528611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A261893 (n + 1) + 1)

end

end A247727.P7944207959184528611

namespace A247727

/-- `(n+1)*(A261893(n+1)+1)` -/
def P7944207959184528611.Spec : Prop :=
  ∀ n, P7944207959184528611.a n = A247727 (n + 1)

end A247727

/-! ## A247727.P12113836960852870356

`2*(n+1)*A006000(n+1)`
-/

namespace A247727.P12113836960852870356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A006000 (n + 1))

end

end A247727.P12113836960852870356

namespace A247727

/-- `2*(n+1)*A006000(n+1)` -/
def P12113836960852870356.Spec : Prop :=
  ∀ n, P12113836960852870356.a n = A247727 (n + 1)

end A247727

/-! ## A247727.P1063770123450537839

`(∑[n+1]+1)*A046092(n+1)`
-/

namespace A247727.P1063770123450537839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) * A046092 (n + 1)

end

end A247727.P1063770123450537839

namespace A247727

/-- `(∑[n+1]+1)*A046092(n+1)` -/
def P1063770123450537839.Spec : Prop :=
  ∀ n, P1063770123450537839.a n = A247727 (n + 1)

end A247727

/-! ## A247727.P2650557504310836366

`2*(n+2)*∑[∑[A016777(n)]+1]`
-/

namespace A247727.P2650557504310836366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247727.P2650557504310836366

namespace A247727

/-- `2*(n+2)*∑[∑[A016777(n)]+1]` -/
def P2650557504310836366.Spec : Prop :=
  ∀ n, P2650557504310836366.a n = A247727 (n + 1)

end A247727

/-! ## A247727.P8444830849165338143

`4*(∑[n+1]+1)*A000217(n+1)`
-/

namespace A247727.P8444830849165338143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ) * A000217 (n + 1)

end

end A247727.P8444830849165338143

namespace A247727

/-- `4*(∑[n+1]+1)*A000217(n+1)` -/
def P8444830849165338143.Spec : Prop :=
  ∀ n, P8444830849165338143.a n = A247727 (n + 1)

end A247727

/-!
# A247728: Number of length 2+3 0..n arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247728, the canonical program `A247728.P13563905570788399968` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247728 has offset 1).

The definition of A247728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247728.P13563905570788399968

`ogf((8+58x+128x^2+160x^3+80x^4+46x^5)/(1-4x+4x^2+4x^3-10x^4+4x^5+4x^6-4x^7+x^8))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A247728

/-- `ogf((8+58x+128x^2+160x^3+80x^4+46x^5)/(1-4x+4x^2+4x^3-10x^4+4x^5+4x^6-4x^7+x^8))` -/
def P13563905570788399968.Spec : Prop :=
  ∀ n, P13563905570788399968.a n = A247728 (n + 1)

theorem P13563905570788399968.correct : P13563905570788399968.Spec := by
  intro n
  simp only [A247728, Nat.add_sub_cancel]

end A247728

/-! ## A247728.P689198037422706390

`A247726(∑[n+1]+2)`
-/

namespace A247728.P689198037422706390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A247728.P689198037422706390

namespace A247728

/-- `A247726(∑[n+1]+2)` -/
def P689198037422706390.Spec : Prop :=
  ∀ n, P689198037422706390.a n = A247728 (n + 1)

end A247728

/-! ## A247728.P11082844341017878702

`record[A247726(A133263(A008615(n)))]`
-/

namespace A247728.P11082844341017878702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A133263 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A247728.P11082844341017878702

namespace A247728

/-- `record[A247726(A133263(A008615(n)))]` -/
def P11082844341017878702.Spec : Prop :=
  ∀ n, P11082844341017878702.a n = A247728 (n + 1)

end A247728

/-!
# A247729: Number of length 3+3 0..n arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247729, there is no canonical definition to state claims against.
-/

/-! ## A247729.P15115819123521570466

`A247726(∑[n+2]+4)`
-/

namespace A247729.P15115819123521570466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A247729.P15115819123521570466

/-!
# A247730: Number of length 4+3 0..n arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247730, there is no canonical definition to state claims against.
-/

/-! ## A247730.P10126971897505393302

`A247726(A052905(n)+9)`
-/

namespace A247730.P10126971897505393302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A052905 n + 9).toNat

end

end A247730.P10126971897505393302

/-!
# A247731: Number of length 5+3 0..n arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247731, there is no canonical definition to state claims against.
-/

/-! ## A247731.P7021641419713153264

`A247726(A167499(n+3))`
-/

namespace A247731.P7021641419713153264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167499 (n + 3)).toNat

end

end A247731.P7021641419713153264

/-!
# A247732: Number of length 6+3 0..n arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247732, there is no canonical definition to state claims against.
-/

/-! ## A247732.P17289217100907023611

`A247726(A166136(n+4))`
-/

namespace A247732.P17289217100907023611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A166136 (n + 4)).toNat

end

end A247732.P17289217100907023611

/-!
# A247733: Number of length 7+3 0..n arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247733, there is no canonical definition to state claims against.
-/

/-! ## A247733.P10606675069628457473

`A247726(A166136(n+5)+1)`
-/

namespace A247733.P10606675069628457473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A166136 (n + 5) + 1).toNat

end

end A247733.P10606675069628457473

/-!
# A247735: Total number of F shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247735, there is no canonical definition to state claims against.
-/

/-! ## A247735.P10865066307012965891

`∑[A024158(2^(n+1))²]`
-/

namespace A247735.P10865066307012965891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024158 (2 ^ (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247735.P10865066307012965891

/-! ## A247735.P9207078542849339002

`∑[A171551(2^n-∑[2^floor(n/2)])²]`
-/

namespace A247735.P9207078542849339002
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171551 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) - ∑ j ∈ Finset.range (n + 1), f2 j)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247735.P9207078542849339002

/-!
# A247736: Total number of I shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247736, there is no canonical definition to state claims against.
-/

/-! ## A247736.P15915041473991166405

`A268708(n*A338187(n))`
-/

namespace A247736.P15915041473991166405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268708 ((n : ℤ) * A338187 n).toNat

end

end A247736.P15915041473991166405

/-! ## A247736.P5991632618432487268

`A015716(A201271(3*n+2)+A201270(n+1))`
-/

namespace A247736.P5991632618432487268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015716 (A201271 (3 * n + 2) + A201270 (n + 1)).toNat

end

end A247736.P5991632618432487268

/-!
# A247737: Total number of L shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247737, there is no canonical definition to state claims against.
-/

/-! ## A247737.P12199127100614006993

`Δ[p?[or(3, A103872(n))]]`
-/

namespace A247737.P12199127100614006993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A103872 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A247737.P12199127100614006993

/-!
# A247738: Total number of N shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247738, there is no canonical definition to state claims against.
-/

/-! ## A247738.P4180100981082415331

`and(-4, A318848(or(1, 2^n)+1))`
-/

namespace A247738.P4180100981082415331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-4) (A318848 (Nat.lor 1 (2 ^ n) + 1))

end

end A247738.P4180100981082415331

/-! ## A247738.P17826665405964537680

`((n-n%∑[char[n!]]!)^n)%A231085(n+2)`
-/

namespace A247738.P17826665405964537680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - ((n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)) ^ n) (A231085 (n + 2))

end

end A247738.P17826665405964537680

/-!
# A247739: Total number of P shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247739, there is no canonical definition to state claims against.
-/

/-! ## A247739.P3074363079304907965

`A034331(2*(n+1))`
-/

namespace A247739.P3074363079304907965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034331 (2 * (n + 1))

end

end A247739.P3074363079304907965

/-!
# A247740: Total number of T shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247740, there is no canonical definition to state claims against.
-/

/-! ## A247740.P9386026675078324538

`Δ[A330677(n)]-floor((∑[n]+n)/3)`
-/

namespace A247740.P9386026675078324538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330677 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌊((∑ j ∈ Finset.range (n + 1), f2 j + n : ℕ) : ℚ) / 3⌋

end

end A247740.P9386026675078324538

/-! ## A247740.P10781491347182387629

`A318458(C(ceil(2^(n-1)), 2^floor(n/2)))`
-/

namespace A247740.P10781491347182387629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318458 (Nat.choose ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat)

end

end A247740.P10781491347182387629

/-!
# A247741: Total number of U shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247741, there is no canonical definition to state claims against.
-/

/-! ## A247741.P10138414695059143343

`2*A014405(A362699(n))`
-/

namespace A247741.P10138414695059143343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014405 (A362699 n).toNat

end

end A247741.P10138414695059143343

/-! ## A247741.P16246461038009478844

`A129756(A138240(n))-A109613(n)`
-/

namespace A247741.P16246461038009478844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A138240 n).toNat - A109613 n

end

end A247741.P16246461038009478844

/-!
# A247742: Total number of V shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247742, there is no canonical definition to state claims against.
-/

/-! ## A247742.P17958108293123471426

`and(-4, A057627(A174249(n)))`
-/

namespace A247742.P17958108293123471426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-4) (A057627 (A174249 n).toNat)

end

end A247742.P17958108293123471426

/-! ## A247742.P8654958474721754314

`A360407(A052318(n+1)-n)`
-/

namespace A247742.P8654958474721754314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360407 (A052318 (n + 1) - (n : ℤ)).toNat

end

end A247742.P8654958474721754314

/-!
# A247743: Total number of W shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247743, there is no canonical definition to state claims against.
-/

/-! ## A247743.P14643237852014445892

`A265367(24*C(n, 4)*C(n, 4))`
-/

namespace A247743.P14643237852014445892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265367 (24 * Nat.choose n 4 * Nat.choose n 4)

end

end A247743.P14643237852014445892

/-! ## A247743.P16679577928280393801

`A028662(A221863(n))`
-/

namespace A247743.P16679577928280393801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028662 (A221863 n).toNat

end

end A247743.P16679577928280393801

/-!
# A247744: Total number of X shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247744, there is no canonical definition to state claims against.
-/

/-! ## A247744.P60156269013627417

`A027868(A033948(n!))`
-/

namespace A247744.P60156269013627417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A033948 (Nat.factorial n)).toNat

end

end A247744.P60156269013627417

/-! ## A247744.P3856838470326973752

`and(A097145(n), A335682(A059731(n)))`
-/

namespace A247744.P3856838470326973752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097145 n) (A335682 (A059731 n).toNat)

end

end A247744.P3856838470326973752

/-! ## A247744.P12794506790795354807

`xor(A002265(A144301(n)), A144506(n))`
-/

namespace A247744.P12794506790795354807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (A144301 n).toNat) (A144506 n)

end

end A247744.P12794506790795354807

/-!
# A247745: Total number of Y shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247745, there is no canonical definition to state claims against.
-/

/-! ## A247745.P1364075380766198062

`A048720(A002018(n)-1)`
-/

namespace A247745.P1364075380766198062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (A002018 n - 1).toNat

end

end A247745.P1364075380766198062

/-! ## A247745.P8520232568241157658

`A011782(n)*A141331(A005432(n))`
-/

namespace A247745.P8520232568241157658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A141331 (A005432 n).toNat

end

end A247745.P8520232568241157658

/-!
# A247746: Total number of Z shapes in all tilings of a 5 X n rectangle with pentominoes of any shape.

The programs for A247746, there is no canonical definition to state claims against.
-/

/-! ## A247746.P12490138223073675028

`round(A004277(∑[6^(n-2)*C(n, 2)])/9)`
-/

namespace A247746.P12490138223073675028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Nat.choose n 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004277 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat : ℚ) / 9)

end

end A247746.P12490138223073675028

/-! ## A247746.P6503907602963414670

`∑[A130348(A052571(n))]`
-/

namespace A247746.P6503907602963414670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130348 (A052571 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247746.P6503907602963414670

/-!
# A247748: Total area below all lattice paths from (0,0) to (n,0) that do not go below the x-axis or above the diagonal x=y and consist of steps u=(1,1), U=(1,3), H=(1,0), d=(1,-1) and D=(1,-3).

The programs for A247748, there is no canonical definition to state claims against.
-/

/-! ## A247748.P9057635492682824432

`A183990(a(n-1)+4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A247748.P9057635492682824432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 4] fun n a =>
  A183990 (a (n - 1) + 4).toNat

end

end A247748.P9057635492682824432

/-! ## A247748.P7038513580075145516

`A178133(A013991(n))`
-/

namespace A247748.P7038513580075145516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (A013991 n).toNat

end

end A247748.P7038513580075145516

/-!
# A247750: Numbers in decimal representation, such that in Czech their digits are in alphabetic order.

The programs for A247750, there is no canonical definition to state claims against.
-/

/-! ## A247750.P8160919408342948431

`lt[A140665(2*(n+1)), A000203(A007674(n+2))]`
-/

namespace A247750.P8160919408342948431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140665 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A007674 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247750.P8160919408342948431

/-!
# A247751: Numbers in decimal representation, such that in Danish their digits are in alphabetic order.

The programs for A247751, there is no canonical definition to state claims against.
-/

/-! ## A247751.P8816495535318879864

`lt[A108643(n), A072635(A055563(n+1))]`
-/

namespace A247751.P8816495535318879864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108643 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072635 (A055563 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247751.P8816495535318879864

/-! ## A247751.P10271299440159610017

`lt[A002371(A000009(n+1)), A064597(n+1)]`
-/

namespace A247751.P10271299440159610017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (A000009 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247751.P10271299440159610017

/-! ## A247751.P16640747994768410110

`lt[A002371(A000009(n+1)), A167843(n+1)]`
-/

namespace A247751.P16640747994768410110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002371 (A000009 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247751.P16640747994768410110

/-! ## A247751.P7041015092533211716

`lt[A022998(2*n+1), A372429(A179642(n+1))]`
-/

namespace A247751.P7041015092533211716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372429 (A179642 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247751.P7041015092533211716

/-! ## A247751.P15400894526860873378

`lt[A048595(A000009(n+1)), A250120(3*n+1)]`
-/

namespace A247751.P15400894526860873378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (A000009 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247751.P15400894526860873378

/-!
# A247752: Numbers in decimal representation, such that in Dutch their digits are in alphabetic order.

The programs for A247752, there is no canonical definition to state claims against.
-/

/-! ## A247752.P10956249309155447060

`lt[A250244(A321513(n+1)), A065091(3*n+4)]`
-/

namespace A247752.P10956249309155447060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250244 (A321513 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247752.P10956249309155447060

/-! ## A247752.P6703876778364462311

`lt[A027828(n), A004086(A145046(3*n))]`
-/

namespace A247752.P6703876778364462311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A145046 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247752.P6703876778364462311

/-! ## A247752.P3192869068642714423

`lt[A048736(n), A104908(A104916(n+5))]`
-/

namespace A247752.P3192869068642714423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048736 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104908 (A104916 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247752.P3192869068642714423

/-! ## A247752.P6454517311301956027

`lt[A023443(n), A204908(A104916(n+5))]`
-/

namespace A247752.P6454517311301956027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204908 (A104916 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247752.P6454517311301956027

/-! ## A247752.P6474065302146420055

`lt[A022544(n+1), A329934(A143033(n+1))]`
-/

namespace A247752.P6474065302146420055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329934 (A143033 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247752.P6474065302146420055

/-!
# A247755: Numbers in decimal representation, such that in German their digits are in alphabetic order.

The programs for A247755, there is no canonical definition to state claims against.
-/

/-! ## A247755.P6208368171090115014

`lt[A328398(n), A018892(A000292(n+4))]`
-/

namespace A247755.P6208368171090115014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328398 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (A000292 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247755.P6208368171090115014

/-! ## A247755.P13039019871277712799

`lt[A048620(A182805(n)), A265405(2*(n+1))]`
-/

namespace A247755.P13039019871277712799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048620 (A182805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265405 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247755.P13039019871277712799

/-! ## A247755.P6779041030474043319

`lt[A006950(A079072(n+1)), A368111(n+5)]`
-/

namespace A247755.P6779041030474043319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 (A079072 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368111 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247755.P6779041030474043319

/-! ## A247755.P17590799906527843713

`lt[A193858(A274924(3*n)), A049362(n+1)]`
-/

namespace A247755.P17590799906527843713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193858 (A274924 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049362 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247755.P17590799906527843713

/-! ## A247755.P17413009025296574561

`lt[A163575(n+1), A007091(A343924(3*(n+1)))]`
-/

namespace A247755.P17413009025296574561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A343924 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247755.P17413009025296574561

/-!
# A247756: Numbers in decimal representation, such that in Hungarian their digits are in alphabetic order.

The programs for A247756, there is no canonical definition to state claims against.
-/

/-! ## A247756.P14180212586787503947

`lt[A256078(A039754(n)), A208341(2*n+3)]`
-/

namespace A247756.P14180212586787503947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256078 (A039754 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247756.P14180212586787503947

/-! ## A247756.P9392063120077388362

`lt[A270890(n+1), A006261(A117973(3*(n+1)))]`
-/

namespace A247756.P9392063120077388362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 (A117973 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247756.P9392063120077388362

/-! ## A247756.P5188582116991810536

`lt[A130572(n), A029931(A045408(3*n+2))]`
-/

namespace A247756.P5188582116991810536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130572 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A045408 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247756.P5188582116991810536

/-! ## A247756.P8650662063155015048

`lt[A130574(n), A029931(A045408(3*n+2))]`
-/

namespace A247756.P8650662063155015048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A045408 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247756.P8650662063155015048

/-! ## A247756.P5888749843497202846

`lt[A380183(A067538(n+1)), A339809(3*(n+1))]`
-/

namespace A247756.P5888749843497202846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A067538 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247756.P5888749843497202846

/-!
# A247757: Numbers in decimal representation, such that in Italian and Portuguese their digits are in alphabetic order.

The programs for A247757, there is no canonical definition to state claims against.
-/

/-! ## A247757.P3871474324885489849

`lt[A069770(2*(n+1)), 47]`
-/

namespace A247757.P3871474324885489849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A247757.P3871474324885489849

/-! ## A247757.P3266937481570831984

`lt[A350916(n+1), A006933(A331300(n))]`
-/

namespace A247757.P3266937481570831984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006933 (A331300 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247757.P3266937481570831984

/-! ## A247757.P17429525076875603950

`lt[A162611(A133904(n+1)), A031788(n+1)]`
-/

namespace A247757.P17429525076875603950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162611 (A133904 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031788 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247757.P17429525076875603950

/-! ## A247757.P2983310628261913456

`lt[A243055(n+1), A196686(A000041(n+1))]`
-/

namespace A247757.P2983310628261913456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196686 (A000041 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247757.P2983310628261913456

/-! ## A247757.P9093759690929044474

`lt[A017197(A089858(2*(n+1))), A045125(n+1)]`
-/

namespace A247757.P9093759690929044474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 (A089858 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247757.P9093759690929044474

/-!
# A247758: Numbers in decimal representation, such that in Latin their digits are in alphabetic order.

The programs for A247758, there is no canonical definition to state claims against.
-/

/-! ## A247758.P4383483113313048999

`lt[A110267(n), A004488(A085713(n+1))]`
-/

namespace A247758.P4383483113313048999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110267 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A085713 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247758.P4383483113313048999

/-! ## A247758.P77831692348846703

`lt[A055507(n+1), A130092(A048647(3*n+4))]`
-/

namespace A247758.P77831692348846703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (A048647 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247758.P77831692348846703

/-! ## A247758.P13898283081870163165

`∑[A178691(A213542(n))²]`
-/

namespace A247758.P13898283081870163165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (A213542 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247758.P13898283081870163165

/-! ## A247758.P12429174870229382022

`8%A123285(A000700(n))+n`
-/

namespace A247758.P12429174870229382022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 8 (A123285 ((A000700 n).toNat + 21)) + (n : ℤ)

end

end A247758.P12429174870229382022

/-! ## A247758.P6371281436504653488

`∑[A124010(A061419(n+1))²]`
-/

namespace A247758.P6371281436504653488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A061419 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247758.P6371281436504653488

/-!
# A247759: Numbers in decimal representation, such that in Swedish their digits are in alphabetic order.

The programs for A247759, there is no canonical definition to state claims against.
-/

/-! ## A247759.P16242129168137870835

`lt[A328188(n), A385776(A089215(n+1))]`
-/

namespace A247759.P16242129168137870835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328188 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385776 (A089215 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247759.P16242129168137870835

/-! ## A247759.P7789208323857674548

`lt[A160976(n+1), A048691(A153193(n+4))]`
-/

namespace A247759.P7789208323857674548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A153193 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247759.P7789208323857674548

/-! ## A247759.P2693253987956297510

`lt[A400005(n+1), A007623(A125051(n+4))]`
-/

namespace A247759.P2693253987956297510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (A125051 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247759.P2693253987956297510

/-! ## A247759.P7165479560221470423

`lt[A302044(A132581(n)), A290641(3*n+4)]`
-/

namespace A247759.P7165479560221470423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (A132581 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290641 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247759.P7165479560221470423

/-! ## A247759.P16165899078657628225

`lt[A002182(n+1), A001844(A050000(3*n+1))]`
-/

namespace A247759.P16165899078657628225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A050000 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247759.P16165899078657628225

/-!
# A247762: Numbers in decimal representation, such that in Slovak their digits are in alphabetic order.

The programs for A247762, there is no canonical definition to state claims against.
-/

/-! ## A247762.P8400841417089470645

`lt[A207918(n+1), A352268(A227543(2*n+1))]`
-/

namespace A247762.P8400841417089470645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352268 (A227543 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247762.P8400841417089470645

/-! ## A247762.P16866463141723550133

`lt[A332638(n+2), A033880(A363169(2*n+3))]`
-/

namespace A247762.P16866463141723550133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332638 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A363169 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247762.P16866463141723550133

/-! ## A247762.P13470703407589938928

`lt[A277788(n+1), A019549(A008302(3*n+5))]`
-/

namespace A247762.P13470703407589938928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019549 (A008302 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247762.P13470703407589938928

/-! ## A247762.P14074781863322687485

`lt[A001599(A225336(2*n+1)), A225364(2*(n+2))]`
-/

namespace A247762.P14074781863322687485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001599 (A225336 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225364 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247762.P14074781863322687485

/-!
# A247763: The number of representations of n as n=x^2-2^y, x>0, y>=0.

The programs for A247763, there is no canonical definition to state claims against.
-/

/-! ## A247763.P96445156052094929

`A003985(gcd(A025052(n+1), A225345(n+1)))`
-/

namespace A247763.P96445156052094929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003985 (Int.gcd (A025052 (n + 1)) (A225345 (n + 1)))

end

end A247763.P96445156052094929

/-! ## A247763.P15459972238215329795

`and(A010077(A229892(3*n+2)), A119269(n+1))`
-/

namespace A247763.P15459972238215329795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010077 (A229892 (3 * n + 2)).toNat) (A119269 (n + 1))

end

end A247763.P15459972238215329795

/-! ## A247763.P15281309104867844967

`A110538(A110541(n))%A110551(A110539(n+1))`
-/

namespace A247763.P15281309104867844967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110538 (A110541 n).toNat) (A110551 (A110539 (n + 1)).toNat)

end

end A247763.P15281309104867844967

/-! ## A247763.P14093773050164872195

`and(A155441(n+5), A237053(A155478(n+1)))`
-/

namespace A247763.P14093773050164872195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A155441 (n + 5)) (A237053 (A155478 (n + 1)).toNat)

end

end A247763.P14093773050164872195

/-! ## A247763.P15578425465944753923

`and(A065941(n+1), A304111(A006456(2*n+1)))`
-/

namespace A247763.P15578425465944753923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065941 (n + 1)) (A304111 (A006456 (2 * n + 1)).toNat)

end

end A247763.P15578425465944753923

/-!
# A247764: Numbers in decimal representation, such that in Turkish their digits are in alphabetic order.

The programs for A247764, there is no canonical definition to state claims against.
-/

/-! ## A247764.P14914261301855889434

`lt[A122445(A347578(2*(n+1))), 5]`
-/

namespace A247764.P14914261301855889434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122445 (A347578 (2 * (n + 1))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A247764.P14914261301855889434

/-! ## A247764.P12925832838801552385

`lt[A025438(A246935(2*n)), A138121(n+1)]`
-/

namespace A247764.P12925832838801552385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 (A246935 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247764.P12925832838801552385

/-! ## A247764.P11193519320985902047

`lt[A104345(n), A068611(A197957(2*n+5))]`
-/

namespace A247764.P11193519320985902047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068611 (A197957 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247764.P11193519320985902047

/-! ## A247764.P12634012292131749969

`lt[A019320(A094899(2*n+5)), A234738(n+1)]`
-/

namespace A247764.P12634012292131749969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (A094899 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247764.P12634012292131749969

/-! ## A247764.P14391694820477161164

`lt[A050176(2*n+1), A344264(A057028(n+5))]`
-/

namespace A247764.P14391694820477161164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050176 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344264 (A057028 (n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247764.P14391694820477161164

/-!
# A247766: Number of tilings of a 5 X n rectangle using n pentominoes of any but the F shape.

The programs for A247766, there is no canonical definition to state claims against.
-/

/-! ## A247766.P18009474623648492948

`A247702(lt[A115981(n+3), A247702(n)])`
-/

namespace A247766.P18009474623648492948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115981 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247702 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247766.P18009474623648492948

/-! ## A247766.P4394759725627732927

`filter[A247702(n), A095076(#)]`
-/

namespace A247766.P4394759725627732927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095076 (f1 j).toNat = 1) n)

end

end A247766.P4394759725627732927

/-!
# A247767: Number of tilings of a 5 X n rectangle using n pentominoes of any but the I shape.

The programs for A247767, there is no canonical definition to state claims against.
-/

/-! ## A247767.P15024714592278423839

`A247703(∑[n])`
-/

namespace A247767.P15024714592278423839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247703 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247767.P15024714592278423839

/-!
# A247768: Number of tilings of a 5 X n rectangle using n pentominoes of any but the L shape.

The programs for A247768, there is no canonical definition to state claims against.
-/

/-! ## A247768.P15964955259043342233

`A247704(∑[n])`
-/

namespace A247768.P15964955259043342233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247704 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247768.P15964955259043342233

/-!
# A247769: Number of tilings of a 5 X n rectangle using n pentominoes of any but the N shape.

The programs for A247769, there is no canonical definition to state claims against.
-/

/-! ## A247769.P16588124845847947532

`A247705(eq[A108104(n), A285522(n+1)])`
-/

namespace A247769.P16588124845847947532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247705 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A247769.P16588124845847947532

/-! ## A247769.P17580302068393006050

`filter[A247705(n), A194661(#)]`
-/

namespace A247769.P17580302068393006050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A194661 (f1 j).toNat = 1) n)

end

end A247769.P17580302068393006050

/-!
# A247770: Number of tilings of a 5 X n rectangle using n pentominoes of any but the P shape.

The programs for A247770, there is no canonical definition to state claims against.
-/

/-! ## A247770.P900262550925429758

`A247706(∑[n])`
-/

namespace A247770.P900262550925429758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247706 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247770.P900262550925429758

/-!
# A247771: Number of tilings of a 5 X n rectangle using n pentominoes of any but the T shape.

The programs for A247771, there is no canonical definition to state claims against.
-/

/-! ## A247771.P13480013120068900084

`A247707(A004396(∑[n-1]+3))`
-/

namespace A247771.P13480013120068900084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247707 (A004396 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat).toNat

end

end A247771.P13480013120068900084

/-! ## A247771.P4098450352112063512

`filter[A247707(n), A079944(#)]`
-/

namespace A247771.P4098450352112063512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079944 (f1 j).toNat = 1) n)

end

end A247771.P4098450352112063512

/-!
# A247772: Number of tilings of a 5 X n rectangle using n pentominoes of any but the U shape.

The programs for A247772, there is no canonical definition to state claims against.
-/

/-! ## A247772.P188745450877093295

`A247708(lt[A208054(2*(n+2)), A130135(2*(n+1))])`
-/

namespace A247772.P188745450877093295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208054 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130135 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247708 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247772.P188745450877093295

/-! ## A247772.P12341711084309773768

`A247708(A293606(n*A304887(n)))`
-/

namespace A247772.P12341711084309773768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247708 (A293606 ((n : ℤ) * A304887 n).toNat).toNat

end

end A247772.P12341711084309773768

/-!
# A247773: Number of tilings of a 5 X n rectangle using n pentominoes of any but the V shape.

The programs for A247773, there is no canonical definition to state claims against.
-/

/-! ## A247773.P5000094253073119317

`filter[A247709(n), A173860(#)]`
-/

namespace A247773.P5000094253073119317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A173860 (f1 j).toNat = 1) n)

end

end A247773.P5000094253073119317

/-! ## A247773.P16397279819242496251

`A247709(A293606(n*A304887(n)))`
-/

namespace A247773.P16397279819242496251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247709 (A293606 ((n : ℤ) * A304887 n).toNat).toNat

end

end A247773.P16397279819242496251

/-!
# A247774: Number of tilings of a 5 X n rectangle using n pentominoes of any but the W shape.

The programs for A247774, there is no canonical definition to state claims against.
-/

/-! ## A247774.P5931956364055736872

`A247710(lt[A247711(3*n+1), A247689(3*n+1)])`
-/

namespace A247774.P5931956364055736872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247711 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247689 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247710 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247774.P5931956364055736872

/-! ## A247774.P3992833969821737000

`A247710(record[A080345(3*n+1)])`
-/

namespace A247774.P3992833969821737000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080345 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247710 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247774.P3992833969821737000

/-!
# A247775: Number of tilings of a 5 X n rectangle using n pentominoes of any but the X shape.

The programs for A247775, there is no canonical definition to state claims against.
-/

/-! ## A247775.P824735371471326113

`A247711(lt[A097861(n), A247711(n)])`
-/

namespace A247775.P824735371471326113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247711 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247711 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247775.P824735371471326113

/-!
# A247776: Number of tilings of a 5 X n rectangle using n pentominoes of any but the Y shape.

The programs for A247776, there is no canonical definition to state claims against.
-/

/-! ## A247776.P13123726209519178921

`A247712(lt[n, A259469(n)])`
-/

namespace A247776.P13123726209519178921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259469 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247712 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A247776.P13123726209519178921

/-!
# A247777: Number of tilings of a 5 X n rectangle using n pentominoes of any but the Z shape.

The programs for A247777, there is no canonical definition to state claims against.
-/

/-! ## A247777.P11843025473632773173

`A247713(lt[A247712(2*n+1), A247687(3*n+4)])`
-/

namespace A247777.P11843025473632773173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247712 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247687 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247713 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247777.P11843025473632773173

/-! ## A247777.P1768816851988736286

`A247713(lt[A074355(n), A247713(n)])`
-/

namespace A247777.P1768816851988736286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074355 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247713 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247777.P1768816851988736286

/-!
# A247778: Least k such that e - (1 + 1/k)^k < 1/n.

The programs for A247778, the canonical program `A247778.P10690189947659920023` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247778 has offset 1).

The definition of A247778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7358 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247778.P3357494142310486693

`comp[A247785(1+n)]+1`
-/

namespace A247778.P3357494142310486693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247785 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247778.P3357494142310486693

namespace A247778

/-- `comp[A247785(1+n)]+1` -/
def P3357494142310486693.Spec : Prop :=
  ∀ n, (P3357494142310486693.a n : ℤ) = A247778 (n + 1)

end A247778

/-! ## A247778.P13087684274986275480

`∑[char[A247780(1+n)]+1]`
-/

namespace A247778.P13087684274986275480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247780 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247778.P13087684274986275480

namespace A247778

/-- `∑[char[A247780(1+n)]+1]` -/
def P13087684274986275480.Spec : Prop :=
  ∀ n, (P13087684274986275480.a n : ℤ) = A247778 (n + 1)

end A247778

/-! ## A247778.P4013251010233666671

`∑[char[comp[A247779(n+1)]]]+n`
-/

namespace A247778.P4013251010233666671
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247779 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A247778.P4013251010233666671

namespace A247778

/-- `∑[char[comp[A247779(n+1)]]]+n` -/
def P4013251010233666671.Spec : Prop :=
  ∀ n, (P4013251010233666671.a n : ℤ) = A247778 (n + 1)

end A247778

/-! ## A247778.P13582762794810933049

`∑[char[A247785(n+1)-n]]+n+1`
-/

namespace A247778.P13582762794810933049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247785 (n + 1) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A247778.P13582762794810933049

namespace A247778

/-- `∑[char[A247785(n+1)-n]]+n+1` -/
def P13582762794810933049.Spec : Prop :=
  ∀ n, (P13582762794810933049.a n : ℤ) = A247778 (n + 1)

end A247778

/-! ## A247778.P13481159630561186521

`A005408(n)-∑[char[A247779(n+1)]]`
-/

namespace A247778.P13481159630561186521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247779 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A247778.P13481159630561186521

namespace A247778

/-- `A005408(n)-∑[char[A247779(n+1)]]` -/
def P13481159630561186521.Spec : Prop :=
  ∀ n, P13481159630561186521.a n = A247778 (n + 1)

end A247778

/-! ## A247778.P16655502820592131361

`∑[A040000(n)-char[A247779(n+1)]]`
-/

namespace A247778.P16655502820592131361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247779 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247778.P16655502820592131361

namespace A247778

/-- `∑[A040000(n)-char[A247779(n+1)]]` -/
def P16655502820592131361.Spec : Prop :=
  ∀ n, P16655502820592131361.a n = A247778 (n + 1)

end A247778

/-! ## A247778.P10690189947659920023

`fp[A247784(n+1)]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A247778

/-- `fp[A247784(n+1)]+1` -/
def P10690189947659920023.Spec : Prop :=
  ∀ n, (P10690189947659920023.a n : ℤ) = A247778 (n + 1)

theorem P10690189947659920023.correct : P10690189947659920023.Spec := by
  intro n
  simp only [A247778, Nat.add_sub_cancel]

end A247778

/-! ## A247778.P6444121432425078886

`A249245(n+1)+n+1-A247784(A249245(n+1))`
-/

namespace A247778.P6444121432425078886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249245 (n + 1) + ((n + 1 : ℤ) - A247784 (A249245 (n + 1)).toNat)

end

end A247778.P6444121432425078886

namespace A247778

/-- `A249245(n+1)+n+1-A247784(A249245(n+1))` -/
def P6444121432425078886.Spec : Prop :=
  ∀ n, P6444121432425078886.a n = A247778 (n + 1)

end A247778

/-! ## A247778.P13084090594311991520

`A065033(A103762(n+1)+char[A247780(n+1)])`
-/

namespace A247778.P13084090594311991520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247780 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A103762 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A247778.P13084090594311991520

namespace A247778

/-- `A065033(A103762(n+1)+char[A247780(n+1)])` -/
def P13084090594311991520.Spec : Prop :=
  ∀ n, P13084090594311991520.a n = A247778 (n + 1)

end A247778

/-! ## A247778.P16693134142309871469

`A008619(A103762(n+8))-10`
-/

namespace A247778.P16693134142309871469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A103762 (n + 8)).toNat - 10

end

end A247778.P16693134142309871469

namespace A247778

/-- `A008619(A103762(n+8))-10` -/
def P16693134142309871469.Spec : Prop :=
  ∀ n, P16693134142309871469.a n = A247778 (n + 1)

end A247778

/-! ## A247778.P2640074544747382526

`fp[log(sinh((2*n+1)/e))]`
-/

namespace A247778.P2640074544747382526
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Real.sinh ((2 * n + 1 : ℝ) / Real.exp 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A247778.P2640074544747382526

namespace A247778

/-- `fp[log(sinh((2*n+1)/e))]` -/
def P2640074544747382526.Spec : Prop :=
  ∀ n, (P2640074544747382526.a n : ℤ) = A247778 (n + 1)

end A247778

/-! ## A247778.P1478392334561788263

`A065033(A103762(n+1)^A178334(n))`
-/

namespace A247778.P1478392334561788263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((A103762 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A247778.P1478392334561788263

namespace A247778

/-- `A065033(A103762(n+1)^A178334(n))` -/
def P1478392334561788263.Spec : Prop :=
  ∀ n, P1478392334561788263.a n = A247778 (n + 1)

end A247778

/-! ## A247778.P11079636601848780985

`A110654(A103762(n+1)^A178334(n))`
-/

namespace A247778.P11079636601848780985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A103762 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A247778.P11079636601848780985

namespace A247778

/-- `A110654(A103762(n+1)^A178334(n))` -/
def P11079636601848780985.Spec : Prop :=
  ∀ n, P11079636601848780985.a n = A247778 (n + 1)

end A247778

/-!
# A247779: Numbers k such that A247778(k+1) - A247778(k) = 1.

The programs for A247779, the canonical program `A247779.P16336607005958589947` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247779 has offset 1).

The definition of A247779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6408 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247779.P3084201020598750664

`comp[A247780(n+1)-1]+1`
-/

namespace A247779.P3084201020598750664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247780 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247779.P3084201020598750664

namespace A247779

/-- `comp[A247780(n+1)-1]+1` -/
def P3084201020598750664.Spec : Prop :=
  ∀ n, (P3084201020598750664.a n : ℤ) = A247779 (n + 1)

end A247779

/-! ## A247779.P16336607005958589947

`record[(n+1)/Δ[A247778(n+1)]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A247779

/-- `record[(n+1)/Δ[A247778(n+1)]]` -/
def P16336607005958589947.Spec : Prop :=
  ∀ n, P16336607005958589947.a n = (A247779 (n + 1) : ℚ)

end A247779

/-! ## A247779.P9111714425639207852

`A206912(n+1)+char[A319214(n+2)]`
-/

namespace A247779.P9111714425639207852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319214 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206912 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A247779.P9111714425639207852

namespace A247779

/-- `A206912(n+1)+char[A319214(n+2)]` -/
def P9111714425639207852.Spec : Prop :=
  ∀ n, P9111714425639207852.a n = A247779 (n + 1)

end A247779

/-! ## A247779.P7186364146280595703

`floor(∑[A079978(A299285(n))+6]/4)`
-/

namespace A247779.P7186364146280595703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A299285 n).toNat + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4⌋

end

end A247779.P7186364146280595703

namespace A247779

/-- `floor(∑[A079978(A299285(n))+6]/4)` -/
def P7186364146280595703.Spec : Prop :=
  ∀ n, P7186364146280595703.a n = A247779 (n + 1)

end A247779

/-! ## A247779.P8236612334060423144

`A003056(∑[A359913(2*n+1)])`
-/

namespace A247779.P8236612334060423144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359913 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247779.P8236612334060423144

namespace A247779

/-- `A003056(∑[A359913(2*n+1)])` -/
def P8236612334060423144.Spec : Prop :=
  ∀ n, P8236612334060423144.a n = A247779 (n + 1)

end A247779

/-!
# A247780: Numbers k such that A247778(k+1) - A247778(k) = 2.

The programs for A247780, there is no canonical definition to state claims against.
-/

/-! ## A247780.P10447196437006127513

`A247785(1+n)-n`
-/

namespace A247780.P10447196437006127513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247785 (1 + n) - (n : ℤ)

end

end A247780.P10447196437006127513

/-! ## A247780.P11223504695540171607

`comp[A247778(1+n)-1]-n`
-/

namespace A247780.P11223504695540171607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (1 + n) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A247780.P11223504695540171607

/-! ## A247780.P12441873446083985684

`A247784(A247785(1+n))`
-/

namespace A247780.P12441873446083985684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (A247785 (1 + n)).toNat

end

end A247780.P12441873446083985684

/-! ## A247780.P9394719268383049388

`A247784(3+a(n-1)+n)` with `a(0)=2`
-/

namespace A247780.P9394719268383049388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A247784 (3 + a (n - 1) + (n : ℤ)).toNat

end

end A247780.P9394719268383049388

/-! ## A247780.P7448786861989445426

`∑[runs[A247784(n+1)-n]]-n`
-/

namespace A247780.P7448786861989445426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (n + 1) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A247780.P7448786861989445426

/-! ## A247780.P11829813296990270547

`A249243(A247785(n+1)+1)`
-/

namespace A247780.P11829813296990270547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249243 (A247785 (n + 1) + 1).toNat

end

end A247780.P11829813296990270547

/-! ## A247780.P13545080082456080638

`round(log(A094364(n+1)))`
-/

namespace A247780.P13545080082456080638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A094364 (n + 1) : ℝ))

end

end A247780.P13545080082456080638

/-!
# A247781: Least k such that 1/e - (1 - 1/k)^k < 1/n.

The programs for A247781, there is no canonical definition to state claims against.
-/

/-! ## A247781.P9303441484226537761

`fp[A247783(n+1)]+1`
-/

namespace A247781.P9303441484226537761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A247781.P9303441484226537761

/-! ## A247781.P17002287813353941991

`floor(root(A175846(A175846(8+n)), 9))`
-/

namespace A247781.P17002287813353941991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175846 (A175846 (8 + n)).toNat : ℝ) ^ (1 / (9 : ℝ))⌋

end

end A247781.P17002287813353941991

/-! ## A247781.P14687656182598446504

`ceil(A134869(1+n)/A319515(n+1))`
-/

namespace A247781.P14687656182598446504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134869 (1 + n) : ℚ) / (A319515 (n + 1) : ℚ)⌉

end

end A247781.P14687656182598446504

/-! ## A247781.P7745587341806631057

`∑[A000035(A310465(∑[n]))]`
-/

namespace A247781.P7745587341806631057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A310465 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247781.P7745587341806631057

/-! ## A247781.P4445525037804327666

`∑[A102283(A315478(∑[n]))]`
-/

namespace A247781.P4445525037804327666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A315478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247781.P4445525037804327666

/-!
# A247782: Numbers k for which A247781(k+1) = A247781(k).

The programs for A247782, there is no canonical definition to state claims against.
-/

/-! ## A247782.P16311391162800917025

`comp[A247783(1+n)-1]+1`
-/

namespace A247782.P16311391162800917025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247783 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247782.P16311391162800917025

/-! ## A247782.P3799524446999423174

`∑[runs[A247781(1+n)-n]]`
-/

namespace A247782.P3799524446999423174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (1 + n) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247782.P3799524446999423174

/-! ## A247782.P6113884830480109725

`A247781(a(n-1)+2)+n` with `a(0)=1`
-/

namespace A247782.P6113884830480109725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247781 (a (n - 1) + 2).toNat + (n : ℤ)

end

end A247782.P6113884830480109725

/-! ## A247782.P1132594580142718084

`comp[∑[runs[A247781(n+2)]]]+1`
-/

namespace A247782.P1132594580142718084
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f3 j ≠ f3 (j - 1)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A247782.P1132594580142718084

/-! ## A247782.P11913223459960185798

`2*(n+1)-A000194(A184535(n+1))`
-/

namespace A247782.P11913223459960185798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A000194 (A184535 (n + 1)).toNat

end

end A247782.P11913223459960185798

/-! ## A247782.P11422679488147166407

`A003056(∑[A080513(A022158(n+1))])`
-/

namespace A247782.P11422679488147166407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A022158 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247782.P11422679488147166407

/-! ## A247782.P10199187464324881101

`A003059(A184744(n+1)+A005449(n))`
-/

namespace A247782.P10199187464324881101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A184744 (n + 1) + A005449 n).toNat

end

end A247782.P10199187464324881101

/-! ## A247782.P17310435390665612719

`A000196(∑[A310135(n+1)])`
-/

namespace A247782.P17310435390665612719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A247782.P17310435390665612719

/-! ## A247782.P14927815868972352369

`A083277(A301292(n))`
-/

namespace A247782.P14927815868972352369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A301292 n).toNat

end

end A247782.P14927815868972352369

/-! ## A247782.P6676220341058585387

`A204164(A056106(n+1))`
-/

namespace A247782.P6676220341058585387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A056106 (n + 1)).toNat

end

end A247782.P6676220341058585387

/-!
# A247783: Numbers k for which A247781(k+1) = 1+A247781(k).

The programs for A247783, there is no canonical definition to state claims against.
-/

/-! ## A247783.P4219843351119322056

`∑[runs[A247781(1+n)]]`
-/

namespace A247783.P4219843351119322056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247783.P4219843351119322056

/-! ## A247783.P14242012707748264597

`fp[A247781(n+1)-1]`
-/

namespace A247783.P14242012707748264597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A247783.P14242012707748264597

/-! ## A247783.P10188781272706939052

`runs[A247781(n+2)]+a(n-1)` with `a(0)=2`
-/

namespace A247783.P10188781272706939052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n + a (n - 1)

end

end A247783.P10188781272706939052

/-! ## A247783.P14737929752637124601

`∑[runs[A247781(A028310(n))]]-1`
-/

namespace A247783.P14737929752637124601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A247783.P14737929752637124601

/-! ## A247783.P7786962642923551444

`A121856(floor(n*(e^π-π^e))+Δ[n²]²)`
-/

namespace A247783.P7786962642923551444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121856 (⌊(n : ℝ) * (Real.exp 1 ^ Real.pi - Real.pi ^ (Real.exp 1))⌋ + ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A247783.P7786962642923551444

/-!
# A247784: a(n) = floor(1/(e - (1 + 1/n)^n)).

The programs for A247784, the canonical program `A247784.P10901521591986100322` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247784 has offset 1).

The definition of A247784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(1/(e-(1+1/(n+1))^(n+1)))` (program `A247784.P10901521591986100322`, by `A247784.P10901521591986100322.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247784.P10901521591986100322

`floor(1/(e-(1+1/(n+1))^(n+1)))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A247784

/-- `floor(1/(e-(1+1/(n+1))^(n+1)))` -/
def P10901521591986100322.Spec : Prop :=
  ∀ n, P10901521591986100322.a n = A247784 (n + 1)

theorem P10901521591986100322.correct : P10901521591986100322.Spec := by
  intro n
  simp only [A247784, Nat.add_sub_cancel]

end A247784

/-! ## A247784.P11681730221174449208

`fp[A247786(n+1)]+1`
-/

namespace A247784.P11681730221174449208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247786 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A247784.P11681730221174449208

namespace A247784

/-- `fp[A247786(n+1)]+1` -/
def P11681730221174449208.Spec : Prop :=
  ∀ n, (P11681730221174449208.a n : ℤ) = A247784 (n + 1)

end A247784

/-! ## A247784.P4073199854216115812

`fp[A247778(n+1)-1]`
-/

namespace A247784.P4073199854216115812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A247784.P4073199854216115812

namespace A247784

/-- `fp[A247778(n+1)-1]` -/
def P4073199854216115812.Spec : Prop :=
  ∀ n, (P4073199854216115812.a n : ℤ) = A247784 (n + 1)

end A247784

/-! ## A247784.P15437276584587304836

`∑[char[comp[A247785(1+n)]]]`
-/

namespace A247784.P15437276584587304836
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247785 (1 + n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247784.P15437276584587304836

namespace A247784

/-- `∑[char[comp[A247785(1+n)]]]` -/
def P15437276584587304836.Spec : Prop :=
  ∀ n, (P15437276584587304836.a n : ℤ) = A247784 (n + 1)

end A247784

/-! ## A247784.P1190753987094624576

`a(n-1)+C(n+1, A247778(a(n-1)+1))` with `a(0)=1`
-/

namespace A247784.P1190753987094624576
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (n + 1) (A247778 (a (n - 1) + 1)).toNat

end

end A247784.P1190753987094624576

namespace A247784

/-- `a(n-1)+C(n+1, A247778(a(n-1)+1))` -/
def P1190753987094624576.Spec : Prop :=
  ∀ n, (P1190753987094624576.a n : ℤ) = A247784 (n + 1)

end A247784

/-! ## A247784.P16267515009226020950

`A054404(2*n+3)`
-/

namespace A247784.P16267515009226020950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * n + 3)

end

end A247784.P16267515009226020950

namespace A247784

/-- `A054404(2*n+3)` -/
def P16267515009226020950.Spec : Prop :=
  ∀ n, P16267515009226020950.a n = A247784 (n + 1)

end A247784

/-!
# A247785: Numbers k such that A247784(k+1) = A247784(k).

The programs for A247785, there is no canonical definition to state claims against.
-/

/-! ## A247785.P17761989101201239609

`A247780(1+n)+n`
-/

namespace A247785.P17761989101201239609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247780 (1 + n) + (n : ℤ)

end

end A247785.P17761989101201239609

/-! ## A247785.P8946117137962410325

`comp[A247778(1+n)-1]`
-/

namespace A247785.P8946117137962410325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A247785.P8946117137962410325

/-! ## A247785.P3277446107410272464

`comp[A247786(n+1)-1]+1`
-/

namespace A247785.P3277446107410272464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247786 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A247785.P3277446107410272464

/-! ## A247785.P2249076075924650775

`A247778(A247780(1+n))`
-/

namespace A247785.P2249076075924650775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (A247780 (1 + n)).toNat

end

end A247785.P2249076075924650775

/-! ## A247785.P12728593354100210909

`∑[runs[A247784(1+n)-n]]`
-/

namespace A247785.P12728593354100210909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (1 + n) - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247785.P12728593354100210909

/-! ## A247785.P13872788335743055982

`A247784(a(n-1)+4)+n` with `a(0)=2`
-/

namespace A247785.P13872788335743055982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A247784 (a (n - 1) + 4).toNat + (n : ℤ)

end

end A247785.P13872788335743055982

/-! ## A247785.P11943082518386126374

`A247784(A249244(n+1)-1)+n`
-/

namespace A247785.P11943082518386126374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (A249244 (n + 1) - 1).toNat + (n : ℤ)

end

end A247785.P11943082518386126374

/-! ## A247785.P18132836572191681568

`eq[A247784(n+1), A247784(A000038(n)+n)]`
-/

namespace A247785.P18132836572191681568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A247785.P18132836572191681568

/-!
# A247786: Numbers k such that A247784(k+1) - A247784(k) = 1.

The programs for A247786, the canonical program `A247786.P11654063357277514879` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247786 has offset 1).

The definition of A247786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7357 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247786.P3166372312728714943

`A247778(2+n)-1`
-/

namespace A247786.P3166372312728714943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (2 + n) - 1

end

end A247786.P3166372312728714943

namespace A247786

/-- `A247778(2+n)-1` -/
def P3166372312728714943.Spec : Prop :=
  ∀ n, P3166372312728714943.a n = A247786 (n + 1)

end A247786

/-! ## A247786.P7824516991381026355

`∑[abs(Δ[A247778(1+n)])]`
-/

namespace A247786.P7824516991381026355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247786.P7824516991381026355

namespace A247786

/-- `∑[abs(Δ[A247778(1+n)])]` -/
def P7824516991381026355.Spec : Prop :=
  ∀ n, P7824516991381026355.a n = A247786 (n + 1)

end A247786

/-! ## A247786.P8961422235028276465

`∑[Δ[A247778(n+1)]%5]`
-/

namespace A247786.P8961422235028276465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247786.P8961422235028276465

namespace A247786

/-- `∑[Δ[A247778(n+1)]%5]` -/
def P8961422235028276465.Spec : Prop :=
  ∀ n, P8961422235028276465.a n = A247786 (n + 1)

end A247786

/-! ## A247786.P16055592129659394601

`∑[A000002(Δ[A247778(n+1)])]`
-/

namespace A247786.P16055592129659394601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247786.P16055592129659394601

namespace A247786

/-- `∑[A000002(Δ[A247778(n+1)])]` -/
def P16055592129659394601.Spec : Prop :=
  ∀ n, P16055592129659394601.a n = A247786 (n + 1)

end A247786

/-! ## A247786.P15203292927051044269

`∑[A000005(Δ[A247778(n+1)])]`
-/

namespace A247786.P15203292927051044269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247786.P15203292927051044269

namespace A247786

/-- `∑[A000005(Δ[A247778(n+1)])]` -/
def P15203292927051044269.Spec : Prop :=
  ∀ n, P15203292927051044269.a n = A247786 (n + 1)

end A247786

/-! ## A247786.P17351192121100593548

`∑[A000108(Δ[A247778(n+1)])]`
-/

namespace A247786.P17351192121100593548
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247786.P17351192121100593548

namespace A247786

/-- `∑[A000108(Δ[A247778(n+1)])]` -/
def P17351192121100593548.Spec : Prop :=
  ∀ n, P17351192121100593548.a n = A247786 (n + 1)

end A247786

/-! ## A247786.P9221687207947075265

`∑[A006530(Δ[A247778(n+1)])]`
-/

namespace A247786.P9221687207947075265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247786.P9221687207947075265

namespace A247786

/-- `∑[A006530(Δ[A247778(n+1)])]` -/
def P9221687207947075265.Spec : Prop :=
  ∀ n, P9221687207947075265.a n = A247786 (n + 1)

end A247786

/-! ## A247786.P2541056901293146434

`∑[A014963(Δ[A247778(n+1)])]`
-/

namespace A247786.P2541056901293146434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247786.P2541056901293146434

namespace A247786

/-- `∑[A014963(Δ[A247778(n+1)])]` -/
def P2541056901293146434.Spec : Prop :=
  ∀ n, P2541056901293146434.a n = A247786 (n + 1)

end A247786

/-! ## A247786.P8308113463012846888

`∑[A068484(Δ[A247778(n+1)])]`
-/

namespace A247786.P8308113463012846888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068484 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247786.P8308113463012846888

namespace A247786

/-- `∑[A068484(Δ[A247778(n+1)])]` -/
def P8308113463012846888.Spec : Prop :=
  ∀ n, P8308113463012846888.a n = A247786 (n + 1)

end A247786

/-! ## A247786.P4376149803090903579

`∑[A247778(Δ[A247778(n+1)])]`
-/

namespace A247786.P4376149803090903579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247786.P4376149803090903579

namespace A247786

/-- `∑[A247778(Δ[A247778(n+1)])]` -/
def P4376149803090903579.Spec : Prop :=
  ∀ n, P4376149803090903579.a n = A247786 (n + 1)

end A247786

/-! ## A247786.P11654063357277514879

`∑[runs[A247784(n+1)]]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A247786

/-- `∑[runs[A247784(n+1)]]` -/
def P11654063357277514879.Spec : Prop :=
  ∀ n, (P11654063357277514879.a n : ℤ) = A247786 (n + 1)

theorem P11654063357277514879.correct : P11654063357277514879.Spec := by
  intro n
  simp only [A247786, Nat.add_sub_cancel]

end A247786

/-! ## A247786.P15037278803782203799

`A023443(A247778(n+2))`
-/

namespace A247786.P15037278803782203799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A247778 (n + 2)).toNat

end

end A247786.P15037278803782203799

namespace A247786

/-- `A023443(A247778(n+2))` -/
def P15037278803782203799.Spec : Prop :=
  ∀ n, P15037278803782203799.a n = A247786 (n + 1)

end A247786

/-!
# A247787: Sum of divisors of 2*prime(n)-1.

The programs for A247787, the canonical program `A247787.P4047146788018274246` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247787 has offset 1).

The definition of A247787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247787.P4047146788018274246

`A000203(2*A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A247787

/-- `A000203(2*A000040(n+1)-1)` -/
def P4047146788018274246.Spec : Prop :=
  ∀ n, P4047146788018274246.a n = A247787 (n + 1)

theorem P4047146788018274246.correct : P4047146788018274246.Spec := by
  intro n
  simp only [A247787, Nat.add_sub_cancel]

end A247787

/-! ## A247787.P17278692228551456580

`∑{d}[row(A079704(n+1)), #]`
-/

namespace A247787.P17278692228551456580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A079704 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A247787.P17278692228551456580

namespace A247787

/-- `∑{d}[row(A079704(n+1)), #]` -/
def P17278692228551456580.Spec : Prop :=
  ∀ n, (P17278692228551456580.a n : ℤ) = A247787 (n + 1)

end A247787

/-! ## A247787.P5537602738239913385

`∑{d}[row(A117961(1+n)), #]`
-/

namespace A247787.P5537602738239913385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A117961 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A247787.P5537602738239913385

namespace A247787

/-- `∑{d}[row(A117961(1+n)), #]` -/
def P5537602738239913385.Spec : Prop :=
  ∀ n, (P5537602738239913385.a n : ℤ) = A247787 (n + 1)

end A247787

/-! ## A247787.P587085803989325436

`∑{d}[row(A179262(1+n)), #]`
-/

namespace A247787.P587085803989325436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A179262 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A247787.P587085803989325436

namespace A247787

/-- `∑{d}[row(A179262(1+n)), #]` -/
def P587085803989325436.Spec : Prop :=
  ∀ n, (P587085803989325436.a n : ℤ) = A247787 (n + 1)

end A247787

/-! ## A247787.P13226207355704471789

`∑{d}[A037168(1+n)+1, #]`
-/

namespace A247787.P13226207355704471789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (1 + n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247787.P13226207355704471789

namespace A247787

/-- `∑{d}[A037168(1+n)+1, #]` -/
def P13226207355704471789.Spec : Prop :=
  ∀ n, (P13226207355704471789.a n : ℤ) = A247787 (n + 1)

end A247787

/-! ## A247787.P10201470630707085594

`∑{d}[1-A100484(n+1), #]`
-/

namespace A247787.P10201470630707085594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A100484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247787.P10201470630707085594

namespace A247787

/-- `∑{d}[1-A100484(n+1), #]` -/
def P10201470630707085594.Spec : Prop :=
  ∀ n, (P10201470630707085594.a n : ℤ) = A247787 (n + 1)

end A247787

/-! ## A247787.P17751376092090539703

`∑{d}[2-A072055(n+1), #]`
-/

namespace A247787.P17751376092090539703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A072055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247787.P17751376092090539703

namespace A247787

/-- `∑{d}[2-A072055(n+1), #]` -/
def P17751376092090539703.Spec : Prop :=
  ∀ n, (P17751376092090539703.a n : ℤ) = A247787 (n + 1)

end A247787

/-! ## A247787.P11135729250997875661

`∑{d}[A076274(2+n), #]`
-/

namespace A247787.P11135729250997875661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (2 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247787.P11135729250997875661

namespace A247787

/-- `∑{d}[A076274(2+n), #]` -/
def P11135729250997875661.Spec : Prop :=
  ∀ n, (P11135729250997875661.a n : ℤ) = A247787 (n + 1)

end A247787

/-! ## A247787.P4898355710081302857

`∑{d}[1-A001747(n+2), #]`
-/

namespace A247787.P4898355710081302857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001747 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247787.P4898355710081302857

namespace A247787

/-- `∑{d}[1-A001747(n+2), #]` -/
def P4898355710081302857.Spec : Prop :=
  ∀ n, (P4898355710081302857.a n : ℤ) = A247787 (n + 1)

end A247787

/-! ## A247787.P15883467456230469152

`A000203(A076274(n+2))`
-/

namespace A247787.P15883467456230469152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A076274 (n + 2)).toNat

end

end A247787.P15883467456230469152

namespace A247787

/-- `A000203(A076274(n+2))` -/
def P15883467456230469152.Spec : Prop :=
  ∀ n, P15883467456230469152.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P17883883639742568306

`A008438(A006093(n+1))`
-/

namespace A247787.P17883883639742568306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (A006093 (n + 1)).toNat

end

end A247787.P17883883639742568306

namespace A247787

/-- `A008438(A006093(n+1))` -/
def P17883883639742568306.Spec : Prop :=
  ∀ n, P17883883639742568306.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P3627402012314091539

`A000593(A100484(n+1)-1)`
-/

namespace A247787.P3627402012314091539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A100484 (n + 1) - 1).toNat

end

end A247787.P3627402012314091539

namespace A247787

/-- `A000593(A100484(n+1)-1)` -/
def P3627402012314091539.Spec : Prop :=
  ∀ n, P3627402012314091539.a n = A247787 (n + 1)

end A247787

/-!
# A247788: Primes p such that sigma(2*p-1) = 3*(p-1).

The programs for A247788, there is no canonical definition to state claims against.
-/

/-! ## A247788.P10761580265039046610

`p?[A067684(n+1)+1]`
-/

namespace A247788.P10761580265039046610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067684 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A247788.P10761580265039046610

/-! ## A247788.P5772367949800759006

`A067684(A029447(n+1))+1`
-/

namespace A247788.P5772367949800759006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067684 (A029447 (n + 1)).toNat + 1

end

end A247788.P5772367949800759006

/-!
# A247789: Primes p such that sigma(2p-1) is a prime q.

The programs for A247789, there is no canonical definition to state claims against.
-/

/-! ## A247789.P3536163392945891644

`∩[A027862(n+1), A247820(n+1)]`
-/

namespace A247789.P3536163392945891644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247789.P3536163392945891644

/-! ## A247789.P371083355524891005

`∩[A247820(n+1), A308442(n+1)]`
-/

namespace A247789.P371083355524891005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247789.P371083355524891005

/-! ## A247789.P6953543083976003358

`∩[A027862(n+1), ceil(A278911(n+1)/2)]`
-/

namespace A247789.P6953543083976003358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A278911 (n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247789.P6953543083976003358

/-! ## A247789.P9966103563186612788

`∩[ceil(A278911(n+1)/2), A308442(n+1)]`
-/

namespace A247789.P9966103563186612788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A278911 (n + 1) : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247789.P9966103563186612788

/-! ## A247789.P10495501597295561197

`∩[round(A273459(n+1)/4), A308442(n+1)]`
-/

namespace A247789.P10495501597295561197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A273459 (n + 1) : ℚ) / 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A247789.P10495501597295561197

/-!
# A247792: a(n) = 9*n^2 + 1.

The programs for A247792, the canonical program `A247792.P16742175569055729181` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247792 has offset 0).

The definition of A247792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n²+1` (program `A247792.P16742175569055729181`, by `A247792.P16742175569055729181.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247792.P3307521909277954447

`(3*n)²+1`
-/

namespace A247792.P3307521909277954447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n) ^ 2 + 1

end

end A247792.P3307521909277954447

namespace A247792

/-- `(3*n)²+1` -/
def P3307521909277954447.Spec : Prop :=
  ∀ n, (P3307521909277954447.a n : ℤ) = A247792 n

theorem P3307521909277954447.correct : P3307521909277954447.Spec := by
  intro n
  simp only [A247792, Nat.add_sub_cancel, A247792.P3307521909277954447.a, A247792.P16742175569055729181.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A247792

/-! ## A247792.P16742175569055729181

`9*n²+1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A247792

/-- `9*n²+1` -/
def P16742175569055729181.Spec : Prop :=
  ∀ n, (P16742175569055729181.a n : ℤ) = A247792 n

theorem P16742175569055729181.correct : P16742175569055729181.Spec := by
  intro n
  simp only [A247792]

end A247792

/-! ## A247792.P78905617130870020

`ogf((1+7x+10x^2)/(1-3x+3x^2-x^3))`
-/

namespace A247792.P78905617130870020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 10] [1, -3, 3, -1] n

end

end A247792.P78905617130870020

namespace A247792

/-- `ogf((1+7x+10x^2)/(1-3x+3x^2-x^3))` -/
def P78905617130870020.Spec : Prop :=
  ∀ n, P78905617130870020.a n = A247792 n

end A247792

/-! ## A247792.P2588707972384709527

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=10, a(2)=37`
-/

namespace A247792.P2588707972384709527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 10, 37] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A247792.P2588707972384709527

namespace A247792

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2588707972384709527.Spec : Prop :=
  ∀ n, P2588707972384709527.a n = A247792 n

theorem P2588707972384709527.correct : P2588707972384709527.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A247792, Nat.add_sub_cancel, A247792.P2588707972384709527.a, A247792.P16742175569055729181.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A247792, Nat.add_sub_cancel, A247792.P2588707972384709527.a, A247792.P16742175569055729181.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A247792

/-! ## A247792.P3494307243696805769

`filter[n²+1, dr(#)]`
-/

namespace A247792.P3494307243696805769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => SequenceMachineLib.digitalRoot (f1 j : ℤ) = 1) n)

end

end A247792.P3494307243696805769

namespace A247792

/-- `filter[n²+1, dr(#)]` -/
def P3494307243696805769.Spec : Prop :=
  ∀ n, (P3494307243696805769.a n : ℤ) = A247792 n

end A247792

/-! ## A247792.P14502490465677965137

`abs(xor(-1, (3*n)²))`
-/

namespace A247792.P14502490465677965137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) ((3 * n) ^ 2 : ℤ)|

end

end A247792.P14502490465677965137

namespace A247792

/-- `abs(xor(-1, (3*n)²))` -/
def P14502490465677965137.Spec : Prop :=
  ∀ n, P14502490465677965137.a n = A247792 n

end A247792

/-! ## A247792.P1076744733165174625

`-xor(-1, (3*n)²)`
-/

namespace A247792.P1076744733165174625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) ((3 * n) ^ 2 : ℤ)

end

end A247792.P1076744733165174625

namespace A247792

/-- `-xor(-1, (3*n)²)` -/
def P1076744733165174625.Spec : Prop :=
  ∀ n, P1076744733165174625.a n = A247792 n

end A247792

/-! ## A247792.P1047385640533346585

`filter[n²+1, #%3]`
-/

namespace A247792.P1047385640533346585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => f1 j % 3 = 1) n)

end

end A247792.P1047385640533346585

namespace A247792

/-- `filter[n²+1, #%3]` -/
def P1047385640533346585.Spec : Prop :=
  ∀ n, (P1047385640533346585.a n : ℤ) = A247792 n

end A247792

/-! ## A247792.P1641595466110266600

`ceil(1/acot((3*n)²))`
-/

namespace A247792.P1641595466110266600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot ((3 * n) ^ 2 : ℝ)⌉

end

end A247792.P1641595466110266600

namespace A247792

/-- `ceil(1/acot((3*n)²))` -/
def P1641595466110266600.Spec : Prop :=
  ∀ n, P1641595466110266600.a n = A247792 n

end A247792

/-! ## A247792.P14768452971753498840

`(1/sin(acot(3*n)))²`
-/

namespace A247792.P14768452971753498840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 / Real.sin (SequenceMachineLib.acot (3 * n : ℝ))) ^ 2

end

end A247792.P14768452971753498840

namespace A247792

/-- `(1/sin(acot(3*n)))²` -/
def P14768452971753498840.Spec : Prop :=
  ∀ n, P14768452971753498840.a n = (A247792 n : ℝ)

end A247792

/-! ## A247792.P17946040574321913470

`∑[a(n-1)+18]` with `a(0)=1, a(1)=9`
-/

namespace A247792.P17946040574321913470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247792.P17946040574321913470

namespace A247792

/-- `∑[a(n-1)+18]` -/
def P17946040574321913470.Spec : Prop :=
  ∀ n, (P17946040574321913470.a n : ℤ) = A247792 n

end A247792

/-! ## A247792.P9363540766104240996

`∑[record[(9*n)^(n%2)]]`
-/

namespace A247792.P9363540766104240996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * n) ^ (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247792.P9363540766104240996

namespace A247792

/-- `∑[record[(9*n)^(n%2)]]` -/
def P9363540766104240996.Spec : Prop :=
  ∀ n, (P9363540766104240996.a n : ℤ) = A247792 n

end A247792

/-! ## A247792.P821784565310463900

`∑[ogf((1+7x+10x^2)/(1-2x+x^2))]`
-/

namespace A247792.P821784565310463900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247792.P821784565310463900

namespace A247792

/-- `∑[ogf((1+7x+10x^2)/(1-2x+x^2))]` -/
def P821784565310463900.Spec : Prop :=
  ∀ n, P821784565310463900.a n = A247792 n

end A247792

/-! ## A247792.P2408927796036740802

`10-∑[a(n-1)-18]` with `a(0)=9`
-/

namespace A247792.P2408927796036740802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  f1 (n - 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247792.P2408927796036740802

namespace A247792

/-- `10-∑[a(n-1)-18]` -/
def P2408927796036740802.Spec : Prop :=
  ∀ n, P2408927796036740802.a n = A247792 n

end A247792

/-! ## A247792.P15313018727250641709

`(A195321(n)+2)/2`
-/

namespace A247792.P15313018727250641709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195321 n + 2 : ℚ) / 2

end

end A247792.P15313018727250641709

namespace A247792

/-- `(A195321(n)+2)/2` -/
def P15313018727250641709.Spec : Prop :=
  ∀ n, P15313018727250641709.a n = (A247792 n : ℚ)

theorem P15313018727250641709.correct : P15313018727250641709.Spec := by
  intro n
  simp only [A247792, Nat.add_sub_cancel, A247792.P15313018727250641709.a, A247792.P16742175569055729181.a, A195321, A195321.P9690014683711486293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247792

/-! ## A247792.P3231351009346272156

`(A244634(n)+3)/3`
-/

namespace A247792.P3231351009346272156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244634 n + 3 : ℚ) / 3

end

end A247792.P3231351009346272156

namespace A247792

/-- `(A244634(n)+3)/3` -/
def P3231351009346272156.Spec : Prop :=
  ∀ n, P3231351009346272156.a n = (A247792 n : ℚ)

theorem P3231351009346272156.correct : P3231351009346272156.Spec := by
  intro n
  simp only [A247792, Nat.add_sub_cancel, A247792.P3231351009346272156.a, A247792.P16742175569055729181.a, A244634, A244634.P2988327600076018202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247792

/-! ## A247792.P15548216517315517745

`xor(A010684(n), A016766(n))`
-/

namespace A247792.P15548216517315517745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A016766 n)

end

end A247792.P15548216517315517745

namespace A247792

/-- `xor(A010684(n), A016766(n))` -/
def P15548216517315517745.Spec : Prop :=
  ∀ n, P15548216517315517745.a n = A247792 n

end A247792

/-! ## A247792.P13196267821470154956

`A016781(n)%A185939(n+1)`
-/

namespace A247792.P13196267821470154956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016781 n) (A185939 (n + 1))

end

end A247792.P13196267821470154956

namespace A247792

/-- `A016781(n)%A185939(n+1)` -/
def P13196267821470154956.Spec : Prop :=
  ∀ n, P13196267821470154956.a n = A247792 n

end A247792

/-! ## A247792.P2408077015707964950

`A086605(n+1)/(n+1)`
-/

namespace A247792.P2408077015707964950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086605 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A247792.P2408077015707964950

namespace A247792

/-- `A086605(n+1)/(n+1)` -/
def P2408077015707964950.Spec : Prop :=
  ∀ n, P2408077015707964950.a n = (A247792 n : ℚ)

theorem P2408077015707964950.correct : P2408077015707964950.Spec := by
  intro n
  simp only [A247792, Nat.add_sub_cancel, A247792.P2408077015707964950.a, A247792.P16742175569055729181.a, A086605, A086605.P4140281209324293466.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A247792

/-!
# A247794: a(n)^3 is the least cube to contain exactly n distinct digits.

The programs for A247794, there is no canonical definition to state claims against.
-/

/-! ## A247794.P12712676854915637569

`A322530(2*A160663(n+1))`
-/

namespace A247794.P12712676854915637569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322530 (2 * A160663 (n + 1)).toNat

end

end A247794.P12712676854915637569

/-! ## A247794.P1193300644780409084

`A094192(A260771(n))-A007814(3*n+4)`
-/

namespace A247794.P1193300644780409084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (A260771 n).toNat - A007814 (3 * n + 4)

end

end A247794.P1193300644780409084

/-!
# A247795: Irregular triangle read by rows in which row n lists the parities of the divisors of n.

The programs for A247795, there is no canonical definition to state claims against.
-/

/-! ## A247795.P4245333993585675984

`A027750(1+n)%2`
-/

namespace A247795.P4245333993585675984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027750 (1 + n)) 2

end

end A247795.P4245333993585675984

/-! ## A247795.P8087614255123896784

`A182620(1+n)%2`
-/

namespace A247795.P8087614255123896784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182620 (1 + n)) 2

end

end A247795.P8087614255123896784

/-! ## A247795.P13596262963788099528

`and(1, A027750(n+1))`
-/

namespace A247795.P13596262963788099528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027750 (n + 1))

end

end A247795.P13596262963788099528

/-! ## A247795.P9343490977338766822

`and(1, A233773(1+n))`
-/

namespace A247795.P9343490977338766822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A233773 (1 + n))

end

end A247795.P9343490977338766822

/-! ## A247795.P7719682249263830540

`and(1, A394898(n+1))`
-/

namespace A247795.P7719682249263830540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A394898 (n + 1))

end

end A247795.P7719682249263830540

/-! ## A247795.P14058272653389422095

`(A263730(2+n)+1)%2`
-/

namespace A247795.P14058272653389422095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263730 (2 + n) + 1) 2

end

end A247795.P14058272653389422095

/-! ## A247795.P10359787217761261054

`A000035(A027750(n+1))`
-/

namespace A247795.P10359787217761261054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A027750 (n + 1)).toNat

end

end A247795.P10359787217761261054

/-! ## A247795.P2841739652053944458

`A059841(A263730(n+2))`
-/

namespace A247795.P2841739652053944458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A263730 (n + 2)).toNat

end

end A247795.P2841739652053944458

/-! ## A247795.P1985685271431151539

`A279024(2*A027750(n+1))`
-/

namespace A247795.P1985685271431151539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279024 (2 * A027750 (n + 1)).toNat

end

end A247795.P1985685271431151539

/-! ## A247795.P16791700659346574574

`A000007(val(A027750(n+1), 2))`
-/

namespace A247795.P16791700659346574574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A027750 (n + 1)).toNat 2)

end

end A247795.P16791700659346574574

/-! ## A247795.P16786941815084992699

`∏{p}[A027750(n+1), A324827(#)]`
-/

namespace A247795.P16786941815084992699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A324827 p

end

end A247795.P16786941815084992699

/-! ## A247795.P1459454354866890612

`2-A000034(A027750(n+1)+1)`
-/

namespace A247795.P1459454354866890612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000034 (A027750 (n + 1) + 1).toNat

end

end A247795.P1459454354866890612

/-! ## A247795.P6466737834352997975

`A121262(2*(A027750(n+1)+1))`
-/

namespace A247795.P6466737834352997975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (2 * (A027750 (n + 1) + 1)).toNat

end

end A247795.P6466737834352997975

/-! ## A247795.P2069354980922879145

`A176895(2*A027750(n+1))-1`
-/

namespace A247795.P2069354980922879145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 (2 * A027750 (n + 1)).toNat - 1

end

end A247795.P2069354980922879145

/-! ## A247795.P4253160098268913748

`2-ceil(3/A020639(A027750(n+1)+2))`
-/

namespace A247795.P4253160098268913748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈3 / (A020639 (A027750 (n + 1) + 2).toNat : ℚ)⌉

end

end A247795.P4253160098268913748

/-! ## A247795.P8104796399657509902

`A005369(A129308(A027750(n+1))²)`
-/

namespace A247795.P8104796399657509902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A129308 (A027750 (n + 1)).toNat ^ 2).toNat

end

end A247795.P8104796399657509902

/-! ## A247795.P3623860524084025364

`A393396(n+1)%2`
-/

namespace A247795.P3623860524084025364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A393396 (n + 1)) 2

end

end A247795.P3623860524084025364

/-! ## A247795.P17083882574335707280

`A376583(A056534(n+1))`
-/

namespace A247795.P17083882574335707280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376583 (A056534 (n + 1)).toNat

end

end A247795.P17083882574335707280

/-! ## A247795.P960166392082512061

`A322860(A225561(A027750(n+1)²))`
-/

namespace A247795.P960166392082512061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322860 (A225561 (A027750 (n + 1) ^ 2).toNat).toNat

end

end A247795.P960166392082512061

/-! ## A247795.P7357974489376495979

`and(A195744(n), A393396(n+1))`
-/

namespace A247795.P7357974489376495979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A195744 n) (A393396 (n + 1))

end

end A247795.P7357974489376495979

/-!
# A247797: Lexicographically earliest permutation of prime numbers, such that adjacent terms have coprime sums of digits in decimal representation.

The programs for A247797, there is no canonical definition to state claims against.
-/

/-! ## A247797.P13191685653346231617

`A000040(A250552(1+n))`
-/

namespace A247797.P13191685653346231617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A250552 (1 + n)).toNat

end

end A247797.P13191685653346231617

/-! ## A247797.P14597794203842021500

`A008578(A250552(1+n)+1)`
-/

namespace A247797.P14597794203842021500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A250552 (1 + n) + 1).toNat

end

end A247797.P14597794203842021500

/-! ## A247797.P172062717289092643

`A266502(A049078(n+1))+A006005(A250552(n+1))`
-/

namespace A247797.P172062717289092643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (A049078 (n + 1)).toNat + A006005 (A250552 (n + 1)).toNat

end

end A247797.P172062717289092643

/-! ## A247797.P11509608403313298222

`A266502(n²)+A006005(A250552(n+1))`
-/

namespace A247797.P11509608403313298222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266502 (n ^ 2) + A006005 (A250552 (n + 1)).toNat

end

end A247797.P11509608403313298222

/-! ## A247797.P1444760370159596189

`A069678(A250552(n+1))`
-/

namespace A247797.P1444760370159596189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069678 (A250552 (n + 1)).toNat

end

end A247797.P1444760370159596189

/-!
# A247798: n-th positive integer relatively prime to 2*n - 1.

The programs for A247798, there is no canonical definition to state claims against.
-/

/-! ## A247798.P3766265578656541783

`A077581(1+∑[4*n])`
-/

namespace A247798.P3766265578656541783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A247798.P3766265578656541783

/-! ## A247798.P6406161117776276495

`A083106((1+n)²+n²)`
-/

namespace A247798.P6406161117776276495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083106 ((1 + n) ^ 2 + n ^ 2)

end

end A247798.P6406161117776276495

/-! ## A247798.P5109645612780109493

`A083110(2+(n+1)*2*n)`
-/

namespace A247798.P5109645612780109493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083110 (2 + (n + 1) * (2 * n))

end

end A247798.P5109645612780109493

/-! ## A247798.P13378372152397991586

`A077664(∑[4*n]+1)-1-n-n`
-/

namespace A247798.P13378372152397991586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077664 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1 - (n : ℤ) - (n : ℤ)

end

end A247798.P13378372152397991586

/-! ## A247798.P17516242149811122831

`floor(∑{d}[(2*n+1)^4, (n+1)/#])`
-/

namespace A247798.P17516242149811122831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)⌋

end

end A247798.P17516242149811122831

/-!
# A247799: a(0) = 1; a(n) = a(n-1) + (if n = a(k) for some k then k else n).

The programs for A247799, there is no canonical definition to state claims against.
-/

/-! ## A247799.P15212103563202789764

`∑[n]-A347739(A208355(n))`
-/

namespace A247799.P15212103563202789764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A347739 (A208355 n).toNat

end

end A247799.P15212103563202789764

/-! ## A247799.P3226944849405347126

`A177754(n+1)-A236859(A000085(n))`
-/

namespace A247799.P3226944849405347126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177754 (n + 1) - A236859 (A000085 n).toNat

end

end A247799.P3226944849405347126

/-! ## A247799.P14362973855277177542

`A177754(n+1)-A326584(A056612(n+1))`
-/

namespace A247799.P14362973855277177542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177754 (n + 1) - A326584 (A056612 (n + 1)).toNat

end

end A247799.P14362973855277177542

/-! ## A247799.P10944122348545530780

`∑[A053735(n*A035053(n))]`
-/

namespace A247799.P10944122348545530780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 ((n : ℤ) * A035053 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247799.P10944122348545530780

/-! ## A247799.P17542296868233915870

`∑[A001222(A035983(n+1)*A292158(n+1))]`
-/

namespace A247799.P17542296868233915870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A035983 (n + 1) * A292158 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247799.P17542296868233915870

