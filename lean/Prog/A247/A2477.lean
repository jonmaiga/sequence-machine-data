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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

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

/-! ## A247700.P3112515426759501776

`A139337(∪[A247701(3*n+2), A108571(n+1)])`
-/

namespace A247700.P3112515426759501776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247701 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108571 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A247700.P3112515426759501776

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

/-! ## A247710.P1777848463985696940

`A060351(2^n*C(n+7, 7)/ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A247710.P1777848463985696940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (SequenceMachineLib.roundAway ((2 ^ n * Nat.choose (n + 7) 7 : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ))).toNat

end

end A247710.P1777848463985696940

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

/-! ## A247713.P7720219752299305873

`A247702(n)+A241465(A000041(n))`
-/

namespace A247713.P7720219752299305873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247702 n + A241465 (A000041 n).toNat

end

end A247713.P7720219752299305873

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

/-! ## A247714.P1057025407728467258

`A372744(A255975(n+1))`
-/

namespace A247714.P1057025407728467258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372744 (A255975 (n + 1)).toNat

end

end A247714.P1057025407728467258

/-! ## A247714.P3826644210784198349

`and(-1, A255975(A038722(n+1)))`
-/

namespace A247714.P3826644210784198349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A255975 (A038722 (n + 1)).toNat)

end

end A247714.P3826644210784198349

/-! ## A247714.P8814719240398405676

`A255975(A038722(n+1))%A155212(n)`
-/

namespace A247714.P8814719240398405676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255975 (A038722 (n + 1)).toNat) (A155212 n)

end

end A247714.P8814719240398405676

/-! ## A247714.P12472685671200000929

`A322026(A036561(n))`
-/

namespace A247714.P12472685671200000929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A036561 n).toNat

end

end A247714.P12472685671200000929

/-! ## A247714.P10495352311277531475

`A322026(A230445(n)+1)`
-/

namespace A247714.P10495352311277531475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A230445 n + 1).toNat

end

end A247714.P10495352311277531475

/-! ## A247714.P12581890777730903974

`A322026(A094617(n+1)-1)`
-/

namespace A247714.P12581890777730903974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (A094617 (n + 1) - 1).toNat

end

end A247714.P12581890777730903974

/-! ## A247714.P130120765101071460

`A322026(A038233(n)/A038207(n))`
-/

namespace A247714.P130120765101071460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (SequenceMachineLib.roundAway ((A038233 n : ℚ) / (A038207 n : ℚ))).toNat

end

end A247714.P130120765101071460

/-! ## A247714.P349380166458804648

`A322026(2*A013620(n)/A028326(n))`
-/

namespace A247714.P349380166458804648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (SequenceMachineLib.roundAway (2 * ((A013620 n : ℚ) / (A028326 n : ℚ)))).toNat

end

end A247714.P349380166458804648

/-! ## A247714.P12143892224157642644

`A331175(3*A036561(n))`
-/

namespace A247714.P12143892224157642644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331175 (3 * A036561 n).toNat

end

end A247714.P12143892224157642644

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

The programs for A247720, the canonical program `A247720.P14333623328461256008` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247720 has offset 1).

The definition of A247720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247720.P14333623328461256008

`2*a(n-1)+2*a(n-4)-4*a(n-5)` with `a(0)=48, a(1)=90, a(2)=172, a(3)=334, a(4)=656`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247720

/-- `2*a(n-1)+2*a(n-4)-4*a(n-5)` -/
def P14333623328461256008.Spec : Prop :=
  ∀ n, P14333623328461256008.a n = A247720 (n + 1)

theorem P14333623328461256008.correct : P14333623328461256008.Spec := by
  intro n
  simp only [A247720, Nat.add_sub_cancel]

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

/-! ## A247721.P6071025764466258083

`lcm(2, A247726(A034856(n+2)))`
-/

namespace A247721.P6071025764466258083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247726 (A034856 (n + 2)).toNat)

end

end A247721.P6071025764466258083

/-! ## A247721.P6603581484428019666

`char[A002251(n)]*A247726(A055999(n)+4)`
-/

namespace A247721.P6603581484428019666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A247726 (A055999 n + 4).toNat

end

end A247721.P6603581484428019666

/-! ## A247721.P7055799048240776870

`A247726(A034856(n+2))+A000007(n+1)`
-/

namespace A247721.P7055799048240776870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A247721.P7055799048240776870

/-! ## A247721.P4159334235074827726

`A247726(A055999(n)+4)+A000007(n+1)`
-/

namespace A247721.P4159334235074827726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A055999 n + 4).toNat + A000007 (n + 1)

end

end A247721.P4159334235074827726

/-! ## A247721.P13374206328948963668

`and(A057428(n+1), A247726(A034856(n+2)))`
-/

namespace A247721.P13374206328948963668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A247726 (A034856 (n + 2)).toNat)

end

end A247721.P13374206328948963668

/-! ## A247721.P2608480901091458531

`A007913((n+1)²)*A247726(A034856(n+2))`
-/

namespace A247721.P2608480901091458531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((n + 1) ^ 2) * A247726 (A034856 (n + 2)).toNat

end

end A247721.P2608480901091458531

/-! ## A247721.P12652936892767286096

`A001222(A007522(n+1))*A247726(A034856(n+2))`
-/

namespace A247721.P12652936892767286096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007522 (n + 1)).toNat * A247726 (A034856 (n + 2)).toNat

end

end A247721.P12652936892767286096

/-! ## A247721.P7102386388521176697

`A000040(A000040(n+1)+1)%2*A247726(A034856(n+2))`
-/

namespace A247721.P7102386388521176697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A000040 (n + 1) + 1).toNat) 2 * A247726 (A034856 (n + 2)).toNat

end

end A247721.P7102386388521176697

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

/-! ## A247722.P12667937350670877346

`A247726(A055998(n+2))`
-/

namespace A247722.P12667937350670877346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A055998 (n + 2)).toNat

end

end A247722.P12667937350670877346

/-! ## A247722.P17330070947197001671

`A247726(A056000(n)+7)`
-/

namespace A247722.P17330070947197001671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A056000 n + 7).toNat

end

end A247722.P17330070947197001671

/-! ## A247722.P17508490765453101269

`A247726(Δ[A034857(n+1)])`
-/

namespace A247722.P17508490765453101269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (f1 (n + 1) - f1 n).toNat

end

end A247722.P17508490765453101269

/-! ## A247722.P15614619373915552411

`A247726(A052905(n+1)+2)`
-/

namespace A247722.P15614619373915552411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A052905 (n + 1) + 2).toNat

end

end A247722.P15614619373915552411

/-! ## A247722.P7913505154631587490

`A247726(lt[A247726(n+1), n]-2)`
-/

namespace A247722.P7913505154631587490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 2)

end

end A247722.P7913505154631587490

/-! ## A247722.P7728697231664066295

`A247726(A167614(n+1)+2*n+1)`
-/

namespace A247722.P7728697231664066295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167614 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A247722.P7728697231664066295

/-! ## A247722.P5933241609849885657

`A247726(A001972(2*(n+2))+n+1)`
-/

namespace A247722.P5933241609849885657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A001972 (2 * (n + 2)) + (n : ℤ) + 1).toNat

end

end A247722.P5933241609849885657

/-! ## A247722.P11542539383996508141

`A247726(A167499(n)+A016777(n))`
-/

namespace A247722.P11542539383996508141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167499 n + A016777 n).toNat

end

end A247722.P11542539383996508141

/-! ## A247722.P14243070302547416238

`A247726(A005408(n)+A167499(n)+n)`
-/

namespace A247722.P14243070302547416238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A005408 n + (A167499 n + (n : ℤ))).toNat

end

end A247722.P14243070302547416238

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

/-! ## A247723.P14344210465727188824

`A247726(A046691(n+3))`
-/

namespace A247723.P14344210465727188824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A046691 (n + 3)).toNat

end

end A247723.P14344210465727188824

/-! ## A247723.P17819905312777209582

`A247726(Δ[A023545(n+1)])`
-/

namespace A247723.P17819905312777209582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (f1 (n + 1) - f1 n).toNat

end

end A247723.P17819905312777209582

/-! ## A247723.P14102383250997001706

`A247726(A055999(n+2)+2)`
-/

namespace A247723.P14102383250997001706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A055999 (n + 2) + 2).toNat

end

end A247723.P14102383250997001706

/-! ## A247723.P1053321429288699456

`A247726(lt[A247726(n+4), n])`
-/

namespace A247723.P1053321429288699456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A247723.P1053321429288699456

/-! ## A247723.P1201351518082408648

`A247726(Δ[A034857(n+2)]-1)`
-/

namespace A247723.P1201351518082408648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (f1 (n + 1) - f1 n - 1).toNat

end

end A247723.P1201351518082408648

/-! ## A247723.P12766917790875455219

`A247726(A034856(n+3)+n+3)`
-/

namespace A247723.P12766917790875455219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A034856 (n + 3) + (n + 3 : ℤ)).toNat

end

end A247723.P12766917790875455219

/-! ## A247723.P16250647644436297241

`A247726(A167614(n+1)+3*n+5)`
-/

namespace A247723.P16250647644436297241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167614 (n + 1) + (3 * n + 5 : ℤ)).toNat

end

end A247723.P16250647644436297241

/-! ## A247723.P6971687654340563793

`A247726(A264443(n+1)-A264443(n))`
-/

namespace A247723.P6971687654340563793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A264443 (n + 1) - A264443 n).toNat

end

end A247723.P6971687654340563793

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

/-! ## A247724.P14012198675485843957

`A247726(A055999(n+3)+1)`
-/

namespace A247724.P14012198675485843957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A055999 (n + 3) + 1).toNat

end

end A247724.P14012198675485843957

/-! ## A247724.P12522099646460649824

`A247726(A000217(n+6)-5)`
-/

namespace A247724.P12522099646460649824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000217 (n + 6) - 5).toNat

end

end A247724.P12522099646460649824

/-! ## A247724.P12513010078464072580

`A247726(Δ[Δ[A006504(n+1)]])`
-/

namespace A247724.P12513010078464072580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (f1 (n + 1) - f1 n).toNat

end

end A247724.P12513010078464072580

/-! ## A247724.P426325471859801426

`A247726(Δ[A264443(n+1)]-1)`
-/

namespace A247724.P426325471859801426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (f1 (n + 1) - f1 n - 1).toNat

end

end A247724.P426325471859801426

/-! ## A247724.P15831790032617882359

`A247726(Δ[A023545(n+2)]-1)`
-/

namespace A247724.P15831790032617882359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (f1 (n + 1) - f1 n - 1).toNat

end

end A247724.P15831790032617882359

/-! ## A247724.P1771260371833636489

`A247726(A167499(n+3)+A005408(n))`
-/

namespace A247724.P1771260371833636489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167499 (n + 3) + A005408 n).toNat

end

end A247724.P1771260371833636489

/-! ## A247724.P2059962151878540329

`A247726(A008585(2*n+5)+A000124(n))`
-/

namespace A247724.P2059962151878540329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A008585 (2 * n + 5) + A000124 n).toNat

end

end A247724.P2059962151878540329

/-! ## A247724.P419130309932338221

`A247726(A000124(n+8)-A005408(n+10))`
-/

namespace A247724.P419130309932338221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000124 (n + 8) - A005408 (n + 10)).toNat

end

end A247724.P419130309932338221

/-! ## A247724.P10891083777926940050

`A247726(A000124(n+8)-A267872(n+10))`
-/

namespace A247724.P10891083777926940050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000124 (n + 8) - A267872 (n + 10)).toNat

end

end A247724.P10891083777926940050

/-!
# A247725: Number of length n+3 0..7 arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247725, there is no canonical definition to state claims against.
-/

/-! ## A247725.P15126335775675395778

`A247726(A055999(n+4))`
-/

namespace A247725.P15126335775675395778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A055999 (n + 4)).toNat

end

end A247725.P15126335775675395778

/-! ## A247725.P12155989859003849572

`A247726(A052905(n+4)-1)`
-/

namespace A247725.P12155989859003849572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A052905 (n + 4) - 1).toNat

end

end A247725.P12155989859003849572

/-! ## A247725.P5454526398193517798

`A247726(A000124(n+7)-7)`
-/

namespace A247725.P5454526398193517798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000124 (n + 7) - 7).toNat

end

end A247725.P5454526398193517798

/-! ## A247725.P1386090687594702145

`A247726(A000217(n+6)+n+1)`
-/

namespace A247725.P1386090687594702145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A247725.P1386090687594702145

/-! ## A247725.P4414885867791728257

`A247726(A167499(n+3)+A016777(n+2))`
-/

namespace A247725.P4414885867791728257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167499 (n + 3) + A016777 (n + 2)).toNat

end

end A247725.P4414885867791728257

/-!
# A247727: Number of length 1+3 0..n arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247727, the canonical program `A247727.P11924812954014487788` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247727 has offset 1).

The definition of A247727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A247727.P11924812954014487788

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=8, a(1)=48, a(2)=168, a(3)=440, a(4)=960`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247727

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11924812954014487788.Spec : Prop :=
  ∀ n, P11924812954014487788.a n = A247727 (n + 1)

