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
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C032
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A189000: Bi-unitary multiperfect numbers.

The programs for A189000, there is no canonical definition to state claims against.
-/

/-! ## A189000.P7891947914404872182

`A007358(n+1)%A028901(A253639(n+1))`
-/

namespace A189000.P7891947914404872182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007358 (n + 1)) (A028901 (A253639 (n + 1)).toNat)

end

end A189000.P7891947914404872182

/-! ## A189000.P17014059054746154431

`∪[A007358(n+1), A009194(A066289(n+1))]`
-/

namespace A189000.P17014059054746154431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A066289 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A189000.P17014059054746154431

/-!
# A189001: a(n) = Sum_{i=0..n} (i+1)*n^i.

The programs for A189001, there is no canonical definition to state claims against.
-/

/-! ## A189001.P5761182644240970874

`A068475(n)+record[A244137(n)]`
-/

namespace A189001.P5761182644240970874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068475 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189001.P5761182644240970874

/-! ## A189001.P16773712266092504041

`A031973(n)+n*A068475(n)`
-/

namespace A189001.P16773712266092504041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031973 n + (n : ℤ) * A068475 n

end

end A189001.P16773712266092504041

/-! ## A189001.P1109609529009095325

`A068475(n)+(n+1)*A000312(n)`
-/

namespace A189001.P1109609529009095325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068475 n + (n + 1 : ℤ) * A000312 n

end

end A189001.P1109609529009095325

/-! ## A189001.P8291634459241980559

`A244137(eq[1, A002262(n)])+A068475(n)`
-/

namespace A189001.P8291634459241980559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244137 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A068475 n

end

end A189001.P8291634459241980559

/-! ## A189001.P13237893457322834665

`A031973(n)+lcm(A028310(n), A068475(n))`
-/

namespace A189001.P13237893457322834665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031973 n + (Int.lcm (A028310 n) (A068475 n) : ℤ)

end

end A189001.P13237893457322834665

/-! ## A189001.P4300892337133398143

`record[A244137(n)]+(n+1)*A023037(n)-A062805(n)`
-/

namespace A189001.P4300892337133398143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((n + 1 : ℤ) * A023037 n - A062805 n)

end

end A189001.P4300892337133398143

/-!
# A189002: Number of domino tilings of the n X n grid with upper left corner removed iff n is odd.

The programs for A189002, there is no canonical definition to state claims against.
-/

/-! ## A189002.P6134913446885570268

`A189006(∑[4*n])`
-/

namespace A189002.P6134913446885570268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A189002.P6134913446885570268

/-! ## A189002.P738278103006158315

`A189006(A046092(n))/A007318(∑[n])`
-/

namespace A189002.P738278103006158315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189006 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A189002.P738278103006158315

/-! ## A189002.P6970394709086874475

`A007318(C(n, 2))*A189006(A046092(n))`
-/

namespace A189002.P6970394709086874475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A189006 (A046092 n).toNat

end

end A189002.P6970394709086874475

/-! ## A189002.P9994094899617989999

`A014963(4*n+6)*A189006(A046092(n))`
-/

namespace A189002.P9994094899617989999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A189006 (A046092 n).toNat

end

end A189002.P9994094899617989999

/-! ## A189002.P5183692346878241067

`A000041(ceil(n/(n+1)))*A189006(A046092(n))`
-/

namespace A189002.P5183692346878241067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A189006 (A046092 n).toNat

end

end A189002.P5183692346878241067

/-!
# A189003: Number of domino tilings of the 5 X n grid with upper left corner removed iff n is odd.

The programs for A189003, there is no canonical definition to state claims against.
-/

/-! ## A189003.P13274240574209601521

`A189006(A167499(n+4))`
-/

namespace A189003.P13274240574209601521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A167499 (n + 4)).toNat

end

end A189003.P13274240574209601521

/-! ## A189003.P10022365536811589580

`A189006(A056115(n)+20)`
-/

namespace A189003.P10022365536811589580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A056115 n + 20).toNat

end

end A189003.P10022365536811589580

/-! ## A189003.P6452509954076300204

`A189006(A027379(n+3)+8)`
-/

namespace A189003.P6452509954076300204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A027379 (n + 3) + 8).toNat

end

end A189003.P6452509954076300204

/-! ## A189003.P11740147686538606690

`A189006(A055998(n+3)+8)`
-/

namespace A189003.P11740147686538606690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A055998 (n + 3) + 8).toNat

end

end A189003.P11740147686538606690

/-! ## A189003.P9122449501914500110

`A189006(A046691(n+3)+9)`
-/

namespace A189003.P9122449501914500110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A046691 (n + 3) + 9).toNat

end

end A189003.P9122449501914500110

/-! ## A189003.P15139729419737019694

`A189006(A134824(n)+A000124(n+5)+5)`
-/

namespace A189003.P15139729419737019694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A134824 n + (A000124 (n + 5) + 5)).toNat

end

end A189003.P15139729419737019694

/-! ## A189003.P9690387373758584433

`A189006(A055999(n+3))`
-/

namespace A189003.P9690387373758584433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A055999 (n + 3)).toNat

end

end A189003.P9690387373758584433

/-! ## A189003.P16751174931242872736

`A189006(eq[5, A025581(n)])`
-/

namespace A189003.P16751174931242872736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189003.P16751174931242872736

/-! ## A189003.P8792369613511474812

`A189006(Δ[A023545(n+2)]-2)`
-/

namespace A189003.P8792369613511474812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (f1 (n + 1) - f1 n - 2).toNat

end

end A189003.P8792369613511474812

/-! ## A189003.P4858888189689890360

`A189006(A181133(Δ[A023545(n+1)]))`
-/

namespace A189003.P4858888189689890360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A181133 (f1 (n + 1) - f1 n).toNat).toNat

end

end A189003.P4858888189689890360

/-!
# A189004: Number of domino tilings of the 7 X n grid with upper left corner removed iff n is odd.

The programs for A189004, there is no canonical definition to state claims against.
-/

/-! ## A189004.P3621046454861517098

`A189006(eq[7, A002262(n)])`
-/

namespace A189004.P3621046454861517098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189004.P3621046454861517098

/-! ## A189004.P1635799570083557036

`A189006(A000217(n+10)-A016789(n+6))`
-/

namespace A189004.P1635799570083557036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A000217 (n + 10) - A016789 (n + 6)).toNat

end

end A189004.P1635799570083557036

/-! ## A189004.P11487436897883459575

`A189006(eq[7, A025581(n)])`
-/

namespace A189004.P11487436897883459575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189004.P11487436897883459575

/-! ## A189004.P12582817442697901781

`A189006(A052905(n+5)-3)`
-/

namespace A189004.P12582817442697901781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A052905 (n + 5) - 3).toNat

end

end A189004.P12582817442697901781

/-! ## A189004.P14942222996984092876

`A189006(A000217(n+8)-8)`
-/

namespace A189004.P14942222996984092876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A000217 (n + 8) - 8).toNat

end

end A189004.P14942222996984092876

/-! ## A189004.P9355155355738333234

`A189006(eq[8, A004736(n+1)])`
-/

namespace A189004.P9355155355738333234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189004.P9355155355738333234

/-!
# A189005: Number of domino tilings of the 9 X n grid with upper left corner removed iff n is odd.

The programs for A189005, there is no canonical definition to state claims against.
-/

/-! ## A189005.P16803827788818503571

`A189006(A055999(n+6)+15)`
-/

namespace A189005.P16803827788818503571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A055999 (n + 6) + 15).toNat

end

end A189005.P16803827788818503571

/-! ## A189005.P13219076311857030224

`A189006(A000217(n+11)-A004277(n+6))`
-/

namespace A189005.P13219076311857030224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A000217 (n + 11) - A004277 (n + 6)).toNat

end

end A189005.P13219076311857030224

/-! ## A189005.P11809233156140011344

`A189006(A052905(n+7)-5)`
-/

namespace A189005.P11809233156140011344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A052905 (n + 7) - 5).toNat

end

end A189005.P11809233156140011344

/-! ## A189005.P13053486559583348484

`A189006(A000217(n+10)-10)`
-/

namespace A189005.P13053486559583348484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A000217 (n + 10) - 10).toNat

end

end A189005.P13053486559583348484

/-! ## A189005.P2497799085161101175

`A189006(A005563(n+7)-A167614(n+4))`
-/

namespace A189005.P2497799085161101175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A005563 (n + 7) - A167614 (n + 4)).toNat

end

end A189005.P2497799085161101175

/-!
# A189006: Array A(m,n) read by antidiagonals: number of domino tilings of the m X n grid with upper left corner removed iff m*n is odd, (m>=0, n>=0).

The programs for A189006, there is no canonical definition to state claims against.
-/

/-! ## A189006.P16778178066964953266

`A245013(n)-A010815(A033582(n+2))`
-/

namespace A189006.P16778178066964953266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 n - A010815 (A033582 (n + 2)).toNat

end

end A189006.P16778178066964953266

/-! ## A189006.P4959130772485229195

`A048793(A260340(n)+2)`
-/

namespace A189006.P4959130772485229195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A260340 n + 2).toNat

end

end A189006.P4959130772485229195

/-! ## A189006.P18364700172498908673

`A245013(n)-A025469(A059922(n))`
-/

namespace A189006.P18364700172498908673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 n - A025469 (A059922 n).toNat

end

end A189006.P18364700172498908673

/-! ## A189006.P9277615439638284944

`A269374(gcd(A219924(n), A383239(n+1)))`
-/

namespace A189006.P9277615439638284944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269374 (Int.gcd (A219924 n) (A383239 (n + 1)))

end

end A189006.P9277615439638284944

/-! ## A189006.P10452326894200162929

`A088696(A124976(n+1))`
-/

namespace A189006.P10452326894200162929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088696 (A124976 (n + 1)).toNat

end

end A189006.P10452326894200162929

/-!
# A189007: Number of ON cells after n generations of the 2D cellular automaton described in the comments.

The programs for A189007, the canonical program `A189007.P10141075326707844852` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189007 has offset 1).

The definition of A189007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4542 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189007.P5330748016090912168

`4/gcd(2, n)*a(floor(n/2))` with `a(0)=1`
-/

namespace A189007.P5330748016090912168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 / (Nat.gcd 2 n : ℚ) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A189007.P5330748016090912168

namespace A189007

/-- `4/gcd(2, n)*a(floor(n/2))` -/
def P5330748016090912168.Spec : Prop :=
  ∀ n, P5330748016090912168.a n = (A189007 (n + 1) : ℚ)

end A189007

/-! ## A189007.P10141075326707844852

`and((3-(-1)^n)*a(floor(n/2))+1-(-1)^n, -3)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A189007

/-- `and((3-(-1)^n)*a(floor(n/2))+1-(-1)^n, -3)` -/
def P10141075326707844852.Spec : Prop :=
  ∀ n, P10141075326707844852.a n = A189007 (n + 1)

theorem P10141075326707844852.correct : P10141075326707844852.Spec := by
  intro n
  simp only [A189007, Nat.add_sub_cancel]

end A189007

/-! ## A189007.P7225206290238608230

`2^A056792(2*n)`
-/

namespace A189007.P7225206290238608230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A056792 (2 * n) : ℤ)

end

end A189007.P7225206290238608230

namespace A189007

/-- `2^A056792(2*n)` -/
def P7225206290238608230.Spec : Prop :=
  ∀ n, P7225206290238608230.a n = (A189007 (n + 1) : ℚ)

end A189007

/-! ## A189007.P17435600980717884453

`2^A014701(Δ[n²])`
-/

namespace A189007.P17435600980717884453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A014701 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℤ)

end

end A189007.P17435600980717884453

namespace A189007

/-- `2^A014701(Δ[n²])` -/
def P17435600980717884453.Spec : Prop :=
  ∀ n, P17435600980717884453.a n = (A189007 (n + 1) : ℚ)

end A189007

/-! ## A189007.P14347393164700161861

`2^(A119476(n+1)-1)`
-/

namespace A189007.P14347393164700161861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A119476 (n + 1) - 1 : ℤ)

end

end A189007.P14347393164700161861

namespace A189007

/-- `2^(A119476(n+1)-1)` -/
def P14347393164700161861.Spec : Prop :=
  ∀ n, P14347393164700161861.a n = (A189007 (n + 1) : ℚ)

end A189007

/-! ## A189007.P15599781056943090914

`A270107(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A189007.P15599781056943090914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270107 (n - 1) + a (n - 1)

end

end A189007.P15599781056943090914

namespace A189007

/-- `A270107(n-1)+a(n-1)` -/
def P15599781056943090914.Spec : Prop :=
  ∀ n, P15599781056943090914.a n = A189007 (n + 1)

end A189007

/-! ## A189007.P7553530798095205739

`2^(A000120(n)+ceil(log2(n+1)))`
-/

namespace A189007.P7553530798095205739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n + ⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A189007.P7553530798095205739

namespace A189007

/-- `2^(A000120(n)+ceil(log2(n+1)))` -/
def P7553530798095205739.Spec : Prop :=
  ∀ n, P7553530798095205739.a n = (A189007 (n + 1) : ℚ)

end A189007

/-! ## A189007.P11829062049065304227

`2^ceil(log2(n+1))*A001316(n)`
-/

namespace A189007.P11829062049065304227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (A001316 n : ℚ)

end

end A189007.P11829062049065304227

namespace A189007

/-- `2^ceil(log2(n+1))*A001316(n)` -/
def P11829062049065304227.Spec : Prop :=
  ∀ n, P11829062049065304227.a n = (A189007 (n + 1) : ℚ)

end A189007

/-! ## A189007.P16228619422287171227

`2*a(n-A057979(n+1))` with `a(0)=1, a(1)=4`
-/

namespace A189007.P16228619422287171227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * a ((n : ℤ) - A057979 (n + 1)).toNat

end

end A189007.P16228619422287171227

namespace A189007

/-- `2*a(n-A057979(n+1))` -/
def P16228619422287171227.Spec : Prop :=
  ∀ n, (P16228619422287171227.a n : ℤ) = A189007 (n + 1)

end A189007

/-! ## A189007.P16940769220367193412

`2*a(floor(n/2))*A000034(n)` with `a(0)=1`
-/

namespace A189007.P16940769220367193412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a ⌊(n : ℚ) / 2⌋.toNat * A000034 n)

end

end A189007.P16940769220367193412

namespace A189007

/-- `2*a(floor(n/2))*A000034(n)` -/
def P16940769220367193412.Spec : Prop :=
  ∀ n, P16940769220367193412.a n = A189007 (n + 1)

end A189007

/-! ## A189007.P8794053890866315692

`2^ceil(log2(n+1))*A060632(2*n)`
-/

namespace A189007.P8794053890866315692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) * (A060632 (2 * n) : ℚ)

end

end A189007.P8794053890866315692

namespace A189007

/-- `2^ceil(log2(n+1))*A060632(2*n)` -/
def P8794053890866315692.Spec : Prop :=
  ∀ n, P8794053890866315692.a n = (A189007 (n + 1) : ℚ)

end A189007

/-! ## A189007.P708966432375910756

`a(floor(n/2))*Δ[A047238(n+1)]` with `a(0)=1`
-/

namespace A189007.P708966432375910756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * (f1 (n + 1) - f1 n)

end

end A189007.P708966432375910756

namespace A189007

/-- `a(floor(n/2))*Δ[A047238(n+1)]` -/
def P708966432375910756.Spec : Prop :=
  ∀ n, P708966432375910756.a n = A189007 (n + 1)

end A189007

/-! ## A189007.P16424852865522310032

`a(floor(n/2))*Δ[A047241(n+1)]` with `a(0)=1`
-/

namespace A189007.P16424852865522310032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * (f1 (n + 1) - f1 n)

end

end A189007.P16424852865522310032

namespace A189007

/-- `a(floor(n/2))*Δ[A047241(n+1)]` -/
def P16424852865522310032.Spec : Prop :=
  ∀ n, P16424852865522310032.a n = A189007 (n + 1)

end A189007

/-! ## A189007.P17784045884797692122

`2*a(floor(n/2))*∑[A165326(n)]` with `a(0)=1`
-/

namespace A189007.P17784045884797692122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a ⌊(n : ℚ) / 2⌋.toNat * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A189007.P17784045884797692122

namespace A189007

/-- `2*a(floor(n/2))*∑[A165326(n)]` -/
def P17784045884797692122.Spec : Prop :=
  ∀ n, P17784045884797692122.a n = A189007 (n + 1)

end A189007

/-! ## A189007.P14319618931101244892

`A011782(A119476(n+1))`
-/

namespace A189007.P14319618931101244892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A119476 (n + 1)).toNat

end

end A189007.P14319618931101244892

namespace A189007

/-- `A011782(A119476(n+1))` -/
def P14319618931101244892.Spec : Prop :=
  ∀ n, P14319618931101244892.a n = A189007 (n + 1)

end A189007

/-! ## A189007.P6728749815601883259

`A000079(A056792(2*n))`
-/

namespace A189007.P6728749815601883259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056792 (2 * n)).toNat

end

end A189007.P6728749815601883259

namespace A189007

/-- `A000079(A056792(2*n))` -/
def P6728749815601883259.Spec : Prop :=
  ∀ n, P6728749815601883259.a n = A189007 (n + 1)

end A189007

/-! ## A189007.P10293594617360538104

`A001316(n)*A062383(n)`
-/

namespace A189007.P10293594617360538104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A062383 n

end

end A189007.P10293594617360538104

namespace A189007

/-- `A001316(n)*A062383(n)` -/
def P10293594617360538104.Spec : Prop :=
  ∀ n, P10293594617360538104.a n = A189007 (n + 1)

end A189007

/-! ## A189007.P6055327721342751097

`A080100(n)*A102376(n)`
-/

namespace A189007.P6055327721342751097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n * A102376 n

end

end A189007.P6055327721342751097

namespace A189007

/-- `A080100(n)*A102376(n)` -/
def P6055327721342751097.Spec : Prop :=
  ∀ n, P6055327721342751097.a n = A189007 (n + 1)

end A189007

/-! ## A189007.P6961959145389624208

`A011782(ceil(log2(A169699(n))))`
-/

namespace A189007.P6961959145389624208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 ⌈Real.logb 2 (A169699 n : ℝ)⌉.toNat

end

end A189007.P6961959145389624208

namespace A189007

/-- `A011782(ceil(log2(A169699(n))))` -/
def P6961959145389624208.Spec : Prop :=
  ∀ n, P6961959145389624208.a n = A189007 (n + 1)

end A189007

/-! ## A189007.P11640208707543687499

`A011782(A056792(Δ[n²]))`
-/

namespace A189007.P11640208707543687499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A056792 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A189007.P11640208707543687499

namespace A189007

/-- `A011782(A056792(Δ[n²]))` -/
def P11640208707543687499.Spec : Prop :=
  ∀ n, P11640208707543687499.a n = A189007 (n + 1)

end A189007

/-!
# A189008: Zero-one sequence based on cubes: a(A000578(k))=a(k); a(A007412(k))=1-a(k); a(1)=0.

The programs for A189008, there is no canonical definition to state claims against.
-/

/-! ## A189008.P1708190173729947974

`char[A189010(n+1)-1]`
-/

namespace A189008.P1708190173729947974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189010 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189008.P1708190173729947974

/-! ## A189008.P18023071099078035056

`char[A023443(A189010(n+1))]`
-/

namespace A189008.P18023071099078035056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189010 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189008.P18023071099078035056

/-! ## A189008.P16531300916226967123

`char[A260196(n)+A189010(n+1)]`
-/

namespace A189008.P16531300916226967123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A189010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189008.P16531300916226967123

/-! ## A189008.P6952112464013447865

`1-a(n-A048766(n)%A177763(n+2))` with `a(0)=0`
-/

namespace A189008.P6952112464013447865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a ((n : ℤ) - Int.tmod (A048766 n) (A177763 (n + 2))).toNat

end

end A189008.P6952112464013447865

/-! ## A189008.P6526570006357456572

`A083924(A208477(n))`
-/

namespace A189008.P6526570006357456572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083924 (A208477 n).toNat