theorem P11924812954014487788.correct : P11924812954014487788.Spec := by
  intro n
  simp only [A247727, Nat.add_sub_cancel]

end A247727

/-! ## A247727.P6810316539704516032

`8*C(∑[n+1]+1, 2)`
-/

namespace A247727.P6810316539704516032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 2

end

end A247727.P6810316539704516032

namespace A247727

/-- `8*C(∑[n+1]+1, 2)` -/
def P6810316539704516032.Spec : Prop :=
  ∀ n, (P6810316539704516032.a n : ℤ) = A247727 (n + 1)

end A247727

/-! ## A247727.P7954783894091257870

`(n*(n+3)+3)²-1`
-/

namespace A247727.P7954783894091257870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (n + 3) + 3) ^ 2 : ℤ) - 1

end

end A247727.P7954783894091257870

namespace A247727

/-- `(n*(n+3)+3)²-1` -/
def P7954783894091257870.Spec : Prop :=
  ∀ n, P7954783894091257870.a n = A247727 (n + 1)

theorem P7954783894091257870.correct : P7954783894091257870.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A247727, Nat.add_sub_cancel, A247727.P7954783894091257870.a, A247727.P11924812954014487788.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A247727, Nat.add_sub_cancel, A247727.P7954783894091257870.a, A247727.P11924812954014487788.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A247727

/-! ## A247727.P5558016626818065428

`xor(1, (n*(n+3)+3)²)`
-/

namespace A247727.P5558016626818065428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n * (n + 3) + 3) ^ 2)

end

end A247727.P5558016626818065428

namespace A247727

/-- `xor(1, (n*(n+3)+3)²)` -/
def P5558016626818065428.Spec : Prop :=
  ∀ n, (P5558016626818065428.a n : ℤ) = A247727 (n + 1)

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

/-! ## A247727.P13283114432248899191

`∑[n+1]*∑[a(n-1)+4]` with `a(0)=8, a(1)=8`
-/

namespace A247727.P13283114432248899191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 8] fun n f2 =>
  f2 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A247727.P13283114432248899191

namespace A247727

/-- `∑[n+1]*∑[a(n-1)+4]` -/
def P13283114432248899191.Spec : Prop :=
  ∀ n, (P13283114432248899191.a n : ℤ) = A247727 (n + 1)

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

/-! ## A247727.P10894905662908524823

`A221466(n+1)%A269538(n+1)`
-/

namespace A247727.P10894905662908524823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221466 (n + 1)) (A269538 (n + 1))

end

end A247727.P10894905662908524823

namespace A247727

/-- `A221466(n+1)%A269538(n+1)` -/
def P10894905662908524823.Spec : Prop :=
  ∀ n, P10894905662908524823.a n = A247727 (n + 1)

end A247727

/-!
# A247728: Number of length 2+3 0..n arrays with no disjoint pairs in any consecutive four terms having the same sum.

The programs for A247728, there is no canonical definition to state claims against.
-/

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

/-! ## A247728.P8628673441485020342

`lcm(2, A247726(A167487(n)-5))`
-/

namespace A247728.P8628673441485020342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247726 (A167487 n - 5).toNat)

end

end A247728.P8628673441485020342

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

/-! ## A247728.P5396163477844169870

`A247726(A167487(n)-5)%A154106(n)²`
-/

namespace A247728.P5396163477844169870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247726 (A167487 n - 5).toNat) (A154106 n ^ 2)

end

end A247728.P5396163477844169870

/-! ## A247728.P13423927923359085905

`A007318(∑[n])*A247726(A167487(n)-5)`
-/

namespace A247728.P13423927923359085905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A247726 (A167487 n - 5).toNat

end

end A247728.P13423927923359085905

/-! ## A247728.P3599585571845766967

`A247726(A167487(n)-5)+A000007(n+1)`
-/

namespace A247728.P3599585571845766967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167487 n - 5).toNat + A000007 (n + 1)

end

end A247728.P3599585571845766967

/-! ## A247728.P1374377339791292698

`A247726(A167487(n)-5)+C(2, A000203(n+2))`
-/

namespace A247728.P1374377339791292698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167487 n - 5).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A247728.P1374377339791292698

/-! ## A247728.P16375976550219147506

`A001222(A061238(n+1))*A247726(A167487(n)-5)`
-/

namespace A247728.P16375976550219147506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061238 (n + 1)).toNat * A247726 (A167487 n - 5).toNat

end

end A247728.P16375976550219147506

/-! ## A247728.P16505161594138608376

`A032742(A075019(n+1))*A247726(A167487(n)-5)`
-/

namespace A247728.P16505161594138608376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A075019 (n + 1)).toNat * A247726 (A167487 n - 5).toNat

end

end A247728.P16505161594138608376

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

/-! ## A247729.P18026211405512051555

`lcm(2, A247726(A167614(n+1)))`
-/

namespace A247729.P18026211405512051555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A247726 (A167614 (n + 1)).toNat)

end

end A247729.P18026211405512051555

/-! ## A247729.P13693991792864570296

`A247726(A167614(n+1))%A016889(n)`
-/

namespace A247729.P13693991792864570296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247726 (A167614 (n + 1)).toNat) (A016889 n)

end

end A247729.P13693991792864570296

/-! ## A247729.P11448964763422561640

`char[A002262(n)]*A247726(A167614(n+1))`
-/

namespace A247729.P11448964763422561640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A247726 (A167614 (n + 1)).toNat

end

end A247729.P11448964763422561640

/-! ## A247729.P17475747762619971199

`A033999(2*n)*A247726(A167499(n)+n)`
-/

namespace A247729.P17475747762619971199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A247726 (A167499 n + (n : ℤ)).toNat

end

end A247729.P17475747762619971199

/-! ## A247729.P1421250750586736644

`A247726(A167614(n+1))+A033999(n)²-1`
-/

namespace A247729.P1421250750586736644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167614 (n + 1)).toNat + (A033999 n ^ 2 - 1)

end

end A247729.P1421250750586736644

/-! ## A247729.P14124767305031270151

`A088705(2*n+1)*A247726(A167614(n+1))`
-/

namespace A247729.P14124767305031270151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (2 * n + 1) * A247726 (A167614 (n + 1)).toNat

end

end A247729.P14124767305031270151

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

/-! ## A247730.P9723475860143199497

`A247726(A055999(n)+10)`
-/

namespace A247730.P9723475860143199497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A055999 n + 10).toNat

end

end A247730.P9723475860143199497

/-! ## A247730.P16258752860386588549

`A247726(A167614(n+2)+1)`
-/

namespace A247730.P16258752860386588549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167614 (n + 2) + 1).toNat

end

end A247730.P16258752860386588549

/-! ## A247730.P7775574262879286688

`A247726(A166136(n+2)-2)`
-/

namespace A247730.P7775574262879286688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A166136 (n + 2) - 2).toNat

end

end A247730.P7775574262879286688

/-! ## A247730.P6142581233147151001

`A247726(A167487(n+2)-3)`
-/

namespace A247730.P6142581233147151001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167487 (n + 2) - 3).toNat

end

end A247730.P6142581233147151001

/-! ## A247730.P12623929112987737964

`A247726(A055998(n+1)+7)`
-/

namespace A247730.P12623929112987737964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A055998 (n + 1) + 7).toNat

end

end A247730.P12623929112987737964

/-! ## A247730.P12215344115583830854

`A247726(Δ[A264443(n)-n²])`
-/

namespace A247730.P12215344115583830854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (f1 (n + 1) - f1 n).toNat

end

end A247730.P12215344115583830854

/-! ## A247730.P13812216959377999539

`A247726(A166136(n+1)+1+n)`
-/

namespace A247730.P13812216959377999539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A247730.P13812216959377999539

/-! ## A247730.P4768501278752761546

`A247726(A167499(n)+2*(n+2))`
-/

namespace A247730.P4768501278752761546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167499 n + (2 * (n + 2) : ℤ)).toNat

end

end A247730.P4768501278752761546

/-! ## A247730.P12576012201308031759

`A247726(Δ[A023545(n+1)-n²])`
-/

namespace A247730.P12576012201308031759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (f1 (n + 1) - f1 n).toNat

end

end A247730.P12576012201308031759

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

/-! ## A247731.P7009074090440731031

`A247726(A167614(n+3)+2)`
-/

namespace A247731.P7009074090440731031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167614 (n + 3) + 2).toNat

end

end A247731.P7009074090440731031

/-! ## A247731.P1511417437053111539

`A247726(A000217(n+4)+5)`
-/

namespace A247731.P1511417437053111539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000217 (n + 4) + 5).toNat

end

end A247731.P1511417437053111539

/-! ## A247731.P12921155749970256614

`A247726(A038722(Δ[A023545(n+1)]))`
-/

namespace A247731.P12921155749970256614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A247731.P12921155749970256614

/-! ## A247731.P16519483329312776975

`A247726(A055999(n+4)-A016777(n+2))`
-/

namespace A247731.P16519483329312776975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A055999 (n + 4) - A016777 (n + 2)).toNat

end

end A247731.P16519483329312776975

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

/-! ## A247732.P2571935073384276238

`A247726(A167499(n+4)+1)`
-/

namespace A247732.P2571935073384276238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167499 (n + 4) + 1).toNat

end

end A247732.P2571935073384276238

/-! ## A247732.P17786744555461767128

`A247726(A167487(n+4)-1)`
-/

namespace A247732.P17786744555461767128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167487 (n + 4) - 1).toNat

end

end A247732.P17786744555461767128

/-! ## A247732.P1119912787312099471

`A247726(A000096(n+4)+7)`
-/

namespace A247732.P1119912787312099471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000096 (n + 4) + 7).toNat

end

end A247732.P1119912787312099471

/-! ## A247732.P12110303744393164323

`A247726(A000217(n+5)+6)`
-/

namespace A247732.P12110303744393164323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000217 (n + 5) + 6).toNat

end

end A247732.P12110303744393164323

/-! ## A247732.P14994407259301647887

`A247726(A027379(n+3)+9)`
-/

namespace A247732.P14994407259301647887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A027379 (n + 3) + 9).toNat

end

end A247732.P14994407259301647887

/-! ## A247732.P15165451836361634574

`A247726(A152947(n+7)+5)`
-/

namespace A247732.P15165451836361634574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A152947 (n + 7) + 5).toNat

end

end A247732.P15165451836361634574

/-! ## A247732.P5500375262577937389

`A247726(A161680(n+6)+6)`
-/

namespace A247732.P5500375262577937389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A161680 (n + 6) + 6).toNat

end

end A247732.P5500375262577937389

/-! ## A247732.P12876319054403276643

`A247726(A052905(n+2)+11)`
-/

namespace A247732.P12876319054403276643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A052905 (n + 2) + 11).toNat

end

end A247732.P12876319054403276643

/-! ## A247732.P11090543482359600058

`A247726(A000124(n+6)-(n+1))`
-/

namespace A247732.P11090543482359600058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A247732.P11090543482359600058

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

/-! ## A247733.P17524500752634898782

`A247726(A167499(n+5)+2)`
-/

namespace A247733.P17524500752634898782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A167499 (n + 5) + 2).toNat

end

end A247733.P17524500752634898782

/-! ## A247733.P17022905109815472207

`A247726(A000124(n+6)+6)`
-/

namespace A247733.P17022905109815472207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000124 (n + 6) + 6).toNat

end

end A247733.P17022905109815472207

/-! ## A247733.P11503729824024930889

`A247726(A000217(n+6)+7)`
-/

namespace A247733.P11503729824024930889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A000217 (n + 6) + 7).toNat

end

end A247733.P11503729824024930889

/-! ## A247733.P15328000535564279370

`A247726(A055999(n)+A016777(n+9))`
-/

namespace A247733.P15328000535564279370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247726 (A055999 n + A016777 (n + 9)).toNat

end

end A247733.P15328000535564279370

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

/-! ## A247742.P9452708993335097575

`A005820(n+1)%(A119286(n)+2)`
-/

namespace A247742.P9452708993335097575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005820 (n + 1)) (A119286 n + 2)

end

end A247742.P9452708993335097575

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

/-! ## A247743.P12154693372342270484