end

end A189008.P6526570006357456572

/-!
# A189009: Positions of 0 in A189008; complement of A189010.

The programs for A189009, there is no canonical definition to state claims against.
-/

/-! ## A189009.P13044399755636878017

`eq[0, A189008(n+1)]+1`
-/

namespace A189009.P13044399755636878017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189009.P13044399755636878017

/-! ## A189009.P554434291056824552

`record[or(-A189008(n+1), A000027(n+1))]`
-/

namespace A189009.P554434291056824552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A189008 (n + 1)) (A000027 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189009.P554434291056824552

/-! ## A189009.P5597310081222115889

`record[(n+1)*A189008(A007412(n+1))]`
-/

namespace A189009.P5597310081222115889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189008 (A007412 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189009.P5597310081222115889

/-! ## A189009.P17422658310068426247

`eq[A000038(n), A189008(A065033(2*n))]`
-/

namespace A189009.P17422658310068426247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189008 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189009.P17422658310068426247

/-! ## A189009.P12996039349796314687

`eq[A000007(n), A189008(A123108(2*n))]`
-/

namespace A189009.P12996039349796314687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189008 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189009.P12996039349796314687

/-! ## A189009.P287979120397999583

`eq[A105348(2*n), A189008(A065033(2*n))]`
-/

namespace A189009.P287979120397999583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189008 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189009.P287979120397999583

/-!
# A189010: Positions of 1 in A189008; complement of A189009.

The programs for A189010, there is no canonical definition to state claims against.
-/

/-! ## A189010.P9349788461171100573

`filter[n+1, A189008(#)]`
-/

namespace A189010.P9349788461171100573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189008 (f1 j) = 1) n)

end

end A189010.P9349788461171100573

/-! ## A189010.P7310088326548033180

`eq[1, A189008(n+1)]+1`
-/

namespace A189010.P7310088326548033180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189008 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189010.P7310088326548033180

/-! ## A189010.P3998124602731887428

`record[(n+2)*A189008(n+2)]`
-/

namespace A189010.P3998124602731887428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189008 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189010.P3998124602731887428

/-! ## A189010.P10693696330826340069

`A020725(eq[1, A189008(n+1)])`
-/

namespace A189010.P10693696330826340069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189010.P10693696330826340069

/-! ## A189010.P461142694625013890

`eq[1, A189008(A000007(n)+n)]`
-/

namespace A189010.P461142694625013890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189008 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189010.P461142694625013890

/-! ## A189010.P4675468146085524446

`eq[1, A189008(A065033(2*n))]`
-/

namespace A189010.P4675468146085524446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189008 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189010.P4675468146085524446

/-! ## A189010.P7754587739176033074

`eq[1, A189008(A123108(2*n))]`
-/

namespace A189010.P7754587739176033074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189008 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189010.P7754587739176033074

/-!
# A189011: Zero-one sequence based on triangular numbers: a(A000217(k))=a(k); a(A014132(k))=1-a(k); a(1)=0.

The programs for A189011, the canonical program `A189011.P15385399491713008070` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189011 has offset 1).

The definition of A189011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189011.P12437722758404351926

`char[A189013(n+1)-1]`
-/

namespace A189011.P12437722758404351926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189013 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189011.P12437722758404351926

namespace A189011

/-- `char[A189013(n+1)-1]` -/
def P12437722758404351926.Spec : Prop :=
  ∀ n, (P12437722758404351926.a n : ℤ) = A189011 (n + 1)

end A189011

/-! ## A189011.P6193100263168011771

`char[comp[A189012(n+1)-1]]`
-/

namespace A189011.P6193100263168011771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189012 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189011.P6193100263168011771

namespace A189011

/-- `char[comp[A189012(n+1)-1]]` -/
def P6193100263168011771.Spec : Prop :=
  ∀ n, (P6193100263168011771.a n : ℤ) = A189011 (n + 1)

end A189011

/-! ## A189011.P13054344332757243603

`1-char[A189012(A028310(n))-1]`
-/

namespace A189011.P13054344332757243603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189012 (A028310 n).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189011.P13054344332757243603

namespace A189011

/-- `1-char[A189012(A028310(n))-1]` -/
def P13054344332757243603.Spec : Prop :=
  ∀ n, P13054344332757243603.a n = A189011 (n + 1)

end A189011

/-! ## A189011.P15385399491713008070

`and(1, A069011(n)+a(A002262(n)))` with `a(0)=0`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A189011

/-- `and(1, A069011(n)+a(A002262(n)))` -/
def P15385399491713008070.Spec : Prop :=
  ∀ n, P15385399491713008070.a n = A189011 (n + 1)

theorem P15385399491713008070.correct : P15385399491713008070.Spec := by
  intro n
  simp only [A189011, Nat.add_sub_cancel]

end A189011

/-! ## A189011.P1626834400461566483

`and(1, A292564(n)-a(A002262(n)))` with `a(0)=0, a(1)=1`
-/

namespace A189011.P1626834400461566483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.land 1 (A292564 n - a (A002262 n).toNat)

end

end A189011.P1626834400461566483

namespace A189011

/-- `and(1, A292564(n)-a(A002262(n)))` -/
def P1626834400461566483.Spec : Prop :=
  ∀ n, P1626834400461566483.a n = A189011 (n + 1)

end A189011

/-! ## A189011.P1317014166657550065

`A010060(A220347(n+1)-1)`
-/

namespace A189011.P1317014166657550065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A220347 (n + 1) - 1).toNat

end

end A189011.P1317014166657550065

namespace A189011

/-- `A010060(A220347(n+1)-1)` -/
def P1317014166657550065.Spec : Prop :=
  ∀ n, P1317014166657550065.a n = A189011 (n + 1)

end A189011

/-! ## A189011.P9707042277609026489

`A035263(A001316(A220347(n+1))*A220347(n+1))`
-/

namespace A189011.P9707042277609026489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A001316 (A220347 (n + 1)).toNat * A220347 (n + 1)).toNat

end

end A189011.P9707042277609026489

namespace A189011

/-- `A035263(A001316(A220347(n+1))*A220347(n+1))` -/
def P9707042277609026489.Spec : Prop :=
  ∀ n, P9707042277609026489.a n = A189011 (n + 1)

end A189011

/-! ## A189011.P11769110576088275987

`1-a(A325785(n+1)-2)` with `a(0)=0`
-/

namespace A189011.P11769110576088275987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - a (A325785 (n + 1) - 2).toNat

end

end A189011.P11769110576088275987

namespace A189011

/-- `1-a(A325785(n+1)-2)` -/
def P11769110576088275987.Spec : Prop :=
  ∀ n, P11769110576088275987.a n = A189011 (n + 1)

end A189011

/-! ## A189011.P6512188025455282427

`A189135(A273751(n+1))`
-/

namespace A189011.P6512188025455282427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189135 (A273751 (n + 1)).toNat

end

end A189011.P6512188025455282427

namespace A189011

/-- `A189135(A273751(n+1))` -/
def P6512188025455282427.Spec : Prop :=
  ∀ n, P6512188025455282427.a n = A189011 (n + 1)

end A189011

/-! ## A189011.P314043022734571118

`A030300(A081954(n+1))`
-/

namespace A189011.P314043022734571118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030300 (A081954 (n + 1)).toNat

end

end A189011.P314043022734571118

namespace A189011

/-- `A030300(A081954(n+1))` -/
def P314043022734571118.Spec : Prop :=
  ∀ n, P314043022734571118.a n = A189011 (n + 1)

end A189011

/-!
# A189012: Positions of 0 in A189011; complement of A189013.

The programs for A189012, the canonical program `A189012.P6369404251198477735` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189012 has offset 1).

The definition of A189012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189012.P6369404251198477735

`eq[0, A189011(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A189012

/-- `eq[0, A189011(n+1)]+1` -/
def P6369404251198477735.Spec : Prop :=
  ∀ n, (P6369404251198477735.a n : ℤ) = A189012 (n + 1)

theorem P6369404251198477735.correct : P6369404251198477735.Spec := by
  intro n
  simp only [A189012, Nat.add_sub_cancel]

end A189012

/-! ## A189012.P1996104695847483051

`eq[0, A189011(A000038(n)+n)]`
-/

namespace A189012.P1996104695847483051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189011 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189012.P1996104695847483051

namespace A189012

/-- `eq[0, A189011(A000038(n)+n)]` -/
def P1996104695847483051.Spec : Prop :=
  ∀ n, (P1996104695847483051.a n : ℤ) = A189012 (n + 1)

end A189012

/-! ## A189012.P4892312982423790073

`record[n+1-A000040(n+1)*A189011(n+1)]`
-/

namespace A189012.P4892312982423790073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A189011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189012.P4892312982423790073

namespace A189012

/-- `record[n+1-A000040(n+1)*A189011(n+1)]` -/
def P4892312982423790073.Spec : Prop :=
  ∀ n, P4892312982423790073.a n = A189012 (n + 1)

end A189012

/-! ## A189012.P6099163979135017734

`record[n+1-A000961(n+1)*A189011(n+1)]`
-/

namespace A189012.P6099163979135017734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000961 (n + 1) * A189011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189012.P6099163979135017734

namespace A189012

/-- `record[n+1-A000961(n+1)*A189011(n+1)]` -/
def P6099163979135017734.Spec : Prop :=
  ∀ n, P6099163979135017734.a n = A189012 (n + 1)

end A189012

/-! ## A189012.P15314140154826409477

`record[n+1-A189011(n+1)*A276604(n)]`
-/

namespace A189012.P15314140154826409477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A189011 (n + 1) * A276604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189012.P15314140154826409477

namespace A189012

/-- `record[n+1-A189011(n+1)*A276604(n)]` -/
def P15314140154826409477.Spec : Prop :=
  ∀ n, P15314140154826409477.a n = A189012 (n + 1)

end A189012

/-! ## A189012.P17822585557295732131

`record[n+1-A189011(n+1)*A250277(n+1)]`
-/

namespace A189012.P17822585557295732131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A189011 (n + 1) * A250277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189012.P17822585557295732131

namespace A189012

/-- `record[n+1-A189011(n+1)*A250277(n+1)]` -/
def P17822585557295732131.Spec : Prop :=
  ∀ n, P17822585557295732131.a n = A189012 (n + 1)

end A189012

/-!
# A189013: Positions of 1 in A189011; complement of A189012.

The programs for A189013, the canonical program `A189013.P15026936849006250875` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189013 has offset 1).

The definition of A189013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189013.P15026936849006250875

`comp[A189012(n+1)-1]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A189013

/-- `comp[A189012(n+1)-1]+1` -/
def P15026936849006250875.Spec : Prop :=
  ∀ n, (P15026936849006250875.a n : ℤ) = A189013 (n + 1)

theorem P15026936849006250875.correct : P15026936849006250875.Spec := by
  intro n
  simp only [A189013, Nat.add_sub_cancel]

end A189013

/-! ## A189013.P3444577122911506619

`filter[n+1, A189011(#)]`
-/

namespace A189013.P3444577122911506619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189011 (f1 j) = 1) n)

end

end A189013.P3444577122911506619

namespace A189013

/-- `filter[n+1, A189011(#)]` -/
def P3444577122911506619.Spec : Prop :=
  ∀ n, (P3444577122911506619.a n : ℤ) = A189013 (n + 1)

end A189013

/-! ## A189013.P16792142444144712787

`eq[1, A189011(n+1)]+1`
-/

namespace A189013.P16792142444144712787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189011 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189013.P16792142444144712787

namespace A189013

/-- `eq[1, A189011(n+1)]+1` -/
def P16792142444144712787.Spec : Prop :=
  ∀ n, (P16792142444144712787.a n : ℤ) = A189013 (n + 1)

end A189013

/-! ## A189013.P8769339856577046593

`record[(n+2)*A189011(n+2)]`
-/

namespace A189013.P8769339856577046593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189011 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189013.P8769339856577046593

namespace A189013

/-- `record[(n+2)*A189011(n+2)]` -/
def P8769339856577046593.Spec : Prop :=
  ∀ n, P8769339856577046593.a n = A189013 (n + 1)

end A189013

/-! ## A189013.P14150488576500337105

`eq[1, A189011(A000007(n)+n)]`
-/

namespace A189013.P14150488576500337105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189011 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189013.P14150488576500337105

namespace A189013

/-- `eq[1, A189011(A000007(n)+n)]` -/
def P14150488576500337105.Spec : Prop :=
  ∀ n, (P14150488576500337105.a n : ℤ) = A189013 (n + 1)

end A189013

/-! ## A189013.P6150715434312520650

`eq[1, A189011(A065033(2*n))]`
-/

namespace A189013.P6150715434312520650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189011 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189013.P6150715434312520650

namespace A189013

/-- `eq[1, A189011(A065033(2*n))]` -/
def P6150715434312520650.Spec : Prop :=
  ∀ n, (P6150715434312520650.a n : ℤ) = A189013 (n + 1)

end A189013

/-! ## A189013.P17560355995804342577

`eq[1, A189011(A007318(A000124(n)))]`
-/

namespace A189013.P17560355995804342577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189011 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189013.P17560355995804342577

namespace A189013

/-- `eq[1, A189011(A007318(A000124(n)))]` -/
def P17560355995804342577.Spec : Prop :=
  ∀ n, (P17560355995804342577.a n : ℤ) = A189013 (n + 1)

end A189013

/-!
# A189014: Zero-one sequence based on pentagonal numbers: a(A000326(k))=a(k); a(A183217(k))=1-a(k); a(1)=0.

The programs for A189014, there is no canonical definition to state claims against.
-/

/-! ## A189014.P12169071223715394734

`char[A189016(n+1)-1]`
-/

namespace A189014.P12169071223715394734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189016 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189014.P12169071223715394734

/-! ## A189014.P2055220704260417819

`char[comp[A189015(n+1)-1]]`
-/

namespace A189014.P2055220704260417819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189015 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189014.P2055220704260417819

/-! ## A189014.P6552276229282945286

`char[A023443(A189016(n+1))]`
-/

namespace A189014.P6552276229282945286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189016 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189014.P6552276229282945286

/-! ## A189014.P11192604473197646964

`char[A023443(comp[A189015(n+1)])]`
-/

namespace A189014.P11192604473197646964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189015 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189014.P11192604473197646964

/-! ## A189014.P413418497073537199

`char[A260196(n)+A189016(n+1)]`
-/

namespace A189014.P413418497073537199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A189016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189014.P413418497073537199

/-! ## A189014.P13522588289750872796

`A057211(A331995(n+1)+Δ[n²])`
-/

namespace A189014.P13522588289750872796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (A331995 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A189014.P13522588289750872796

/-! ## A189014.P18246160246025851741

`A023971(A008078(n+1))`
-/

namespace A189014.P18246160246025851741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A008078 (n + 1)).toNat

end

end A189014.P18246160246025851741

/-! ## A189014.P12070969729345297266

`A023971(A008079(n+1))`
-/

namespace A189014.P12070969729345297266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A008079 (n + 1)).toNat

end

end A189014.P12070969729345297266

/-! ## A189014.P2681512968320198086

`A023971(A008256(n+1))`
-/

namespace A189014.P2681512968320198086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A008256 (n + 1)).toNat

end

end A189014.P2681512968320198086

/-! ## A189014.P14973787859110212709

`A023971(A008264(n+1))`
-/

namespace A189014.P14973787859110212709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023971 (A008264 (n + 1)).toNat

end

end A189014.P14973787859110212709

/-!
# A189015: Positions of 0 in A189014; complement of A189016.

The programs for A189015, there is no canonical definition to state claims against.
-/

/-! ## A189015.P18304829307992222105

`eq[0, A189014(n+1)]+1`
-/

namespace A189015.P18304829307992222105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189015.P18304829307992222105

/-! ## A189015.P18390409549079053319

`eq[A028310(n)-n, A189014(A028310(n))]`
-/

namespace A189015.P18390409549079053319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189014 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189015.P18390409549079053319

/-! ## A189015.P6789628536699982682

`eq[A000007(n), A189014(A065033(2*n))]`
-/

namespace A189015.P6789628536699982682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189014 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189015.P6789628536699982682

/-! ## A189015.P7577037999327911670

`record[A001057(A189014(n+1)+A005408(n))]`
-/

namespace A189015.P7577037999327911670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A189014 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189015.P7577037999327911670

/-! ## A189015.P7630730006643772124

`eq[1-A189014(A065033(2*n)), A057427(n)]`
-/

namespace A189015.P7630730006643772124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189014 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189015.P7630730006643772124

/-! ## A189015.P18429083858796927991

`eq[1-A189014(A065033(2*n)), A158388(n)]`
-/

namespace A189015.P18429083858796927991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A189014 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189015.P18429083858796927991

/-! ## A189015.P5738365898683659448

`record[A001057(A189014(n+1)-A001057(4*n+2))]`
-/

namespace A189015.P5738365898683659448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A189014 (n + 1) - A001057 (4 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189015.P5738365898683659448

/-! ## A189015.P7321693269993545353

`eq[A000038(n), A189014(A137735(n²))]`
-/

namespace A189015.P7321693269993545353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189014 (A137735 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189015.P7321693269993545353

/-!
# A189016: Positions of 1 in A189014; complement of A189015.

The programs for A189016, there is no canonical definition to state claims against.
-/

/-! ## A189016.P9008885555338165613

`comp[A189015(n+1)-1]+1`
-/

namespace A189016.P9008885555338165613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189015 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189016.P9008885555338165613

/-! ## A189016.P1939728878654593343

`filter[n+1, A189014(#)]`
-/

namespace A189016.P1939728878654593343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189014 (f1 j) = 1) n)

end

end A189016.P1939728878654593343

/-! ## A189016.P16607525434676862531

`eq[1, A189014(n+1)]+1`
-/

namespace A189016.P16607525434676862531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189014 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189016.P16607525434676862531

/-! ## A189016.P2596835543002825771

`record[(n+2)*A189014(n+2)]`
-/

namespace A189016.P2596835543002825771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189016.P2596835543002825771

/-! ## A189016.P17261673768182394453

`eq[1, A189014(A028310(n))]`
-/

namespace A189016.P17261673768182394453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189014 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189016.P17261673768182394453

/-! ## A189016.P12130478582140650526

`eq[1, A189014(A000007(n)+n)]`
-/

namespace A189016.P12130478582140650526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189014 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189016.P12130478582140650526

/-! ## A189016.P16577772289775040114

`eq[1, A189014(A065033(2*n))]`
-/

namespace A189016.P16577772289775040114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189014 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189016.P16577772289775040114

/-!
# A189017: Zero-one sequence based on tetrahedral numbers: a(A000292(k))=a(k); a(A145397(k))=1-a(k); a(1)=0.

The programs for A189017, there is no canonical definition to state claims against.
-/

/-! ## A189017.P9560127288777735213

`char[A189019(n+1)-1]`
-/

namespace A189017.P9560127288777735213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189019 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189017.P9560127288777735213

/-! ## A189017.P978634975108113285

`char[comp[A189018(n+1)-1]]`
-/

namespace A189017.P978634975108113285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189018 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189017.P978634975108113285

/-! ## A189017.P4283814523215783823

`char[A023443(A189019(n+1))]`
-/

namespace A189017.P4283814523215783823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189019 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189017.P4283814523215783823

/-! ## A189017.P15236418823225321820

`char[A023443(comp[A189018(n+1)])]`
-/

namespace A189017.P15236418823225321820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189018 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189017.P15236418823225321820

/-! ## A189017.P6816824832241265103

`char[A260196(n)+A189019(n+1)]`
-/

namespace A189017.P6816824832241265103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A189019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189017.P6816824832241265103

/-!
# A189018: Positions of 0 in A189017; complement of A189019.

The programs for A189018, there is no canonical definition to state claims against.
-/

/-! ## A189018.P17660799909347823075

`eq[0, A189017(n+1)]+1`
-/

namespace A189018.P17660799909347823075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189018.P17660799909347823075

/-! ## A189018.P5854252389913501045

`eq[0, A189017(A000038(n)+n)]`
-/

namespace A189018.P5854252389913501045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189017 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189018.P5854252389913501045