`A265367(24*C(n, 4)*A000332(n))`
-/

namespace A247743.P12154693372342270484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265367 ((24 * Nat.choose n 4 : ℤ) * A000332 n).toNat

end

end A247743.P12154693372342270484

/-! ## A247743.P12896459449412578411

`A265367(24*C(n, 4)*A145454(n))`
-/

namespace A247743.P12896459449412578411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265367 ((24 * Nat.choose n 4 : ℤ) * A145454 n).toNat

end

end A247743.P12896459449412578411

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

/-! ## A247746.P8001163492269074758

`A382102(A229580(n+1))`
-/

namespace A247746.P8001163492269074758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382102 (A229580 (n + 1)).toNat

end

end A247746.P8001163492269074758

/-!
# A247748: Total area below all lattice paths from (0,0) to (n,0) that do not go below the x-axis or above the diagonal x=y and consist of steps u=(1,1), U=(1,3), H=(1,0), d=(1,-1) and D=(1,-3).

The programs for A247748, there is no canonical definition to state claims against.
-/

/-! ## A247748.P7038513580075145516

`A178133(A013991(n))`
-/

namespace A247748.P7038513580075145516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178133 (A013991 n).toNat

end

end A247748.P7038513580075145516

/-! ## A247748.P9366084982019477074

`A108194(A178682(n))`
-/

namespace A247748.P9366084982019477074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108194 (A178682 n).toNat

end

end A247748.P9366084982019477074

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

/-! ## A247751.P18280517898754739406

`A071670(lt[A036575(n+1), A127421(3*n+2)])`
-/

namespace A247751.P18280517898754739406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036575 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247751.P18280517898754739406

/-! ## A247751.P17081022939824181245

`lt[A007947(A068929(n+4)), A013928(3*(n+1))]`
-/

namespace A247751.P17081022939824181245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A068929 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247751.P17081022939824181245

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

/-! ## A247755.P5018438655131353295

`lt[A299458(A329575(n+1)), A013918(2*(n+2))]`
-/

namespace A247755.P5018438655131353295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299458 (A329575 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013918 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247755.P5018438655131353295

/-!
# A247756: Numbers in decimal representation, such that in Hungarian their digits are in alphabetic order.

The programs for A247756, there is no canonical definition to state claims against.
-/

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

/-! ## A247756.P7264756703785593832

`lt[A368747(n+2), A198471(A000120(3*(n+1)))]`
-/

namespace A247756.P7264756703785593832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368747 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198471 (A000120 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247756.P7264756703785593832

/-!
# A247757: Numbers in decimal representation, such that in Italian and Portuguese their digits are in alphabetic order.

The programs for A247757, there is no canonical definition to state claims against.
-/

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

/-! ## A247757.P16568755735656682112

`lt[A113389(A284725(3*n+1)), A224701(n+1)]`
-/

namespace A247757.P16568755735656682112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 (A284725 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224701 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247757.P16568755735656682112

/-! ## A247757.P8592610239846801483

`lt[A113389(A284725(3*n+1)), A259912(n+4)]`
-/

namespace A247757.P8592610239846801483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 (A284725 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259912 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247757.P8592610239846801483

/-! ## A247757.P11063739435891638779

`lt[A113389(A284725(3*n+1)), A277723(3*n+2)]`
-/

namespace A247757.P11063739435891638779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113389 (A284725 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277723 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247757.P11063739435891638779

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

/-! ## A247759.P8054949835164985680

`lt[A305793(A204660(3*(n+1))), A013658(n+1)]`
-/

namespace A247759.P8054949835164985680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305793 (A204660 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013658 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247759.P8054949835164985680

/-! ## A247759.P1257238241945601206

`lt[A305793(A204660(3*(n+1))), A359153(3*(n+1))]`
-/

namespace A247759.P1257238241945601206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305793 (A204660 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247759.P1257238241945601206

/-! ## A247759.P12022990729813244349

`lt[n, A126706(A056608(3*n+4))]`
-/

namespace A247759.P12022990729813244349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (A056608 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A247759.P12022990729813244349

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

/-! ## A247764.P6157249044631732232

`lt[A019320(A094899(2*n+5)), A317614(3*n+4)]`
-/

namespace A247764.P6157249044631732232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (A094899 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317614 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A247764.P6157249044631732232

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

/-! ## A247766.P11586851271469778695

`A247702(lt[A108797(3*n+4), A247702(n)])`
-/

namespace A247766.P11586851271469778695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108797 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247702 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247766.P11586851271469778695

/-! ## A247766.P7727772337295631478

`A247702(lt[A247672(2*(n+1)), A247701(n+2)])`
-/

namespace A247766.P7727772337295631478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247672 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247701 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247702 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247766.P7727772337295631478

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

/-! ## A247767.P11305227339258650099

`char[xor(1, n)]*A247703(A000217(n))`
-/

namespace A247767.P11305227339258650099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A247703 (A000217 n).toNat

end

end A247767.P11305227339258650099

/-! ## A247767.P11036362564800848205

`lcm(A130196(n), A247703(A000217(n)))`
-/

namespace A247767.P11036362564800848205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A130196 n) (A247703 (A000217 n).toNat)

end

end A247767.P11036362564800848205

/-! ## A247767.P12635196803148888446

`or(A000007(n), A247703(A000217(n)))`
-/

namespace A247767.P12635196803148888446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A247703 (A000217 n).toNat)

end

end A247767.P12635196803148888446

/-! ## A247767.P3790604774604428833

`log2(A020639(2*(n+1)))*A247703(A000217(n))`
-/

namespace A247767.P3790604774604428833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A247703 (A000217 n).toNat : ℝ)

end

end A247767.P3790604774604428833

/-! ## A247767.P2509667304333824877

`A000035(A152714(n))*A247703(A000217(n))`
-/

namespace A247767.P2509667304333824877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A152714 n).toNat * A247703 (A000217 n).toNat

end

end A247767.P2509667304333824877

/-! ## A247767.P6156722760386168041

`A153284(A000010(n+1))*A247703(A000217(n))`
-/

namespace A247767.P6156722760386168041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153284 (A000010 (n + 1)).toNat * A247703 (A000217 n).toNat

end

end A247767.P6156722760386168041

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

/-! ## A247768.P16626156106951522302

`A247704(A000217(n))^A178334(n)`
-/

namespace A247768.P16626156106951522302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247704 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A247768.P16626156106951522302

/-! ## A247768.P5629968651354960236

`gcd(A000038(n), A247704(A000217(n)))`
-/

namespace A247768.P5629968651354960236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A247704 (A000217 n).toNat)

end

end A247768.P5629968651354960236

/-! ## A247768.P11374991502305415589

`or(A000007(n), A247704(A000217(n)))`
-/

namespace A247768.P11374991502305415589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A247704 (A000217 n).toNat)

end

end A247768.P11374991502305415589

/-! ## A247768.P9572565713472651629

`A247704(A000217(n))+A000007(n+1)`
-/

namespace A247768.P9572565713472651629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247704 (A000217 n).toNat + A000007 (n + 1)

end

end A247768.P9572565713472651629

/-! ## A247768.P10004667715937546206

`A247704(A000217(n))*A257680(3*n+2)`
-/

namespace A247768.P10004667715937546206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247704 (A000217 n).toNat * A257680 (3 * n + 2)

end

end A247768.P10004667715937546206

/-! ## A247768.P7759891149771645719

`A014963(A000217(n+4))*A247704(A000217(n))`
-/

namespace A247768.P7759891149771645719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 4)).toNat * A247704 (A000217 n).toNat

end

end A247768.P7759891149771645719

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

/-! ## A247769.P11341882958008895658

`A247705(eq[A131818(n+1), A300030(n+1)])`
-/

namespace A247769.P11341882958008895658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247705 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A247769.P11341882958008895658

/-! ## A247769.P12323443363108649365

`A247705(lt[A247704(2*n+3), A247666(3*n+4)])`
-/

namespace A247769.P12323443363108649365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247704 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247666 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247705 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247769.P12323443363108649365

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

/-! ## A247770.P14453487706538128698

`or(char[1], A247706(A000217(n)))`
-/

namespace A247770.P14453487706538128698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A247706 (A000217 n).toNat)

end

end A247770.P14453487706538128698

/-! ## A247770.P12775875187954325656

`A247706(A000217(n))^A178334(n)`
-/

namespace A247770.P12775875187954325656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247706 (A000217 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A247770.P12775875187954325656

/-! ## A247770.P1706921466736152441

`A247706(A000217(n))%A074601(n)`
-/

namespace A247770.P1706921466736152441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247706 (A000217 n).toNat) (A074601 n)