/-! ## A189018.P12990947440659377225

`record[(1-A189017(n+1))*A000027(n+1)]`
-/

namespace A189018.P12990947440659377225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A189017 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189018.P12990947440659377225

/-! ## A189018.P1300254440182831305

`record[n+1-A000096(n)*A189017(n+1)]`
-/

namespace A189018.P1300254440182831305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000096 n * A189017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189018.P1300254440182831305

/-! ## A189018.P1240939733270774729

`record[n+1-A000125(n)*A189017(n+1)]`
-/

namespace A189018.P1240939733270774729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000125 n * A189017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189018.P1240939733270774729

/-! ## A189018.P16357959011493797434

`record[n+1-A000217(n)*A189017(n+1)]`
-/

namespace A189018.P16357959011493797434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000217 n * A189017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189018.P16357959011493797434

/-! ## A189018.P10140073437379908233

`record[n+1-A000290(n)*A189017(n+1)]`
-/

namespace A189018.P10140073437379908233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000290 n * A189017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189018.P10140073437379908233

/-! ## A189018.P6697254993508359136

`record[n+1-A000578(n)*A189017(n+1)]`
-/

namespace A189018.P6697254993508359136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000578 n * A189017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189018.P6697254993508359136

/-! ## A189018.P12743216143039509746

`eq[A028310(n)-n, A189017(A028310(n))]`
-/

namespace A189018.P12743216143039509746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189017 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189018.P12743216143039509746

/-! ## A189018.P9160222127676737356

`record[n+1-A000225(n*A189017(n+1))]`
-/

namespace A189018.P9160222127676737356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000225 ((n : ℤ) * A189017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189018.P9160222127676737356

/-!
# A189019: Positions of 1 in A189017; complement of A189018.

The programs for A189019, there is no canonical definition to state claims against.
-/

/-! ## A189019.P16998483400649096337

`comp[A189018(n+1)-1]+1`
-/

namespace A189019.P16998483400649096337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189018 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189019.P16998483400649096337

/-! ## A189019.P89623063051651097

`filter[n+1, A189017(#)]`
-/

namespace A189019.P89623063051651097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189017 (f1 j) = 1) n)

end

end A189019.P89623063051651097

/-! ## A189019.P15910744570446061106

`eq[1, A189017(n+1)]+1`
-/

namespace A189019.P15910744570446061106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189017 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189019.P15910744570446061106

/-! ## A189019.P768480135727343709

`record[(n+2)*A189017(n+2)]`
-/

namespace A189019.P768480135727343709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189019.P768480135727343709

/-! ## A189019.P7693987692789947644

`eq[1, A189017(A028310(n))]`
-/

namespace A189019.P7693987692789947644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189017 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189019.P7693987692789947644

/-! ## A189019.P3002564803158074374

`eq[1, A189017(A000007(n)+n)]`
-/

namespace A189019.P3002564803158074374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189017 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189019.P3002564803158074374

/-! ## A189019.P4746943017672140426

`eq[1, A189017(A065033(2*n))]`
-/

namespace A189019.P4746943017672140426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189017 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189019.P4746943017672140426

/-! ## A189019.P10375752370273102065

`eq[1, A189017(A123108(2*n))]`
-/

namespace A189019.P10375752370273102065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189017 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189019.P10375752370273102065

/-! ## A189019.P10354434954047194692

`eq[1, A189017(A007318(A000124(n)))]`
-/

namespace A189019.P10354434954047194692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189017 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189019.P10354434954047194692

/-!
# A189020: a(n) = Sum_{k=1..10^n} tau_4(k), where tau_4 is the number of ordered factorizations into 4 factors (A007426).

The programs for A189020, the canonical program `A189020.P16584928462865797515` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189020 has offset 0).

The definition of A189020 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061202, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A189020.P16584928462865797515

`A061202(10^n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189020

/-- `A061202(10^n)` -/
def P16584928462865797515.Spec : Prop :=
  ∀ n, P16584928462865797515.a n = A189020 n

theorem P16584928462865797515.correct : P16584928462865797515.Spec := by
  intro n
  simp only [A189020]

end A189020

/-!
# A189021: Apostol's second order Möbius (or Moebius) function mu_2(n).

The programs for A189021, the canonical program `A189021.P12232973685281309927` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189021 has offset 1).

The definition of A189021 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189021.P12232973685281309927

`∏{e}[n+1, A154955(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189021

/-- `∏{e}[n+1, A154955(#)]` -/
def P12232973685281309927.Spec : Prop :=
  ∀ n, P12232973685281309927.a n = A189021 (n + 1)

theorem P12232973685281309927.correct : P12232973685281309927.Spec := by
  intro n
  simp only [A189021, Nat.add_sub_cancel]

end A189021

/-! ## A189021.P2008350817375288080

`∏{e}[n+1, A015299(#²)]`
-/

namespace A189021.P2008350817375288080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015299 (Nat.factorization (f1 n) p ^ 2)

end

end A189021.P2008350817375288080

namespace A189021

/-- `∏{e}[n+1, A015299(#²)]` -/
def P2008350817375288080.Spec : Prop :=
  ∀ n, P2008350817375288080.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P7467247458597208831

`∏{e}[n+1, A015419(#²)]`
-/

namespace A189021.P7467247458597208831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015419 (Nat.factorization (f1 n) p ^ 2)

end

end A189021.P7467247458597208831

namespace A189021

/-- `∏{e}[n+1, A015419(#²)]` -/
def P7467247458597208831.Spec : Prop :=
  ∀ n, P7467247458597208831.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P8400058595712101991

`∏{e}[n+1, A015599(#²)]`
-/

namespace A189021.P8400058595712101991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A015599 (Nat.factorization (f1 n) p ^ 2)

end

end A189021.P8400058595712101991

namespace A189021

/-- `∏{e}[n+1, A015599(#²)]` -/
def P8400058595712101991.Spec : Prop :=
  ∀ n, P8400058595712101991.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P14816348938225967265

`∏{e}[n+1, A008683(2^#/2)]`
-/

namespace A189021.P14816348938225967265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 (SequenceMachineLib.roundAway ((2 ^ Nat.factorization (f1 n) p : ℚ) / 2)).toNat

end

end A189021.P14816348938225967265

namespace A189021

/-- `∏{e}[n+1, A008683(2^#/2)]` -/
def P14816348938225967265.Spec : Prop :=
  ∀ n, P14816348938225967265.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P11007472162914027960

`A008683((n+1)/∏{p}[n+1, #])`
-/

namespace A189021.P11007472162914027960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A189021.P11007472162914027960

namespace A189021

/-- `A008683((n+1)/∏{p}[n+1, #])` -/
def P11007472162914027960.Spec : Prop :=
  ∀ n, P11007472162914027960.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P8463897953107238532

`A008683(gcd(n+1, ∑{p}[n+1, (n+1)/#]))`
-/

namespace A189021.P8463897953107238532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A189021.P8463897953107238532

namespace A189021

/-- `A008683(gcd(n+1, ∑{p}[n+1, (n+1)/#]))` -/
def P8463897953107238532.Spec : Prop :=
  ∀ n, P8463897953107238532.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P16667516261927481218

`A008683(A000189(n+1))`
-/

namespace A189021.P16667516261927481218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000189 (n + 1)).toNat

end

end A189021.P16667516261927481218

namespace A189021

/-- `A008683(A000189(n+1))` -/
def P16667516261927481218.Spec : Prop :=
  ∀ n, P16667516261927481218.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P17964273571153807187

`A008683(A000190(n+1))`
-/

namespace A189021.P17964273571153807187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000190 (n + 1)).toNat

end

end A189021.P17964273571153807187

namespace A189021

/-- `A008683(A000190(n+1))` -/
def P17964273571153807187.Spec : Prop :=
  ∀ n, P17964273571153807187.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P1527827493956887287

`A008683(A003557(n+1))`
-/

namespace A189021.P1527827493956887287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A003557 (n + 1)).toNat

end

end A189021.P1527827493956887287

namespace A189021

/-- `A008683(A003557(n+1))` -/
def P1527827493956887287.Spec : Prop :=
  ∀ n, P1527827493956887287.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P5400272135573333410

`A053864(A057521(n+1))`
-/

namespace A189021.P5400272135573333410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (A057521 (n + 1)).toNat

end

end A189021.P5400272135573333410

namespace A189021

/-- `A053864(A057521(n+1))` -/
def P5400272135573333410.Spec : Prop :=
  ∀ n, P5400272135573333410.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P11743137724125577693

`A008683(A292589(n+1))`
-/

namespace A189021.P11743137724125577693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A292589 (n + 1)).toNat

end

end A189021.P11743137724125577693

namespace A189021

/-- `A008683(A292589(n+1))` -/
def P11743137724125577693.Spec : Prop :=
  ∀ n, P11743137724125577693.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P1013673324951485762

`A053864(A366993(n+1))`
-/

namespace A189021.P1013673324951485762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053864 (A366993 (n + 1)).toNat

end

end A189021.P1013673324951485762

namespace A189021

/-- `A053864(A366993(n+1))` -/
def P1013673324951485762.Spec : Prop :=
  ∀ n, P1013673324951485762.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P10527272898802196226

`A008683(A336551(n+1)+1)`
-/

namespace A189021.P10527272898802196226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A336551 (n + 1) + 1).toNat

end

end A189021.P10527272898802196226

namespace A189021

/-- `A008683(A336551(n+1)+1)` -/
def P10527272898802196226.Spec : Prop :=
  ∀ n, P10527272898802196226.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P14701751922616390536

`A008683(1-A010848(n+1)+n)`
-/

namespace A189021.P14701751922616390536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (1 - A010848 (n + 1) + (n : ℤ)).toNat

end

end A189021.P14701751922616390536

namespace A189021

/-- `A008683(1-A010848(n+1)+n)` -/
def P14701751922616390536.Spec : Prop :=
  ∀ n, P14701751922616390536.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P6542019236170336774

`A162511(n+1)*A212793(n+1)`
-/

namespace A189021.P6542019236170336774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1) * A212793 (n + 1)

end

end A189021.P6542019236170336774

namespace A189021

/-- `A162511(n+1)*A212793(n+1)` -/
def P6542019236170336774.Spec : Prop :=
  ∀ n, P6542019236170336774.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P17778168379914408468

`A166234(n+1)*A212793(n+1)`
-/

namespace A189021.P17778168379914408468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166234 (n + 1) * A212793 (n + 1)

end

end A189021.P17778168379914408468

namespace A189021

/-- `A166234(n+1)*A212793(n+1)` -/
def P17778168379914408468.Spec : Prop :=
  ∀ n, P17778168379914408468.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P12063223201902655163

`A064179(n+1)*A363551(n+1)`
-/

namespace A189021.P12063223201902655163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1) * A363551 (n + 1)

end

end A189021.P12063223201902655163

namespace A189021

/-- `A064179(n+1)*A363551(n+1)` -/
def P12063223201902655163.Spec : Prop :=
  ∀ n, P12063223201902655163.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P8285155244189604329

`A076479(n+1)*A363551(n+1)`
-/

namespace A189021.P8285155244189604329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A363551 (n + 1)

end

end A189021.P8285155244189604329

namespace A189021

/-- `A076479(n+1)*A363551(n+1)` -/
def P8285155244189604329.Spec : Prop :=
  ∀ n, P8285155244189604329.a n = A189021 (n + 1)

end A189021

/-! ## A189021.P5453981926068189380

`A129667(n+1)*A363551(n+1)`
-/

namespace A189021.P5453981926068189380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129667 (n + 1) * A363551 (n + 1)

end

end A189021.P5453981926068189380

namespace A189021

/-- `A129667(n+1)*A363551(n+1)` -/
def P5453981926068189380.Spec : Prop :=
  ∀ n, P5453981926068189380.a n = A189021 (n + 1)

end A189021

/-!
# A189022: Apostol's third-order Möbius function mu_3(n).

The programs for A189022, the canonical program `A189022.P14953887359045575583` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189022 has offset 1).

The definition of A189022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189022.P14603011899792459753

`∏{d}[n+1, A053865(#)]`
-/

namespace A189022.P14603011899792459753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A053865 d

end

end A189022.P14603011899792459753

namespace A189022

/-- `∏{d}[n+1, A053865(#)]` -/
def P14603011899792459753.Spec : Prop :=
  ∀ n, P14603011899792459753.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P7647715215354387203

`A008683(A062378(n+1))`
-/

namespace A189022.P7647715215354387203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A062378 (n + 1)).toNat

end

end A189022.P7647715215354387203

namespace A189022

/-- `A008683(A062378(n+1))` -/
def P7647715215354387203.Spec : Prop :=
  ∀ n, P7647715215354387203.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P11872554324634188223

`A076479(n+1)*A307445(n+1)`
-/

namespace A189022.P11872554324634188223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1) * A307445 (n + 1)

end

end A189022.P11872554324634188223

namespace A189022

/-- `A076479(n+1)*A307445(n+1)` -/
def P11872554324634188223.Spec : Prop :=
  ∀ n, P11872554324634188223.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P9271070582099810097

`A257098(n+1)*A307445(n+1)`
-/

namespace A189022.P9271070582099810097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257098 (n + 1) * A307445 (n + 1)

end

end A189022.P9271070582099810097

namespace A189022

/-- `A257098(n+1)*A307445(n+1)` -/
def P9271070582099810097.Spec : Prop :=
  ∀ n, P9271070582099810097.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P11310737637105954897

`A363552(n+1)*A398576(n+1)`
-/

namespace A189022.P11310737637105954897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363552 (n + 1) * A398576 (n + 1)

end

end A189022.P11310737637105954897

namespace A189022

/-- `A363552(n+1)*A398576(n+1)` -/
def P11310737637105954897.Spec : Prop :=
  ∀ n, P11310737637105954897.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P5899618134573388879

`A008683((n+1)/A007948(n+1))`
-/

namespace A189022.P5899618134573388879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007948 (n + 1) : ℚ))).toNat

end

end A189022.P5899618134573388879

namespace A189022

/-- `A008683((n+1)/A007948(n+1))` -/
def P5899618134573388879.Spec : Prop :=
  ∀ n, P5899618134573388879.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P14953887359045575583

`∑{d}[n+1, A307445(#)*A365348((n+1)/#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A189022

/-- `∑{d}[n+1, A307445(#)*A365348((n+1)/#)]` -/
def P14953887359045575583.Spec : Prop :=
  ∀ n, P14953887359045575583.a n = A189022 (n + 1)

theorem P14953887359045575583.correct : P14953887359045575583.Spec := by
  intro n
  simp only [A189022, Nat.add_sub_cancel]

end A189022

/-! ## A189022.P8435665024440786263

`A008683(A000190(A000190(n+1)))`
-/

namespace A189022.P8435665024440786263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000190 (A000190 (n + 1)).toNat).toNat

end

end A189022.P8435665024440786263

namespace A189022

/-- `A008683(A000190(A000190(n+1)))` -/
def P8435665024440786263.Spec : Prop :=
  ∀ n, P8435665024440786263.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P5171662440393892005

`A008683(A003557(A003557(n+1)))`
-/

namespace A189022.P5171662440393892005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A003557 (A003557 (n + 1)).toNat).toNat

end

end A189022.P5171662440393892005

namespace A189022

/-- `A008683(A003557(A003557(n+1)))` -/
def P5171662440393892005.Spec : Prop :=
  ∀ n, P5171662440393892005.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P1716212307971034941

`A008683(A292589(A292589(n+1)))`
-/

namespace A189022.P1716212307971034941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A292589 (A292589 (n + 1)).toNat).toNat

end

end A189022.P1716212307971034941

namespace A189022

/-- `A008683(A292589(A292589(n+1)))` -/
def P1716212307971034941.Spec : Prop :=
  ∀ n, P1716212307971034941.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P11396477423491413203

`∏{e}[n+1, A008683(A000010(A000010(#²)))]`
-/

namespace A189022.P11396477423491413203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 (A000010 (A000010 (Nat.factorization (f1 n) p ^ 2)).toNat).toNat

end

end A189022.P11396477423491413203

namespace A189022

/-- `∏{e}[n+1, A008683(A000010(A000010(#²)))]` -/
def P11396477423491413203.Spec : Prop :=
  ∀ n, P11396477423491413203.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P5623883054421938573

`A189021(A062378(n+1)²)`
-/

namespace A189022.P5623883054421938573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189021 (A062378 (n + 1) ^ 2).toNat

end

end A189022.P5623883054421938573

namespace A189022

/-- `A189021(A062378(n+1)²)` -/
def P5623883054421938573.Spec : Prop :=
  ∀ n, P5623883054421938573.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P9225317535203699237

`∏{e}[n+1, A008683(A000010(#!))]`
-/

namespace A189022.P9225317535203699237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 (A000010 (Nat.factorial (Nat.factorization (f1 n) p))).toNat

end

end A189022.P9225317535203699237

namespace A189022

/-- `∏{e}[n+1, A008683(A000010(#!))]` -/
def P9225317535203699237.Spec : Prop :=
  ∀ n, P9225317535203699237.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P620125311697635715

`A100047(A294875(n+1))`
-/

namespace A189022.P620125311697635715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100047 (A294875 (n + 1)).toNat

end

end A189022.P620125311697635715

namespace A189022

/-- `A100047(A294875(n+1))` -/
def P620125311697635715.Spec : Prop :=
  ∀ n, P620125311697635715.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P8035427267649202356

`A318657(A257099(n+1)²)`
-/

namespace A189022.P8035427267649202356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A257099 (n + 1) ^ 2).toNat

end

end A189022.P8035427267649202356

namespace A189022

/-- `A318657(A257099(n+1)²)` -/
def P8035427267649202356.Spec : Prop :=
  ∀ n, P8035427267649202356.a n = A189022 (n + 1)

end A189022

/-! ## A189022.P15740995986159573139

`A318657(A257099(n+1)*A257099(n+1))`
-/

namespace A189022.P15740995986159573139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (A257099 (n + 1) * A257099 (n + 1)).toNat

end

end A189022.P15740995986159573139

namespace A189022

/-- `A318657(A257099(n+1)*A257099(n+1))` -/
def P15740995986159573139.Spec : Prop :=
  ∀ n, P15740995986159573139.a n = A189022 (n + 1)

end A189022

/-!
# A189023: Apostol's fourth-order Mobius (Moebius) function mu_4(n).

The programs for A189023, the canonical program `A189023.P3066450030052913835` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189023 has offset 1).

The definition of A189023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189023.P4696981339659300061

`∏{d}[n+1, A053981(#)]`
-/

namespace A189023.P4696981339659300061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A053981 d

end

end A189023.P4696981339659300061

namespace A189023

/-- `∏{d}[n+1, A053981(#)]` -/
def P4696981339659300061.Spec : Prop :=
  ∀ n, P4696981339659300061.a n = A189023 (n + 1)

end A189023

/-! ## A189023.P12247446811752156231

`A008683(A062379(n+1))`
-/

namespace A189023.P12247446811752156231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A062379 (n + 1)).toNat

end

end A189023.P12247446811752156231

namespace A189023

/-- `A008683(A062379(n+1))` -/
def P12247446811752156231.Spec : Prop :=
  ∀ n, P12247446811752156231.a n = A189023 (n + 1)

end A189023

/-! ## A189023.P3066450030052913835