end

end A247770.P1706921466736152441

/-! ## A247770.P1887951643938472235

`and(A247706(A000217(n)), A260196(n))`
-/

namespace A247770.P1887951643938472235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A247706 (A000217 n).toNat) (A260196 n)

end

end A247770.P1887951643938472235

/-! ## A247770.P14158615851926364300

`lcm(A071935(n+1), A247706(A000217(n)))`
-/

namespace A247770.P14158615851926364300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071935 (n + 1)) (A247706 (A000217 n).toNat)

end

end A247770.P14158615851926364300

/-! ## A247770.P13371103758357713152

`A056753(A008602(n))*A247706(A000217(n))`
-/

namespace A247770.P13371103758357713152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056753 (A008602 n).toNat * A247706 (A000217 n).toNat

end

end A247770.P13371103758357713152

/-!
# A247771: Number of tilings of a 5 X n rectangle using n pentominoes of any but the T shape.

The programs for A247771, there is no canonical definition to state claims against.
-/

/-! ## A247771.P13003258732313575435

`A247707(A004396(A133263(n)-n))`
-/

namespace A247771.P13003258732313575435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247707 (A004396 (A133263 n - (n : ℤ)).toNat).toNat

end

end A247771.P13003258732313575435

/-! ## A247771.P10675478090474104260

`A247707(A325695(2*(n+1))+A008619(n))`
-/

namespace A247771.P10675478090474104260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247707 (A325695 (2 * (n + 1)) + A008619 n).toNat

end

end A247771.P10675478090474104260

/-! ## A247771.P9201114788017574008

`A247707(lt[A046787(n), A247707(n)])`
-/

namespace A247771.P9201114788017574008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046787 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247707 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247771.P9201114788017574008

/-! ## A247771.P832818997312229717

`A247707(lt[A247712(2*n+1), A247687(3*n+4)])`
-/

namespace A247771.P832818997312229717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247712 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247687 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247707 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247771.P832818997312229717

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

/-! ## A247774.P13994855696727054439

`A247710(lt[A007431(2*n+1), 6])`
-/

namespace A247774.P13994855696727054439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247710 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A247774.P13994855696727054439

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

/-! ## A247775.P7547393642800577559

`A247711(lt[A247735(n), A247711(n)²])`
-/

namespace A247775.P7547393642800577559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247711 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247711 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247775.P7547393642800577559

/-! ## A247775.P1889810536832446665

`A247711(lt[A247740(n), A247711(n)²])`
-/

namespace A247775.P1889810536832446665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247740 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247711 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247711 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247775.P1889810536832446665

/-! ## A247775.P2839924750820156145

`A247711(lt[A247743(n), A247711(n)²])`
-/

namespace A247775.P2839924750820156145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247743 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247711 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247711 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247775.P2839924750820156145

/-! ## A247775.P8667160221364465743

`A247711(lt[A324660(3*n), A030000(n+2)])`
-/

namespace A247775.P8667160221364465743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324660 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030000 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247711 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247775.P8667160221364465743

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

/-! ## A247776.P15132101951640129870

`A247712(A181600(n*A327965(n)))`
-/

namespace A247776.P15132101951640129870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247712 (A181600 ((n : ℤ) * A327965 n).toNat).toNat

end

end A247776.P15132101951640129870

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

/-! ## A247777.P12887364444057595344

`A247713(lt[A079223(n), A247713(n)+1])`
-/

namespace A247777.P12887364444057595344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079223 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247713 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247713 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247777.P12887364444057595344

/-!
# A247778: Least k such that e - (1 + 1/k)^k < 1/n.

The programs for A247778, there is no canonical definition to state claims against.
-/

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

/-! ## A247778.P6444121432425078886

`A249245(n+1)+n+1-A247784(A249245(n+1))`
-/

namespace A247778.P6444121432425078886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249245 (n + 1) + ((n + 1 : ℤ) - A247784 (A249245 (n + 1)).toNat)

end

end A247778.P6444121432425078886

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

/-! ## A247778.P16693134142309871469

`A008619(A103762(n+8))-10`
-/

namespace A247778.P16693134142309871469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A103762 (n + 8)).toNat - 10

end

end A247778.P16693134142309871469

/-! ## A247778.P1478392334561788263

`A065033(A103762(n+1)^A178334(n))`
-/

namespace A247778.P1478392334561788263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.roundAway ((A103762 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A247778.P1478392334561788263

/-! ## A247778.P11079636601848780985

`A110654(A103762(n+1)^A178334(n))`
-/

namespace A247778.P11079636601848780985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (SequenceMachineLib.roundAway ((A103762 (n + 1) : ℚ) ^ (A178334 n : ℤ))).toNat

end

end A247778.P11079636601848780985

/-! ## A247778.P9111790510089738382

`ceil(A103762(n+1)/A014963(A256691(n+1)))`
-/

namespace A247778.P9111790510089738382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103762 (n + 1) : ℚ) / (A014963 (A256691 (n + 1)).toNat : ℚ)⌉

end

end A247778.P9111790510089738382

/-!
# A247779: Numbers k such that A247778(k+1) - A247778(k) = 1.

The programs for A247779, there is no canonical definition to state claims against.
-/

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

/-! ## A247779.P15109646696135231745

`A367328(A329832(n+2)-2)-A051344(A340653(n+1))`
-/

namespace A247779.P15109646696135231745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367328 (A329832 (n + 2) - 2).toNat - A051344 (A340653 (n + 1)).toNat

end

end A247779.P15109646696135231745

/-! ## A247779.P8936700082928439167

`A105564(A099861(n+1))+n`
-/

namespace A247779.P8936700082928439167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105564 (A099861 (n + 1)).toNat + (n : ℤ)

end

end A247779.P8936700082928439167

/-! ## A247779.P10723169530401495680

`and(A243989(n+1), A359085(n+1))`
-/

namespace A247779.P10723169530401495680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A243989 (n + 1)) (A359085 (n + 1))

end

end A247779.P10723169530401495680

/-! ## A247779.P1397471328167455754

`A257639(∑[A184402(2*(n+1))+n+1]-3)`
-/

namespace A247779.P1397471328167455754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184402 (2 * (n + 1)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j - 3).toNat

end

end A247779.P1397471328167455754

/-!
# A247780: Numbers k such that A247778(k+1) - A247778(k) = 2.

The programs for A247780, there is no canonical definition to state claims against.
-/

/-! ## A247780.P63904544771730970

`A247785(n+1)-n`
-/

namespace A247780.P63904544771730970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247785 (n + 1) - (n : ℤ)

end

end A247780.P63904544771730970

/-! ## A247780.P2748537519722345663

`A247784(A247785(n+1))`
-/

namespace A247780.P2748537519722345663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (A247785 (n + 1)).toNat

end

end A247780.P2748537519722345663

/-! ## A247780.P8215956064376686684

`A247784(a(n-1)+3+n)` with `a(0)=2`
-/

namespace A247780.P8215956064376686684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A247784 (a (n - 1) + 3 + (n : ℤ)).toNat

end

end A247780.P8215956064376686684

/-! ## A247780.P11829813296990270547

`A249243(A247785(n+1)+1)`
-/

namespace A247780.P11829813296990270547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249243 (A247785 (n + 1) + 1).toNat

end

end A247780.P11829813296990270547

/-! ## A247780.P14225922589175888804

`A247784(A249244(n+1)-1)`
-/

namespace A247780.P14225922589175888804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (A249244 (n + 1) - 1).toNat

end

end A247780.P14225922589175888804

/-! ## A247780.P15162144984308197774

`A247784(A247784(A249244(n+1))+n)`
-/

namespace A247780.P15162144984308197774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (A247784 (A249244 (n + 1)).toNat + (n : ℤ)).toNat

end

end A247780.P15162144984308197774

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

/-! ## A247781.P17317629254543273079

`floor(root(A175846(A175846(n+8)), 9))`
-/

namespace A247781.P17317629254543273079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A175846 (A175846 (n + 8)).toNat : ℝ) ^ (1 / (9 : ℝ))⌋

end

end A247781.P17317629254543273079

/-! ## A247781.P3712489910357990042

`ceil(A134869(n+1)/A319515(n+1))`
-/

namespace A247781.P3712489910357990042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134869 (n + 1) : ℚ) / (A319515 (n + 1) : ℚ)⌉

end

end A247781.P3712489910357990042

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

/-! ## A247781.P2606179783628181638

`A064458(lt[A232930(n+3), A194795(n+1)])`
-/

namespace A247781.P2606179783628181638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232930 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A247781.P2606179783628181638

/-! ## A247781.P6594755824924123778

`A331246(A029062(n+1))`
-/

namespace A247781.P6594755824924123778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331246 (A029062 (n + 1)).toNat

end

end A247781.P6594755824924123778

/-!
# A247782: Numbers k for which A247781(k+1) = A247781(k).

The programs for A247782, there is no canonical definition to state claims against.
-/

/-! ## A247782.P6113884830480109725

`A247781(a(n-1)+2)+n` with `a(0)=1`
-/

namespace A247782.P6113884830480109725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A247781 (a (n - 1) + 2).toNat + (n : ℤ)

end

end A247782.P6113884830480109725

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

/-! ## A247782.P1144258584440347714

`A003056(A247780(n+1)+A077043(n))`
-/

namespace A247782.P1144258584440347714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A247780 (n + 1) + A077043 n).toNat

end

end A247782.P1144258584440347714

/-! ## A247782.P10199187464324881101

`A003059(A184744(n+1)+A005449(n))`
-/

namespace A247782.P10199187464324881101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A184744 (n + 1) + A005449 n).toNat

end

end A247782.P10199187464324881101

/-! ## A247782.P1736655712686040122

`A003059(A238410(n+1)+A188469(n+1))`
-/

namespace A247782.P1736655712686040122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A238410 (n + 1) + A188469 (n + 1)).toNat

end

end A247782.P1736655712686040122

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

/-! ## A247782.P2332105301010185526

`A000196(∑[A284883(n+1)]-1)`
-/

namespace A247782.P2332105301010185526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A247782.P2332105301010185526

/-! ## A247782.P1122370615319909965

`A000194(A184533(n+1)+A000194(n))`
-/

namespace A247782.P1122370615319909965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A184533 (n + 1) + A000194 n).toNat

end

end A247782.P1122370615319909965

/-!
# A247783: Numbers k for which A247781(k+1) = 1+A247781(k).

The programs for A247783, there is no canonical definition to state claims against.
-/

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

/-! ## A247783.P15817267132428173892

`round(ratio[A321968(n+1)])`
-/

namespace A247783.P15817267132428173892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A247783.P15817267132428173892

/-!
# A247784: a(n) = floor(1/(e - (1 + 1/n)^n)).

The programs for A247784, the canonical program `A247784.P10901521591986100322` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247784 has offset 1).

The definition of A247784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(1/(e-(1+1/(n+1))^(n+1)))` (program `A247784.P10901521591986100322`, by `A247784.P10901521591986100322.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A247784.P10901521591986100322

`floor(1/(e-(1+1/(n+1))^(n+1)))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247784

/-- `floor(1/(e-(1+1/(n+1))^(n+1)))` -/
def P10901521591986100322.Spec : Prop :=
  ∀ n, P10901521591986100322.a n = A247784 (n + 1)

theorem P10901521591986100322.correct : P10901521591986100322.Spec := by
  intro n
  simp only [A247784, Nat.add_sub_cancel]

end A247784

/-! ## A247784.P16652108933186088084

`∑[char[comp[A247785(n+1)]]]`
-/

namespace A247784.P16652108933186088084
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247785 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247784.P16652108933186088084

namespace A247784

/-- `∑[char[comp[A247785(n+1)]]]` -/
def P16652108933186088084.Spec : Prop :=
  ∀ n, (P16652108933186088084.a n : ℤ) = A247784 (n + 1)

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

/-! ## A247784.P7759164120371897246

`A359430(A366094(n+4))+A054404(2*n+3)`
-/

namespace A247784.P7759164120371897246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359430 (A366094 (n + 4)).toNat + A054404 (2 * n + 3)

end

end A247784.P7759164120371897246

namespace A247784

/-- `A359430(A366094(n+4))+A054404(2*n+3)` -/
def P7759164120371897246.Spec : Prop :=
  ∀ n, P7759164120371897246.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P13956875716924219188

`A054404(2*n+3)+A000007(A242775(2*(n+2)))`
-/

namespace A247784.P13956875716924219188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * n + 3) + A000007 (A242775 (2 * (n + 2))).toNat

end

end A247784.P13956875716924219188

namespace A247784

/-- `A054404(2*n+3)+A000007(A242775(2*(n+2)))` -/
def P13956875716924219188.Spec : Prop :=
  ∀ n, P13956875716924219188.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P11679990497386500429

`A054404(A005843(n)+3)%A001248(A032606(n+1))`
-/

namespace A247784.P11679990497386500429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054404 (A005843 n + 3).toNat) (A001248 (A032606 (n + 1)).toNat)

end

end A247784.P11679990497386500429

namespace A247784

/-- `A054404(A005843(n)+3)%A001248(A032606(n+1))` -/
def P11679990497386500429.Spec : Prop :=
  ∀ n, P11679990497386500429.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P4332760890881515428

`A054404(2*n+3)%A335671(A301724(n))`
-/

namespace A247784.P4332760890881515428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054404 (2 * n + 3)) (A335671 (A301724 n).toNat)

end

end A247784.P4332760890881515428

namespace A247784

/-- `A054404(2*n+3)%A335671(A301724(n))` -/
def P4332760890881515428.Spec : Prop :=
  ∀ n, P4332760890881515428.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P6137012084863771691

`A104117(A319528(3*n+2))+A054404(2*n+3)`
-/

namespace A247784.P6137012084863771691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104117 (A319528 (3 * n + 2)).toNat + A054404 (2 * n + 3)

end

end A247784.P6137012084863771691

namespace A247784

/-- `A104117(A319528(3*n+2))+A054404(2*n+3)` -/
def P6137012084863771691.Spec : Prop :=
  ∀ n, P6137012084863771691.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P10838487565352745844

`A054404(record[A165754(A054404(n+1))])`
-/

namespace A247784.P10838487565352745844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (A054404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247784.P10838487565352745844

namespace A247784

/-- `A054404(record[A165754(A054404(n+1))])` -/
def P10838487565352745844.Spec : Prop :=
  ∀ n, P10838487565352745844.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P5937904426946302550

`A054404(2*n+3)*A153452(A317926(3*n+5))`
-/

namespace A247784.P5937904426946302550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * n + 3) * A153452 (A317926 (3 * n + 5)).toNat

end

end A247784.P5937904426946302550

namespace A247784

/-- `A054404(2*n+3)*A153452(A317926(3*n+5))` -/
def P5937904426946302550.Spec : Prop :=
  ∀ n, P5937904426946302550.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P7590041981460606237

`A001221(A082077(2*n+3))*A054404(2*n+3)`
-/

namespace A247784.P7590041981460606237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A082077 (2 * n + 3)).toNat * A054404 (2 * n + 3)

end

end A247784.P7590041981460606237

namespace A247784

/-- `A001221(A082077(2*n+3))*A054404(2*n+3)` -/
def P7590041981460606237.Spec : Prop :=
  ∀ n, P7590041981460606237.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P16579802373076452902

`A054404(A000027(2*n+3))%A210889(2*n+5)`
-/

namespace A247784.P16579802373076452902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054404 (A000027 (2 * n + 3)).toNat) (A210889 (2 * n + 5))

end

end A247784.P16579802373076452902

namespace A247784

/-- `A054404(A000027(2*n+3))%A210889(2*n+5)` -/
def P16579802373076452902.Spec : Prop :=
  ∀ n, P16579802373076452902.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P4300331449200289865

`A054404(2*A151890(∑[n])+3)`
-/

namespace A247784.P4300331449200289865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (2 * A151890 (∑ j ∈ Finset.range (n + 1), f1 j) + 3).toNat

end

end A247784.P4300331449200289865

namespace A247784

/-- `A054404(2*A151890(∑[n])+3)` -/
def P4300331449200289865.Spec : Prop :=
  ∀ n, P4300331449200289865.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P10935469800227700679

`A054404(A151890(∑[n])+3+n)`
-/

namespace A247784.P10935469800227700679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A151890 (∑ j ∈ Finset.range (n + 1), f1 j) + 3 + (n : ℤ)).toNat

end

end A247784.P10935469800227700679

namespace A247784

/-- `A054404(A151890(∑[n])+3+n)` -/
def P10935469800227700679.Spec : Prop :=
  ∀ n, P10935469800227700679.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P4156593557338849886

`A054404(n*A043529((n+1)²)+3)`
-/

namespace A247784.P4156593557338849886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 ((n : ℤ) * A043529 ((n + 1) ^ 2) + 3).toNat

end

end A247784.P4156593557338849886

namespace A247784

/-- `A054404(n*A043529((n+1)²)+3)` -/
def P4156593557338849886.Spec : Prop :=
  ∀ n, P4156593557338849886.a n = A247784 (n + 1)

end A247784

/-! ## A247784.P14313975099710492649

`A054404(n+1+A043529((n+1)²)+n)`
-/

namespace A247784.P14313975099710492649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 ((n + 1 : ℤ) + (A043529 ((n + 1) ^ 2) + (n : ℤ))).toNat

end

end A247784.P14313975099710492649

namespace A247784

/-- `A054404(n+1+A043529((n+1)²)+n)` -/
def P14313975099710492649.Spec : Prop :=
  ∀ n, P14313975099710492649.a n = A247784 (n + 1)

end A247784

/-!
# A247785: Numbers k such that A247784(k+1) = A247784(k).

The programs for A247785, there is no canonical definition to state claims against.
-/

/-! ## A247785.P12912641163678759137

`A247780(n+1)+n`
-/

namespace A247785.P12912641163678759137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247780 (n + 1) + (n : ℤ)

end

end A247785.P12912641163678759137

/-! ## A247785.P8631363493460472916

`A247778(A247780(n+1))`
-/

namespace A247785.P8631363493460472916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (A247780 (n + 1)).toNat

end

end A247785.P8631363493460472916

/-! ## A247785.P13872788335743055982

`A247784(a(n-1)+4)+n` with `a(0)=2`
-/

namespace A247785.P13872788335743055982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A247784 (a (n - 1) + 4).toNat + (n : ℤ)

end

end A247785.P13872788335743055982

/-! ## A247785.P2982298082369373341

`A247778(A247784(a(n-1)+4))` with `a(0)=2`
-/

namespace A247785.P2982298082369373341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A247778 (A247784 (a (n - 1) + 4).toNat).toNat

end

end A247785.P2982298082369373341

/-! ## A247785.P11943082518386126374

`A247784(A249244(n+1)-1)+n`
-/

namespace A247785.P11943082518386126374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (A249244 (n + 1) - 1).toNat + (n : ℤ)

end

end A247785.P11943082518386126374

/-! ## A247785.P7196647849992839702

`A247778(A247784(A249244(n+1)-1))`
-/

namespace A247785.P7196647849992839702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (A247784 (A249244 (n + 1) - 1).toNat).toNat

end

end A247785.P7196647849992839702

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

/-! ## A247785.P10784920467652937439

`round(log(A094364(n+1))+n)`
-/

namespace A247785.P10784920467652937439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A094364 (n + 1) : ℝ) + (n : ℝ))

end

end A247785.P10784920467652937439

/-!
# A247786: Numbers k such that A247784(k+1) - A247784(k) = 1.

The programs for A247786, there is no canonical definition to state claims against.
-/

/-! ## A247786.P3759461719881822374

`A247778(n+2)-1`
-/

namespace A247786.P3759461719881822374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 2) - 1

end

end A247786.P3759461719881822374

/-! ## A247786.P8477400208171581275

`∑[abs(Δ[A247778(n+1)])]`
-/

namespace A247786.P8477400208171581275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247778 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A247786.P8477400208171581275

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

/-! ## A247786.P15037278803782203799

`A023443(A247778(n+2))`
-/

namespace A247786.P15037278803782203799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A247778 (n + 2)).toNat

end

end A247786.P15037278803782203799

/-!
# A247787: Sum of divisors of 2*prime(n)-1.

The programs for A247787, the canonical program `A247787.P10201470630707085594` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247787 has offset 1).

The definition of A247787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A247787.P10201470630707085594

`∑{d}[1-A100484(n+1), #]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A247787

/-- `∑{d}[1-A100484(n+1), #]` -/
def P10201470630707085594.Spec : Prop :=
  ∀ n, (P10201470630707085594.a n : ℤ) = A247787 (n + 1)

theorem P10201470630707085594.correct : P10201470630707085594.Spec := by
  intro n
  simp only [A247787, Nat.add_sub_cancel]

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

/-! ## A247787.P8824019044026692545

`∑{d}[A076274(n+2), #]`
-/

namespace A247787.P8824019044026692545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A247787.P8824019044026692545

namespace A247787

/-- `∑{d}[A076274(n+2), #]` -/
def P8824019044026692545.Spec : Prop :=
  ∀ n, (P8824019044026692545.a n : ℤ) = A247787 (n + 1)

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

/-! ## A247787.P15863570129228855900

`A000203(A037168(n+1)+1)`
-/

namespace A247787.P15863570129228855900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A037168 (n + 1) + 1).toNat