`A189021(A062378(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A189023

/-- `A189021(A062378(n+1))` -/
def P3066450030052913835.Spec : Prop :=
  ∀ n, P3066450030052913835.a n = A189023 (n + 1)

theorem P3066450030052913835.correct : P3066450030052913835.Spec := by
  intro n
  simp only [A189023, Nat.add_sub_cancel]

end A189023

/-! ## A189023.P12857746857791073323

`A008683((n+1)/A058035(n+1))`
-/

namespace A189023.P12857746857791073323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A058035 (n + 1) : ℚ))).toNat

end

end A189023.P12857746857791073323

namespace A189023

/-- `A008683((n+1)/A058035(n+1))` -/
def P12857746857791073323.Spec : Prop :=
  ∀ n, P12857746857791073323.a n = A189023 (n + 1)

end A189023

/-! ## A189023.P4821802771185694669

`∏{e}[n+1, A284585(A053689(#)%#²)]`
-/

namespace A189023.P4821802771185694669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A284585 (Int.tmod (A053689 (Nat.factorization (f1 n) p)) (Nat.factorization (f1 n) p ^ 2 : ℤ)).toNat

end

end A189023.P4821802771185694669

namespace A189023

/-- `∏{e}[n+1, A284585(A053689(#)%#²)]` -/
def P4821802771185694669.Spec : Prop :=
  ∀ n, P4821802771185694669.a n = A189023 (n + 1)

end A189023

/-! ## A189023.P4193379940666911955

`∏{e}[n+1, A008683(A000010(A000045(#)))]`
-/

namespace A189023.P4193379940666911955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008683 (A000010 (A000045 (Nat.factorization (f1 n) p)).toNat).toNat

end

end A189023.P4193379940666911955

namespace A189023

/-- `∏{e}[n+1, A008683(A000010(A000045(#)))]` -/
def P4193379940666911955.Spec : Prop :=
  ∀ n, P4193379940666911955.a n = A189023 (n + 1)

end A189023

/-! ## A189023.P12990739161087110423

`A008683(A062378(n+1)/A053150(n+1))`
-/

namespace A189023.P12990739161087110423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A062378 (n + 1) : ℚ) / (A053150 (n + 1) : ℚ))).toNat

end

end A189023.P12990739161087110423

namespace A189023

/-- `A008683(A062378(n+1)/A053150(n+1))` -/
def P12990739161087110423.Spec : Prop :=
  ∀ n, P12990739161087110423.a n = A189023 (n + 1)

end A189023

/-! ## A189023.P6373974129499453017

`A014163(A051903(n+1)²-A051903(n+1))`
-/

namespace A189023.P6373974129499453017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014163 (A051903 (n + 1) ^ 2 - A051903 (n + 1)).toNat

end

end A189023.P6373974129499453017

namespace A189023

/-- `A014163(A051903(n+1)²-A051903(n+1))` -/
def P6373974129499453017.Spec : Prop :=
  ∀ n, P6373974129499453017.a n = A189023 (n + 1)

end A189023

/-! ## A189023.P16233853535394065974

`A008683(A003557(A003557(A003557(n+1))))`
-/

namespace A189023.P16233853535394065974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A003557 (A003557 (A003557 (n + 1)).toNat).toNat).toNat

end

end A189023.P16233853535394065974

namespace A189023

/-- `A008683(A003557(A003557(A003557(n+1))))` -/
def P16233853535394065974.Spec : Prop :=
  ∀ n, P16233853535394065974.a n = A189023 (n + 1)

end A189023

/-! ## A189023.P13738737836319916015

`A317939(A046643(n+1))^A257101(n+1)`
-/

namespace A189023.P13738737836319916015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317939 (A046643 (n + 1)).toNat : ℚ) ^ (A257101 (n + 1) : ℤ)

end

end A189023.P13738737836319916015

namespace A189023

/-- `A317939(A046643(n+1))^A257101(n+1)` -/
def P13738737836319916015.Spec : Prop :=
  ∀ n, P13738737836319916015.a n = (A189023 (n + 1) : ℚ)

end A189023

/-!
# A189024: Number of primes in the range (n - sqrt(n), n].

The programs for A189024, the canonical program `A189024.P17478436434097569227` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189024 has offset 1).

The definition of A189024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189024.P3507971364537898118

`A000720(n+1)-A000720(A028310(A028391(n)))`
-/

namespace A189024.P3507971364537898118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A000720 (A028310 (A028391 n).toNat).toNat

end

end A189024.P3507971364537898118

namespace A189024

/-- `A000720(n+1)-A000720(A028310(A028391(n)))` -/
def P3507971364537898118.Spec : Prop :=
  ∀ n, P3507971364537898118.a n = A189024 (n + 1)

end A189024

/-! ## A189024.P14064892261915787442

`A036234(n+1)-A036234(A028310(A028391(n)))`
-/

namespace A189024.P14064892261915787442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1) - A036234 (A028310 (A028391 n).toNat).toNat

end

end A189024.P14064892261915787442

namespace A189024

/-- `A036234(n+1)-A036234(A028310(A028391(n)))` -/
def P14064892261915787442.Spec : Prop :=
  ∀ n, P14064892261915787442.a n = A189024 (n + 1)

end A189024

/-! ## A189024.P17478436434097569227

`A230980(n+1)-A230980(A028391(n))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189024

/-- `A230980(n+1)-A230980(A028391(n))` -/
def P17478436434097569227.Spec : Prop :=
  ∀ n, P17478436434097569227.a n = A189024 (n + 1)

theorem P17478436434097569227.correct : P17478436434097569227.Spec := by
  intro n
  simp only [A189024, Nat.add_sub_cancel]

end A189024

/-! ## A189024.P15949152173260655708

`A230980(n+1)-A230980(n-A000196(n))`
-/

namespace A189024.P15949152173260655708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A230980 ((n : ℤ) - A000196 n).toNat

end

end A189024.P15949152173260655708

namespace A189024

/-- `A230980(n+1)-A230980(n-A000196(n))` -/
def P15949152173260655708.Spec : Prop :=
  ∀ n, P15949152173260655708.a n = A189024 (n + 1)

end A189024

/-! ## A189024.P11286411598846320186

`A000720(n+1)-A056172(A122800(n+1))`
-/

namespace A189024.P11286411598846320186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A056172 (A122800 (n + 1)).toNat

end

end A189024.P11286411598846320186

namespace A189024

/-- `A000720(n+1)-A056172(A122800(n+1))` -/
def P11286411598846320186.Spec : Prop :=
  ∀ n, P11286411598846320186.a n = A189024 (n + 1)

end A189024

/-! ## A189024.P5807441272025943509

`A230980(n+1)-A056172(A122800(n+1))`
-/

namespace A189024.P5807441272025943509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n + 1) - A056172 (A122800 (n + 1)).toNat

end

end A189024.P5807441272025943509

namespace A189024

/-- `A230980(n+1)-A056172(A122800(n+1))` -/
def P5807441272025943509.Spec : Prop :=
  ∀ n, P5807441272025943509.a n = A189024 (n + 1)

end A189024

/-! ## A189024.P16150421477536764611

`A000720(n+1)-A230980(A004526(A123663(n+1)))`
-/

namespace A189024.P16150421477536764611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A230980 (A004526 (A123663 (n + 1)).toNat).toNat

end

end A189024.P16150421477536764611

namespace A189024

/-- `A000720(n+1)-A230980(A004526(A123663(n+1)))` -/
def P16150421477536764611.Spec : Prop :=
  ∀ n, P16150421477536764611.a n = A189024 (n + 1)

end A189024

/-!
# A189025: Number of primes in the range (n - 2*sqrt(n), n].

The programs for A189025, there is no canonical definition to state claims against.
-/

/-! ## A189025.P13978897499719404349

`A000720(n+1)-(A004216(n+2)+A004216(A001037(n)))`
-/

namespace A189025.P13978897499719404349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - (A004216 (n + 2) + A004216 (A001037 n).toNat)

end

end A189025.P13978897499719404349

/-! ## A189025.P11799527006023427758

`A334097(A000079(n))-∑[A334108(n+1)]`
-/

namespace A189025.P11799527006023427758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334097 (A000079 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A189025.P11799527006023427758

/-! ## A189025.P12207936781688334385

`A001222(A108951(n+1)-A008838(n))`
-/

namespace A189025.P12207936781688334385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A108951 (n + 1) - A008838 n).toNat

end

end A189025.P12207936781688334385

/-! ## A189025.P2392577294115721199

`A001222(A108951(n+1)-A102682(n))`
-/

namespace A189025.P2392577294115721199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A108951 (n + 1) - A102682 n).toNat

end

end A189025.P2392577294115721199

/-! ## A189025.P14694907385823035622

`A001222(A108951(n+1)-A307987(n+1))`
-/

namespace A189025.P14694907385823035622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A108951 (n + 1) - A307987 (n + 1)).toNat

end

end A189025.P14694907385823035622

/-!
# A189027: There appear to be at least n primes in the range (x-2*sqrt(x), x] for all x >= a(n).

The programs for A189027, there is no canonical definition to state claims against.
-/

/-! ## A189027.P7146426060356936817

`A136260(A370304(n))`
-/

namespace A189027.P7146426060356936817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136260 (A370304 n).toNat

end

end A189027.P7146426060356936817

/-!
# A189028: Zero-one sequence based on the sequence (5n-4): a(A016861(k))=a(k); a(A047203(k))=1-a(k); a(1)=0.

The programs for A189028, there is no canonical definition to state claims against.
-/

/-! ## A189028.P13442499067161762142

`char[A189030(n+1)-1]`
-/

namespace A189028.P13442499067161762142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189030 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189028.P13442499067161762142

/-! ## A189028.P14329005252477983027

`1-char[A189029(n+1)-1]`
-/

namespace A189028.P14329005252477983027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189029 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189028.P14329005252477983027

/-! ## A189028.P6582387614128988470

`char[A260196(n)+A189030(n+1)]`
-/

namespace A189028.P6582387614128988470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A189030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189028.P6582387614128988470

/-! ## A189028.P14782896482261259193

`A076478((4*(n^3+n))%A108211(n+2))`
-/

namespace A189028.P14782896482261259193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076478 (Int.tmod (4 * (n ^ 3 + n) : ℤ) (A108211 (n + 2))).toNat

end

end A189028.P14782896482261259193

/-! ## A189028.P11892920542655971601

`A359374(A000265(n+1)*A309479(n+4))`
-/

namespace A189028.P11892920542655971601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359374 (A000265 (n + 1) * A309479 (n + 4)).toNat

end

end A189028.P11892920542655971601

/-!
# A189029: Positions of 0 in A189028; Complement of A189030.

The programs for A189029, there is no canonical definition to state claims against.
-/

/-! ## A189029.P1808766899944505641

`eq[0, A189028(n+1)]+1`
-/

namespace A189029.P1808766899944505641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189029.P1808766899944505641

/-! ## A189029.P12425273528098235976

`eq[0, A189028(A000038(n)+n)]`
-/

namespace A189029.P12425273528098235976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189029.P12425273528098235976

/-! ## A189029.P8978112430737799085

`eq[A000007(n), A189028(A028310(n))]`
-/

namespace A189029.P8978112430737799085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189029.P8978112430737799085

/-! ## A189029.P10956348854255634200

`eq[A000038(n), A189028(A028310(n))]`
-/

namespace A189029.P10956348854255634200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189029.P10956348854255634200

/-! ## A189029.P7226249662040082045

`record[A087508(A016777(n)-A189028(n+1))]`
-/

namespace A189029.P7226249662040082045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087508 (A016777 n - A189028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189029.P7226249662040082045

/-! ## A189029.P8007147185283699069

`record[A007318(A134869(n+1)-A189028(n+1))]`
-/

namespace A189029.P8007147185283699069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A134869 (n + 1) - A189028 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189029.P8007147185283699069

/-!
# A189030: Positions of 1 in A189028; complement of A189029.

The programs for A189030, there is no canonical definition to state claims against.
-/

/-! ## A189030.P6052695590091611788

`filter[n+1, A189028(#)]`
-/

namespace A189030.P6052695590091611788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189028 (f1 j) = 1) n)

end

end A189030.P6052695590091611788

/-! ## A189030.P1150445642823469414

`eq[1, A189028(n+1)]+1`
-/

namespace A189030.P1150445642823469414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189030.P1150445642823469414

/-! ## A189030.P833318023587852714

`record[(n+2)*A189028(n+2)]`
-/

namespace A189030.P833318023587852714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189030.P833318023587852714

/-! ## A189030.P7054504611052767155

`eq[1, A189028(A028310(n))]`
-/

namespace A189030.P7054504611052767155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189030.P7054504611052767155

/-! ## A189030.P13684604551485989924

`A020725(eq[1, A189028(n+1)])`
-/

namespace A189030.P13684604551485989924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189030.P13684604551485989924

/-! ## A189030.P5816841030756413648

`eq[1, A189028(A000007(n)+n)]`
-/

namespace A189030.P5816841030756413648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189030.P5816841030756413648

/-! ## A189030.P3125448686163791887

`eq[1, A189028(A065033(2*n))]`
-/

namespace A189030.P3125448686163791887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189028 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189030.P3125448686163791887

/-!
# A189031: Zero-one sequence based on the sequence (6n-5): a(A016921(k))=a(k); a(A114024(k))=1-a(k); a(1)=0.

The programs for A189031, there is no canonical definition to state claims against.
-/

/-! ## A189031.P8705254142257589067

`char[A189033(n+1)-1]`
-/

namespace A189031.P8705254142257589067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189033 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189031.P8705254142257589067

/-! ## A189031.P10743096741944629963

`1-char[A189032(n+1)-1]`
-/

namespace A189031.P10743096741944629963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189032 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189031.P10743096741944629963

/-! ## A189031.P16897200334818260838

`char[A260196(n)+A189033(n+1)]`
-/

namespace A189031.P16897200334818260838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n + A189033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189031.P16897200334818260838

/-! ## A189031.P2910001368192537955

`abs(char[A189032(A008619(2*n))-1]-1)`
-/

namespace A189031.P2910001368192537955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189032 (A008619 (2 * n)).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 1|

end

end A189031.P2910001368192537955

/-! ## A189031.P13051438253848707649

`char[A305291(gcd(n, n+1))+A189033(n+1)]`
-/

namespace A189031.P13051438253848707649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305291 (Nat.gcd n (n + 1)) + A189033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189031.P13051438253848707649

/-!
# A189032: Positions of 0 in A189031; complement of A189033.

The programs for A189032, there is no canonical definition to state claims against.
-/

/-! ## A189032.P4568398856076167420

`eq[0, A189031(n+1)]+1`
-/

namespace A189032.P4568398856076167420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189032.P4568398856076167420

/-! ## A189032.P17856102917167957813

`record[(1-A189031(n+1))*A000027(n+1)]`
-/

namespace A189032.P17856102917167957813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A189031 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189032.P17856102917167957813

/-! ## A189032.P13886526355883409026

`record[n+1-A116939(n*A189031(n+1))]`
-/

namespace A189032.P13886526355883409026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A116939 ((n : ℤ) * A189031 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189032.P13886526355883409026

/-! ## A189032.P14913231058534272766

`eq[A028310(n)-n, A189031(A028310(n))]`
-/

namespace A189032.P14913231058534272766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189031 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189032.P14913231058534272766

/-! ## A189032.P8227987491304776948

`record[A008619(2*n)-n*A189031(n+1)]`
-/

namespace A189032.P8227987491304776948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - (n : ℤ) * A189031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189032.P8227987491304776948

/-! ## A189032.P12694035916078319162

`record[n+1-A189031(n+1)*A258660(n+1)]`
-/

namespace A189032.P12694035916078319162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A189031 (n + 1) * A258660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189032.P12694035916078319162

/-! ## A189032.P14387836007541922953

`record[A100922(A000788(n))-n*A189031(n+1)]`
-/

namespace A189032.P14387836007541922953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100922 (A000788 n).toNat - (n : ℤ) * A189031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189032.P14387836007541922953

/-! ## A189032.P15220827192619826382

`record[n+1-A051652(n)*A189031(n+1)]`
-/

namespace A189032.P15220827192619826382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A051652 n * A189031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189032.P15220827192619826382

/-! ## A189032.P5277118360542866143

`record[A007318(A189031(n+1)+A034856(n+1))]`
-/

namespace A189032.P5277118360542866143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A189031 (n + 1) + A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189032.P5277118360542866143

/-!
# A189033: Positions of 1 in A189031; complement of A189032.

The programs for A189033, there is no canonical definition to state claims against.
-/

/-! ## A189033.P14910541169957317580

`comp[A189032(n+1)-1]+1`
-/

namespace A189033.P14910541169957317580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189032 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189033.P14910541169957317580

/-! ## A189033.P8058264512533003249

`filter[n+1, A189031(#)]`
-/

namespace A189033.P8058264512533003249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189031 (f1 j) = 1) n)

end

end A189033.P8058264512533003249

/-! ## A189033.P11733392575462499178

`eq[1, A189031(n+1)]+1`
-/

namespace A189033.P11733392575462499178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189031 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189033.P11733392575462499178

/-! ## A189033.P5915063662236692471

`record[(n+2)*A189031(n+2)]`
-/

namespace A189033.P5915063662236692471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189031 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189033.P5915063662236692471

/-! ## A189033.P3615949433388625354

`eq[1, A189031(A028310(n))]`
-/

namespace A189033.P3615949433388625354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189031 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189033.P3615949433388625354

/-! ## A189033.P13809295234089365297

`A020725(eq[1, A189031(n+1)])`
-/

namespace A189033.P13809295234089365297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189033.P13809295234089365297

/-! ## A189033.P4950313942289382797

`eq[1, A189031(gcd(n, A008458(n)))]`
-/

namespace A189033.P4950313942289382797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189031 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189033.P4950313942289382797

/-! ## A189033.P1530975564251927293

`eq[1, A189031(A007318(A000124(n)))]`
-/

namespace A189033.P1530975564251927293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189031 (A007318 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189033.P1530975564251927293

/-!
# A189034: Positions of 0 in the zero-one sequence s based on the sequence lower Wythoff sequence p: s(p(k))=s(k); s(q(k))=1-s(k); s(1)=0, q=(upper Wythoff sequence).

The programs for A189034, there is no canonical definition to state claims against.
-/

/-! ## A189034.P13139749459874947521

`A095096(n+1)+1`
-/

namespace A189034.P13139749459874947521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1) + 1

end

end A189034.P13139749459874947521

/-! ## A189034.P13484798677603737811

`eq[0, A095076(n)]+1`
-/

namespace A189034.P13484798677603737811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189034.P13484798677603737811

/-! ## A189034.P16078090029203673560

`lt[0, A095111(n)]+1`
-/

namespace A189034.P16078090029203673560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189034.P16078090029203673560

/-! ## A189034.P8837827402343773585

`comp[A020899(n+1)]+1`
-/

namespace A189034.P8837827402343773585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189034.P8837827402343773585

/-! ## A189034.P9649077677913090299

`eq[0, A095076(abs(1-n))]`
-/

namespace A189034.P9649077677913090299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189034.P9649077677913090299

/-! ## A189034.P4980581465264837815

`eq[1, A095111(abs(1-n))]`
-/

namespace A189034.P4980581465264837815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189034.P4980581465264837815

/-! ## A189034.P14560240754815037906

`lt[A232723(n+1), 1]+1`
-/

namespace A189034.P14560240754815037906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232723 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189034.P14560240754815037906

/-! ## A189034.P2912113130986086817

`eq[0, A007895(n)%2]+1`
-/

namespace A189034.P2912113130986086817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007895 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189034.P2912113130986086817

/-! ## A189034.P13923813670039139306

`eq[1, A163538(A003714(n))]`
-/

namespace A189034.P13923813670039139306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (A003714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189034.P13923813670039139306

/-! ## A189034.P9000238104469447305

`lt[0, A008683(A277006(n))]+1`
-/

namespace A189034.P9000238104469447305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A277006 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189034.P9000238104469447305

/-!
# A189035: Positions of 1 in the zero-one sequence s based on the sequence lower Wythoff sequence p: s(p(k))=s(k); s(q(k))=1-s(k); s(1)=0, q=(upper Wythoff sequence).

The programs for A189035, there is no canonical definition to state claims against.
-/

/-! ## A189035.P15043537253970397754

`A020899(n+1)+1`
-/

namespace A189035.P15043537253970397754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020899 (n + 1) + 1

end

end A189035.P15043537253970397754

/-! ## A189035.P15772618944406004393

`eq[0, A095111(n)]+1`
-/

namespace A189035.P15772618944406004393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095111 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189035.P15772618944406004393

/-! ## A189035.P15969548208512594309

`lt[0, A095076(n)]+1`
-/

namespace A189035.P15969548208512594309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A189035.P15969548208512594309

/-! ## A189035.P11142605670954652145

`comp[A095096(n+1)]+1`
-/

namespace A189035.P11142605670954652145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189035.P11142605670954652145

/-! ## A189035.P13960845514717794281

`comp[A227352(2*n)]+1`
-/

namespace A189035.P13960845514717794281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227352 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189035.P13960845514717794281

/-! ## A189035.P14036950720914293713

`eq[1, A007895(n)%2]+1`
-/

namespace A189035.P14036950720914293713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007895 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189035.P14036950720914293713

/-! ## A189035.P16667776910803670550

`eq[1, and(1, A060140(n))]+1`
-/

namespace A189035.P16667776910803670550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A060140 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189035.P16667776910803670550

/-! ## A189035.P7847920436718327139

`A020725(A020899(n+1))`
-/

namespace A189035.P7847920436718327139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A020899 (n + 1)).toNat

end

end A189035.P7847920436718327139

/-! ## A189035.P17906751284843040546

`eq[1, A163539(A003714(n))]`
-/

namespace A189035.P17906751284843040546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (A003714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189035.P17906751284843040546

/-! ## A189035.P17958793663175687136

`lt[A008683(A277006(n)), 0]+1`
-/

namespace A189035.P17958793663175687136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A277006 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189035.P17958793663175687136

/-!
# A189036: a(n)= lcm(n,n')/gcd(n,n'), where n' is the arithmetic derivative of n.

The programs for A189036, the canonical program `A189036.P5079595649764338634` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189036 has offset 1).

The definition of A189036 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085731, A086130, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A189036.P5079595649764338634

`A086130(n+1)/A085731(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A189036

/-- `A086130(n+1)/A085731(n+1)` -/
def P5079595649764338634.Spec : Prop :=
  ∀ n, P5079595649764338634.a n = (A189036 (n + 1) : ℚ)

end A189036

/-! ## A189036.P2506114958411008322

`Δ[A190120(floor(sqrt(n²+1)))]`
-/

namespace A189036.P2506114958411008322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190120 (Nat.sqrt (n ^ 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A189036.P2506114958411008322

namespace A189036

/-- `Δ[A190120(floor(sqrt(n²+1)))]` -/
def P2506114958411008322.Spec : Prop :=
  ∀ n, P2506114958411008322.a n = A189036 (n + 1)

end A189036

/-! ## A189036.P16131243497242974607

`abs(Δ[A190120(A028310(n))])`
-/

namespace A189036.P16131243497242974607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190120 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A189036.P16131243497242974607

namespace A189036

/-- `abs(Δ[A190120(A028310(n))])` -/
def P16131243497242974607.Spec : Prop :=
  ∀ n, P16131243497242974607.a n = A189036 (n + 1)

end A189036

/-! ## A189036.P11892356210436105974

`A083345(n+1)*A083346(n+1)`
-/

namespace A189036.P11892356210436105974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (n + 1) * A083346 (n + 1)

end

end A189036.P11892356210436105974

namespace A189036

/-- `A083345(n+1)*A083346(n+1)` -/
def P11892356210436105974.Spec : Prop :=
  ∀ n, P11892356210436105974.a n = A189036 (n + 1)

end A189036

/-! ## A189036.P9158693660681787195

`A190116(n+1)/A085731(n+1)²`
-/

namespace A189036.P9158693660681787195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190116 (n + 1) : ℚ) / (A085731 (n + 1) ^ 2 : ℚ)

end

end A189036.P9158693660681787195

namespace A189036

/-- `A190116(n+1)/A085731(n+1)²` -/
def P9158693660681787195.Spec : Prop :=
  ∀ n, P9158693660681787195.a n = (A189036 (n + 1) : ℚ)

end A189036

/-! ## A189036.P6764797154401223032

`(n+1)*A083345(n+1)/A085731(n+1)`
-/

namespace A189036.P6764797154401223032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A083345 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ))

end

end A189036.P6764797154401223032

namespace A189036

/-- `(n+1)*A083345(n+1)/A085731(n+1)` -/
def P6764797154401223032.Spec : Prop :=
  ∀ n, P6764797154401223032.a n = (A189036 (n + 1) : ℚ)

end A189036

/-! ## A189036.P15909162749271656701

`A083346(n+1)/(n+1)*A086130(n+1)`
-/

namespace A189036.P15909162749271656701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083346 (n + 1) : ℚ) / (n + 1 : ℚ) * (A086130 (n + 1) : ℚ)

end

end A189036.P15909162749271656701

namespace A189036

/-- `A083346(n+1)/(n+1)*A086130(n+1)` -/
def P15909162749271656701.Spec : Prop :=
  ∀ n, P15909162749271656701.a n = (A189036 (n + 1) : ℚ)

end A189036

/-! ## A189036.P13797222100808908266

`A190120(n+1)-A190120(A028310(n))`
-/

namespace A189036.P13797222100808908266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190120 (n + 1) - A190120 (A028310 n).toNat

end

end A189036.P13797222100808908266

namespace A189036

/-- `A190120(n+1)-A190120(A028310(n))` -/
def P13797222100808908266.Spec : Prop :=
  ∀ n, P13797222100808908266.a n = A189036 (n + 1)

end A189036

/-! ## A189036.P12202057935189922062

`lcm(A083345(A000027(n+1)), A083346(n+1))`
-/

namespace A189036.P12202057935189922062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A083345 (A000027 (n + 1)).toNat) (A083346 (n + 1))

end

end A189036.P12202057935189922062

namespace A189036

/-- `lcm(A083345(A000027(n+1)), A083346(n+1))` -/
def P12202057935189922062.Spec : Prop :=
  ∀ n, (P12202057935189922062.a n : ℤ) = A189036 (n + 1)

end A189036

/-! ## A189036.P6307509854237349594

`A003415(n+1)*A083346(n+1)/A085731(n+1)`
-/

namespace A189036.P6307509854237349594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) * A083346 (n + 1) : ℚ) / (A085731 (n + 1) : ℚ)

end

end A189036.P6307509854237349594

namespace A189036

/-- `A003415(n+1)*A083346(n+1)/A085731(n+1)` -/
def P6307509854237349594.Spec : Prop :=
  ∀ n, P6307509854237349594.a n = (A189036 (n + 1) : ℚ)

end A189036

/-!
# A189037: Decimal expansion of (9-sqrt(17))/8.

The programs for A189037, there is no canonical definition to state claims against.
-/

/-! ## A189037.P16911258699972996287

`9-A358945(n)`
-/

namespace A189037.P16911258699972996287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A358945 n

end

end A189037.P16911258699972996287

/-!
# A189043: For all permutations of [1..n]: number of distinct values taken by sum(k=1..n, k^2 * pi(k) ).

The programs for A189043, there is no canonical definition to state claims against.
-/

/-! ## A189043.P2477691394510841376

`A284565(∑[A090021(n)+1])`
-/

namespace A189043.P2477691394510841376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090021 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284565 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189043.P2477691394510841376

/-! ## A189043.P9012084107906430379

`A192315(n)+A002487(A091347(n))`
-/

namespace A189043.P9012084107906430379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192315 n + A002487 (A091347 n).toNat

end

end A189043.P9012084107906430379

/-!
# A189045: Semiprimes which are sub-perfect powers.

The programs for A189045, there is no canonical definition to state claims against.
-/

/-! ## A189045.P1571110336503258138

`filter[A045542(n+1), A064911(#)]`
-/

namespace A189045.P1571110336503258138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A189045.P1571110336503258138

/-! ## A189045.P6698257258275854908

`filter[A045542(n+1), A280710(#)]`
-/

namespace A189045.P6698257258275854908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A189045.P6698257258275854908

/-! ## A189045.P3896067140703713558

`∩[A001358(n+1), A045542(n+1)]`
-/

namespace A189045.P3896067140703713558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189045.P3896067140703713558

/-! ## A189045.P12444348690610386892

`∩[A006881(n+1), A045542(n+1)]`
-/

namespace A189045.P12444348690610386892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189045.P12444348690610386892

/-! ## A189045.P17888545119788176942

`∩[A045542(n+1), A068993(n+1)]`
-/

namespace A189045.P17888545119788176942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189045.P17888545119788176942

/-!
# A189046: a(n) = lcm(n,n+1,n+2,n+3,n+4,n+5)/60.

The programs for A189046, the canonical program `A189046.P15357273902442149095` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189046 has offset 0).

The definition of A189046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189046.P15357273902442149095

`gcd(A000579(n+3)*A000579(n+7), A000579(n+5))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A189046

/-- `gcd(A000579(n+3)*A000579(n+7), A000579(n+5))` -/
def P15357273902442149095.Spec : Prop :=
  ∀ n, (P15357273902442149095.a n : ℤ) = A189046 n

theorem P15357273902442149095.correct : P15357273902442149095.Spec := by
  intro n
  simp only [A189046]

end A189046

/-! ## A189046.P6083294220080741127

`A067048(n+1)%A031508(n)`
-/

namespace A189046.P6083294220080741127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067048 (n + 1)) (A031508 n)

end

end A189046.P6083294220080741127

namespace A189046

/-- `A067048(n+1)%A031508(n)` -/
def P6083294220080741127.Spec : Prop :=
  ∀ n, P6083294220080741127.a n = A189046 n

end A189046

/-! ## A189046.P16293764846749449339

`A067048(n+1)+A008683(2*6^n)`
-/

namespace A189046.P16293764846749449339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067048 (n + 1) + A008683 (2 * 6 ^ n)

end

end A189046.P16293764846749449339

namespace A189046

/-- `A067048(n+1)+A008683(2*6^n)` -/
def P16293764846749449339.Spec : Prop :=
  ∀ n, P16293764846749449339.a n = A189046 n

end A189046

/-!
# A189047: Semiprimes which are one more than a perfect power.

The programs for A189047, there is no canonical definition to state claims against.
-/

/-! ## A189047.P5282726178248861180

`filter[A216765(n+1), A064911(#)]`
-/

namespace A189047.P5282726178248861180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A189047.P5282726178248861180

/-! ## A189047.P12295197282168969242

`∩[A001358(n+1), A216765(n+1)]`
-/

namespace A189047.P12295197282168969242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189047.P12295197282168969242

/-! ## A189047.P11696235049717324728

`∩[A176540(n+1), A216765(n+1)]`
-/

namespace A189047.P11696235049717324728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189047.P11696235049717324728

/-! ## A189047.P13466974152712617200

`∩[A216765(n+1), A323644(n+1)]`
-/

namespace A189047.P13466974152712617200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189047.P13466974152712617200

/-! ## A189047.P5531922229384542388

`∩[A001358(n+1), A045542(n+1)+2]`
-/

namespace A189047.P5531922229384542388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189047.P5531922229384542388

/-! ## A189047.P4817439711931944303

`∩[A045542(n+1)+2, A176540(n+1)]`
-/

namespace A189047.P4817439711931944303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189047.P4817439711931944303

/-! ## A189047.P1767427035555115205

`∩[A085155(n+1), A216765(n+1)]`
-/

namespace A189047.P1767427035555115205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189047.P1767427035555115205

/-! ## A189047.P16478517906772177226

`∩[A216765(n+1), A339424(n+1)]`
-/

namespace A189047.P16478517906772177226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189047.P16478517906772177226

/-! ## A189047.P4090932902488834855

`∩[A216765(n+1), A346041(n+1)]`
-/

namespace A189047.P4090932902488834855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189047.P4090932902488834855

/-! ## A189047.P8534686570682271079

`∩[A045542(n+1)+2, A085155(n+1)]`
-/

namespace A189047.P8534686570682271079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189047.P8534686570682271079

/-!
# A189048: Numerators of expansion of (Sum_{k=1..n} 1/k) - log(n+1/2) - gamma.

The programs for A189048, there is no canonical definition to state claims against.
-/

/-! ## A189048.P3782186615309516135

`A320834(A145879(3*n+4))-A320834(n)`
-/

namespace A189048.P3782186615309516135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320834 (A145879 (3 * n + 4)).toNat - A320834 n

end

end A189048.P3782186615309516135

/-!
# A189049: Denominators of expansion of (Sum_{k=1..n} 1/k) - log(n(1+1/(2n))) - gamma.

The programs for A189049, there is no canonical definition to state claims against.
-/

/-! ## A189049.P14861159602569456732

`A001787(n+2)*A027760(n+2)`
-/

namespace A189049.P14861159602569456732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 2) * A027760 (n + 2)

end

end A189049.P14861159602569456732

/-! ## A189049.P13647746936315178575

`A001787(n+2)*A141056(n+2)`
-/

namespace A189049.P13647746936315178575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 2) * A141056 (n + 2)

end

end A189049.P13647746936315178575

/-! ## A189049.P15491757766808025894

`A001787(n+2)*A176591(n+2)`
-/

namespace A189049.P15491757766808025894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 2) * A176591 (n + 2)

end

end A189049.P15491757766808025894

/-! ## A189049.P7687675063575479664

`A001792(n)*A008586(A027760(n+2))`
-/

namespace A189049.P7687675063575479664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n * A008586 (A027760 (n + 2)).toNat

end

end A189049.P7687675063575479664

/-! ## A189049.P6902589475233889775

`A004525(A027642(n+2))*A134401(n+2)`
-/

namespace A189049.P6902589475233889775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A027642 (n + 2)).toNat * A134401 (n + 2)

end

end A189049.P6902589475233889775

/-!
# A189050: a(n) = if n even then P((n-2)/2)+P(n/2) otherwise 3*P((n+1)/2)+P((n-1)/2) where P(i) are the Pell numbers (A000129).

The programs for A189050, the canonical program `A189050.P1426701938043169996` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189050 has offset 1).

The definition of A189050 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189050.P1426701938043169996

`2*a(n-2)+a(n-4)` with `a(0)=3, a(1)=1, a(2)=7, a(3)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A189050

/-- `2*a(n-2)+a(n-4)` -/
def P1426701938043169996.Spec : Prop :=
  ∀ n, (P1426701938043169996.a n : ℤ) = A189050 (n + 1)

theorem P1426701938043169996.correct : P1426701938043169996.Spec := by
  intro n
  simp only [A189050, Nat.add_sub_cancel]

end A189050

/-! ## A189050.P15395095718035987960

`a(n-2)+a(n-2)+a(n-4)` with `a(0)=3, a(1)=1, a(2)=7, a(3)=3`
-/

namespace A189050.P15395095718035987960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 7, 3] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 4))

end

end A189050.P15395095718035987960

namespace A189050

/-- `a(n-2)+a(n-2)+a(n-4)` -/
def P15395095718035987960.Spec : Prop :=
  ∀ n, (P15395095718035987960.a n : ℤ) = A189050 (n + 1)

theorem P15395095718035987960.correct : P15395095718035987960.Spec := by
  intro n
  simp only [A189050, Nat.add_sub_cancel, A189050.P15395095718035987960.a, A189050.P1426701938043169996.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A189050

/-! ## A189050.P17149561809557190722

`A152113(xor(1, n+2))`
-/

namespace A189050.P17149561809557190722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (Nat.xor 1 (n + 2))

end

end A189050.P17149561809557190722

namespace A189050

/-- `A152113(xor(1, n+2))` -/
def P17149561809557190722.Spec : Prop :=
  ∀ n, P17149561809557190722.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P14939489251184461956

`A001333(∑[1-a(n-1)])` with `a(0)=2`
-/

namespace A189050.P14939489251184461956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A189050.P14939489251184461956

namespace A189050

/-- `A001333(∑[1-a(n-1)])` -/
def P14939489251184461956.Spec : Prop :=
  ∀ n, P14939489251184461956.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P10266979289457173680

`A078057(A028242(n))`
-/

namespace A189050.P10266979289457173680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (A028242 n).toNat

end

end A189050.P10266979289457173680

namespace A189050

/-- `A078057(A028242(n))` -/
def P10266979289457173680.Spec : Prop :=
  ∀ n, P10266979289457173680.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P16915436166616803810

`A001333(A030451(n+1))`
-/

namespace A189050.P16915436166616803810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (A030451 (n + 1)).toNat

end

end A189050.P16915436166616803810

namespace A189050

/-- `A001333(A030451(n+1))` -/
def P16915436166616803810.Spec : Prop :=
  ∀ n, P16915436166616803810.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P11103110388593569767

`A152113(A090964(n+1))`
-/

namespace A189050.P11103110388593569767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (A090964 (n + 1)).toNat

end

end A189050.P11103110388593569767

namespace A189050

/-- `A152113(A090964(n+1))` -/
def P11103110388593569767.Spec : Prop :=
  ∀ n, P11103110388593569767.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P16247092734886249608

`A092550(A168202(n+1))`
-/

namespace A189050.P16247092734886249608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092550 (A168202 (n + 1)).toNat

end

end A189050.P16247092734886249608

namespace A189050

/-- `A092550(A168202(n+1))` -/
def P16247092734886249608.Spec : Prop :=
  ∀ n, P16247092734886249608.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P8281435696466878131

`A152113(A065164(n+2))`
-/

namespace A189050.P8281435696466878131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (A065164 (n + 2)).toNat

end

end A189050.P8281435696466878131

namespace A189050

/-- `A152113(A065164(n+2))` -/
def P8281435696466878131.Spec : Prop :=
  ∀ n, P8281435696466878131.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P16903204756943455471

`A152113(A065190(n+2))`
-/

namespace A189050.P16903204756943455471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (A065190 (n + 2)).toNat

end

end A189050.P16903204756943455471

namespace A189050

/-- `A152113(A065190(n+2))` -/
def P16903204756943455471.Spec : Prop :=
  ∀ n, P16903204756943455471.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P9231498746138903431

`A152113(A116468(n+2))`
-/

namespace A189050.P9231498746138903431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (A116468 (n + 2)).toNat

end

end A189050.P9231498746138903431

namespace A189050

/-- `A152113(A116468(n+2))` -/
def P9231498746138903431.Spec : Prop :=
  ∀ n, P9231498746138903431.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P1512934693871804637

`A001333(log2(A143095(n+1)))`
-/

namespace A189050.P1512934693871804637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (SequenceMachineLib.roundAway (Real.logb 2 (A143095 (n + 1) : ℝ))).toNat

end

end A189050.P1512934693871804637

namespace A189050

/-- `A001333(log2(A143095(n+1)))` -/
def P1512934693871804637.Spec : Prop :=
  ∀ n, P1512934693871804637.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P8100625380555943367

`A155046(A168232(n+1)+1)`
-/

namespace A189050.P8100625380555943367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (A168232 (n + 1) + 1).toNat

end

end A189050.P8100625380555943367

namespace A189050

/-- `A155046(A168232(n+1)+1)` -/
def P8100625380555943367.Spec : Prop :=
  ∀ n, P8100625380555943367.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P237245507308630573

`A001333(2-(A030451(n)-n))`
-/

namespace A189050.P237245507308630573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (2 - (A030451 n - (n : ℤ))).toNat

end

end A189050.P237245507308630573

namespace A189050

/-- `A001333(2-(A030451(n)-n))` -/
def P237245507308630573.Spec : Prop :=
  ∀ n, P237245507308630573.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P2784943262571340994

`A119016(A000034(n+1)²+n)`
-/

namespace A189050.P2784943262571340994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 (A000034 (n + 1) ^ 2 + (n : ℤ)).toNat

end

end A189050.P2784943262571340994

namespace A189050

/-- `A119016(A000034(n+1)²+n)` -/
def P2784943262571340994.Spec : Prop :=
  ∀ n, P2784943262571340994.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P10917823635020195201

`A078057(A008619(n)-Δ[A008619(n)])`
-/

namespace A189050.P10917823635020195201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (A008619 n - (f1 (n + 1) - f1 n)).toNat

end

end A189050.P10917823635020195201

namespace A189050

/-- `A078057(A008619(n)-Δ[A008619(n)])` -/
def P10917823635020195201.Spec : Prop :=
  ∀ n, P10917823635020195201.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P7754869017179984067

`A097564(A147677(n+1))`
-/

namespace A189050.P7754869017179984067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A147677 (n + 1)).toNat

end

end A189050.P7754869017179984067

namespace A189050

/-- `A097564(A147677(n+1))` -/
def P7754869017179984067.Spec : Prop :=
  ∀ n, P7754869017179984067.a n = A189050 (n + 1)

end A189050

/-! ## A189050.P2640885904727245115

`A054458(A008795(n))`
-/

namespace A189050.P2640885904727245115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054458 (A008795 n).toNat

end

end A189050.P2640885904727245115

namespace A189050

/-- `A054458(A008795(n))` -/
def P2640885904727245115.Spec : Prop :=
  ∀ n, P2640885904727245115.a n = A189050 (n + 1)

end A189050

/-!
# A189051: Numbers n such that n+/ -2 and n^2+/ -2 are all primes.

The programs for A189051, there is no canonical definition to state claims against.
-/

/-! ## A189051.P15732203589399899141

`∩[A029708(n+1), A108701(n+1)]`
-/

namespace A189051.P15732203589399899141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189051.P15732203589399899141

/-! ## A189051.P1202676491561922115

`∩[A087679(n+1), A108701(n+1)]`
-/

namespace A189051.P1202676491561922115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189051.P1202676491561922115

/-! ## A189051.P118154455403806473

`∩[A029708(n+1), A090120(n+1)]`
-/

namespace A189051.P118154455403806473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189051.P118154455403806473

/-! ## A189051.P9250938811419720162

`∩[A087679(n+1), A090120(n+1)]`
-/

namespace A189051.P9250938811419720162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189051.P9250938811419720162

/-!
# A189052: a(n) is the number of inversions in all compositions of n.

The programs for A189052, the canonical program `A189052.P9052207564962946233` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189052 has offset 0).

The definition of A189052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A189052.P9052207564962946233

`5*a(n-1)-6*a(n-2)-4*a(n-3)+8*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A189052