end

end A247787.P15863570129228855900

namespace A247787

/-- `A000203(A037168(n+1)+1)` -/
def P15863570129228855900.Spec : Prop :=
  ∀ n, P15863570129228855900.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P3530532993393917011

`A000203(A100484(n+1)-1)`
-/

namespace A247787.P3530532993393917011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A100484 (n + 1) - 1).toNat

end

end A247787.P3530532993393917011

namespace A247787

/-- `A000203(A100484(n+1)-1)` -/
def P3530532993393917011.Spec : Prop :=
  ∀ n, P3530532993393917011.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P8216052554796507291

`A000203(A131426(n+1)+2)`
-/

namespace A247787.P8216052554796507291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A131426 (n + 1) + 2).toNat

end

end A247787.P8216052554796507291

namespace A247787

/-- `A000203(A131426(n+1)+2)` -/
def P8216052554796507291.Spec : Prop :=
  ∀ n, P8216052554796507291.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P11892035046041481691

`A000203(A001747(n+2)-1)`
-/

namespace A247787.P11892035046041481691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A001747 (n + 2) - 1).toNat

end

end A247787.P11892035046041481691

namespace A247787

/-- `A000203(A001747(n+2)-1)` -/
def P11892035046041481691.Spec : Prop :=
  ∀ n, P11892035046041481691.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P10189269122734541797

`A000203(A072055(n+1)-2)`
-/

namespace A247787.P10189269122734541797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A072055 (n + 1) - 2).toNat

end

end A247787.P10189269122734541797

namespace A247787

/-- `A000203(A072055(n+1)-2)` -/
def P10189269122734541797.Spec : Prop :=
  ∀ n, P10189269122734541797.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P15543398714274830566

`A000203(A140777(n+1)+3)`
-/

namespace A247787.P15543398714274830566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A140777 (n + 1) + 3).toNat

end

end A247787.P15543398714274830566

namespace A247787

/-- `A000203(A140777(n+1)+3)` -/
def P15543398714274830566.Spec : Prop :=
  ∀ n, P15543398714274830566.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P14748525580411803793

`A000203(A089241(n+1)-3)`
-/

namespace A247787.P14748525580411803793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A089241 (n + 1) - 3).toNat

end

end A247787.P14748525580411803793

namespace A247787

/-- `A000203(A089241(n+1)-3)` -/
def P14748525580411803793.Spec : Prop :=
  ∀ n, P14748525580411803793.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P12247732488973373924

`A000203(A134591(n+1)+n)`
-/

namespace A247787.P12247732488973373924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A134591 (n + 1) + (n : ℤ)).toNat

end

end A247787.P12247732488973373924

namespace A247787

/-- `A000203(A134591(n+1)+n)` -/
def P12247732488973373924.Spec : Prop :=
  ∀ n, P12247732488973373924.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P16220292939254916395

`A000203(sqrt(A069262(n+1))-1)`
-/

namespace A247787.P16220292939254916395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A069262 (n + 1) : ℝ) - 1)).toNat

end

end A247787.P16220292939254916395

namespace A247787

/-- `A000203(sqrt(A069262(n+1))-1)` -/
def P16220292939254916395.Spec : Prop :=
  ∀ n, P16220292939254916395.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P15825227280358827941

`A000203(2*A006093(n+1)+1)`
-/

namespace A247787.P15825227280358827941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A006093 (n + 1) + 1).toNat

end

end A247787.P15825227280358827941

namespace A247787

/-- `A000203(2*A006093(n+1)+1)` -/
def P15825227280358827941.Spec : Prop :=
  ∀ n, P15825227280358827941.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P4047146788018274246

`A000203(2*A000040(n+1)-1)`
-/

namespace A247787.P4047146788018274246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A000040 (n + 1) - 1).toNat

end

end A247787.P4047146788018274246

namespace A247787