/-- `5*a(n-1)-6*a(n-2)-4*a(n-3)+8*a(n-4)` -/
def P9052207564962946233.Spec : Prop :=
  ∀ n, P9052207564962946233.a n = A189052 n

theorem P9052207564962946233.correct : P9052207564962946233.Spec := by
  intro n
  simp only [A189052]

end A189052

/-! ## A189052.P7892387297502627426

`A325919(n)-A340280(A263292(n))`
-/

namespace A189052.P7892387297502627426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325919 n - A340280 (A263292 n).toNat

end

end A189052.P7892387297502627426

namespace A189052

/-- `A325919(n)-A340280(A263292(n))` -/
def P7892387297502627426.Spec : Prop :=
  ∀ n, P7892387297502627426.a n = A189052 n

end A189052

/-! ## A189052.P7099284824659134149

`A000129(n)-A003056(A192339(n+1))`
-/

namespace A189052.P7099284824659134149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n - A003056 (A192339 (n + 1)).toNat

end

end A189052.P7099284824659134149

namespace A189052

/-- `A000129(n)-A003056(A192339(n+1))` -/
def P7099284824659134149.Spec : Prop :=
  ∀ n, P7099284824659134149.a n = A189052 n

end A189052

/-! ## A189052.P6906248128684821218

`A091964(n)-(A340280(A263292(n))+A325917(n))`
-/

namespace A189052.P6906248128684821218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091964 n - (A340280 (A263292 n).toNat + A325917 n)

end

end A189052.P6906248128684821218

namespace A189052

/-- `A091964(n)-(A340280(A263292(n))+A325917(n))` -/
def P6906248128684821218.Spec : Prop :=
  ∀ n, P6906248128684821218.a n = A189052 n

end A189052

/-!
# A189053: Expansion of d/dx log(1/(1-x/sqrt(1-4*x^2))).

The programs for A189053, there is no canonical definition to state claims against.
-/

/-! ## A189053.P3044516176804433573

`A098615(n)+4*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A189053.P3044516176804433573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A098615 n + 4 * a (n - 2)

end

end A189053.P3044516176804433573

/-! ## A189053.P2974693715087004180

`A099375(C(A109452(n+1), 2))`
-/

namespace A189053.P2974693715087004180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (Nat.choose (A109452 (n + 1)).toNat 2)

end

end A189053.P2974693715087004180

/-! ## A189053.P12324105699115724695

`2*(A324701(A027306(n))-floor(n/2))-1`
-/

namespace A189053.P12324105699115724695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A324701 (A027306 n).toNat - ⌊(n : ℚ) / 2⌋) - 1

end

end A189053.P12324105699115724695

/-!
# A189054: Expansion of e.g.f. exp(x/sqrt(1-4*x^2)).

The programs for A189054, there is no canonical definition to state claims against.
-/

/-! ## A189054.P13005485532060523543

`A026730(floor(-3^(n-1)/2)²)`
-/

namespace A189054.P13005485532060523543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026730 (⌊-((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) / 2)⌋ ^ 2).toNat

end

end A189054.P13005485532060523543

/-! ## A189054.P16304440261404787588

`A025480(ceil(∑[3^(n-2)])²+1)`
-/

namespace A189054.P16304440261404787588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2 + 1).toNat

end

end A189054.P16304440261404787588

/-!
# A189056: Numbers having in decimal representation at least one common digit with their squares.

The programs for A189056, there is no canonical definition to state claims against.
-/

/-! ## A189056.P9978324025363555212

`comp[A029783(n+1)]`
-/

namespace A189056.P9978324025363555212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A189056.P9978324025363555212

/-! ## A189056.P11323637262241935364

`lt[0, A076493(n)]`
-/

namespace A189056.P11323637262241935364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A189056.P11323637262241935364

/-! ## A189056.P2281529651455924215

`eq[2, A253600(n)]`
-/

namespace A189056.P2281529651455924215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189056.P2281529651455924215

/-! ## A189056.P6750706522355862395

`lt[A258682(n), (2-n)²]`
-/

namespace A189056.P6750706522355862395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (n : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A189056.P6750706522355862395

/-! ## A189056.P1316655598197171969

`eq[1, gcd(A001848(n), A076493(n))]`
-/

namespace A189056.P1316655598197171969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001848 n) (A076493 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189056.P1316655598197171969

/-! ## A189056.P17848800841813929686

`record[val(A000079(n), A253600(n))]`
-/

namespace A189056.P17848800841813929686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A253600 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189056.P17848800841813929686

/-!
# A189058: Number of n X n binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189058, there is no canonical definition to state claims against.
-/

/-! ## A189058.P2807692068801788388

`A189064(∑[4*n]+1)`
-/

namespace A189058.P2807692068801788388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A189058.P2807692068801788388

/-! ## A189058.P2583835586139315649

`record[A003982(n)*A189064(n+1)]`
-/

namespace A189058.P2583835586139315649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A189064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189058.P2583835586139315649

/-! ## A189058.P15990053122794640351

`record[gcd(A049581(n), A189064(n+1))]`
-/

namespace A189058.P15990053122794640351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A189064 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189058.P15990053122794640351

/-! ## A189058.P6953891260373249117

`A189064(A001844(n))+A025469(n)`
-/

namespace A189058.P6953891260373249117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A001844 n).toNat + A025469 n

end

end A189058.P6953891260373249117

/-! ## A189058.P12102231894698369406

`A189064(A001844(n))+A008683(4*(n+1))`
-/

namespace A189058.P12102231894698369406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A189058.P12102231894698369406

/-!
# A189059: Number of n X 4 binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189059, there is no canonical definition to state claims against.
-/

/-! ## A189059.P15318998046904749675

`A189064(A141214(n+1))`
-/

namespace A189059.P15318998046904749675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A141214 (n + 1)).toNat

end

end A189059.P15318998046904749675

/-! ## A189059.P10108497345873404854

`A189064(A027379(n+2))`
-/

namespace A189059.P10108497345873404854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A027379 (n + 2)).toNat

end

end A189059.P10108497345873404854

/-! ## A189059.P13496121642327754726

`A189064(A055998(n+2))`
-/

namespace A189059.P13496121642327754726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A055998 (n + 2)).toNat

end

end A189059.P13496121642327754726

/-! ## A189059.P6967416757561307028

`A189064(eq[3, A193592(n)])`
-/

namespace A189059.P6967416757561307028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189059.P6967416757561307028

/-! ## A189059.P17991783127286234476

`A189064(A052905(n+1)+2)`
-/

namespace A189059.P17991783127286234476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A052905 (n + 1) + 2).toNat

end

end A189059.P17991783127286234476

/-!
# A189060: Number of nX5 binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189060, there is no canonical definition to state claims against.
-/

/-! ## A189060.P15648340200318123995

`A189064(A046691(n+3))`
-/

namespace A189060.P15648340200318123995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A046691 (n + 3)).toNat

end

end A189060.P15648340200318123995

/-! ## A189060.P1365992157482956768

`A189064(A056115(n)+11)`
-/

namespace A189060.P1365992157482956768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A056115 n + 11).toNat

end

end A189060.P1365992157482956768

/-! ## A189060.P9619656728473432961

`A189064(eq[4, A193592(n)])`
-/

namespace A189060.P9619656728473432961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189060.P9619656728473432961

/-! ## A189060.P13328822632009345530

`A189064(Δ[A023545(n+1)])`
-/

namespace A189060.P13328822632009345530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (f1 (n + 1) - f1 n).toNat

end

end A189060.P13328822632009345530

/-! ## A189060.P16933233986509202809

`A189064(eq[3, A129713(n)]+1)`
-/

namespace A189060.P16933233986509202809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A189060.P16933233986509202809

/-!
# A189061: Number of nX6 binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189061, there is no canonical definition to state claims against.
-/

/-! ## A189061.P17884480797191008738

`A189064(A052905(n+3))`
-/

namespace A189061.P17884480797191008738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A052905 (n + 3)).toNat

end

end A189061.P17884480797191008738

/-! ## A189061.P14773057171394373360

`A189064(eq[3, A219347(n)])`
-/

namespace A189061.P14773057171394373360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189061.P14773057171394373360

/-! ## A189061.P8758691744024602175

`A189064(eq[5, A193592(n)])`
-/

namespace A189061.P8758691744024602175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189061.P8758691744024602175

/-! ## A189061.P4329740183765115811

`A189064(A055999(n+3)+1)`
-/

namespace A189061.P4329740183765115811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A055999 (n + 3) + 1).toNat

end

end A189061.P4329740183765115811

/-! ## A189061.P17161808383895033959

`A189064(eq[16, A057728(n+1)])`
-/

namespace A189061.P17161808383895033959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189061.P17161808383895033959

/-!
# A189062: Number of nX7 binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189062, there is no canonical definition to state claims against.
-/

/-! ## A189062.P17753844844508104079

`A189064(A055999(n+4))`
-/

namespace A189062.P17753844844508104079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A055999 (n + 4)).toNat

end

end A189062.P17753844844508104079

/-! ## A189062.P6730644468932810444

`A189064(eq[4, A219347(n)])`
-/

namespace A189062.P6730644468932810444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189062.P6730644468932810444

/-! ## A189062.P13265430245650533352

`A189064(eq[6, A193592(n)])`
-/

namespace A189062.P13265430245650533352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189062.P13265430245650533352

/-! ## A189062.P18271352613883589499

`A189064(eq[32, A057728(n+1)])`
-/

namespace A189062.P18271352613883589499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189062.P18271352613883589499

/-! ## A189062.P1130631653574231507

`A189064(eq[7, A200370(n+1)])`
-/

namespace A189062.P1130631653574231507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189062.P1130631653574231507

/-!
# A189063: Number of nX8 binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189063, there is no canonical definition to state claims against.
-/

/-! ## A189063.P17473668536289684272

`A189064(eq[5, A219347(n)])`
-/

namespace A189063.P17473668536289684272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189063.P17473668536289684272

/-! ## A189063.P101187868676650539

`A189064(eq[7, A193592(n)])`
-/

namespace A189063.P101187868676650539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189063.P101187868676650539

/-! ## A189063.P13525046211971907895

`A189064(A055998(n+6)-4)`
-/

namespace A189063.P13525046211971907895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A055998 (n + 6) - 4).toNat

end

end A189063.P13525046211971907895

/-! ## A189063.P10817969035715325578

`A189064(eq[12, A185782(n+1)])`
-/

namespace A189063.P10817969035715325578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189063.P10817969035715325578

/-! ## A189063.P14681373404566476705

`A189064(A000217(n+7)+n+1)`
-/

namespace A189063.P14681373404566476705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A000217 (n + 7) + (n + 1 : ℤ)).toNat

end

end A189063.P14681373404566476705

/-!
# A189064: T(n,k)=Number of nXk binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189064, there is no canonical definition to state claims against.
-/

/-! ## A189064.P18019256208960490423

`or(A005927(A292604(n)), A189617(n+1))`
-/

namespace A189064.P18019256208960490423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005927 (A292604 n).toNat) (A189617 (n + 1))

end

end A189064.P18019256208960490423

/-! ## A189064.P9170460320335796064

`A189617(n+1)+A005927(A292604(n))%A189264(n+1)`
-/

namespace A189064.P9170460320335796064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189617 (n + 1) + Int.tmod (A005927 (A292604 n).toNat) (A189264 (n + 1))

end

end A189064.P9170460320335796064

/-! ## A189064.P13427269974257633040

`or(A189264(n+1), A189617(A077168(n)))`
-/

namespace A189064.P13427269974257633040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189264 (n + 1)) (A189617 (A077168 n).toNat)

end

end A189064.P13427269974257633040

/-! ## A189064.P1357837804553977449

`A364755(A174616(n))+A189617(n+1)`
-/

namespace A189064.P1357837804553977449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364755 (A174616 n).toNat + A189617 (n + 1)

end

end A189064.P1357837804553977449

/-! ## A189064.P14030804258392699524

`ceil(log(sinh(A189617(n+1))))`
-/

namespace A189064.P14030804258392699524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Real.sinh (A189617 (n + 1) : ℝ))⌉

end

end A189064.P14030804258392699524

/-!
# A189065: Number of 3 X n binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189065, there is no canonical definition to state claims against.
-/

/-! ## A189065.P11638526807868646116

`A189064(∑[n+2]+4)`
-/

namespace A189065.P11638526807868646116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A189065.P11638526807868646116

/-! ## A189065.P15288490070425495021

`A189064(A167614(n+1))+A185284(n)`
-/

namespace A189065.P15288490070425495021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A167614 (n + 1)).toNat + A185284 n

end

end A189065.P15288490070425495021

/-! ## A189065.P1522317259197471021

`A189064(A167614(n+1))%A017457(n)`
-/

namespace A189065.P1522317259197471021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189064 (A167614 (n + 1)).toNat) (A017457 n)

end

end A189065.P1522317259197471021

/-! ## A189065.P1790320359758272381

`lcm(A033999(n), A189064(A167614(n+1)))`
-/

namespace A189065.P1790320359758272381
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A189064 (A167614 (n + 1)).toNat)

end

end A189065.P1790320359758272381

/-! ## A189065.P7432814463335274319

`A189064(A167614(n+1))+A056594(2*n+1)`
-/

namespace A189065.P7432814463335274319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A167614 (n + 1)).toNat + A056594 (2 * n + 1)

end

end A189065.P7432814463335274319

/-!
# A189066: Number of 4Xn binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189066, there is no canonical definition to state claims against.
-/

/-! ## A189066.P14918095674698533239

`A189064(∑[n+3]+7)`
-/

namespace A189066.P14918095674698533239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A189066.P14918095674698533239

/-! ## A189066.P6494129586696600534

`record[A189064(A167499(n)-1)]`
-/

namespace A189066.P6494129586696600534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189066.P6494129586696600534

/-! ## A189066.P17388680089240538428

`record[A189064(n+5)/A297506(n+1)]`
-/

namespace A189066.P17388680089240538428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189064 (n + 5) : ℚ) / (A297506 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189066.P17388680089240538428

/-! ## A189066.P5145887117545216562

`record[gcd(A122285(n), A189064(n+5))]`
-/

namespace A189066.P5145887117545216562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122285 n) (A189064 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189066.P5145887117545216562

/-!
# A189067: Number of 5Xn binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189067, there is no canonical definition to state claims against.
-/

/-! ## A189067.P2515947694636339544

`A189064(A167499(n+3))`
-/

namespace A189067.P2515947694636339544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A167499 (n + 3)).toNat

end

end A189067.P2515947694636339544

/-! ## A189067.P14101147103149472991

`A189064(A155212(n)+13)`
-/

namespace A189067.P14101147103149472991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A155212 n + 13).toNat

end

end A189067.P14101147103149472991

/-! ## A189067.P17820039543851980858

`A189064(A056000(n)+15)`
-/

namespace A189067.P17820039543851980858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A056000 n + 15).toNat

end

end A189067.P17820039543851980858

/-! ## A189067.P8724308254281833531

`A189064(A052905(n+1)+10)`
-/

namespace A189067.P8724308254281833531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A052905 (n + 1) + 10).toNat

end

end A189067.P8724308254281833531

/-! ## A189067.P10622547359288968442

`A189064(eq[6, A131818(n+1)])`
-/

namespace A189067.P10622547359288968442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189067.P10622547359288968442

/-!
# A189068: Number of 6Xn binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189068, there is no canonical definition to state claims against.
-/

/-! ## A189068.P2083319707798116197

`A189064(A166136(n+4))`
-/

namespace A189068.P2083319707798116197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A166136 (n + 4)).toNat

end

end A189068.P2083319707798116197

/-! ## A189068.P5703563805778963146

`A189064(A167499(n+4)+1)`
-/

namespace A189068.P5703563805778963146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A167499 (n + 4) + 1).toNat

end

end A189068.P5703563805778963146

/-! ## A189068.P3375574535614073957

`A189064(A000124(n+5)+5)`
-/

namespace A189068.P3375574535614073957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A000124 (n + 5) + 5).toNat

end

end A189068.P3375574535614073957

/-! ## A189068.P2960585129489538392

`A189064(eq[7, A131818(n+1)])`
-/

namespace A189068.P2960585129489538392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189068.P2960585129489538392

/-! ## A189068.P7837926186338896553

`A189064(Δ[A023545(n+1)]+10)`
-/

namespace A189068.P7837926186338896553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (f1 (n + 1) - f1 n + 10).toNat

end

end A189068.P7837926186338896553

/-!
# A189069: Number of 7Xn binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189069, there is no canonical definition to state claims against.
-/

/-! ## A189069.P18340172165800000441

`A189064(A056119(n)+28)`
-/

namespace A189069.P18340172165800000441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A056119 n + 28).toNat

end

end A189069.P18340172165800000441

/-! ## A189069.P13265232115848533491

`A189064(eq[11, A066657(n)])`
-/

namespace A189069.P13265232115848533491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189069.P13265232115848533491

/-! ## A189069.P8779964419960092074

`A189064(A000217(n+6)+7)`
-/

namespace A189069.P8779964419960092074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A000217 (n + 6) + 7).toNat

end

end A189069.P8779964419960092074

/-! ## A189069.P1199688333419676747

`A189064(A034856(n+5)+9)`
-/

namespace A189069.P1199688333419676747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A034856 (n + 5) + 9).toNat

end

end A189069.P1199688333419676747

/-! ## A189069.P17742768130722630703

`A189064(eq[8, A131818(n+1)])`
-/

namespace A189069.P17742768130722630703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189069.P17742768130722630703

/-!
# A189070: Number of 8Xn binary arrays without the pattern 0 1 0 antidiagonally or horizontally.

The programs for A189070, there is no canonical definition to state claims against.
-/

/-! ## A189070.P12091721472142326818

`A189064(eq[13, A066657(n)])`
-/

namespace A189070.P12091721472142326818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189070.P12091721472142326818

/-! ## A189070.P17610252679410246983

`A189064(A000217(n+7)+8)`
-/

namespace A189070.P17610252679410246983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A000217 (n + 7) + 8).toNat

end

end A189070.P17610252679410246983

/-! ## A189070.P2774474660992726184

`A189064(eq[9, A131818(n+1)])`
-/

namespace A189070.P2774474660992726184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189070.P2774474660992726184

/-! ## A189070.P15119806860895575730

`A189064(eq[6, A193592(n)]+14)`
-/

namespace A189070.P15119806860895575730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 14)

end

end A189070.P15119806860895575730

/-! ## A189070.P16769904336202801646

`A189064(A133263(n+8)-(n+2))`
-/

namespace A189070.P16769904336202801646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189064 (A133263 (n + 8) - (n + 2 : ℤ)).toNat

end

end A189070.P16769904336202801646

/-!
# A189071: The n-th derivative of x^10 evaluated at x=2.

The programs for A189071, there is no canonical definition to state claims against.
-/

/-! ## A189071.P4882084111784247466

`n!*A135289(n)`
-/

namespace A189071.P4882084111784247466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A135289 n

end

end A189071.P4882084111784247466

/-!
# A189072: Semiprimes in A007504 (the sum of first n primes).

The programs for A189072, the canonical program `A189072.P1599767684985074234` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A189072 has offset 1).

The definition of A189072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A189072.P1599767684985074234

`A007504(A213650(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A189072

/-- `A007504(A213650(n+1))` -/
def P1599767684985074234.Spec : Prop :=
  ∀ n, P1599767684985074234.a n = A189072 (n + 1)

theorem P1599767684985074234.correct : P1599767684985074234.Spec := by
  intro n
  simp only [A189072, Nat.add_sub_cancel]

end A189072

/-! ## A189072.P14549043906946967447

`∩[A104646(n+2), A007504(n)]`
-/

namespace A189072.P14549043906946967447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104646 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189072.P14549043906946967447

namespace A189072

/-- `∩[A104646(n+2), A007504(n)]` -/
def P14549043906946967447.Spec : Prop :=
  ∀ n, (P14549043906946967447.a n : ℤ) = A189072 (n + 1)

end A189072

/-! ## A189072.P541802792844301703

`A007504(eq[4, A074369(n+1)]+1)`
-/

namespace A189072.P541802792844301703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A189072.P541802792844301703

namespace A189072

/-- `A007504(eq[4, A074369(n+1)]+1)` -/
def P541802792844301703.Spec : Prop :=
  ∀ n, P541802792844301703.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P2655203853826187080

`∩[A053790(n+1), A104646(n+2)]`
-/

namespace A189072.P2655203853826187080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104646 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189072.P2655203853826187080

namespace A189072

/-- `∩[A053790(n+1), A104646(n+2)]` -/
def P2655203853826187080.Spec : Prop :=
  ∀ n, (P2655203853826187080.a n : ℤ) = A189072 (n + 1)

end A189072

/-! ## A189072.P9703744130513089957

`A237589(A213650(n+1))+A033999(n)²`
-/

namespace A189072.P9703744130513089957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat + A033999 n ^ 2

end

end A189072.P9703744130513089957

namespace A189072

/-- `A237589(A213650(n+1))+A033999(n)²` -/
def P9703744130513089957.Spec : Prop :=
  ∀ n, P9703744130513089957.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P14592116264219239010

`A237589(A213650(n+1))-A033999(2*n+1)`
-/

namespace A189072.P14592116264219239010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat - A033999 (2 * n + 1)

end

end A189072.P14592116264219239010

namespace A189072

/-- `A237589(A213650(n+1))-A033999(2*n+1)` -/
def P14592116264219239010.Spec : Prop :=
  ∀ n, P14592116264219239010.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P5356514053711035848

`A237589(A213650(n+1))+A052031(n+1)%2`
-/

namespace A189072.P5356514053711035848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat + Int.tmod (A052031 (n + 1)) 2

end

end A189072.P5356514053711035848

namespace A189072

/-- `A237589(A213650(n+1))+A052031(n+1)%2` -/
def P5356514053711035848.Spec : Prop :=
  ∀ n, P5356514053711035848.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P10840465825408733500

`A237589(A213650(n+1))+A001055(A006530(n+1))`
-/

namespace A189072.P10840465825408733500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat + A001055 (A006530 (n + 1)).toNat

end

end A189072.P10840465825408733500

namespace A189072

/-- `A237589(A213650(n+1))+A001055(A006530(n+1))` -/
def P10840465825408733500.Spec : Prop :=
  ∀ n, P10840465825408733500.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P13511762609596915354

`A237589(A213650(n+1))+A010051(A000040(n+1))`
-/

namespace A189072.P13511762609596915354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat + A010051 (A000040 (n + 1)).toNat

end

end A189072.P13511762609596915354

namespace A189072

/-- `A237589(A213650(n+1))+A010051(A000040(n+1))` -/
def P13511762609596915354.Spec : Prop :=
  ∀ n, P13511762609596915354.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P11586177552306166056

`A237589(A213650(n+1))+A001222(A095071(n+1))`
-/

namespace A189072.P11586177552306166056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat + A001222 (A095071 (n + 1)).toNat

end

end A189072.P11586177552306166056

namespace A189072

/-- `A237589(A213650(n+1))+A001222(A095071(n+1))` -/
def P11586177552306166056.Spec : Prop :=
  ∀ n, P11586177552306166056.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P14315855092913273493

`A237589(A213650(n+1))+A001222(A095080(n+1))`
-/

namespace A189072.P14315855092913273493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat + A001222 (A095080 (n + 1)).toNat

end

end A189072.P14315855092913273493

namespace A189072

/-- `A237589(A213650(n+1))+A001222(A095080(n+1))` -/
def P14315855092913273493.Spec : Prop :=
  ∀ n, P14315855092913273493.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P5632700167729812394

`∩[A076614(n+1), A104646(n+2)]`
-/

namespace A189072.P5632700167729812394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104646 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189072.P5632700167729812394

namespace A189072

/-- `∩[A076614(n+1), A104646(n+2)]` -/
def P5632700167729812394.Spec : Prop :=
  ∀ n, (P5632700167729812394.a n : ℤ) = A189072 (n + 1)

end A189072

/-! ## A189072.P803654453352147448

`∩[A104646(n+2), A161959(n+2)]`
-/

namespace A189072.P803654453352147448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104646 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161959 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A189072.P803654453352147448

namespace A189072

/-- `∩[A104646(n+2), A161959(n+2)]` -/
def P803654453352147448.Spec : Prop :=
  ∀ n, (P803654453352147448.a n : ℤ) = A189072 (n + 1)

end A189072

/-! ## A189072.P14141901005501498893

`A237589(A213650(n+1))+A001222(A095073(n+1))`
-/

namespace A189072.P14141901005501498893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat + A001222 (A095073 (n + 1)).toNat

end

end A189072.P14141901005501498893

namespace A189072

/-- `A237589(A213650(n+1))+A001222(A095073(n+1))` -/
def P14141901005501498893.Spec : Prop :=
  ∀ n, P14141901005501498893.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P12965612533648774391

`A237589(A213650(n+1))+A001222(A095072(n+1))`
-/

namespace A189072.P12965612533648774391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat + A001222 (A095072 (n + 1)).toNat

end

end A189072.P12965612533648774391

namespace A189072

/-- `A237589(A213650(n+1))+A001222(A095072(n+1))` -/
def P12965612533648774391.Spec : Prop :=
  ∀ n, P12965612533648774391.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P8049978529189144391

`A237589(A213650(n+1))+dr(A208455(n+1))`
-/

namespace A189072.P8049978529189144391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat + (SequenceMachineLib.digitalRoot (A208455 (n + 1)) : ℤ)

end

end A189072.P8049978529189144391

namespace A189072

/-- `A237589(A213650(n+1))+dr(A208455(n+1))` -/
def P8049978529189144391.Spec : Prop :=
  ∀ n, P8049978529189144391.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P7950370477704933947

`A322356(A001747(n+1))+A237589(A213650(n+1))`
-/

namespace A189072.P7950370477704933947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322356 (A001747 (n + 1)).toNat + A237589 (A213650 (n + 1)).toNat

end

end A189072.P7950370477704933947

namespace A189072

/-- `A322356(A001747(n+1))+A237589(A213650(n+1))` -/
def P7950370477704933947.Spec : Prop :=
  ∀ n, P7950370477704933947.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P14007223902516898840

`A160793(2*A213650(n+1))`
-/

namespace A189072.P14007223902516898840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (2 * A213650 (n + 1)).toNat

end

end A189072.P14007223902516898840

namespace A189072

/-- `A160793(2*A213650(n+1))` -/
def P14007223902516898840.Spec : Prop :=
  ∀ n, P14007223902516898840.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P14354037278368254740

`A237589(A213650(n+1))+A001222(A282323(n+1))`
-/

namespace A189072.P14354037278368254740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat + A001222 (A282323 (n + 1)).toNat

end

end A189072.P14354037278368254740

namespace A189072

/-- `A237589(A213650(n+1))+A001222(A282323(n+1))` -/
def P14354037278368254740.Spec : Prop :=
  ∀ n, P14354037278368254740.a n = A189072 (n + 1)

end A189072

/-! ## A189072.P10748484290863213210

`A237589(A213650(n+1))+A001222(A282321(n+1))`
-/

namespace A189072.P10748484290863213210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A213650 (n + 1)).toNat + A001222 (A282321 (n + 1)).toNat

end

end A189072.P10748484290863213210

namespace A189072

/-- `A237589(A213650(n+1))+A001222(A282321(n+1))` -/
def P10748484290863213210.Spec : Prop :=
  ∀ n, P10748484290863213210.a n = A189072 (n + 1)

end A189072

/-!
# A189073: Triangle read by rows: T(n,k) is the number of inversions in k-compositions of n for n >= 3, 2 <= k <= n-1.

The programs for A189073, there is no canonical definition to state claims against.
-/

/-! ## A189073.P2258175136577695061

`A000217(A002260(n+1))*A128176(n+1)`
-/

namespace A189073.P2258175136577695061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A128176 (n + 1)

end

end A189073.P2258175136577695061

/-! ## A189073.P3018504979711174972

`A000217(A002262(n)+1)*A128176(n+1)`
-/

namespace A189073.P3018504979711174972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 n + 1).toNat * A128176 (n + 1)

end

end A189073.P3018504979711174972

/-! ## A189073.P13019919428171432295

`(A112367(n)+A002260(n+1))*A128176(n+1)`
-/

namespace A189073.P13019919428171432295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A112367 n + A002260 (n + 1)) * A128176 (n + 1)

end

end A189073.P13019919428171432295

/-! ## A189073.P14728389558105651822

`A000217(A002260(n+1))*A035317(A061579(n))`
-/

namespace A189073.P14728389558105651822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002260 (n + 1)).toNat * A035317 (A061579 n).toNat

end

end A189073.P14728389558105651822

/-! ## A189073.P6845923631834073883

`A112367(A014132(n+1))*A128176(n+1)`
-/

namespace A189073.P6845923631834073883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 (A014132 (n + 1)).toNat * A128176 (n + 1)

end

end A189073.P6845923631834073883

/-! ## A189073.P556710444486824415

`A094953(n+2)+A112367(n)*A128176(n+1)`
-/

namespace A189073.P556710444486824415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094953 (n + 2) + A112367 n * A128176 (n + 1)

end

end A189073.P556710444486824415

/-!
# A189076: Number of compositions of n that avoid the pattern 23-1.

The programs for A189076, there is no canonical definition to state claims against.
-/

/-! ## A189076.P11367841814405862311

`ceil(2^(n-1))-A374636(n)`
-/

namespace A189076.P11367841814405862311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - A374636 n

end

end A189076.P11367841814405862311

/-! ## A189076.P18419180153522419621

`abs(A011782(n)-A374636(n))`
-/

namespace A189076.P18419180153522419621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n - A374636 n|

end

end A189076.P18419180153522419621

/-! ## A189076.P2645472962464802658

`A000027(Δ[floor(2^(n-1))]-A374636(n))`
-/

namespace A189076.P2645472962464802658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n - A374636 n).toNat

end

end A189076.P2645472962464802658

/-! ## A189076.P17906498573850554356

`A028310(2^(-1%(n+1)+n)-A374636(n))`
-/

namespace A189076.P17906498573850554356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod (-1) (n + 1 : ℤ) + (n : ℤ) : ℤ) - (A374636 n : ℚ))).toNat

end

end A189076.P17906498573850554356

/-! ## A189076.P13168352668611174483

`∑[A374685(A374742(n))]+1`
-/

namespace A189076.P13168352668611174483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374685 (A374742 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A189076.P13168352668611174483

/-!
# A189077: Number of compositions of n that avoid the pattern 13-2.

The programs for A189077, there is no canonical definition to state claims against.
-/

/-! ## A189077.P10492028919565175345

`A005041(A289591(n+1))`
-/

namespace A189077.P10492028919565175345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A289591 (n + 1)).toNat

end

end A189077.P10492028919565175345

/-! ## A189077.P14316160793607006417

`A005041(record[A114626(n+2)])`
-/

namespace A189077.P14316160793607006417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114626 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189077.P14316160793607006417

/-! ## A189077.P12303077097314037163

`A102726(n)+A025458(A243965(n))`
-/

namespace A189077.P12303077097314037163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102726 n + A025458 (A243965 n).toNat

end

end A189077.P12303077097314037163

/-! ## A189077.P14283230089699464727

`A281116(A047974(n))+A102726(n)`
-/

namespace A189077.P14283230089699464727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (A047974 n).toNat + A102726 n

end

end A189077.P14283230089699464727

/-! ## A189077.P14269596097127019504

`A341025(A023359(n))+A102726(n)`
-/

namespace A189077.P14269596097127019504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A023359 n).toNat + 120) + A102726 n

end

end A189077.P14269596097127019504

/-!
# A189078: Zero-one sequence based on the sequence floor(n*sqrt(2)): a(A001951(k))=a(k); a(A001952(k))=1-a(k); a(1)=0, a(2)=0.

The programs for A189078, there is no canonical definition to state claims against.
-/

/-! ## A189078.P4209363302015981407

`char[A189080(n+1)-1]`
-/

namespace A189078.P4209363302015981407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189080 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189078.P4209363302015981407

/-! ## A189078.P14123014488282463056

`char[comp[A189079(n+1)-1]]`
-/

namespace A189078.P14123014488282463056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189079 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189078.P14123014488282463056

/-! ## A189078.P14080167226239620251

`char[A023443(A189080(n+1))]`
-/

namespace A189078.P14080167226239620251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189080 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189078.P14080167226239620251

/-! ## A189078.P9940260981355927493

`char[A023443(comp[A189079(n+1)])]`
-/

namespace A189078.P9940260981355927493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189079 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189078.P9940260981355927493

/-! ## A189078.P14125110148398855017

`A327051(C(A000005(2*(n+1)), A344821(n+1)))`
-/

namespace A189078.P14125110148398855017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (Nat.choose (A000005 (2 * (n + 1))).toNat (A344821 (n + 1)).toNat)

end

end A189078.P14125110148398855017

/-!
# A189079: Positions of 0 in A189078; complement of A189080.

The programs for A189079, there is no canonical definition to state claims against.
-/

/-! ## A189079.P1738509979635990227

`comp[A189080(n+1)-1]+1`
-/

namespace A189079.P1738509979635990227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189080 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A189079.P1738509979635990227

/-! ## A189079.P10539380677066106637

`eq[0, A189078(n+1)]+1`
-/

namespace A189079.P10539380677066106637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189079.P10539380677066106637

/-! ## A189079.P11508359161188277085

`lt[A189078(A000027(n+1)), 1]+1`
-/

namespace A189079.P11508359161188277085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189078 (A000027 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A189079.P11508359161188277085

/-! ## A189079.P17847617015421213586

`eq[A000007(n), A189078(A028310(n))]`
-/

namespace A189079.P17847617015421213586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189078 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189079.P17847617015421213586

/-! ## A189079.P8970146874397980075

`record[A110514(A189078(n+1)+A005843(n))]`
-/

namespace A189079.P8970146874397980075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A189078 (n + 1) + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189079.P8970146874397980075

/-! ## A189079.P4422387789113344080

`record[(n+1)*A189078(A001952(n+1))]`
-/

namespace A189079.P4422387789113344080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189078 (A001952 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189079.P4422387789113344080

/-! ## A189079.P5086716926908748218

`record[(n+1)*A189078(A286690(n+1))]`
-/

namespace A189079.P5086716926908748218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A189078 (A286690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189079.P5086716926908748218

/-!
# A189080: Positions of 1 in A189078; complement of A189079.

The programs for A189080, there is no canonical definition to state claims against.
-/

/-! ## A189080.P2027873255740025498

`filter[n+1, A189078(#)]`
-/

namespace A189080.P2027873255740025498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189078 (f1 j) = 1) n)

end

end A189080.P2027873255740025498

/-! ## A189080.P17271100842250922565

`eq[1, A189078(n+1)]+1`
-/

namespace A189080.P17271100842250922565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189080.P17271100842250922565

/-! ## A189080.P7043058126923688734

`eq[1, A189078(A028310(n))]`
-/

namespace A189080.P7043058126923688734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189078 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189080.P7043058126923688734

/-! ## A189080.P9987737294259407167

`A065475(eq[1, A189078(n+1)])`
-/

namespace A189080.P9987737294259407167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189080.P9987737294259407167

/-!
# A189081: Zero-one sequence based on the sequence floor(n*sqrt(2)): a(A001951(k))=a(k); a(A001952(k))=1-a(k); a(1)=0, a(2)=1.

The programs for A189081, there is no canonical definition to state claims against.
-/

/-! ## A189081.P6313020797389152475

`char[A189083(n+1)-1]`
-/

namespace A189081.P6313020797389152475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189083 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189081.P6313020797389152475

/-! ## A189081.P3759583075076784156

`char[comp[A189082(n+1)-1]]`
-/

namespace A189081.P3759583075076784156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189082 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189081.P3759583075076784156

/-! ## A189081.P3850422949110277897

`A358074(A158190(n+1))`
-/

namespace A189081.P3850422949110277897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358074 (A158190 (n + 1)).toNat

end

end A189081.P3850422949110277897

/-! ## A189081.P2113744220443470294

`A395961(A242680(n+2))`
-/

namespace A189081.P2113744220443470294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395961 (A242680 (n + 2)).toNat

end

end A189081.P2113744220443470294

/-! ## A189081.P9961386435323783612

`A010059(and(A066983(n+1), A263816(n+1)))`
-/

namespace A189081.P9961386435323783612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Int.land (A066983 (n + 1)) (A263816 (n + 1))).toNat

end

end A189081.P9961386435323783612

/-!
# A189082: Positions of 0 in A189081; complement of A189083.

The programs for A189082, there is no canonical definition to state claims against.
-/

/-! ## A189082.P9923708139718192688

`eq[0, A189081(n+1)]+1`
-/

namespace A189082.P9923708139718192688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189082.P9923708139718192688

/-! ## A189082.P672852624558520986

`eq[0, A189081(A000038(n)+n)]`
-/

namespace A189082.P672852624558520986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189081 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189082.P672852624558520986

/-! ## A189082.P6515322895149732959

`record[n+1-A189081(n+1)*A266204(n)]`
-/

namespace A189082.P6515322895149732959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A189081 (n + 1) * A266204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189082.P6515322895149732959

/-! ## A189082.P6565077639899516872

`eq[A000007(n), A189081(A123108(2*n))]`
-/

namespace A189082.P6565077639899516872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189081 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189082.P6565077639899516872

/-! ## A189082.P12544828607605275190

`eq[A000038(n), A189081(A123108(2*n))]`
-/

namespace A189082.P12544828607605275190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189081 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189082.P12544828607605275190

/-! ## A189082.P8529489841067488846

`record[A110514(A189081(n+1)+A005843(n))]`
-/

namespace A189082.P8529489841067488846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A189081 (n + 1) + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189082.P8529489841067488846

/-!
# A189083: Positions of 1 in A189081; complement of A189082.

The programs for A189083, there is no canonical definition to state claims against.
-/

/-! ## A189083.P17393577913347481657

`filter[n+1, A189081(#)]`
-/

namespace A189083.P17393577913347481657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189081 (f1 j) = 1) n)

end

end A189083.P17393577913347481657

/-! ## A189083.P7936975874861786996

`eq[1, A189081(n+1)]+1`
-/

namespace A189083.P7936975874861786996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189083.P7936975874861786996