/-- `A000203(2*A000040(n+1)-1)` -/
def P4047146788018274246.Spec : Prop :=
  ∀ n, P4047146788018274246.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P15487532105340453023

`A000203(A001749(n+1)/2-1)`
-/

namespace A247787.P15487532105340453023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2 - 1)).toNat

end

end A247787.P15487532105340453023

namespace A247787

/-- `A000203(A001749(n+1)/2-1)` -/
def P15487532105340453023.Spec : Prop :=
  ∀ n, P15487532105340453023.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P3617421917990543228

`A000203(2*A040976(n+1)+3)`
-/

namespace A247787.P3617421917990543228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * A040976 (n + 1) + 3).toNat

end

end A247787.P3617421917990543228

namespace A247787

/-- `A000203(2*A040976(n+1)+3)` -/
def P3617421917990543228.Spec : Prop :=
  ∀ n, P3617421917990543228.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P9155434491877746561

`A000203(2*record[A000010(n+1)]+1)`
-/

namespace A247787.P9155434491877746561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A247787.P9155434491877746561

namespace A247787

/-- `A000203(2*record[A000010(n+1)]+1)` -/
def P9155434491877746561.Spec : Prop :=
  ∀ n, P9155434491877746561.a n = A247787 (n + 1)

end A247787

/-! ## A247787.P15929097918285928435

`A000203(record[A020639(n+2)+1+n])`
-/

namespace A247787.P15929097918285928435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A247787.P15929097918285928435

namespace A247787

/-- `A000203(record[A020639(n+2)+1+n])` -/
def P15929097918285928435.Spec : Prop :=
  ∀ n, P15929097918285928435.a n = A247787 (n + 1)

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

/-!
# A247789: Primes p such that sigma(2p-1) is a prime q.

The programs for A247789, there is no canonical definition to state claims against.
-/

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

The programs for A247792, the canonical program `A247792.P16742175569055729181` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A247792 has offset 0).

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

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A247792

/-- `9*n²+1` -/
def P16742175569055729181.Spec : Prop :=
  ∀ n, (P16742175569055729181.a n : ℤ) = A247792 n

theorem P16742175569055729181.correct : P16742175569055729181.Spec := by
  intro n
  simp only [A247792]

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

/-!
# A247795: Irregular triangle read by rows in which row n lists the parities of the divisors of n.

The programs for A247795, there is no canonical definition to state claims against.
-/

/-! ## A247795.P14725077084265148575

`A027750(n+1)%2`
-/

namespace A247795.P14725077084265148575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027750 (n + 1)) 2

end

end A247795.P14725077084265148575

/-! ## A247795.P7097649795219323570

`A182620(n+1)%2`
-/

namespace A247795.P7097649795219323570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A182620 (n + 1)) 2

end

end A247795.P7097649795219323570

/-! ## A247795.P5664384412610995655

`and(1, A233773(n+1))`
-/

namespace A247795.P5664384412610995655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A233773 (n + 1))

end

end A247795.P5664384412610995655

/-! ## A247795.P7719682249263830540

`and(1, A394898(n+1))`
-/

namespace A247795.P7719682249263830540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A394898 (n + 1))

end

end A247795.P7719682249263830540

/-! ## A247795.P13272257393515333709

`(A263730(n+2)+1)%2`
-/

namespace A247795.P13272257393515333709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263730 (n + 2) + 1) 2

end

end A247795.P13272257393515333709

/-! ## A247795.P13987285295428279500

`and(1, A027750(C(2, C(3, n²))+n))`
-/

namespace A247795.P13987285295428279500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027750 (Nat.choose 2 (Nat.choose 3 (n ^ 2)) + n))

end

end A247795.P13987285295428279500

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

/-! ## A247795.P16103856819594733732

`A059841(A027750(n+1)+1)`
-/

namespace A247795.P16103856819594733732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A027750 (n + 1) + 1).toNat

end

end A247795.P16103856819594733732

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

/-! ## A247795.P944079993885336837

`and(1, A017154(n)*A027750(n+1))`
-/

namespace A247795.P944079993885336837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A017154 n * A027750 (n + 1))

end

end A247795.P944079993885336837

/-! ## A247795.P13550105890559975648

`and(1, A027750(n+1)²*A036086(n))`
-/

namespace A247795.P13550105890559975648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027750 (n + 1) ^ 2 * A036086 n)

end

end A247795.P13550105890559975648

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

/-! ## A247795.P5682551521260472229

`A005369(A132747(A027750(n+1))²)`
-/

namespace A247795.P5682551521260472229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A132747 (A027750 (n + 1)).toNat ^ 2).toNat

end

end A247795.P5682551521260472229

/-!
# A247797: Lexicographically earliest permutation of prime numbers, such that adjacent terms have coprime sums of digits in decimal representation.

The programs for A247797, there is no canonical definition to state claims against.
-/

/-! ## A247797.P6740741137270140688

`A000040(A250552(n+1))`
-/

namespace A247797.P6740741137270140688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A250552 (n + 1)).toNat

end

end A247797.P6740741137270140688

/-! ## A247797.P8466529758704561233

`A008578(A250552(n+1)+1)`
-/

namespace A247797.P8466529758704561233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A250552 (n + 1) + 1).toNat

end

end A247797.P8466529758704561233

/-! ## A247797.P11958973527718327960

`A069678(A250552(n+1))%A156781(2*n+5)`
-/

namespace A247797.P11958973527718327960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069678 (A250552 (n + 1)).toNat) (A156781 (2 * n + 5))

end

end A247797.P11958973527718327960

/-! ## A247797.P8813468782645779199

`A069678(A250552(n+1))%A141746(n+1)`
-/

namespace A247797.P8813468782645779199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069678 (A250552 (n + 1)).toNat) (A141746 (n + 1))

end

end A247797.P8813468782645779199

/-! ## A247797.P5057470589602764675

`A069678(A250552(n+1)^A114295(n))`
-/

namespace A247797.P5057470589602764675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069678 (SequenceMachineLib.roundAway ((A250552 (n + 1) : ℚ) ^ (A114295 n : ℤ))).toNat

end

end A247797.P5057470589602764675

/-!
# A247798: n-th positive integer relatively prime to 2*n - 1.

The programs for A247798, there is no canonical definition to state claims against.
-/

/-! ## A247798.P13949040638291188208

`A077581(∑[4*n]+1)`
-/

namespace A247798.P13949040638291188208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A247798.P13949040638291188208

/-! ## A247798.P7276269977990161601

`A083106((n+1)²+n²)`
-/

namespace A247798.P7276269977990161601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083106 ((n + 1) ^ 2 + n ^ 2)

end

end A247798.P7276269977990161601

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

/-! ## A247798.P15548880081381820045

`A083110(A051890(n+1))`
-/

namespace A247798.P15548880081381820045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083110 (A051890 (n + 1)).toNat

end

end A247798.P15548880081381820045

/-! ## A247798.P12494583250846006601

`and(-1, A077581(A001844(n)))`
-/

namespace A247798.P12494583250846006601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A077581 (A001844 n).toNat)

end

end A247798.P12494583250846006601

/-! ## A247798.P6908645391523695414

`and(-1, A077581(A046092(n)+1))`
-/

namespace A247798.P6908645391523695414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A077581 (A046092 n + 1).toNat)

end

end A247798.P6908645391523695414

/-! ## A247798.P12589957471837440520

`A077581(or(1, ∑[4*n]))%A329387(n)`
-/

namespace A247798.P12589957471837440520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077581 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))) (A329387 n)

end

end A247798.P12589957471837440520

/-! ## A247798.P4821858459887483415

`A077581(A001844(n))%A080340(n)`
-/

namespace A247798.P4821858459887483415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077581 (A001844 n).toNat) (A080340 n)

end

end A247798.P4821858459887483415

/-! ## A247798.P8842330602667821558

`∑{d}[A077581(A001844(n)), A000010(#)]`
-/

namespace A247798.P8842330602667821558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077581 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A247798.P8842330602667821558

/-! ## A247798.P17558048207893394393

`A007318(C(2, n))*A077581(A001844(n))`
-/

namespace A247798.P17558048207893394393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A077581 (A001844 n).toNat

end

end A247798.P17558048207893394393

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

/-! ## A247799.P10689861645983363870

`A177754(n+1)-A177706(A050960(2*(n+2)))`
-/

namespace A247799.P10689861645983363870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177754 (n + 1) - A177706 (A050960 (2 * (n + 2))).toNat

end

end A247799.P10689861645983363870