/-! ## A189083.P6523281943504126205

`record[(n+2)*A189081(n+2)]`
-/

namespace A189083.P6523281943504126205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189081 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189083.P6523281943504126205

/-! ## A189083.P12766608698862988180

`A020725(eq[1, A189081(n+1)])`
-/

namespace A189083.P12766608698862988180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189083.P12766608698862988180

/-! ## A189083.P3051439274881488934

`eq[1, A189081(A000007(n)+n)]`
-/

namespace A189083.P3051439274881488934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189081 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189083.P3051439274881488934

/-! ## A189083.P137201059937901667

`eq[1, A189081(A123108(2*n))]`
-/

namespace A189083.P137201059937901667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189081 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189083.P137201059937901667

/-!
# A189084: Zero-one sequence based on floor(sqrt(3)): a(A022838(k))=a(k); a(A054406(k))=1-a(k); a(1)=0.

The programs for A189084, there is no canonical definition to state claims against.
-/

/-! ## A189084.P3804155990817398647

`char[A189086(n+1)-1]`
-/

namespace A189084.P3804155990817398647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189086 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189084.P3804155990817398647

/-! ## A189084.P1344721439607204131

`char[comp[A189085(n+1)-1]]`
-/

namespace A189084.P1344721439607204131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189085 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189084.P1344721439607204131

/-! ## A189084.P9844958677749738368

`char[A023443(A189086(n+1))]`
-/

namespace A189084.P9844958677749738368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189086 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189084.P9844958677749738368

/-! ## A189084.P5870307953918312853

`char[A023443(comp[A189085(n+1)])]`
-/

namespace A189084.P5870307953918312853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189085 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189084.P5870307953918312853

/-! ## A189084.P11044928821536642115

`A056594(A253563(record[and(n, 2*n)]))`
-/

namespace A189084.P11044928821536642115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A253563 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A189084.P11044928821536642115

/-! ## A189084.P10641815716792728497

`A048794(record[A048735(n)²])%2`
-/

namespace A189084.P10641815716792728497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048794 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 2

end

end A189084.P10641815716792728497

/-!
# A189085: Positions of 0 in A189084; complement of A189086.

The programs for A189085, there is no canonical definition to state claims against.
-/

/-! ## A189085.P6464967178876255965

`eq[0, A189084(n+1)]+1`
-/

namespace A189085.P6464967178876255965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189085.P6464967178876255965

/-! ## A189085.P5850979573419331105

`eq[0, A189084(A000038(n)+n)]`
-/

namespace A189085.P5850979573419331105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189084 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189085.P5850979573419331105

/-! ## A189085.P3271005956889355698

`record[(1-A189084(n+1))*A000027(n+1)]`
-/

namespace A189085.P3271005956889355698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A189084 (n + 1)) * A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189085.P3271005956889355698

/-! ## A189085.P7625378199237247076

`record[n+1-A000124(n)*A189084(n+1)]`
-/

namespace A189085.P7625378199237247076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000124 n * A189084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189085.P7625378199237247076

/-! ## A189085.P12268401698401963374

`record[n+1-A006128(n*A189084(n+1))]`
-/

namespace A189085.P12268401698401963374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A006128 ((n : ℤ) * A189084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189085.P12268401698401963374

/-! ## A189085.P9627555001656708643

`record[A001057(A189084(n+1)+2*n+1)]`
-/

namespace A189085.P9627555001656708643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A189084 (n + 1) + (2 * n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189085.P9627555001656708643

/-! ## A189085.P18190112022060029191

`record[A110514(A189084(n+1)+A005843(n))]`
-/

namespace A189085.P18190112022060029191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A189084 (n + 1) + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189085.P18190112022060029191

/-! ## A189085.P2310754293688888105

`record[A001057(A005408(n))-n*A189084(n+1)]`
-/

namespace A189085.P2310754293688888105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A005408 n).toNat - (n : ℤ) * A189084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189085.P2310754293688888105

/-! ## A189085.P7042559907572419767

`eq[A000007(n), A189084(A123108(2*n))]`
-/

namespace A189085.P7042559907572419767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189084 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189085.P7042559907572419767

/-! ## A189085.P12699794603608389642

`record[A008621(A008574(n))-n*A189084(n+1)]`
-/

namespace A189085.P12699794603608389642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A008574 n).toNat - (n : ℤ) * A189084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189085.P12699794603608389642

/-!
# A189086: Positions of 1 in A189084; complement of A189083.

The programs for A189086, there is no canonical definition to state claims against.
-/

/-! ## A189086.P3805119180027880150

`filter[n+1, A189084(#)]`
-/

namespace A189086.P3805119180027880150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189084 (f1 j) = 1) n)

end

end A189086.P3805119180027880150

/-! ## A189086.P5755101179193127290

`eq[1, A189084(n+1)]+1`
-/

namespace A189086.P5755101179193127290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189086.P5755101179193127290

/-! ## A189086.P9426067172136626020

`record[(n+2)*A189084(n+2)]`
-/

namespace A189086.P9426067172136626020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A189084 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189086.P9426067172136626020

/-! ## A189086.P11496954708379885986

`eq[C(2, n²), char[A189085(n+1)]]`
-/

namespace A189086.P11496954708379885986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n ^ 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189085 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A189086.P11496954708379885986

/-! ## A189086.P9258519474370261556

`eq[1, A189084(A000007(n)+n)]`
-/

namespace A189086.P9258519474370261556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189084 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189086.P9258519474370261556

/-! ## A189086.P17473452156569836953

`eq[1, A189084(A123108(2*n))]`
-/

namespace A189086.P17473452156569836953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189084 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189086.P17473452156569836953

/-!
# A189087: E.g.f.: sinh(x)/(1-sinh(x)-sinh(x)^2).

The programs for A189087, there is no canonical definition to state claims against.
-/

/-! ## A189087.P17039047498344287675

`A074286(A334639(n+1))`
-/

namespace A189087.P17039047498344287675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (A334639 (n + 1)).toNat

end

end A189087.P17039047498344287675

/-!
# A189091: Zero-one sequence based on floor(sqrt(5)): a(A022839(k))=a(k); a(A108598(k))=1-a(k); a(1)=0.

The programs for A189091, there is no canonical definition to state claims against.
-/

/-! ## A189091.P6077391100868551019

`char[A189093(n+1)-1]`
-/

namespace A189091.P6077391100868551019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189093 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189091.P6077391100868551019

/-! ## A189091.P12563474053481107432

`char[comp[A189092(n+1)-1]]`
-/

namespace A189091.P12563474053481107432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189092 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189091.P12563474053481107432

/-! ## A189091.P1504355319393604062

`char[(A189093(A028310(n))-1)%A249680(n)]`
-/

namespace A189091.P1504355319393604062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189093 (A028310 n).toNat - 1) (A249680 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189091.P1504355319393604062

/-! ## A189091.P10042006345080080900

`A298952(A187769(n)%A250004(n+1))`
-/

namespace A189091.P10042006345080080900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298952 (Int.tmod (A187769 n) (A250004 (n + 1))).toNat

end

end A189091.P10042006345080080900

/-! ## A189091.P4141609666199922322

`A120523(A050316(n))`
-/

namespace A189091.P4141609666199922322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120523 (A050316 n).toNat

end

end A189091.P4141609666199922322

/-!
# A189092: Positions of 0 in A189091; complement of A189093.

The programs for A189092, there is no canonical definition to state claims against.
-/

/-! ## A189092.P12699495008937090307

`eq[0, A189091(n+1)]+1`
-/

namespace A189092.P12699495008937090307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189092.P12699495008937090307

/-! ## A189092.P9712830287389378151

`eq[0, A189091(A028310(n))]`
-/

namespace A189092.P9712830287389378151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189091 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189092.P9712830287389378151

/-! ## A189092.P5008073338267653770

`A020725(eq[0, A189091(n+1)])`
-/

namespace A189092.P5008073338267653770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189092.P5008073338267653770

/-! ## A189092.P10315941496421391819

`eq[0, A189091(A000007(n)+n)]`
-/

namespace A189092.P10315941496421391819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189091 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189092.P10315941496421391819

/-! ## A189092.P816167153143578346

`eq[0, A189091(A000038(n)+n)]`
-/

namespace A189092.P816167153143578346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189091 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189092.P816167153143578346

/-! ## A189092.P12349116393551342621

`eq[0, A189091(A233583(n+1))]`
-/

namespace A189092.P12349116393551342621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189091 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189092.P12349116393551342621

/-!
# A189093: Positions of 1 in A189091; complement of A189092.

The programs for A189093, there is no canonical definition to state claims against.
-/

/-! ## A189093.P8426541370043457334

`filter[n+1, A189091(#)]`
-/

namespace A189093.P8426541370043457334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189091 (f1 j) = 1) n)

end

end A189093.P8426541370043457334

/-! ## A189093.P3727469228122478628

`eq[1, A189091(n+1)]+1`
-/

namespace A189093.P3727469228122478628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189093.P3727469228122478628

/-! ## A189093.P1222479823712330491

`record[A000027(n+1)*A189091(n+1)]`
-/

namespace A189093.P1222479823712330491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189093.P1222479823712330491

/-! ## A189093.P6414555138457004024

`eq[char[A189092(n+1)], A000007(n)]`
-/

namespace A189093.P6414555138457004024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189092 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A189093.P6414555138457004024

/-! ## A189093.P7174135445280724976

`eq[char[A189092(n+1)], A000038(n)]`
-/

namespace A189093.P7174135445280724976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189092 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A189093.P7174135445280724976

/-!
# A189094: Zero-one sequence based on floor(sqrt(6)): a(A022840(k))=a(k); a(A138235(k))=1-a(k); a(1)=0.

The programs for A189094, there is no canonical definition to state claims against.
-/

/-! ## A189094.P17895759772944155649

`char[A189096(n+1)-1]`
-/

namespace A189094.P17895759772944155649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189096 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189094.P17895759772944155649

/-! ## A189094.P17979820917526665291

`1-char[A189095(n+1)-1]`
-/

namespace A189094.P17979820917526665291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189095 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189094.P17979820917526665291

/-! ## A189094.P2188030447831659428

`1-char[A023443(A189095(n+1))]`
-/

namespace A189094.P2188030447831659428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189095 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189094.P2188030447831659428

/-! ## A189094.P6826636520008754585

`(A153881(n+1)+char[A023443(A189095(n+1))])²`
-/

namespace A189094.P6826636520008754585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189095 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153881 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A189094.P6826636520008754585

/-! ## A189094.P10331723186673827566

`A108701(n+1)²%(char[A023443(A189095(n+1))]+2)`
-/

namespace A189094.P10331723186673827566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189095 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108701 (n + 1) ^ 2) (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 : ℕ) : ℤ)

end

end A189094.P10331723186673827566

/-! ## A189094.P8331394729623660112

`(A033999(2*n+1)+char[A023443(A189095(n+1))])²`
-/

namespace A189094.P8331394729623660112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189095 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) ^ 2

end

end A189094.P8331394729623660112

/-!
# A189095: Positions of 0 in A189094; complement of A189096.

The programs for A189095, there is no canonical definition to state claims against.
-/

/-! ## A189095.P3180658939261345243

`eq[0, A189094(n+1)]+1`
-/

namespace A189095.P3180658939261345243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189095.P3180658939261345243

/-! ## A189095.P15804999394599113258

`eq[0, A189094(A000007(n)+n)]`
-/

namespace A189095.P15804999394599113258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189094 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189095.P15804999394599113258

/-! ## A189095.P2594479717952349063

`eq[0, A189094(A000038(n)+n)]`
-/

namespace A189095.P2594479717952349063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189094 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189095.P2594479717952349063

/-! ## A189095.P16492828051321367117

`eq[0, A189094(A065033(2*n))]`
-/

namespace A189095.P16492828051321367117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189094 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189095.P16492828051321367117

/-! ## A189095.P5357121055420673102

`A033270(p?[A189094(n+1)+A065091(n+1)])`
-/

namespace A189095.P5357121055420673102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189094 (n + 1) + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189095.P5357121055420673102

/-! ## A189095.P9965130766066449767

`eq[0, A189094(A233583(n+1))]`
-/

namespace A189095.P9965130766066449767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189094 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189095.P9965130766066449767

/-! ## A189095.P1966978798521136787

`eq[0, A189094(A003056(A000124(n)))]`
-/

namespace A189095.P1966978798521136787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189094 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189095.P1966978798521136787

/-!
# A189096: Positions of 1 in A189094; complement of A189095.

The programs for A189096, there is no canonical definition to state claims against.
-/

/-! ## A189096.P7913884803905802346

`filter[n+1, A189094(#)]`
-/

namespace A189096.P7913884803905802346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189094 (f1 j) = 1) n)

end

end A189096.P7913884803905802346

/-! ## A189096.P1655321612752023875

`eq[1, A189094(n+1)]+1`
-/

namespace A189096.P1655321612752023875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189096.P1655321612752023875

/-! ## A189096.P16887000783908086199

`record[A000027(n+1)*A189094(n+1)]`
-/

namespace A189096.P16887000783908086199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189096.P16887000783908086199

/-! ## A189096.P6210862988640096343

`record[(A005408(n)-n)*A189094(n+1)]`
-/

namespace A189096.P6210862988640096343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ)) * A189094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189096.P6210862988640096343

/-! ## A189096.P12086806159368895013

`record[A064317(n)*A189094(A064317(n))]`
-/

namespace A189096.P12086806159368895013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064317 n * A189094 (A064317 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189096.P12086806159368895013

/-! ## A189096.P15144537316803425913

`record[A020915(n)*A189094(A020915(n))]`
-/

namespace A189096.P15144537316803425913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 n * A189094 (A020915 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189096.P15144537316803425913

/-! ## A189096.P2961262496600725547

`record[A008619(2*n)*A189094(n+1)]`
-/

namespace A189096.P2961262496600725547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189096.P2961262496600725547

/-! ## A189096.P11357969345189527754

`record[A028242(2*n)*A189094(n+1)]`
-/

namespace A189096.P11357969345189527754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) * A189094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189096.P11357969345189527754

/-! ## A189096.P6567499670810409228

`record[A052938(n)*A189094(A052938(n))]`
-/

namespace A189096.P6567499670810409228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n * A189094 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189096.P6567499670810409228

/-! ## A189096.P9670295888418684346

`record[A008611(n)*A189094(A008620(n))]`
-/

namespace A189096.P9670295888418684346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A189094 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189096.P9670295888418684346

/-! ## A189096.P15891095832699579920

`record[A034887(n)*A189094(A034887(n))]`
-/

namespace A189096.P15891095832699579920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 n * A189094 (A034887 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189096.P15891095832699579920

/-! ## A189096.P6251167746406460691

`record[A008621(n)*A189094(A008621(n))]`
-/

namespace A189096.P6251167746406460691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n * A189094 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189096.P6251167746406460691

/-! ## A189096.P15564473467454172977

`A033270(p?[A065091(n+1)*A189094(n+1)])`
-/

namespace A189096.P15564473467454172977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A189094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A189096.P15564473467454172977

/-!
# A189097: Zero-one sequence based on the sequence (3k-1): a(A016789(k))=a(k); a(A032766(k))=1-a(k), a(1)=0.

The programs for A189097, there is no canonical definition to state claims against.
-/

/-! ## A189097.P9817928723446271968

`char[A189099(n+1)-1]`
-/

namespace A189097.P9817928723446271968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189099 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189097.P9817928723446271968

/-! ## A189097.P3355369007493385760

`char[comp[A189098(n+1)-1]]`
-/

namespace A189097.P3355369007493385760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189098 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A189097.P3355369007493385760

/-! ## A189097.P273159758669933932

`char[A023443(A189099(n+1))]`
-/

namespace A189097.P273159758669933932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A189099 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189097.P273159758669933932

/-! ## A189097.P8229723365900757687

`char[A023443(comp[A189098(n+1)])]`
-/

namespace A189097.P8229723365900757687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189098 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A189097.P8229723365900757687

/-! ## A189097.P17942219400792991501

`A020985(n)²-char[A189098(n+1)-1]`
-/

namespace A189097.P17942219400792991501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189098 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A189097.P17942219400792991501

/-!
# A189098: Positions of 0 in A189097; complement of A189099.

The programs for A189098, there is no canonical definition to state claims against.
-/

/-! ## A189098.P16468451482247917846

`eq[0, A189097(n+1)]+1`
-/

namespace A189098.P16468451482247917846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189098.P16468451482247917846

/-! ## A189098.P11344517567823946691

`A020725(eq[0, A189097(n+1)])`
-/

namespace A189098.P11344517567823946691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189098.P11344517567823946691

/-! ## A189098.P9014612564808179588

`A065475(eq[0, A189097(n+1)])`
-/

namespace A189098.P9014612564808179588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A189098.P9014612564808179588

/-! ## A189098.P13823793213554784152

`eq[0, A189097(A000038(n)+n)]`
-/

namespace A189098.P13823793213554784152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189097 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189098.P13823793213554784152

/-! ## A189098.P9713003137690503614

`eq[0, A189097(A233583(n+1))]`
-/

namespace A189098.P9713003137690503614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189097 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A189098.P9713003137690503614

/-!
# A189099: Positions of 1 in A189097; complement of A189098.

The programs for A189099, there is no canonical definition to state claims against.
-/

/-! ## A189099.P2443223510308804424

`filter[n+1, A189097(#)]`
-/

namespace A189099.P2443223510308804424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189097 (f1 j) = 1) n)

end

end A189099.P2443223510308804424

/-! ## A189099.P7612311990398984670

`eq[1, A189097(n+1)]+1`
-/

namespace A189099.P7612311990398984670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189097 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A189099.P7612311990398984670

/-! ## A189099.P11334521228858459612

`record[A000027(n+1)*A189097(n+1)]`
-/

namespace A189099.P11334521228858459612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A189097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189099.P11334521228858459612

/-! ## A189099.P227655890611953403

`record[A008619(2*n)*A189097(n+1)]`
-/

namespace A189099.P227655890611953403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A189097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189099.P227655890611953403

/-! ## A189099.P10707940604450236271

`record[A052938(n)*A189097(A052938(n))]`
-/

namespace A189099.P10707940604450236271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n * A189097 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189099.P10707940604450236271

/-! ## A189099.P2216937036417098722

`record[A065033(n)*A189097(A065033(n))]`
-/

namespace A189099.P2216937036417098722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n * A189097 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189099.P2216937036417098722

/-! ## A189099.P6226887412495032206

`record[A003602(A189097(n+1)+A005843(n))]`
-/

namespace A189099.P6226887412495032206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A189097 (n + 1) + A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189099.P6226887412495032206

/-! ## A189099.P9004403342427702906

`A029579(record[A005843(n)*A189097(n+1)])`
-/

namespace A189099.P9004403342427702906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n * A189097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A189099.P9004403342427702906

/-! ## A189099.P18267251609261275833

`record[A003602(n+1)*A189097(A003602(n+1))]`
-/

namespace A189099.P18267251609261275833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) * A189097 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189099.P18267251609261275833

/-! ## A189099.P9753625082559017920

`record[A189097(A203814(n))*A203814(n)]`
-/

namespace A189099.P9753625082559017920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189097 (A203814 n).toNat * A203814 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189099.P9753625082559017920

/-! ## A189099.P17216842405082245515

`record[A117910(n*A189097(n+1))]`
-/

namespace A189099.P17216842405082245515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 ((n : ℤ) * A189097 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189099.P17216842405082245515

/-! ## A189099.P11275626988181944197

`record[A117910(n)/(2-A189097(n+1))]`
-/

namespace A189099.P11275626988181944197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117910 n : ℚ) / (2 - A189097 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189099.P11275626988181944197

/-! ## A189099.P13093970252717979996

`record[A008611(n)*A189097(A008620(n))]`
-/

namespace A189099.P13093970252717979996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A189097 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189099.P13093970252717979996

/-! ## A189099.P1927932426112709893

`record[A117910(n)*A189097(A117910(n))]`
-/

namespace A189099.P1927932426112709893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 n * A189097 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A189099.P1927932426112709893

