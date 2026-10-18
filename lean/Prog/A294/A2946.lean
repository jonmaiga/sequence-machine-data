import SequenceMachineLib
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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A294601: Numbers with exactly one odd decimal digit.

The programs for A294601, the canonical program `A294601.P169410523176805650` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294601 has offset 1).

The definition of A294601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294601.P6694432258431023457

`A275775(Δ[n²])`
-/

namespace A294601.P6694432258431023457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275775 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A294601.P6694432258431023457

namespace A294601

/-- `A275775(Δ[n²])` -/
def P6694432258431023457.Spec : Prop :=
  ∀ n, P6694432258431023457.a n = A294601 (n + 1)

end A294601

/-! ## A294601.P16497665935763522208

`A275775(2*n+1)%A017042(n)`
-/

namespace A294601.P16497665935763522208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275775 (2 * n + 1)) (A017042 n)

end

end A294601.P16497665935763522208

namespace A294601

/-- `A275775(2*n+1)%A017042(n)` -/
def P16497665935763522208.Spec : Prop :=
  ∀ n, P16497665935763522208.a n = A294601 (n + 1)

end A294601

/-! ## A294601.P169410523176805650

`eq[1, A196564(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294601

/-- `eq[1, A196564(n)]` -/
def P169410523176805650.Spec : Prop :=
  ∀ n, (P169410523176805650.a n : ℤ) = A294601 (n + 1)

theorem P169410523176805650.correct : P169410523176805650.Spec := by
  intro n
  simp only [A294601, Nat.add_sub_cancel]

end A294601

/-! ## A294601.P7355683815732239930

`eq[1, A003132(n)%4]`
-/

namespace A294601.P7355683815732239930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003132 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294601.P7355683815732239930

namespace A294601

/-- `eq[1, A003132(n)%4]` -/
def P7355683815732239930.Spec : Prop :=
  ∀ n, (P7355683815732239930.a n : ℤ) = A294601 (n + 1)

end A294601

/-! ## A294601.P14956012055105943747

`eq[0, A324300(A003132(n))]`
-/

namespace A294601.P14956012055105943747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324300 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294601.P14956012055105943747

namespace A294601

/-- `eq[0, A324300(A003132(n))]` -/
def P14956012055105943747.Spec : Prop :=
  ∀ n, (P14956012055105943747.a n : ℤ) = A294601 (n + 1)

end A294601

/-! ## A294601.P8621234709104887924

`eq[1, A010873(A055013(n))]`
-/

namespace A294601.P8621234709104887924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A055013 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294601.P8621234709104887924

namespace A294601

/-- `eq[1, A010873(A055013(n))]` -/
def P8621234709104887924.Spec : Prop :=
  ∀ n, (P8621234709104887924.a n : ℤ) = A294601 (n + 1)

end A294601

/-! ## A294601.P16449572533707809483

`filter[A275775(2*n+1), A179081(#)]`
-/

namespace A294601.P16449572533707809483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275775 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j).toNat = 1) n)

end

end A294601.P16449572533707809483

namespace A294601

/-- `filter[A275775(2*n+1), A179081(#)]` -/
def P16449572533707809483.Spec : Prop :=
  ∀ n, P16449572533707809483.a n = A294601 (n + 1)

end A294601

/-! ## A294601.P8942189943461725681

`record[A275775(n+1)/A343785(A007310(n+1))]`
-/

namespace A294601.P8942189943461725681
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275775 (n + 1) : ℚ) / (A343785 (A007310 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294601.P8942189943461725681

namespace A294601

/-- `record[A275775(n+1)/A343785(A007310(n+1))]` -/
def P8942189943461725681.Spec : Prop :=
  ∀ n, P8942189943461725681.a n = (A294601 (n + 1) : ℚ)

end A294601

/-! ## A294601.P16474076139868211030

`eq[1, A102675(5*n)]`
-/

namespace A294601.P16474076139868211030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294601.P16474076139868211030

namespace A294601

/-- `eq[1, A102675(5*n)]` -/
def P16474076139868211030.Spec : Prop :=
  ∀ n, (P16474076139868211030.a n : ℤ) = A294601 (n + 1)

end A294601

/-! ## A294601.P12956743175527261742

`eq[1, A196563(A216556(n))]`
-/

namespace A294601.P12956743175527261742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A216556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294601.P12956743175527261742

namespace A294601

/-- `eq[1, A196563(A216556(n))]` -/
def P12956743175527261742.Spec : Prop :=
  ∀ n, (P12956743175527261742.a n : ℤ) = A294601 (n + 1)

end A294601

/-!
# A294602: a(n) = pi(n-1) - pi(floor(n/2)), where pi is A000720.

The programs for A294602, the canonical program `A294602.P13576382201682243121` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294602 has offset 1).

The definition of A294602 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, A056171, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294602.P13576382201682243121

`A056171(n+1)-A010051(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294602

/-- `A056171(n+1)-A010051(n+1)` -/
def P13576382201682243121.Spec : Prop :=
  ∀ n, P13576382201682243121.a n = A294602 (n + 1)

theorem P13576382201682243121.correct : P13576382201682243121.Spec := by
  intro n
  simp only [A294602, Nat.add_sub_cancel]

end A294602

/-! ## A294602.P5068166899362808503

`∑[char[p?[xor(1, n)]]]-∑[∑{p}[n+1, val((n+1)²-#, 2*n+1)]]`
-/

namespace A294602.P5068166899362808503
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), SequenceMachineLib.valuation (((n + 1) ^ 2 : ℤ) - (p : ℤ)).toNat (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A294602.P5068166899362808503

namespace A294602

/-- `∑[char[p?[xor(1, n)]]]-∑[∑{p}[n+1, val((n+1)²-#, 2*n+1)]]` -/
def P5068166899362808503.Spec : Prop :=
  ∀ n, P5068166899362808503.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P11049881447453201215

`A060715(∑[(C(3, n)+n)%2])`
-/

namespace A294602.P11049881447453201215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose 3 n + n) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060715 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294602.P11049881447453201215

namespace A294602

/-- `A060715(∑[(C(3, n)+n)%2])` -/
def P11049881447453201215.Spec : Prop :=
  ∀ n, P11049881447453201215.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P3098328686138178328

`A056171(A014684(n+1))`
-/

namespace A294602.P3098328686138178328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A014684 (n + 1)).toNat

end

end A294602.P3098328686138178328

namespace A294602

/-- `A056171(A014684(n+1))` -/
def P3098328686138178328.Spec : Prop :=
  ∀ n, P3098328686138178328.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P12710067589728233463

`A230980(n)-A056172(n+1)`
-/

namespace A294602.P12710067589728233463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A056172 (n + 1)

end

end A294602.P12710067589728233463

namespace A294602

/-- `A230980(n)-A056172(n+1)` -/
def P12710067589728233463.Spec : Prop :=
  ∀ n, P12710067589728233463.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P9324203883341676482

`A302480(n+1)+A117929(n+1)`
-/

namespace A294602.P9324203883341676482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302480 (n + 1) + A117929 (n + 1)

end

end A294602.P9324203883341676482

namespace A294602

/-- `A302480(n+1)+A117929(n+1)` -/
def P9324203883341676482.Spec : Prop :=
  ∀ n, P9324203883341676482.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P131142533857748153

`A338363(n+1)-A014683(n+1)`
-/

namespace A294602.P131142533857748153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338363 (n + 1) - A014683 (n + 1)

end

end A294602.P131142533857748153

namespace A294602

/-- `A338363(n+1)-A014683(n+1)` -/
def P131142533857748153.Spec : Prop :=
  ∀ n, P131142533857748153.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P12329460684457790418

`∑[char[A000040(n+1)]]-A056172(n+1)`
-/

namespace A294602.P12329460684457790418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A056172 (n + 1)

end

end A294602.P12329460684457790418

namespace A294602

/-- `∑[char[A000040(n+1)]]-A056172(n+1)` -/
def P12329460684457790418.Spec : Prop :=
  ∀ n, P12329460684457790418.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P7415072696309658975

`∑[char[A000040(n+1)]-A353478(n+1)]`
-/

namespace A294602.P7415072696309658975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A353478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294602.P7415072696309658975

namespace A294602

/-- `∑[char[A000040(n+1)]-A353478(n+1)]` -/
def P7415072696309658975.Spec : Prop :=
  ∀ n, P7415072696309658975.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P16430378743026801552

`A056171(n+1)-char[record[A000010(n+1)]]`
-/

namespace A294602.P16430378743026801552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294602.P16430378743026801552

namespace A294602

/-- `A056171(n+1)-char[record[A000010(n+1)]]` -/
def P16430378743026801552.Spec : Prop :=
  ∀ n, P16430378743026801552.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P2388811348888815267

`A056171(n+1-char[A000040(n+1)-1])`
-/

namespace A294602.P2388811348888815267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 1 - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A294602.P2388811348888815267

namespace A294602

/-- `A056171(n+1-char[A000040(n+1)-1])` -/
def P2388811348888815267.Spec : Prop :=
  ∀ n, P2388811348888815267.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P13121269464911869207

`A230980(n)-A230980(A065033(n))`
-/

namespace A294602.P13121269464911869207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A230980 (A065033 n).toNat

end

end A294602.P13121269464911869207

namespace A294602

/-- `A230980(n)-A230980(A065033(n))` -/
def P13121269464911869207.Spec : Prop :=
  ∀ n, P13121269464911869207.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P16511195192921484876

`A230980(n)-A230980(Δ[A002620(n)])`
-/

namespace A294602.P16511195192921484876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A230980 (f1 (n + 1) - f1 n).toNat

end

end A294602.P16511195192921484876

namespace A294602

/-- `A230980(n)-A230980(Δ[A002620(n)])` -/
def P16511195192921484876.Spec : Prop :=
  ∀ n, P16511195192921484876.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P16085132338141011012

`A056171(n+1)-val(A000040(A000005(n+1)), 3)`
-/

namespace A294602.P16085132338141011012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 1) - (SequenceMachineLib.valuation (A000040 (A000005 (n + 1)).toNat).toNat 3 : ℤ)

end

end A294602.P16085132338141011012

namespace A294602

/-- `A056171(n+1)-val(A000040(A000005(n+1)), 3)` -/
def P16085132338141011012.Spec : Prop :=
  ∀ n, P16085132338141011012.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P1986853055643103232

`A056171(n+1)-∑{d}[A001222(n+1), A008683(#)]`
-/

namespace A294602.P1986853055643103232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (n + 1) - ∑ d ∈ Nat.divisors (f1 n).natAbs, A008683 d

end

end A294602.P1986853055643103232

namespace A294602

/-- `A056171(n+1)-∑{d}[A001222(n+1), A008683(#)]` -/
def P1986853055643103232.Spec : Prop :=
  ∀ n, P1986853055643103232.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P15971848657012929514

`A000720(n+1)-(A056172(n+1)+A010051(n+1))`
-/

namespace A294602.P15971848657012929514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - (A056172 (n + 1) + A010051 (n + 1))

end

end A294602.P15971848657012929514

namespace A294602

/-- `A000720(n+1)-(A056172(n+1)+A010051(n+1))` -/
def P15971848657012929514.Spec : Prop :=
  ∀ n, P15971848657012929514.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P13390944297159926560

`A056171(A113638(n+1))`
-/

namespace A294602.P13390944297159926560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A113638 (n + 1)).toNat

end

end A294602.P13390944297159926560

namespace A294602

/-- `A056171(A113638(n+1))` -/
def P13390944297159926560.Spec : Prop :=
  ∀ n, P13390944297159926560.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P15619318195255102941

`A294111(n+2)-(A368058(n+1)+A010051(n+1))`
-/

namespace A294602.P15619318195255102941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294111 (n + 2) - (A368058 (n + 1) + A010051 (n + 1))

end

end A294602.P15619318195255102941

namespace A294602

/-- `A294111(n+2)-(A368058(n+1)+A010051(n+1))` -/
def P15619318195255102941.Spec : Prop :=
  ∀ n, P15619318195255102941.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P11400676668846295129

`A056172(A004277(n))-A056172(n+1)`
-/

namespace A294602.P11400676668846295129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (A004277 n).toNat - A056172 (n + 1)

end

end A294602.P11400676668846295129

namespace A294602

/-- `A056172(A004277(n))-A056172(n+1)` -/
def P11400676668846295129.Spec : Prop :=
  ∀ n, P11400676668846295129.a n = A294602 (n + 1)

end A294602

/-! ## A294602.P9155052972451895757

`A056172(2*n+1)-A056172(n+1)`
-/

namespace A294602.P9155052972451895757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056172 (2 * n + 1) - A056172 (n + 1)

end

end A294602.P9155052972451895757

namespace A294602

/-- `A056172(2*n+1)-A056172(n+1)` -/
def P9155052972451895757.Spec : Prop :=
  ∀ n, P9155052972451895757.a n = A294602 (n + 1)

end A294602

/-!
# A294603: Number of words of semilength n over n-ary alphabet, either empty or beginning with the first letter of the alphabet, such that the index set of occurring letters is an integer interval [1, k], that can be built by repeatedly inserting doublets into the initially empty word.

The programs for A294603, there is no canonical definition to state claims against.
-/

/-! ## A294603.P12262809564147667001

`A194972(n^(round(sqrt(n+1))-1))`
-/

namespace A294603.P12262809564147667001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194972 (SequenceMachineLib.roundAway ((n : ℚ) ^ (SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) - 1 : ℤ))).toNat

end

end A294603.P12262809564147667001

/-! ## A294603.P10342011009752384926

`A004526(A162655(n)+A125813(n))`
-/

namespace A294603.P10342011009752384926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A162655 n + A125813 n).toNat

end

end A294603.P10342011009752384926

/-!
# A294604: Number of ordinary double points of a family of threefolds.

The programs for A294604, the canonical program `A294604.P8617844953742123333` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294604 has offset 3).

The definition of A294604 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294604.P8617844953742123333

`A071238(n+2)+A000217(A008796(2*n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294604

/-- `A071238(n+2)+A000217(A008796(2*n))` -/
def P8617844953742123333.Spec : Prop :=
  ∀ n, P8617844953742123333.a n = A294604 (n + 3)

theorem P8617844953742123333.correct : P8617844953742123333.Spec := by
  intro n
  simp only [A294604, Nat.add_sub_cancel]

end A294604

/-!
# A294605: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1-j*x^j)^(j^(k*j)) in powers of x.

The programs for A294605, there is no canonical definition to state claims against.
-/

/-! ## A294605.P9326234880180130042

`A294808(n)-A011734(A156953(n))`
-/

namespace A294605.P9326234880180130042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 n - A011734 (A156953 n).toNat

end

end A294605.P9326234880180130042

/-! ## A294605.P5906307929833151285

`A294808(n)-A133010(A135722(n))`
-/

namespace A294605.P5906307929833151285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 n - A133010 (A135722 n).toNat

end

end A294605.P5906307929833151285

/-! ## A294605.P6488871452825283806

`A294808(n)-A185036(A122890(n))`
-/

namespace A294605.P6488871452825283806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 n - A185036 (A122890 n).toNat

end

end A294605.P6488871452825283806

/-! ## A294605.P5677192519930014461

`A294808(n)-A010894(A334437(n))`
-/

namespace A294605.P5677192519930014461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 n - A010894 ((A334437 n).toNat + 21)

end

end A294605.P5677192519930014461

/-! ## A294605.P6477102475016644516

`A294808(n)-A024155(A000204(n+1))`
-/

namespace A294605.P6477102475016644516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294808 n - A024155 (A000204 (n + 1)).toNat

end

end A294605.P6477102475016644516

/-!
# A294606: Expansion of Product_{k>=1} (1 - k*x^k)^(k^k).

The programs for A294606, there is no canonical definition to state claims against.
-/

/-! ## A294606.P13641758497781142076

`A294605(∑[n+2]-1)`
-/

namespace A294606.P13641758497781142076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294606.P13641758497781142076

/-! ## A294606.P6427145510680762026

`A294605(A034856(n+1))+A011734(n)`
-/

namespace A294606.P6427145510680762026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 (A034856 (n + 1)).toNat + A011734 n

end

end A294606.P6427145510680762026

/-! ## A294606.P11828495876978604440

`A294605(A034856(n+1))+A025439(n)`
-/

namespace A294606.P11828495876978604440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 (A034856 (n + 1)).toNat + A025439 n

end

end A294606.P11828495876978604440

/-! ## A294606.P6208936622386025237

`or(A000007(n), A294605(A034856(n+1)))`
-/

namespace A294606.P6208936622386025237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A294605 (A034856 (n + 1)).toNat)

end

end A294606.P6208936622386025237

/-! ## A294606.P12459768243951477382

`A152848(A336996(n))*A294605(A034856(n+1))`
-/

namespace A294606.P12459768243951477382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152848 (A336996 n).toNat * A294605 (A034856 (n + 1)).toNat

end

end A294606.P12459768243951477382

/-!
# A294607: Expansion of Product_{k>=1} (1 - k*x^k)^(k^(2*k)).

The programs for A294607, there is no canonical definition to state claims against.
-/

/-! ## A294607.P17925766021245023048

`A294605(∑[n+3])`
-/

namespace A294607.P17925766021245023048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294607.P17925766021245023048

/-! ## A294607.P12876658133263643110

`A294605(A141214(n))+A011734(n)`
-/

namespace A294607.P12876658133263643110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 (A141214 n).toNat + A011734 n

end

end A294607.P12876658133263643110

/-! ## A294607.P11442922784739641064

`A294605(A141214(n))+A025439(n)`
-/

namespace A294607.P11442922784739641064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 (A141214 n).toNat + A025439 n

end

end A294607.P11442922784739641064

/-! ## A294607.P17670462803178928669

`A294605(A141214(n))+A185037(n)`
-/

namespace A294607.P17670462803178928669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 (A141214 n).toNat + A185037 n

end

end A294607.P17670462803178928669

/-! ## A294607.P1180689327929477069

`A294605(A141214(n))+A185284(n)`
-/

namespace A294607.P1180689327929477069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294605 (A141214 n).toNat + A185284 n

end

end A294607.P1180689327929477069

/-!
# A294608: a(n) = Sum_{d|n} d^(d + 1 + n/d).

The programs for A294608, the canonical program `A294608.P14773210916471436744` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294608 has offset 1).

The definition of A294608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294608.P14773210916471436744

`∑{d}[n+1, #^(#+1+(n+1)/#)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A294608

/-- `∑{d}[n+1, #^(#+1+(n+1)/#)]` -/
def P14773210916471436744.Spec : Prop :=
  ∀ n, P14773210916471436744.a n = (A294608 (n + 1) : ℝ)

end A294608

/-!
# A294609: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1-j*x^j)^(j^(k*j)) in powers of x.

The programs for A294609, there is no canonical definition to state claims against.
-/

/-! ## A294609.P611629899284221880

`A294950(n)+A011734(A156953(n))`
-/

namespace A294609.P611629899284221880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 n + A011734 (A156953 n).toNat

end

end A294609.P611629899284221880

/-! ## A294609.P14679636582152178060

`A294950(n)+A133010(A135722(n))`
-/

namespace A294609.P14679636582152178060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 n + A133010 (A135722 n).toNat

end

end A294609.P14679636582152178060

/-! ## A294609.P14931707561385415520

`A294950(n)+A185036(A122890(n))`
-/

namespace A294609.P14931707561385415520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 n + A185036 (A122890 n).toNat

end

end A294609.P14931707561385415520

/-! ## A294609.P3442824966823045894

`A294950(n)+A024155(A000204(n+1))`
-/

namespace A294609.P3442824966823045894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294950 n + A024155 (A000204 (n + 1)).toNat

end

end A294609.P3442824966823045894

/-! ## A294609.P4210350601565915976

`A341840(A048682(n+1))+A294950(n)`
-/

namespace A294609.P4210350601565915976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 (A048682 (n + 1)).toNat + A294950 n

end

end A294609.P4210350601565915976

/-!
# A294610: Expansion of Product_{k>=1} 1/(1 - k*x^k)^(k^k).

The programs for A294610, there is no canonical definition to state claims against.
-/

/-! ## A294610.P9012193361740739711

`A294609(∑[n+2]-1)`
-/

namespace A294610.P9012193361740739711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A294610.P9012193361740739711

/-! ## A294610.P14811574250147102981

`A294609(A034856(n+1))+A011734(n)`
-/

namespace A294610.P14811574250147102981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 (A034856 (n + 1)).toNat + A011734 n

end

end A294610.P14811574250147102981

/-! ## A294610.P12527381837383477365

`A294609(A034856(n+1))+A025439(n)`
-/

namespace A294610.P12527381837383477365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 (A034856 (n + 1)).toNat + A025439 n

end

end A294610.P12527381837383477365

/-! ## A294610.P9399744316393690161

`gcd(A000038(n), A294609(A034856(n+1)))`
-/

namespace A294610.P9399744316393690161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A294609 (A034856 (n + 1)).toNat)

end

end A294610.P9399744316393690161

/-! ## A294610.P18439284972299586369

`A014963(6*(n+1))*A294609(A034856(n+1))`
-/

namespace A294610.P18439284972299586369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A294609 (A034856 (n + 1)).toNat

end

end A294610.P18439284972299586369

/-!
# A294611: Expansion of Product_{k>=1} 1/(1 - k*x^k)^(k^(2*k)).

The programs for A294611, there is no canonical definition to state claims against.
-/

/-! ## A294611.P7403151481684373285

`A294609(∑[n+3])`
-/

namespace A294611.P7403151481684373285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294611.P7403151481684373285

/-! ## A294611.P16327730227313072983

`A294609(A141214(n))+A025438(n)`
-/

namespace A294611.P16327730227313072983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 (A141214 n).toNat + A025438 n

end

end A294611.P16327730227313072983

/-! ## A294611.P10268167889195423927

`A294609(A141214(n))+A025439(n)`
-/

namespace A294611.P10268167889195423927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 (A141214 n).toNat + A025439 n

end

end A294611.P10268167889195423927

/-! ## A294611.P13665377999450095127

`A294609(A141214(n))+A025444(n)`
-/

namespace A294611.P13665377999450095127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294609 (A141214 n).toNat + A025444 n

end

end A294611.P13665377999450095127

/-! ## A294611.P17016726453047151959

`A326687(n)+A294609(A141214(n))`
-/

namespace A294611.P17016726453047151959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326687 n + A294609 (A141214 n).toNat

end

end A294611.P17016726453047151959

/-!
# A294612: Denominator of the contraharmonic mean of the first n primes.

The programs for A294612, the canonical program `A294612.P4833185872788990948` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294612 has offset 1).

The definition of A294612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294612.P4833185872788990948

`A007504(n+1)/A024450(n+1)*A296199(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A294612

/-- `A007504(n+1)/A024450(n+1)*A296199(n+1)` -/
def P4833185872788990948.Spec : Prop :=
  ∀ n, P4833185872788990948.a n = (A294612 (n + 1) : ℚ)

end A294612

/-! ## A294612.P11624826542152152123

`A065330(∑[p?[A081277(n)]])`
-/

namespace A294612.P11624826542152152123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081277 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294612.P11624826542152152123

namespace A294612

/-- `A065330(∑[p?[A081277(n)]])` -/
def P11624826542152152123.Spec : Prop :=
  ∀ n, P11624826542152152123.a n = A294612 (n + 1)

end A294612

/-! ## A294612.P7160820983979159994

`A065330(∑[p?[A109886(n)]])`
-/

namespace A294612.P7160820983979159994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109886 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294612.P7160820983979159994

namespace A294612

/-- `A065330(∑[p?[A109886(n)]])` -/
def P7160820983979159994.Spec : Prop :=
  ∀ n, P7160820983979159994.a n = A294612 (n + 1)

end A294612

/-! ## A294612.P13358640021890319785

`A065330(∑[p?[A123539(n)]])`
-/

namespace A294612.P13358640021890319785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123539 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294612.P13358640021890319785

namespace A294612

/-- `A065330(∑[p?[A123539(n)]])` -/
def P13358640021890319785.Spec : Prop :=
  ∀ n, P13358640021890319785.a n = A294612 (n + 1)

end A294612

/-!
# A294614: Sum of the divisors of 12*n - 1, divided by 12, minus n.

The programs for A294614, the canonical program `A294614.P3325507046058223029` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294614 has offset 1).

The definition of A294614 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294614.P3325507046058223029

`A000203(A017653(n))/12-(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294614

/-- `A000203(A017653(n))/12-(n+1)` -/
def P3325507046058223029.Spec : Prop :=
  ∀ n, P3325507046058223029.a n = (A294614 (n + 1) : ℚ)

end A294614

/-! ## A294614.P5054833722004992931

`A295012(n+1)-(n+1)`
-/

namespace A294614.P5054833722004992931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 (n + 1) - (n + 1 : ℤ)

end

end A294614.P5054833722004992931

namespace A294614

/-- `A295012(n+1)-(n+1)` -/
def P5054833722004992931.Spec : Prop :=
  ∀ n, P5054833722004992931.a n = A294614 (n + 1)

end A294614

/-! ## A294614.P17924958624670976269

`A295012(abs(xor(n, -1)))-1-n`
-/

namespace A294614.P17924958624670976269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 |Int.xor (n : ℤ) (-1)|.toNat - 1 - (n : ℤ)

end

end A294614.P17924958624670976269

namespace A294614

/-- `A295012(abs(xor(n, -1)))-1-n` -/
def P17924958624670976269.Spec : Prop :=
  ∀ n, P17924958624670976269.a n = A294614 (n + 1)

end A294614

/-! ## A294614.P3291507700747771630

`A295012(-xor(n, -1))-1-n`
-/

namespace A294614.P3291507700747771630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295012 (-Int.xor (n : ℤ) (-1)).toNat - 1 - (n : ℤ)

end

end A294614.P3291507700747771630

namespace A294614

/-- `A295012(-xor(n, -1))-1-n` -/
def P3291507700747771630.Spec : Prop :=
  ∀ n, P3291507700747771630.a n = A294614 (n + 1)

end A294614

/-! ## A294614.P5402271216439019850

`A295012(root(n+1, 2)²)%(n+1)`
-/

namespace A294614.P5402271216439019850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295012 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat) (n + 1 : ℤ)

end

end A294614.P5402271216439019850

namespace A294614

/-- `A295012(root(n+1, 2)²)%(n+1)` -/
def P5402271216439019850.Spec : Prop :=
  ∀ n, P5402271216439019850.a n = A294614 (n + 1)

end A294614

/-! ## A294614.P6104753491913130046

`A098098(Δ[n²])/2-(n+1)`
-/

namespace A294614.P6104753491913130046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098098 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2 - (n + 1 : ℚ)

end

end A294614.P6104753491913130046

namespace A294614

/-- `A098098(Δ[n²])/2-(n+1)` -/
def P6104753491913130046.Spec : Prop :=
  ∀ n, P6104753491913130046.a n = (A294614 (n + 1) : ℚ)

end A294614

/-! ## A294614.P5652919187177159570

`A097723(3*n+2)/3-(n+1)`
-/

namespace A294614.P5652919187177159570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097723 (3 * n + 2) : ℚ) / 3 - (n + 1 : ℚ)

end

end A294614.P5652919187177159570

namespace A294614

/-- `A097723(3*n+2)/3-(n+1)` -/
def P5652919187177159570.Spec : Prop :=
  ∀ n, P5652919187177159570.a n = (A294614 (n + 1) : ℚ)

end A294614

/-! ## A294614.P2244302110785947340

`A232343(4*n+2)/2-(n+1)`
-/

namespace A294614.P2244302110785947340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232343 (4 * n + 2) : ℚ) / 2 - (n + 1 : ℚ)

end

end A294614.P2244302110785947340

namespace A294614

/-- `A232343(4*n+2)/2-(n+1)` -/
def P2244302110785947340.Spec : Prop :=
  ∀ n, P2244302110785947340.a n = (A294614 (n + 1) : ℚ)

end A294614

/-! ## A294614.P3474005386083354898

`A033786(12*n+6)/2-(n+1)`
-/

namespace A294614.P3474005386083354898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033786 (12 * n + 6) : ℚ) / 2 - (n + 1 : ℚ)

end

end A294614.P3474005386083354898

namespace A294614

/-- `A033786(12*n+6)/2-(n+1)` -/
def P3474005386083354898.Spec : Prop :=
  ∀ n, P3474005386083354898.a n = (A294614 (n + 1) : ℚ)

end A294614

/-! ## A294614.P14180594649916172212

`A048050(A017653(n))/12`
-/

namespace A294614.P14180594649916172212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048050 (A017653 n).toNat : ℚ) / 12

end

end A294614.P14180594649916172212

namespace A294614

/-- `A048050(A017653(n))/12` -/
def P14180594649916172212.Spec : Prop :=
  ∀ n, P14180594649916172212.a n = (A294614 (n + 1) : ℚ)

end A294614

/-! ## A294614.P700432553204484676

`(A295012(n+1)%(n+1))%A000010((n+1)²+1)`
-/

namespace A294614.P700432553204484676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A295012 (n + 1)) (n + 1 : ℤ)) (A000010 ((n + 1) ^ 2 + 1))

end

end A294614.P700432553204484676

namespace A294614

/-- `(A295012(n+1)%(n+1))%A000010((n+1)²+1)` -/
def P700432553204484676.Spec : Prop :=
  ∀ n, P700432553204484676.a n = A294614 (n + 1)

end A294614

/-!
# A294616: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: Product_{j>0} (1-j^k*x^j)^(1/j).

The programs for A294616, there is no canonical definition to state claims against.
-/

/-! ## A294616.P6074122317168189386

`A108299(n)-∑[A276404(A000079(n))]`
-/

namespace A294616.P6074122317168189386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A000079 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108299 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294616.P6074122317168189386

/-! ## A294616.P3551148765157893790

`A283272(A025469(A038218(n))+n)`
-/

namespace A294616.P3551148765157893790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 (A025469 (A038218 n).toNat + (n : ℤ)).toNat

end

end A294616.P3551148765157893790

/-! ## A294616.P7187014881428394046

`A292166(A025469(A038218(n))+n)`
-/

namespace A294616.P7187014881428394046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292166 (A025469 (A038218 n).toNat + (n : ℤ)).toNat

end

end A294616.P7187014881428394046

/-! ## A294616.P1304389215284108765

`A283272(n)-A074290(A158116(n+3))`
-/

namespace A294616.P1304389215284108765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 n - A074290 (A158116 (n + 3)).toNat

end

end A294616.P1304389215284108765

/-! ## A294616.P6567731385752329477

`A283272(n)+A056170(A002865(3*n+2))`
-/

namespace A294616.P6567731385752329477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283272 n + A056170 (A002865 (3 * n + 2)).toNat

end

end A294616.P6567731385752329477

/-!
# A294617: Number of ways to choose a set partition of a strict integer partition of n.

The programs for A294617, there is no canonical definition to state claims against.
-/

/-! ## A294617.P2156072590533861356

`A218074(n)+A118759(A032058(n))`
-/

namespace A294617.P2156072590533861356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218074 n + A118759 (A032058 n).toNat

end

end A294617.P2156072590533861356

/-! ## A294617.P5781771843149605698

`A367906(A072706(n))+A162296(A000045(2*n+1))`
-/

namespace A294617.P5781771843149605698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367906 (A072706 n).toNat + A162296 (A000045 (2 * n + 1)).toNat

end

end A294617.P5781771843149605698

/-!
# A294618: a(n) is the number of solutions of x^2 = eulerphi(x * m) where x is A293928(n).

The programs for A294618, there is no canonical definition to state claims against.
-/

/-! ## A294618.P10057426156945361698

`A318574(n+1)+A285345(A134955(n))`
-/

namespace A294618.P10057426156945361698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318574 (n + 1) + A285345 (A134955 n).toNat

end

end A294618.P10057426156945361698

/-!
# A294619: a(0) = 0, a(1) = 1, a(2) = 2 and a(n) = 1 for n > 2.

The programs for A294619, the canonical program `A294619.P15593981605595711410` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294619 has offset 0).

The definition of A294619 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294619.P15593981605595711410

`a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A294619

/-- `a(n-1)` -/
def P15593981605595711410.Spec : Prop :=
  ∀ n, (P15593981605595711410.a n : ℤ) = A294619 n

theorem P15593981605595711410.correct : P15593981605595711410.Spec := by
  intro n
  simp only [A294619]

end A294619

/-!
# A294620: Expansion of Product_{k>0} (1 - k^2*x^k)^(1/k).

The programs for A294620, there is no canonical definition to state claims against.
-/

/-! ## A294620.P18108636894293371524

`A294616(∑[n+3])/A000142(n)`
-/

namespace A294620.P18108636894293371524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294616 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000142 n : ℚ)

end

end A294620.P18108636894293371524

/-!
# A294623: Number of partitions of n into distinct generalized heptagonal numbers (A085787).

The programs for A294623, there is no canonical definition to state claims against.
-/

/-! ## A294623.P16498431813731163341

`A046597(A313803(n))%A057945(A071223(n+2))`
-/

namespace A294623.P16498431813731163341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046597 (A313803 n).toNat) (A057945 (A071223 (n + 2)).toNat)

end

end A294623.P16498431813731163341

/-! ## A294623.P8285915974942046904

`A319954(∑[A291347(n+3)])`
-/

namespace A294623.P8285915974942046904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291347 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294623.P8285915974942046904

/-! ## A294623.P14644809091176961969

`val(A034896(A276182(n+1)), 3)`
-/

namespace A294623.P14644809091176961969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A034896 (A276182 (n + 1)).toNat).toNat 3

end

end A294623.P14644809091176961969

/-!
# A294624: Number of partitions of n into distinct generalized octagonal numbers (A001082).

The programs for A294624, there is no canonical definition to state claims against.
-/

/-! ## A294624.P17957745968844904537

`A031260(n+1)*A342892(A271779(n))`
-/

namespace A294624.P17957745968844904537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031260 (n + 1) * A342892 (A271779 n).toNat

end

end A294624.P17957745968844904537

/-! ## A294624.P17775367051412146446

`and(A007318(A010356(n+3)), A063842(n))`
-/

namespace A294624.P17775367051412146446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007318 (A010356 (n + 3)).toNat) (A063842 n)

end

end A294624.P17775367051412146446

/-! ## A294624.P9817038948459827298

`A080733(A250724(n+1)+6)`
-/

namespace A294624.P9817038948459827298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080733 (A250724 (n + 1) + 6).toNat

end

end A294624.P9817038948459827298

/-! ## A294624.P10369268153395153389

`A011717(A070876(n))`
-/

namespace A294624.P10369268153395153389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011717 (A070876 n).toNat

end

end A294624.P10369268153395153389

/-! ## A294624.P16309983023304917633

`A131078(A094792(n))`
-/

namespace A294624.P16309983023304917633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131078 (A094792 n).toNat

end

end A294624.P16309983023304917633

/-!
# A294625: Primes of the form prime(n+2)*prime(n+1) - prime(n) +- 1.

The programs for A294625, there is no canonical definition to state claims against.
-/

/-! ## A294625.P8009974762650393294

`∩[A030609(n+1), A107664(n+1)]`
-/

namespace A294625.P8009974762650393294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294625.P8009974762650393294

/-!
# A294626: a(n) = (1/(24*n)) * Sum_{d|n} A008683(n/d) * (A288877(d) - A288261(d)).

The programs for A294626, there is no canonical definition to state claims against.
-/

/-! ## A294626.P17639897439255026635

`2*A289394(n+1)-A289395(n+1)`
-/

namespace A294626.P17639897439255026635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289394 (n + 1) - A289395 (n + 1)

end

end A294626.P17639897439255026635

/-! ## A294626.P17823016295556307371

`A288968(n+1)/2-A289395(n+1)`
-/

namespace A294626.P17823016295556307371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288968 (n + 1) : ℚ) / 2 - (A289395 (n + 1) : ℚ)

end

end A294626.P17823016295556307371

/-! ## A294626.P5001246713689638954

`A288968(n+1)/4-((A289024(n+1)-A288851(n+1))/8-A288968(n+1)/4)`
-/

namespace A294626.P5001246713689638954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288968 (n + 1) : ℚ) / 4 - ((A289024 (n + 1) - A288851 (n + 1) : ℚ) / 8 - (A288968 (n + 1) : ℚ) / 4)

end

end A294626.P5001246713689638954

/-!
# A294627: Expansion of x*(1 + x)/((1-2*x)*(1+x+x^2)).

The programs for A294627, the canonical program `A294627.P4259642594326920660` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294627 has offset 0).

The definition of A294627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294627.P4259642594326920660

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A294627

/-- `a(n-1)+a(n-2)+2*a(n-3)` -/
def P4259642594326920660.Spec : Prop :=
  ∀ n, (P4259642594326920660.a n : ℤ) = A294627 n

theorem P4259642594326920660.correct : P4259642594326920660.Spec := by
  intro n
  simp only [A294627]

end A294627

/-! ## A294627.P4912979988705354254

`2*a(n-1)+1-a(n-1)%3` with `a(0)=0`
-/

namespace A294627.P4912979988705354254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (n - 1) + (1 - Int.tmod (a (n - 1)) 3)

end

end A294627.P4912979988705354254

namespace A294627

/-- `2*a(n-1)+1-a(n-1)%3` -/
def P4912979988705354254.Spec : Prop :=
  ∀ n, P4912979988705354254.a n = A294627 n

end A294627

/-! ## A294627.P8122039614407544045

`3*floor(a(n-1)/3)+a(n-1)+1` with `a(0)=0`
-/

namespace A294627.P8122039614407544045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * ⌊(a (n - 1) : ℚ) / 3⌋ + (a (n - 1) + 1)

end

end A294627.P8122039614407544045

namespace A294627

/-- `3*floor(a(n-1)/3)+a(n-1)+1` -/
def P8122039614407544045.Spec : Prop :=
  ∀ n, P8122039614407544045.a n = A294627 n

end A294627

/-! ## A294627.P13507648073448732652

`1-(floor(a(n-1))%3-2*a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A294627.P13507648073448732652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  1 - (Int.tmod (a (n - 1)) 3 - 2 * a (n - 1))

end

end A294627.P13507648073448732652

namespace A294627

/-- `1-(floor(a(n-1))%3-2*a(n-1))` -/
def P13507648073448732652.Spec : Prop :=
  ∀ n, P13507648073448732652.a n = A294627 n

end A294627

/-! ## A294627.P13202370372330506861

`a(n-1)+a(n-3)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A294627.P13202370372330506861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + (a (n - 3) + (a (n - 2) + a (n - 3)))

end

end A294627.P13202370372330506861

namespace A294627

/-- `a(n-1)+a(n-3)+a(n-2)+a(n-3)` -/
def P13202370372330506861.Spec : Prop :=
  ∀ n, (P13202370372330506861.a n : ℤ) = A294627 n

end A294627

/-! ## A294627.P15625409166574578787

`A136169(n)-A008620(n)`
-/

namespace A294627.P15625409166574578787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136169 n - A008620 n

end

end A294627.P15625409166574578787

namespace A294627

/-- `A136169(n)-A008620(n)` -/
def P15625409166574578787.Spec : Prop :=
  ∀ n, P15625409166574578787.a n = A294627 n

end A294627

/-! ## A294627.P9536328607919333623

`A122552(n)-A057078(n)`
-/

namespace A294627.P9536328607919333623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 n - A057078 n

end

end A294627.P9536328607919333623

namespace A294627

/-- `A122552(n)-A057078(n)` -/
def P9536328607919333623.Spec : Prop :=
  ∀ n, P9536328607919333623.a n = A294627 n

end A294627

/-! ## A294627.P10130820574259782039

`A122552(n)+A049347(n+1)`
-/

namespace A294627.P10130820574259782039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 n + A049347 (n + 1)

end

end A294627.P10130820574259782039

namespace A294627

/-- `A122552(n)+A049347(n+1)` -/
def P10130820574259782039.Spec : Prop :=
  ∀ n, P10130820574259782039.a n = A294627 n

end A294627

/-! ## A294627.P18357063670343551010

`A046630(n)-(A155803(n)+1)`
-/

namespace A294627.P18357063670343551010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 n - (A155803 n + 1)

end

end A294627.P18357063670343551010

namespace A294627

/-- `A046630(n)-(A155803(n)+1)` -/
def P18357063670343551010.Spec : Prop :=
  ∀ n, P18357063670343551010.a n = A294627 n

end A294627

/-! ## A294627.P12761896337699246385

`A155803(n+2)-A155803(n)`
-/

namespace A294627.P12761896337699246385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155803 (n + 2) - A155803 n

end

end A294627.P12761896337699246385

namespace A294627

/-- `A155803(n+2)-A155803(n)` -/
def P12761896337699246385.Spec : Prop :=
  ∀ n, P12761896337699246385.a n = A294627 n

end A294627

/-! ## A294627.P12671732246992616075

`A122552(n)-A010892(2*n)`
-/

namespace A294627.P12671732246992616075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 n - A010892 (2 * n)

end

end A294627.P12671732246992616075

namespace A294627

/-- `A122552(n)-A010892(2*n)` -/
def P12671732246992616075.Spec : Prop :=
  ∀ n, P12671732246992616075.a n = A294627 n

end A294627

/-! ## A294627.P6156059634117795709

`A122552(n)-A102283(2*n+1)`
-/

namespace A294627.P6156059634117795709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 n - A102283 (2 * n + 1)

end

end A294627.P6156059634117795709

namespace A294627

/-- `A122552(n)-A102283(2*n+1)` -/
def P6156059634117795709.Spec : Prop :=
  ∀ n, P6156059634117795709.a n = A294627 n

end A294627

/-! ## A294627.P6765001204592478809

`A078010(n+1)+A122552(n)-A077947(n)`
-/

namespace A294627.P6765001204592478809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 (n + 1) + (A122552 n - A077947 n)

end

end A294627.P6765001204592478809

namespace A294627

/-- `A078010(n+1)+A122552(n)-A077947(n)` -/
def P6765001204592478809.Spec : Prop :=
  ∀ n, P6765001204592478809.a n = A294627 n

end A294627

/-! ## A294627.P7287588442833041026

`2^n-A077947(n)`
-/

namespace A294627.P7287588442833041026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A077947 n

end

end A294627.P7287588442833041026

namespace A294627

/-- `2^n-A077947(n)` -/
def P7287588442833041026.Spec : Prop :=
  ∀ n, P7287588442833041026.a n = A294627 n

end A294627

/-! ## A294627.P5740287755871784182

`A102283(n)+Δ[A122552(n)]`
-/

namespace A294627.P5740287755871784182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 n + (f1 (n + 1) - f1 n)

end

end A294627.P5740287755871784182

namespace A294627

/-- `A102283(n)+Δ[A122552(n)]` -/
def P5740287755871784182.Spec : Prop :=
  ∀ n, P5740287755871784182.a n = A294627 n

end A294627

/-! ## A294627.P14179631840246962841

`A001045(n+1)+A001045(n)-A077947(n)`
-/

namespace A294627.P14179631840246962841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A001045 n - A077947 n)

end

end A294627.P14179631840246962841

namespace A294627

/-- `A001045(n+1)+A001045(n)-A077947(n)` -/
def P14179631840246962841.Spec : Prop :=
  ∀ n, P14179631840246962841.a n = A294627 n

end A294627

/-! ## A294627.P13694733628281291686

`A226308(n)-(A341905(n)+A049347(n+1))`
-/

namespace A294627.P13694733628281291686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226308 n - (A341905 n + A049347 (n + 1))

end

end A294627.P13694733628281291686

namespace A294627

/-- `A226308(n)-(A341905(n)+A049347(n+1))` -/
def P13694733628281291686.Spec : Prop :=
  ∀ n, P13694733628281291686.a n = A294627 n

end A294627

/-! ## A294627.P8145928254867204307

`Δ[Δ[A136169(n)]]`
-/

namespace A294627.P8145928254867204307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136169 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A294627.P8145928254867204307

namespace A294627

/-- `Δ[Δ[A136169(n)]]` -/
def P8145928254867204307.Spec : Prop :=
  ∀ n, P8145928254867204307.a n = A294627 n

end A294627

/-!
# A294628: a(n) = 8*(sigma(n) - n + (1/2)).

The programs for A294628, the canonical program `A294628.P17732687691627968368` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294628 has offset 1).

The definition of A294628 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A294628.P17732687691627968368

`4*A294015(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A294628

/-- `4*A294015(n+1)` -/
def P17732687691627968368.Spec : Prop :=
  ∀ n, P17732687691627968368.a n = A294628 (n + 1)

theorem P17732687691627968368.correct : P17732687691627968368.Spec := by
  intro n
  simp only [A294628, Nat.add_sub_cancel]

end A294628

/-! ## A294628.P16170020284885755359

`8*(A001065(n+1)+1/2)`
-/

namespace A294628.P16170020284885755359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((A001065 (n + 1) : ℚ) + (1 : ℚ) / 2)

end

end A294628.P16170020284885755359

namespace A294628

/-- `8*(A001065(n+1)+1/2)` -/
def P16170020284885755359.Spec : Prop :=
  ∀ n, P16170020284885755359.a n = (A294628 (n + 1) : ℚ)

end A294628

/-! ## A294628.P2773742658545119788

`8*(A000203(n+1)-(n+1/2))`
-/

namespace A294628.P2773742658545119788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((A000203 (n + 1) : ℚ) - ((n : ℚ) + (1 : ℚ) / 2))

end

end A294628.P2773742658545119788

namespace A294628

/-- `8*(A000203(n+1)-(n+1/2))` -/
def P2773742658545119788.Spec : Prop :=
  ∀ n, P2773742658545119788.a n = (A294628 (n + 1) : ℚ)

end A294628

/-! ## A294628.P477257026503936150

`A017113(n)-8*A235796(n+1)`
-/

namespace A294628.P477257026503936150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 n - 8 * A235796 (n + 1)

end

end A294628.P477257026503936150

namespace A294628

/-- `A017113(n)-8*A235796(n+1)` -/
def P477257026503936150.Spec : Prop :=
  ∀ n, P477257026503936150.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P11149001368597117124

`A239050(n+1)-4*A235796(n+1)`
-/

namespace A294628.P11149001368597117124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1) - 4 * A235796 (n + 1)

end

end A294628.P11149001368597117124

namespace A294628

/-- `A239050(n+1)-4*A235796(n+1)` -/
def P11149001368597117124.Spec : Prop :=
  ∀ n, P11149001368597117124.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P597146037436148267

`4*(2*(∑{d}[n+1, #]-n)-1)`
-/

namespace A294628.P597146037436148267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (2 * (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n : ℤ)) - 1)

end

end A294628.P597146037436148267

namespace A294628

/-- `4*(2*(∑{d}[n+1, #]-n)-1)` -/
def P597146037436148267.Spec : Prop :=
  ∀ n, P597146037436148267.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P10830844459667235529

`4*(A091818(n+1)+1)`
-/

namespace A294628.P10830844459667235529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A091818 (n + 1) + 1)

end

end A294628.P10830844459667235529

namespace A294628

/-- `4*(A091818(n+1)+1)` -/
def P10830844459667235529.Spec : Prop :=
  ∀ n, P10830844459667235529.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P18108035478964861485

`4*(A062967(n+1)+2)`
-/

namespace A294628.P18108035478964861485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A062967 (n + 1) + 2)

end

end A294628.P18108035478964861485

namespace A294628

/-- `4*(A062967(n+1)+2)` -/
def P18108035478964861485.Spec : Prop :=
  ∀ n, P18108035478964861485.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P1098865667579543366

`8*A001065(n+1)+4`
-/

namespace A294628.P1098865667579543366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A001065 (n + 1) + 4

end

end A294628.P1098865667579543366

namespace A294628

/-- `8*A001065(n+1)+4` -/
def P1098865667579543366.Spec : Prop :=
  ∀ n, P1098865667579543366.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P13382944868607972146

`A319528(n+1)-(8*n+4)`
-/

namespace A294628.P13382944868607972146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319528 (n + 1) - (8 * n + 4 : ℤ)

end

end A294628.P13382944868607972146

namespace A294628

/-- `A319528(n+1)-(8*n+4)` -/
def P13382944868607972146.Spec : Prop :=
  ∀ n, P13382944868607972146.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P11057193227760379268

`8*(n-(A033879(n+1)-1))+4`
-/

namespace A294628.P11057193227760379268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℤ) - (A033879 (n + 1) - 1)) + 4

end

end A294628.P11057193227760379268

namespace A294628

/-- `8*(n-(A033879(n+1)-1))+4` -/
def P11057193227760379268.Spec : Prop :=
  ∀ n, P11057193227760379268.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P1901223589633932466

`2*(A239050(n+1)-A016825(n))`
-/

namespace A294628.P1901223589633932466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A239050 (n + 1) - A016825 n)

end

end A294628.P1901223589633932466

namespace A294628

/-- `2*(A239050(n+1)-A016825(n))` -/
def P1901223589633932466.Spec : Prop :=
  ∀ n, P1901223589633932466.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P6771276370797087373

`2*A239050(n+1)-A017113(n)`
-/

namespace A294628.P6771276370797087373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A239050 (n + 1) - A017113 n

end

end A294628.P6771276370797087373

namespace A294628

/-- `2*A239050(n+1)-A017113(n)` -/
def P6771276370797087373.Spec : Prop :=
  ∀ n, P6771276370797087373.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P6395906063920122467

`4*(A088580(n+1)-A033879(n+1))`
-/

namespace A294628.P6395906063920122467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A088580 (n + 1) - A033879 (n + 1))

end

end A294628.P6395906063920122467

namespace A294628

/-- `4*(A088580(n+1)-A033879(n+1))` -/
def P6395906063920122467.Spec : Prop :=
  ∀ n, P6395906063920122467.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P4833412774187738298

`2*A016825(∑{d}[n+1, #]-(n+1))`
-/

namespace A294628.P4833412774187738298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016825 (∑ d ∈ Nat.divisors (f1 n), d - (n + 1))

end

end A294628.P4833412774187738298

namespace A294628

/-- `2*A016825(∑{d}[n+1, #]-(n+1))` -/
def P4833412774187738298.Spec : Prop :=
  ∀ n, P4833412774187738298.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P17124321133738975392

`2*A016825(A001065(n+1))`
-/

namespace A294628.P17124321133738975392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016825 (A001065 (n + 1)).toNat

end

end A294628.P17124321133738975392

namespace A294628

/-- `2*A016825(A001065(n+1))` -/
def P17124321133738975392.Spec : Prop :=
  ∀ n, P17124321133738975392.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P15112475709776969648

`2*A016825(A319699(2*(n+1)))`
-/

namespace A294628.P15112475709776969648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016825 (A319699 (2 * (n + 1))).toNat

end

end A294628.P15112475709776969648

namespace A294628

/-- `2*A016825(A319699(2*(n+1)))` -/
def P15112475709776969648.Spec : Prop :=
  ∀ n, P15112475709776969648.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P12621562888173156726

`A017113(A001065(n+1))`
-/

namespace A294628.P12621562888173156726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A001065 (n + 1)).toNat

end

end A294628.P12621562888173156726

namespace A294628

/-- `A017113(A001065(n+1))` -/
def P12621562888173156726.Spec : Prop :=
  ∀ n, P12621562888173156726.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P13156876843331479815

`A016825(A091818(n+1))+2`
-/

namespace A294628.P13156876843331479815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A091818 (n + 1)).toNat + 2

end

end A294628.P13156876843331479815

namespace A294628

/-- `A016825(A091818(n+1))+2` -/
def P13156876843331479815.Spec : Prop :=
  ∀ n, P13156876843331479815.a n = A294628 (n + 1)

end A294628

/-! ## A294628.P4930566267329456525

`A017113(n-A235796(n+1))`
-/

namespace A294628.P4930566267329456525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 ((n : ℤ) - A235796 (n + 1)).toNat

end

end A294628.P4930566267329456525

namespace A294628

/-- `A017113(n-A235796(n+1))` -/
def P4930566267329456525.Spec : Prop :=
  ∀ n, P4930566267329456525.a n = A294628 (n + 1)

end A294628

/-!
# A294629: Partial sums of A294628.

The programs for A294629, the canonical program `A294629.P4287090505026357869` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294629 has offset 1).

The definition of A294629 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294016, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294629.P4287090505026357869

`4*A294016(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A294629

/-- `4*A294016(n+1)` -/
def P4287090505026357869.Spec : Prop :=
  ∀ n, P4287090505026357869.a n = A294629 (n + 1)

theorem P4287090505026357869.correct : P4287090505026357869.Spec := by
  intro n
  simp only [A294629, Nat.add_sub_cancel]

end A294629

/-! ## A294629.P11337337733638776425

`A243980(n+1)-2*A067436(n+1)`
-/

namespace A294629.P11337337733638776425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243980 (n + 1) - 2 * A067436 (n + 1)

end

end A294629.P11337337733638776425

namespace A294629

/-- `A243980(n+1)-2*A067436(n+1)` -/
def P11337337733638776425.Spec : Prop :=
  ∀ n, P11337337733638776425.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P9694995567947514207

`A243980(n+1)-4*A004125(n+1)`
-/

namespace A294629.P9694995567947514207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243980 (n + 1) - 4 * A004125 (n + 1)

end

end A294629.P9694995567947514207

namespace A294629

/-- `A243980(n+1)-4*A004125(n+1)` -/
def P9694995567947514207.Spec : Prop :=
  ∀ n, P9694995567947514207.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P15833566794195130686

`A016742(n+1)-4*A067436(n+1)`
-/

namespace A294629.P15833566794195130686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (n + 1) - 4 * A067436 (n + 1)

end

end A294629.P15833566794195130686

namespace A294629

/-- `A016742(n+1)-4*A067436(n+1)` -/
def P15833566794195130686.Spec : Prop :=
  ∀ n, P15833566794195130686.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P11394708930120128478

`A016742(n+1)-8*A004125(n+1)`
-/

namespace A294629.P11394708930120128478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (n + 1) - 8 * A004125 (n + 1)

end

end A294629.P11394708930120128478

namespace A294629

/-- `A016742(n+1)-8*A004125(n+1)` -/
def P11394708930120128478.Spec : Prop :=
  ∀ n, P11394708930120128478.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P11872026237054908122

`4*∑[2*(∑{d}[n+1, #]-n)-1]`
-/

namespace A294629.P11872026237054908122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (n : ℤ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294629.P11872026237054908122

namespace A294629

/-- `4*∑[2*(∑{d}[n+1, #]-n)-1]` -/
def P11872026237054908122.Spec : Prop :=
  ∀ n, P11872026237054908122.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P17844139958888476060

`∑[A294628(n+1)]`
-/

namespace A294629.P17844139958888476060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294629.P17844139958888476060

namespace A294629

/-- `∑[A294628(n+1)]` -/
def P17844139958888476060.Spec : Prop :=
  ∀ n, P17844139958888476060.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P3762866366136647589

`∑[4*A294015(n+1)]`
-/

namespace A294629.P3762866366136647589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A294015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294629.P3762866366136647589

namespace A294629

/-- `∑[4*A294015(n+1)]` -/
def P3762866366136647589.Spec : Prop :=
  ∀ n, P3762866366136647589.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P17112182245079776880

`∑[4*(A091818(n+1)+1)]`
-/

namespace A294629.P17112182245079776880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A091818 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294629.P17112182245079776880

namespace A294629

/-- `∑[4*(A091818(n+1)+1)]` -/
def P17112182245079776880.Spec : Prop :=
  ∀ n, P17112182245079776880.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P5606350756072267342

`∑[8*A001065(n+1)+4]`
-/

namespace A294629.P5606350756072267342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A001065 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294629.P5606350756072267342

namespace A294629

/-- `∑[8*A001065(n+1)+4]` -/
def P5606350756072267342.Spec : Prop :=
  ∀ n, P5606350756072267342.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P1782122583380138664

`4*∑[2*(A000203(n+1)-n)-1]`
-/

namespace A294629.P1782122583380138664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000203 (n + 1) - (n : ℤ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294629.P1782122583380138664

namespace A294629

/-- `4*∑[2*(A000203(n+1)-n)-1]` -/
def P1782122583380138664.Spec : Prop :=
  ∀ n, P1782122583380138664.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P9792318433676220198

`2*(A327329(n+1)-A067436(n+1))`
-/

namespace A294629.P9792318433676220198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A327329 (n + 1) - A067436 (n + 1))

end

end A294629.P9792318433676220198

namespace A294629

/-- `2*(A327329(n+1)-A067436(n+1))` -/
def P9792318433676220198.Spec : Prop :=
  ∀ n, P9792318433676220198.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P16818592806260798521

`4*(A024916(n+1)-A004125(n+1))`
-/

namespace A294629.P16818592806260798521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A024916 (n + 1) - A004125 (n + 1))

end

end A294629.P16818592806260798521

namespace A294629

/-- `4*(A024916(n+1)-A004125(n+1))` -/
def P16818592806260798521.Spec : Prop :=
  ∀ n, P16818592806260798521.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P5729476975954352365

`4*∑[A088580(n+1)-A033879(n+1)]`
-/

namespace A294629.P5729476975954352365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294629.P5729476975954352365

namespace A294629

/-- `4*∑[A088580(n+1)-A033879(n+1)]` -/
def P5729476975954352365.Spec : Prop :=
  ∀ n, P5729476975954352365.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P3586740799785165030

`4*(∑[A074400(n+1)]-A005563(n)-1)`
-/

namespace A294629.P3586740799785165030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - A005563 n - 1)

end

end A294629.P3586740799785165030

namespace A294629

/-- `4*(∑[A074400(n+1)]-A005563(n)-1)` -/
def P3586740799785165030.Spec : Prop :=
  ∀ n, P3586740799785165030.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P2919754511904026324

`A243980(n+1)+A243980(n+1)-A016742(n+1)`
-/

namespace A294629.P2919754511904026324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243980 (n + 1) + (A243980 (n + 1) - A016742 (n + 1))

end

end A294629.P2919754511904026324

namespace A294629

/-- `A243980(n+1)+A243980(n+1)-A016742(n+1)` -/
def P2919754511904026324.Spec : Prop :=
  ∀ n, P2919754511904026324.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P11110029250431153052

`A294630(n+2)-(A294630(n+1)+A294628(n+2))`
-/

namespace A294629.P11110029250431153052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294630 (n + 2) - (A294630 (n + 1) + A294628 (n + 2))

end

end A294629.P11110029250431153052

namespace A294629

/-- `A294630(n+2)-(A294630(n+1)+A294628(n+2))` -/
def P11110029250431153052.Spec : Prop :=
  ∀ n, P11110029250431153052.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P3659454914284816909

`∑[2*A016825(A001065(n+1))]`
-/

namespace A294629.P3659454914284816909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016825 (A001065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294629.P3659454914284816909

namespace A294629

/-- `∑[2*A016825(A001065(n+1))]` -/
def P3659454914284816909.Spec : Prop :=
  ∀ n, P3659454914284816909.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P9517465469059909096

`∑[A017113(A001065(n+1))]`
-/

namespace A294629.P9517465469059909096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A001065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294629.P9517465469059909096

namespace A294629

/-- `∑[A017113(A001065(n+1))]` -/
def P9517465469059909096.Spec : Prop :=
  ∀ n, P9517465469059909096.a n = A294629 (n + 1)

end A294629

/-! ## A294629.P2717426790228389439

`4*∑[A004442(A091818(n+1))]`
-/

namespace A294629.P2717426790228389439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A091818 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294629.P2717426790228389439

namespace A294629

/-- `4*∑[A004442(A091818(n+1))]` -/
def P2717426790228389439.Spec : Prop :=
  ∀ n, P2717426790228389439.a n = A294629 (n + 1)

end A294629

/-!
# A294630: Partial sums of A294629.

The programs for A294630, the canonical program `A294630.P1431911924905244028` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294630 has offset 1).

The definition of A294630 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A294017, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A294630.P1431911924905244028

`4*A294017(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294630

/-- `4*A294017(n+1)` -/
def P1431911924905244028.Spec : Prop :=
  ∀ n, P1431911924905244028.a n = A294630 (n + 1)

theorem P1431911924905244028.correct : P1431911924905244028.Spec := by
  intro n
  simp only [A294630, Nat.add_sub_cancel]

end A294630

/-! ## A294630.P4164290069352695583

`A244050(n+1)-4*A072481(n+1)`
-/

namespace A294630.P4164290069352695583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244050 (n + 1) - 4 * A072481 (n + 1)

end

end A294630.P4164290069352695583

namespace A294630

/-- `A244050(n+1)-4*A072481(n+1)` -/
def P4164290069352695583.Spec : Prop :=
  ∀ n, P4164290069352695583.a n = A294630 (n + 1)

end A294630

/-! ## A294630.P6926404547286096358

`A002492(n+1)-8*A072481(n+1)`
-/

namespace A294630.P6926404547286096358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 (n + 1) - 8 * A072481 (n + 1)

end

end A294630.P6926404547286096358

namespace A294630

/-- `A002492(n+1)-8*A072481(n+1)` -/
def P6926404547286096358.Spec : Prop :=
  ∀ n, P6926404547286096358.a n = A294630 (n + 1)

end A294630

/-! ## A294630.P10748767700012870753

`4*∑[∑[2*(∑{d}[n+1, #]-n)-1]]`
-/

namespace A294630.P10748767700012870753
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n : ℤ)) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294630.P10748767700012870753

namespace A294630

/-- `4*∑[∑[2*(∑{d}[n+1, #]-n)-1]]` -/
def P10748767700012870753.Spec : Prop :=
  ∀ n, P10748767700012870753.a n = A294630 (n + 1)

end A294630

/-! ## A294630.P11299667422756772900

`∑[A294629(n+1)]`
-/

namespace A294630.P11299667422756772900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294630.P11299667422756772900

namespace A294630

/-- `∑[A294629(n+1)]` -/
def P11299667422756772900.Spec : Prop :=
  ∀ n, P11299667422756772900.a n = A294630 (n + 1)

end A294630

/-! ## A294630.P9138639650622620023

`∑[∑[A294628(n+1)]]`
-/

namespace A294630.P9138639650622620023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294628 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294630.P9138639650622620023

namespace A294630

/-- `∑[∑[A294628(n+1)]]` -/
def P9138639650622620023.Spec : Prop :=
  ∀ n, P9138639650622620023.a n = A294630 (n + 1)

end A294630

/-! ## A294630.P8835547733948192219

`∑[4*A294016(n+1)]`
-/

namespace A294630.P8835547733948192219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A294016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294630.P8835547733948192219

namespace A294630

/-- `∑[4*A294016(n+1)]` -/
def P8835547733948192219.Spec : Prop :=
  ∀ n, P8835547733948192219.a n = A294630 (n + 1)

end A294630

/-! ## A294630.P5724675454343697868

`4*∑[∑[A294015(n+1)]]`
-/

namespace A294630.P5724675454343697868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294015 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294630.P5724675454343697868

namespace A294630

/-- `4*∑[∑[A294015(n+1)]]` -/
def P5724675454343697868.Spec : Prop :=
  ∀ n, P5724675454343697868.a n = A294630 (n + 1)

end A294630

/-! ## A294630.P14235422306181279497

`4*∑[∑[2*(A000203(n+1)-n)-1]]`
-/

namespace A294630.P14235422306181279497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000203 (n + 1) - (n : ℤ)) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294630.P14235422306181279497

namespace A294630

/-- `4*∑[∑[2*(A000203(n+1)-n)-1]]` -/
def P14235422306181279497.Spec : Prop :=
  ∀ n, P14235422306181279497.a n = A294630 (n + 1)

end A294630

/-! ## A294630.P8008922305718855048

`4*∑[A024916(n+1)-A004125(n+1)]`
-/

namespace A294630.P8008922305718855048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) - A004125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294630.P8008922305718855048

namespace A294630

/-- `4*∑[A024916(n+1)-A004125(n+1)]` -/
def P8008922305718855048.Spec : Prop :=
  ∀ n, P8008922305718855048.a n = A294630 (n + 1)

end A294630

/-! ## A294630.P16602546026167156396

`∑[A243980(n+1)-4*A004125(n+1)]`
-/

namespace A294630.P16602546026167156396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243980 (n + 1) - 4 * A004125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294630.P16602546026167156396

namespace A294630

/-- `∑[A243980(n+1)-4*A004125(n+1)]` -/
def P16602546026167156396.Spec : Prop :=
  ∀ n, P16602546026167156396.a n = A294630 (n + 1)

end A294630

/-! ## A294630.P683373916579037078

`∑[∑[2*A016825(A001065(n+1))]]`
-/

namespace A294630.P683373916579037078
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016825 (A001065 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294630.P683373916579037078

namespace A294630

/-- `∑[∑[2*A016825(A001065(n+1))]]` -/
def P683373916579037078.Spec : Prop :=
  ∀ n, P683373916579037078.a n = A294630 (n + 1)

end A294630

/-! ## A294630.P12345977130977504364

`∑[∑[A017113(A001065(n+1))]]`
-/

namespace A294630.P12345977130977504364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A001065 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294630.P12345977130977504364

namespace A294630

/-- `∑[∑[A017113(A001065(n+1))]]` -/
def P12345977130977504364.Spec : Prop :=
  ∀ n, P12345977130977504364.a n = A294630 (n + 1)

end A294630

/-!
# A294637: Numbers k such that (29*10^k - 113)/3 is prime.

The programs for A294637, there is no canonical definition to state claims against.
-/

/-! ## A294637.P15220290519337679007

`A324776(A209398(n))+A324739(n+1)`
-/

namespace A294637.P15220290519337679007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324776 (A209398 n).toNat + A324739 (n + 1)

end

end A294637.P15220290519337679007

/-!
# A294638: E.g.f. satisfies: A'(x) = A(x) * A(x^2).

The programs for A294638, there is no canonical definition to state claims against.
-/

/-! ## A294638.P12311665612506237321

`A000265(A001470(n)+A000246(n))`
-/

namespace A294638.P12311665612506237321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001470 n + A000246 n).toNat

end

end A294638.P12311665612506237321

/-! ## A294638.P14326441874605491054

`A000265(A247006(n)+A001470(n))`
-/

namespace A294638.P14326441874605491054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A247006 n + A001470 n).toNat

end

end A294638.P14326441874605491054

/-! ## A294638.P5582758998035032156

`A008619(A000166(n))+C(n, 3)`
-/

namespace A294638.P5582758998035032156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000166 n).toNat + (Nat.choose n 3 : ℤ)

end

end A294638.P5582758998035032156

/-! ## A294638.P7321061109951282601

`A008619(A000166(n)+∑[∑[(n-2)*2%(n+1)]])`
-/

namespace A294638.P7321061109951282601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((2 % (n + 1) : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000166 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A294638.P7321061109951282601

/-!
# A294639: a(n) = least prime p such that n divides p + prime(n).

The programs for A294639, there is no canonical definition to state claims against.
-/

/-! ## A294639.P16689390617363074293

`A000040(A379014(n+1))`
-/

namespace A294639.P16689390617363074293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A379014 (n + 1)).toNat

end

end A294639.P16689390617363074293

/-! ## A294639.P7183682798798805577

`A008578(A379014(n+1)+1)`
-/

namespace A294639.P7183682798798805577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A379014 (n + 1) + 1).toNat

end

end A294639.P7183682798798805577

/-!
# A294640: G.f. A(x) = Sum_{n>=0} x^n/a(n) satisfies: A(x) = A(x^2) + Integral A(x^2) dx.

The programs for A294640, the canonical program `A294640.P17292815464110634610` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294640 has offset 0).

The definition of A294640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294640.P17292815464110634610

`a(A004526(n))*A093178(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A294640

/-- `a(A004526(n))*A093178(n)` -/
def P17292815464110634610.Spec : Prop :=
  ∀ n, P17292815464110634610.a n = A294640 n

theorem P17292815464110634610.correct : P17292815464110634610.Spec := by
  intro n
  simp only [A294640]

end A294640

/-! ## A294640.P4265334026366653837

`a(A029578(n))*A093178(n)` with `a(0)=1`
-/

namespace A294640.P4265334026366653837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A029578 n).toNat * A093178 n

end

end A294640.P4265334026366653837

namespace A294640

/-- `a(A029578(n))*A093178(n)` -/
def P4265334026366653837.Spec : Prop :=
  ∀ n, P4265334026366653837.a n = A294640 n

end A294640

/-! ## A294640.P6799591707206521786

`a(A030109(A030101(n)))*A000265(n)` with `a(0)=1`
-/

namespace A294640.P6799591707206521786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A030109 (A030101 n).toNat).toNat * A000265 n

end

end A294640.P6799591707206521786

namespace A294640

/-- `a(A030109(A030101(n)))*A000265(n)` -/
def P6799591707206521786.Spec : Prop :=
  ∀ n, P6799591707206521786.a n = A294640 n

end A294640

/-! ## A294640.P4397449385256618973

`a(A129760(n))*A030101(A030101(n))` with `a(0)=1`
-/

namespace A294640.P4397449385256618973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A129760 n).toNat * A030101 (A030101 n).toNat

end

end A294640.P4397449385256618973

namespace A294640

/-- `a(A129760(n))*A030101(A030101(n))` -/
def P4397449385256618973.Spec : Prop :=
  ∀ n, P4397449385256618973.a n = A294640 n

end A294640

/-! ## A294640.P8490878250419049768

`a(A029578(n))*A000265(A124625(n)+1)` with `a(0)=1`
-/

namespace A294640.P8490878250419049768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A029578 n).toNat * A000265 (A124625 n + 1).toNat

end

end A294640.P8490878250419049768

namespace A294640

/-- `a(A029578(n))*A000265(A124625(n)+1)` -/
def P8490878250419049768.Spec : Prop :=
  ∀ n, P8490878250419049768.a n = A294640 n

end A294640

/-!
# A294641: Unique terms in sequence A294640, in order by size.

The programs for A294641, there is no canonical definition to state claims against.
-/

/-! ## A294641.P215806429773790889

`eq[A035050(A124788(3*n)), A392369(n)]`
-/

namespace A294641.P215806429773790889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035050 (A124788 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392369 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294641.P215806429773790889

/-! ## A294641.P12084935518112368318

`eq[1, and(n, A090545(n+1))]`
-/

namespace A294641.P12084935518112368318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A090545 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294641.P12084935518112368318

/-! ## A294641.P1326261950872218348

`∑[∑{d}[A081655(n)+A000961(n+1), #%2]]`
-/

namespace A294641.P1326261950872218348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081655 n + A000961 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294641.P1326261950872218348

/-!
# A294642: a(n) = n! * [x^n] exp(n*x)*BesselI(1,2*sqrt(2)*x)/(sqrt(2)*x).

The programs for A294642, there is no canonical definition to state claims against.
-/

/-! ## A294642.P18102899730883746612

`A005843(A292627(∑[4*n]))-A084064(n)`
-/

namespace A294642.P18102899730883746612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A292627 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A084064 n

end

end A294642.P18102899730883746612

/-! ## A294642.P1362537268811575378

`A172275(A090354(n)+((A306046(n)+1)/2)%A306067(2*n+3))`
-/

namespace A294642.P1362537268811575378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172275 (A090354 n + Int.tmod (SequenceMachineLib.roundAway ((A306046 n + 1 : ℚ) / 2)) (A306067 (2 * n + 3))).toNat

end

end A294642.P1362537268811575378

/-!
# A294643: Length (= size) of the orbit of n under the "3x+1" map A006370: x -> x/2 if even, 3x+1 if odd. a(n) = -1 in case the orbit would be infinite.

The programs for A294643, there is no canonical definition to state claims against.
-/

/-! ## A294643.P11318539553978151378

`A006577(A004277(n))+C(2, n)`
-/

namespace A294643.P11318539553978151378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A004277 n).toNat + (Nat.choose 2 n : ℤ)

end

end A294643.P11318539553978151378

/-! ## A294643.P6043895555752471185

`A139399(A022144(n))+C(2, n)`
-/

namespace A294643.P6043895555752471185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A022144 n).toNat + (Nat.choose 2 n : ℤ)

end

end A294643.P6043895555752471185

/-! ## A294643.P13119830254588540486

`A006577(A028310(2*n))+C(2, n)`
-/

namespace A294643.P13119830254588540486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A028310 (2 * n)).toNat + (Nat.choose 2 n : ℤ)

end

end A294643.P13119830254588540486

/-! ## A294643.P7412360032832074001

`A006577(A028310(n)+n)+C(2, n)`
-/

namespace A294643.P7412360032832074001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A028310 n + (n : ℤ)).toNat + (Nat.choose 2 n : ℤ)

end

end A294643.P7412360032832074001

/-! ## A294643.P6115722351758484306

`A006577(comp[A272727(n+2)])+C(2, n)`
-/

namespace A294643.P6115722351758484306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272727 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + (Nat.choose 2 n : ℤ)

end

end A294643.P6115722351758484306

/-! ## A294643.P8922267407225488794

`A130713(n)+A006577(A004277(n))`
-/

namespace A294643.P8922267407225488794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n + A006577 (A004277 n).toNat

end

end A294643.P8922267407225488794

/-! ## A294643.P9007507324921432927

`A139399(A028310(n))+A122553(n)`
-/

namespace A294643.P9007507324921432927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A028310 n).toNat + A122553 n

end

end A294643.P9007507324921432927

/-! ## A294643.P3240906806206093820

`A139399(A022144(n))+A130713(n)`
-/

namespace A294643.P3240906806206093820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A022144 n).toNat + A130713 n

end

end A294643.P3240906806206093820

/-! ## A294643.P1224646880817975865

`A139399(A028310(n))+3%(A000203(n+1)+1)`
-/

namespace A294643.P1224646880817975865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139399 (A028310 n).toNat + Int.tmod 3 (A000203 (n + 1) + 1)

end

end A294643.P1224646880817975865

/-! ## A294643.P8341229922108808244

`A335550(A020639(n+1))+A139399(A028310(n))`
-/

namespace A294643.P8341229922108808244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335550 (A020639 (n + 1)).toNat + A139399 (A028310 n).toNat

end

end A294643.P8341229922108808244

/-!
# A294645: a(n) = Sum_{d|n} d^(n+1).

The programs for A294645, there is no canonical definition to state claims against.
-/

/-! ## A294645.P4314678878100912120

`record[∑{d}[1-n, #^n]]`
-/

namespace A294645.P4314678878100912120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294645.P4314678878100912120

/-! ## A294645.P3336524900328723133

`∑{d}[n+1, #^(n+2)]`
-/

namespace A294645.P3336524900328723133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ (n + 2)

end

end A294645.P3336524900328723133

/-! ## A294645.P3647274625790540935

`A308504(∑[n+2])`
-/

namespace A294645.P3647274625790540935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A294645.P3647274625790540935

/-! ## A294645.P13620787638242089653

`record[gcd(A008290(n), A308504(n+1))]`
-/

namespace A294645.P13620787638242089653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A308504 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294645.P13620787638242089653

/-! ## A294645.P12909900918001754018

`A109974((n+1)²+(n+2)²)`
-/

namespace A294645.P12909900918001754018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A294645.P12909900918001754018

/-!
# A294646: a(n) = (1/2)^(2*n) mod (2*n+1).

The programs for A294646, there is no canonical definition to state claims against.
-/

/-! ## A294646.P8410592843128316063

`A200146(A005893(n+1))`
-/

namespace A294646.P8410592843128316063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200146 (A005893 (n + 1)).toNat

end

end A294646.P8410592843128316063

/-! ## A294646.P9452047584075536811

`A200146(A058331(n+1))`
-/

namespace A294646.P9452047584075536811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200146 (A058331 (n + 1)).toNat

end

end A294646.P9452047584075536811

/-! ## A294646.P15909839592474626672

`A200146(A271624(n+2))`
-/

namespace A294646.P15909839592474626672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200146 (A271624 (n + 2)).toNat

end

end A294646.P15909839592474626672

/-! ## A294646.P11999063892546478015

`A200146(A394499(n+2))`
-/

namespace A294646.P11999063892546478015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200146 (A394499 (n + 2)).toNat

end

end A294646.P11999063892546478015

/-! ## A294646.P14228401453267440386

`A276978(n+1)%(1-2*(n+2))`
-/

namespace A294646.P14228401453267440386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276978 (n + 1)) (1 - (2 * (n + 2) : ℤ))

end

end A294646.P14228401453267440386

/-! ## A294646.P14274437530033675191

`(A008619(n)^(n+1))%A144396(n+1)`
-/

namespace A294646.P14274437530033675191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 n ^ (n + 1)) (A144396 (n + 1))

end

end A294646.P14274437530033675191

/-! ## A294646.P2011933230930072370

`(A123108(n+2)^(n+1))%A004273(n+2)`
-/

namespace A294646.P2011933230930072370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123108 (n + 2) ^ (n + 1)) (A004273 (n + 2))

end

end A294646.P2011933230930072370

/-! ## A294646.P6353427251900623619

`(A008619(n)^(1-A000007(n)+n))%(2*n+3)`
-/

namespace A294646.P6353427251900623619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (1 - A000007 n + (n : ℤ) : ℤ))) (2 * n + 3 : ℤ)

end

end A294646.P6353427251900623619

/-!
# A294647: Differential variant of the Kolakoski sequence, with initial terms 1, 1.

The programs for A294647, there is no canonical definition to state claims against.
-/

/-! ## A294647.P6097486765769395574

`A000002(A138792(n+2)+A010060(n+5))`
-/

namespace A294647.P6097486765769395574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A138792 (n + 2) + A010060 (n + 5)).toNat

end

end A294647.P6097486765769395574

/-! ## A294647.P6805347359169283335

`A000034(A228272(n+1)+A037409(n+2))`
-/

namespace A294647.P6805347359169283335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A228272 (n + 1) + A037409 (n + 2)).toNat

end

end A294647.P6805347359169283335

/-! ## A294647.P7824966661702478022

`A000002(or(A059481(2*n+1), A085707(n)))`
-/

namespace A294647.P7824966661702478022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Int.lor (A059481 (2 * n + 1)) (A085707 n)).toNat

end

end A294647.P7824966661702478022

/-! ## A294647.P11580753288612408360

`A001285(A000292(∑[A080940(n+1)]))`
-/

namespace A294647.P11580753288612408360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A000292 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A294647.P11580753288612408360

/-! ## A294647.P11869855159532573499

`A270644(A046020(n+1)-A270642(3*n+2))`
-/

namespace A294647.P11869855159532573499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270644 (A046020 (n + 1) - A270642 (3 * n + 2)).toNat

end

end A294647.P11869855159532573499

/-!
# A294648: Irregular triangle read by rows, representing a family of sequences L(n), for n=1, 2, 3, ... The sequence L(n) (i.e., the n-th row) is the ordinance of vectors of the n-dimensional Boolean cube (hypercube) {0,1}^n in accordance with their (Hamming) weights, where the lexicographic order is chosen as a second criterion for an ordinance the vectors of equal weights.

The programs for A294648, there is no canonical definition to state claims against.
-/

/-! ## A294648.P17093212460053253244

`A053645(A187769(n+2))`
-/

namespace A294648.P17093212460053253244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A187769 (n + 2)).toNat

end

end A294648.P17093212460053253244

/-! ## A294648.P1208088308095301625

`A187769(n+2)-A053644(n+2)`
-/

namespace A294648.P1208088308095301625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187769 (n + 2) - A053644 (n + 2)

end

end A294648.P1208088308095301625

/-! ## A294648.P11352236546041493951

`A187769(n+2)%A053644(n+1)`
-/

namespace A294648.P11352236546041493951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187769 (n + 2)) (A053644 (n + 1))

end

end A294648.P11352236546041493951

/-! ## A294648.P16030104868899039286

`A187769(n+2)-A065291(A154445(2*(n+2)))`
-/

namespace A294648.P16030104868899039286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187769 (n + 2) - A065291 (A154445 (2 * (n + 2))).toNat

end

end A294648.P16030104868899039286

/-! ## A294648.P17216026109352478039

`A187769(n+2)-A065291(A154448(2*(n+2)))`
-/

namespace A294648.P17216026109352478039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187769 (n + 2) - A065291 (A154448 (2 * (n + 2))).toNat

end

end A294648.P17216026109352478039

/-!
# A294649: a(n) = numerator(A206369(n))/n.

The programs for A294649, the canonical program `A294649.P10310509611923292318` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294649 has offset 1).

The definition of A294649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294649.P10310509611923292318

`lcm(n+1, A206369(n+1))/(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A294649

/-- `lcm(n+1, A206369(n+1))/(n+1)` -/
def P10310509611923292318.Spec : Prop :=
  ∀ n, P10310509611923292318.a n = (A294649 (n + 1) : ℚ)

end A294649

/-! ## A294649.P3467999022699584094

`A206369(n+1)/(n+1)*A294650(n+1)`
-/

namespace A294649.P3467999022699584094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206369 (n + 1) : ℚ) / (n + 1 : ℚ) * (A294650 (n + 1) : ℚ)

end

end A294649.P3467999022699584094

namespace A294649

/-- `A206369(n+1)/(n+1)*A294650(n+1)` -/
def P3467999022699584094.Spec : Prop :=
  ∀ n, P3467999022699584094.a n = (A294649 (n + 1) : ℚ)

end A294649

/-! ## A294649.P14478170820586554068

`A206369(n+1)/gcd(n+1, A061020(n+1))`
-/

namespace A294649.P14478170820586554068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206369 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A061020 (n + 1)) : ℚ)

end

end A294649.P14478170820586554068

namespace A294649

/-- `A206369(n+1)/gcd(n+1, A061020(n+1))` -/
def P14478170820586554068.Spec : Prop :=
  ∀ n, P14478170820586554068.a n = (A294649 (n + 1) : ℚ)

end A294649

/-! ## A294649.P13399074077480315023

`A206369(n+1)/gcd(A131738(n), A206369(n+1))`
-/

namespace A294649.P13399074077480315023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206369 (n + 1) : ℚ) / (Int.gcd (A131738 n) (A206369 (n + 1)) : ℚ)

end

end A294649.P13399074077480315023

namespace A294649

/-- `A206369(n+1)/gcd(A131738(n), A206369(n+1))` -/
def P13399074077480315023.Spec : Prop :=
  ∀ n, P13399074077480315023.a n = (A294649 (n + 1) : ℚ)

end A294649

/-! ## A294649.P10871651797209265825

`A345061(n+1)/A246588(A110791(n+1))`
-/

namespace A294649.P10871651797209265825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345061 (n + 1) : ℚ) / (A246588 (A110791 (n + 1)).toNat : ℚ)

end

end A294649.P10871651797209265825

namespace A294649

/-- `A345061(n+1)/A246588(A110791(n+1))` -/
def P10871651797209265825.Spec : Prop :=
  ∀ n, P10871651797209265825.a n = (A294649 (n + 1) : ℚ)

end A294649

/-!
# A294650: a(n) = denominator(A206369(n))/n.

The programs for A294650, the canonical program `A294650.P3716849885476430440` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A294650 has offset 1).

The definition of A294650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A294650.P3716849885476430440

`(n+1)/gcd(A061020(n+1), n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A294650

/-- `(n+1)/gcd(A061020(n+1), n+1)` -/
def P3716849885476430440.Spec : Prop :=
  ∀ n, P3716849885476430440.a n = (A294650 (n + 1) : ℚ)

end A294650

/-! ## A294650.P14123109856928252624

`(n+1)/gcd(A131738(n), A206369(n+1))`
-/

namespace A294650.P14123109856928252624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A131738 n) (A206369 (n + 1)) : ℚ)

end

end A294650.P14123109856928252624

namespace A294650

/-- `(n+1)/gcd(A131738(n), A206369(n+1))` -/
def P14123109856928252624.Spec : Prop :=
  ∀ n, P14123109856928252624.a n = (A294650 (n + 1) : ℚ)

end A294650

/-! ## A294650.P5926131455994051117

`(n+1)/A206369(n+1)*A294649(n+1)`
-/

namespace A294650.P5926131455994051117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A206369 (n + 1) : ℚ) * (A294649 (n + 1) : ℚ)

end

end A294650.P5926131455994051117

namespace A294650

/-- `(n+1)/A206369(n+1)*A294649(n+1)` -/
def P5926131455994051117.Spec : Prop :=
  ∀ n, P5926131455994051117.a n = (A294650 (n + 1) : ℚ)

end A294650

/-! ## A294650.P6059634450151621632

`A000027(n+1)/gcd(A000027(n+1), A344439(n+1))`
-/

namespace A294650.P6059634450151621632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A344439 (n + 1)) : ℚ)

end

end A294650.P6059634450151621632

namespace A294650

/-- `A000027(n+1)/gcd(A000027(n+1), A344439(n+1))` -/
def P6059634450151621632.Spec : Prop :=
  ∀ n, P6059634450151621632.a n = (A294650 (n + 1) : ℚ)

end A294650

/-! ## A294650.P8002016452285286631

`A054531(A206369(n+1)+∑[n])`
-/

namespace A294650.P8002016452285286631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A206369 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A294650.P8002016452285286631

namespace A294650

/-- `A054531(A206369(n+1)+∑[n])` -/
def P8002016452285286631.Spec : Prop :=
  ∀ n, P8002016452285286631.a n = A294650 (n + 1)

end A294650

/-! ## A294650.P13972300618829402080

`A277227(A206369(n+1)+A000124(n))`
-/

namespace A294650.P13972300618829402080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A206369 (n + 1) + A000124 n).toNat

end

end A294650.P13972300618829402080

namespace A294650

/-- `A277227(A206369(n+1)+A000124(n))` -/
def P13972300618829402080.Spec : Prop :=
  ∀ n, P13972300618829402080.a n = A294650 (n + 1)

end A294650

/-!
# A294652: Positive integers k such that the sum of decimal digits of (4^k - 1) equals 3*k.

The programs for A294652, there is no canonical definition to state claims against.
-/

/-! ## A294652.P462153791396338856

`eq[A001370(2*n), A008486(n)+1]`
-/

namespace A294652.P462153791396338856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294652.P462153791396338856

/-! ## A294652.P12236564622079331099

`eq[A001370(2*n), A133223(2*n+1)]`
-/

namespace A294652.P12236564622079331099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001370 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294652.P12236564622079331099

/-! ## A294652.P4863567011100411912

`eq[A052938(A008458(n)), A065713(n)]`
-/

namespace A294652.P4863567011100411912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065713 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294652.P4863567011100411912

/-! ## A294652.P1662255946548885107

`eq[A008615(A065713(n)), A065033(n)]`
-/

namespace A294652.P1662255946548885107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A065713 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294652.P1662255946548885107

/-! ## A294652.P16868927943753907814

`eq[A103517(n), A133310(A065713(n))]`
-/

namespace A294652.P16868927943753907814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (A065713 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294652.P16868927943753907814

/-!
# A294653: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1-j^(k*j)*x^j) in powers of x.

The programs for A294653, there is no canonical definition to state claims against.
-/

/-! ## A294653.P12803511828797158935

`A283675(n)-A185036(A295260(n+1))`
-/

namespace A294653.P12803511828797158935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 n - A185036 (A295260 (n + 1)).toNat

end

end A294653.P12803511828797158935

/-!
# A294654: Expansion of Product_{k>=1} 1/((1 - x^(2*k-1))^(k*(5*k-3)/2)*(1 - x^(2*k))^(k*(5*k+3)/2)).

The programs for A294654, there is no canonical definition to state claims against.
-/

/-! ## A294654.P9891966815559313302

`A140487(A134955(n))-2`
-/

namespace A294654.P9891966815559313302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140487 (A134955 n).toNat - 2

end

end A294654.P9891966815559313302

/-! ## A294654.P16300066668656707407

`A005229(A074141(n)^A152157(n))`
-/

namespace A294654.P16300066668656707407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (SequenceMachineLib.roundAway ((A074141 n : ℚ) ^ (A152157 n : ℤ))).toNat

end

end A294654.P16300066668656707407

/-! ## A294654.P6344318519166215111

`A005229(A074141(n)^A219347(n))`
-/

namespace A294654.P6344318519166215111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005229 (SequenceMachineLib.roundAway ((A074141 n : ℚ) ^ (A219347 n : ℤ))).toNat

end

end A294654.P6344318519166215111

/-!
# A294655: Expansion of Product_{k>=1} 1/((1 - x^(2*k-1))^(k*(3*k-2))*(1 - x^(2*k))^(k*(3*k+2))).

The programs for A294655, there is no canonical definition to state claims against.
-/

/-! ## A294655.P5031054107553986824

`A093893(2^n)-∑[2*n]%comp[∑[n]]`
-/

namespace A294655.P5031054107553986824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093893 (2 ^ n) - (((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ)

end

end A294655.P5031054107553986824

/-! ## A294655.P4790493872472648223

`A237883(A075900(n))`
-/

namespace A294655.P4790493872472648223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237883 (A075900 n).toNat

end

end A294655.P4790493872472648223

/-!
# A294656: Size of the orbit of n under iteration of the map A125256: x -> smallest odd prime divisor of n^2+1.

The programs for A294656, there is no canonical definition to state claims against.
-/

/-! ## A294656.P15878831772479515083

`A294658(n+2)+2`
-/

namespace A294656.P15878831772479515083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294658 (n + 2) + 2

end

end A294656.P15878831772479515083

/-!
# A294658: Number of steps required to reach either 5 or 13, starting with n, when iterating the map A125256: x -> smallest odd prime divisor of n^2+1; or a(n) = -1 in case 5 is never reached.

The programs for A294658, there is no canonical definition to state claims against.
-/

/-! ## A294658.P12349165627945141853

`A294656(n+2)-2`
-/

namespace A294658.P12349165627945141853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294656 (n + 2) - 2

end

end A294658.P12349165627945141853

/-! ## A294658.P7512725379327024679

`(A294656(n+2)+A008585(n))%A016789(n)`
-/

namespace A294658.P7512725379327024679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294656 (n + 2) + A008585 n) (A016789 n)

end

end A294658.P7512725379327024679

/-! ## A294658.P14508285363648401562

`(A294656(n+2)+n)%A028310(n+2)`
-/

namespace A294658.P14508285363648401562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294656 (n + 2) + (n : ℤ)) (A028310 (n + 2))

end

end A294658.P14508285363648401562

/-! ## A294658.P2667610180993782741

`A299990(A001913(n+1))+A294656(n+2)`
-/

namespace A294658.P2667610180993782741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299990 (A001913 (n + 1)).toNat + A294656 (n + 2)

end

end A294658.P2667610180993782741

/-! ## A294658.P17111553906203961813

`A254078(n+2)%A294656(n+2)`
-/

namespace A294658.P17111553906203961813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A294656 (n + 2))

end

end A294658.P17111553906203961813

/-! ## A294658.P2086095368286208631

`A004197(A294656(n+2)+A034856(n+1))`
-/

namespace A294658.P2086095368286208631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A294656 (n + 2) + A034856 (n + 1)).toNat

end

end A294658.P2086095368286208631

/-!
# A294663: Cubes whose largest digit is 4.

The programs for A294663, there is no canonical definition to state claims against.
-/

/-! ## A294663.P17600469198051772631

`A294664(n+1)^3`
-/

namespace A294663.P17600469198051772631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294664 (n + 1) ^ 3

end

end A294663.P17600469198051772631

/-! ## A294663.P1825899256565350293

`A000578(A294664(n+1))`
-/

namespace A294663.P1825899256565350293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A294664 (n + 1)).toNat

end

end A294663.P1825899256565350293

/-! ## A294663.P670304224317991355

`A184628(A294664(n+1)+A217657(n))`
-/

namespace A294663.P670304224317991355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (A294664 (n + 1) + A217657 n).toNat

end

end A294663.P670304224317991355

/-! ## A294663.P1979529028184921894

`A184628(A294664(n+1)+A264668(n))`
-/

namespace A294663.P1979529028184921894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (A294664 (n + 1) + A264668 n).toNat

end

end A294663.P1979529028184921894

/-! ## A294663.P11288807038667094386

`A184628(A348811(n)+A294664(n+1))`
-/

namespace A294663.P11288807038667094386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (A348811 n + A294664 (n + 1)).toNat

end

end A294663.P11288807038667094386

/-!
# A294664: Numbers m such that the largest digit of m^3 is 4.

The programs for A294664, there is no canonical definition to state claims against.
-/

/-! ## A294664.P13645325659447491807

`root(A294663(n+1), 3)`
-/

namespace A294664.P13645325659447491807
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A294663 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A294664.P13645325659447491807

/-! ## A294664.P14781222859854449186

`A294663(n+1)^(A270922(∏{d}[n+1, (#%3)%2])/3)`
-/

namespace A294664.P14781222859854449186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A294663 (n + 1) : ℝ) ^ ((A270922 (∏ d ∈ Nat.divisors (f1 n), d % 3 % 2) : ℚ) / 3 : ℝ)

end

end A294664.P14781222859854449186

/-!
# A294665: Numbers m such that the largest digit of m^3 is 5.

The programs for A294665, there is no canonical definition to state claims against.
-/

/-! ## A294665.P15207644133766287838

`root(A295025(n+1), 3)`
-/

namespace A294665.P15207644133766287838
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A295025 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A294665.P15207644133766287838

/-! ## A294665.P5002246870909162972

`(A295025(n+1)%A295025(3*n+4))^(1/3)`
-/

namespace A294665.P5002246870909162972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A295025 (n + 1)) (A295025 (3 * n + 4)) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A294665.P5002246870909162972

/-! ## A294665.P2361045799711457533

`eq[5, A032553(n)%10]`
-/

namespace A294665.P2361045799711457533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294665.P2361045799711457533

/-! ## A294665.P1026352112509546304

`lt[A032553(n+1)%5, 1]+1`
-/

namespace A294665.P1026352112509546304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032553 (n + 1)) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A294665.P1026352112509546304

/-!
# A294667: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(3*k+1)/2).

The programs for A294667, there is no canonical definition to state claims against.
-/

/-! ## A294667.P2322865279831181280

`and(A001700(n), A198081(A259006(n+1)))`
-/

namespace A294667.P2322865279831181280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001700 n) (A198081 (A259006 (n + 1)).toNat)

end

end A294667.P2322865279831181280

/-! ## A294667.P1094209358878569168

`and(A001700(n), A005117(A041674(2*n)))`
-/

namespace A294667.P1094209358878569168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001700 n) (A005117 (A041674 (2 * n)).toNat)

end

end A294667.P1094209358878569168

/-!
# A294671: Decimal expansion of the sum of sqrt(2) and sqrt(5) with no positional regrouping.

The programs for A294671, there is no canonical definition to state claims against.
-/

/-! ## A294671.P9406755686778034824

`A002193(n)+A002163(n)`
-/

namespace A294671.P9406755686778034824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1) + A002163 (n + 1)

end

end A294671.P9406755686778034824

/-! ## A294671.P16489776900975970831

`A134972(n)+A014176(n)`
-/

namespace A294671.P16489776900975970831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 (n + 1) + A014176 (n + 1)

end

end A294671.P16489776900975970831

/-! ## A294671.P13770308674213741836

`A098317(A028310(n))+A002193(n)`
-/

namespace A294671.P13770308674213741836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 ((A028310 n).toNat + 1) + A002193 (n + 1)

end

end A294671.P13770308674213741836

/-! ## A294671.P11038148484806305658

`A014176(A000038(n)+n)+A002163(n)`
-/

namespace A294671.P11038148484806305658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 ((A000038 n + (n : ℤ)).toNat + 1) + A002163 (n + 1)

end

end A294671.P11038148484806305658

/-! ## A294671.P8036371326693442546

`A134972(A000007(n)+n)+A002193(n)`
-/

namespace A294671.P8036371326693442546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 ((A000007 n + (n : ℤ)).toNat + 1) + A002193 (n + 1)

end

end A294671.P8036371326693442546

/-! ## A294671.P15680416650194952994

`A002163(n)+A014176(n)-A000007(n)`
-/

namespace A294671.P15680416650194952994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002163 (n + 1) + (A014176 (n + 1) - A000007 n)

end

end A294671.P15680416650194952994

/-! ## A294671.P9897991588718362064

`A134972(n)+A002193(n)+A000038(n)/2`
-/

namespace A294671.P9897991588718362064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134972 (n + 1) : ℚ) + ((A002193 (n + 1) : ℚ) + (A000038 n : ℚ) / 2)

end

end A294671.P9897991588718362064

/-! ## A294671.P14929996656748853651

`A134972(n)+A209229(2*n+1)+A002193(n)`
-/

namespace A294671.P14929996656748853651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 (n + 1) + (A209229 (2 * n + 1) + A002193 (n + 1))

end

end A294671.P14929996656748853651

/-!
# A294672: Number of disjoint covering systems of cardinality n, up to equivalence under shift.

The programs for A294672, there is no canonical definition to state claims against.
-/

/-! ## A294672.P756768244168176885

`A343222(A008988(n))+A049401(n)`
-/

namespace A294672.P756768244168176885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343222 (A008988 n).toNat + A049401 n

end

end A294672.P756768244168176885

/-! ## A294672.P12447715064360231233

`A024417(A148833(n))`
-/

namespace A294672.P12447715064360231233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148833 n).toNat

end

end A294672.P12447715064360231233

/-! ## A294672.P14295488831022177263

`A210357(A135310(n))`
-/

namespace A294672.P14295488831022177263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A135310 n).toNat

end

end A294672.P14295488831022177263

/-! ## A294672.P13819102113883102859

`A000006(A349088(n)+1)`
-/

namespace A294672.P13819102113883102859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A349088 n + 1).toNat

end

end A294672.P13819102113883102859

/-!
# A294673: Order of the "inside-out" permutation on 2n+1 letters.

The programs for A294673, there is no canonical definition to state claims against.
-/

/-! ## A294673.P4861903508964745292

`A003558(Δ[n²])`
-/

namespace A294673.P4861903508964745292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A294673.P4861903508964745292

/-! ## A294673.P4207820447454076931

`or(char[1], A003558(2*n+1))`
-/

namespace A294673.P4207820447454076931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A003558 (2 * n + 1))

end

end A294673.P4207820447454076931

/-! ## A294673.P6047501437567079806

`A377280(2*n+1)/(2*n+1)`
-/

namespace A294673.P6047501437567079806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377280 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A294673.P6047501437567079806

/-! ## A294673.P18183276310663651575

`A137605(A103517(n))+1`
-/

namespace A294673.P18183276310663651575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137605 (A103517 n).toNat + 1

end

end A294673.P18183276310663651575

/-! ## A294673.P6551507544983847334

`A000027(A003558(2*n+1))`
-/

namespace A294673.P6551507544983847334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A003558 (2 * n + 1)).toNat

end

end A294673.P6551507544983847334

/-! ## A294673.P11532058264066513706

`A014682(2*A003558(2*n+1))`
-/

namespace A294673.P11532058264066513706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A003558 (2 * n + 1)).toNat

end

end A294673.P11532058264066513706

/-! ## A294673.P16216867386698389423

`gcd(A000038(n), A003558(2*n+1))`
-/

namespace A294673.P16216867386698389423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A003558 (2 * n + 1))

end

end A294673.P16216867386698389423

/-! ## A294673.P5159253815536292290

`A003558(2*n+1)+char[A017513(n)]`
-/

namespace A294673.P5159253815536292290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017513 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294673.P5159253815536292290

/-! ## A294673.P12885566097032865708

`A003558(2*n+1)+A000007(n+1)`
-/

namespace A294673.P12885566097032865708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * n + 1) + A000007 (n + 1)

end

end A294673.P12885566097032865708

/-! ## A294673.P7852677997694511599

`A003558(2*n+1)+A000038(n+1)`
-/

namespace A294673.P7852677997694511599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * n + 1) + A000038 (n + 1)

end

end A294673.P7852677997694511599

/-! ## A294673.P9375760538176828305

`A137605(2*(n+1))+A060576(n+1)`
-/

namespace A294673.P9375760538176828305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137605 (2 * (n + 1)) + A060576 (n + 1)

end

end A294673.P9375760538176828305

/-! ## A294673.P5170012872818873728

`A003558(2*n+1)+A000035(2*n)`
-/

namespace A294673.P5170012872818873728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * n + 1) + A000035 (2 * n)

end

end A294673.P5170012872818873728

/-! ## A294673.P14562736180494933144

`A156659(2*n)+A003558(2*n+1)`
-/

namespace A294673.P14562736180494933144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 (2 * n) + A003558 (2 * n + 1)

end

end A294673.P14562736180494933144

/-! ## A294673.P16901015208260384634

`A000034(2*n)*A003558(2*n+1)`
-/

namespace A294673.P16901015208260384634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A003558 (2 * n + 1)

end

end A294673.P16901015208260384634

/-! ## A294673.P15673859068289219823

`A003558(2*n+1)+char[A001232(n+2)]`
-/

namespace A294673.P15673859068289219823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001232 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294673.P15673859068289219823

/-! ## A294673.P763778911932276493

`A003558(2*n+1)+char[A251983(n+2)]`
-/

namespace A294673.P763778911932276493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251983 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294673.P763778911932276493

/-! ## A294673.P17368175841241205858

`A003558(2*n+1)+char[A257486(n+2)]`
-/

namespace A294673.P17368175841241205858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257486 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A294673.P17368175841241205858

/-! ## A294673.P17578856285034499564

`A072451(2*(n+1))/A135303(2*n+1)`
-/

namespace A294673.P17578856285034499564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072451 (2 * (n + 1)) : ℚ) / (A135303 (2 * n + 1) : ℚ)

end

end A294673.P17578856285034499564

/-! ## A294673.P5037353601686751783

`A137605(2*(n+1))+1-A255308(2*n+1)`
-/

namespace A294673.P5037353601686751783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137605 (2 * (n + 1)) + (1 - A255308 (2 * n + 1))

end

end A294673.P5037353601686751783

/-! ## A294673.P5362899121060035917

`A003558(A005408(n))-A000038(A003558(n))²`
-/

namespace A294673.P5362899121060035917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A005408 n).toNat - A000038 (A003558 n).toNat ^ 2

end

end A294673.P5362899121060035917

/-!
# A294674: Numbers that are the product of any number of consecutive odd primes.

The programs for A294674, there is no canonical definition to state claims against.
-/

/-! ## A294674.P17598329846938138350

`record[A053590(or(1, n))]`
-/

namespace A294674.P17598329846938138350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294674.P17598329846938138350

/-! ## A294674.P18054953575601684309

`record[A053590(2*n+1)]`
-/

namespace A294674.P18054953575601684309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294674.P18054953575601684309

/-! ## A294674.P7909143775325081064

`filter[2*n+1, A192280(#)]`
-/

namespace A294674.P7909143775325081064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192280 (f1 j) = 1) n)

end

end A294674.P7909143775325081064

/-! ## A294674.P6265103473613644318

`record[A053590(n+1)+n%2]`
-/

namespace A294674.P6265103473613644318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (n + 1) + ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294674.P6265103473613644318

/-! ## A294674.P11331856893330494750

`∩[2*n+1, A073485(n+1)]`
-/

namespace A294674.P11331856893330494750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A294674.P11331856893330494750

/-! ## A294674.P11243694795473911331

`record[(n+1)/2^val(n+1, 2)*A192280(n+1)]`
-/

namespace A294674.P11243694795473911331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A192280 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294674.P11243694795473911331

/-! ## A294674.P14849325181925849447

`filter[A260442(n), A323239(#)]`
-/

namespace A294674.P14849325181925849447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A294674.P14849325181925849447

/-! ## A294674.P6432080312469024735

`filter[A260442(n), A359590(#)]`
-/

namespace A294674.P6432080312469024735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A294674.P6432080312469024735

/-! ## A294674.P17465633371323498856

`filter[A260442(n), A359592(#)]`
-/

namespace A294674.P17465633371323498856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A294674.P17465633371323498856

/-! ## A294674.P12209774655613206688

`record[A000265(A073485(n+1))]`
-/

namespace A294674.P12209774655613206688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A073485 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294674.P12209774655613206688

/-!
# A294675: Numbers that are the sum of 5 nonzero squares in exactly 1 way.

The programs for A294675, there is no canonical definition to state claims against.
-/

/-! ## A294675.P1326886909667260535

`eq[1, A025429(n)]`
-/

namespace A294675.P1326886909667260535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A294675.P1326886909667260535

/-! ## A294675.P17226879856084774616

`lt[A000032(A025429(n)²), 2]`
-/

namespace A294675.P17226879856084774616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A025429 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294675.P17226879856084774616

/-! ## A294675.P3115652534373704709

`lt[A036262(A025429(n)²), 2]`
-/

namespace A294675.P3115652534373704709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A025429 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A294675.P3115652534373704709

/-! ## A294675.P17097604627424895504

`lt[A000007(n), tan(A025429(n))]`
-/

namespace A294675.P17097604627424895504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A025429 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A294675.P17097604627424895504

/-!
# A294676: Ramsey-Comer numbers: a(n) is the smallest prime p congruent to 1 mod 2n such that for every prime q >= p (also congruent to 1 mod 2n), the multiplicative subgroup H of (Z/qZ)* of index n contains a solution to x+y = z.

The programs for A294676, there is no canonical definition to state claims against.
-/

/-! ## A294676.P3641932130164892134

`A302485(A256386(n+1))`
-/

namespace A294676.P3641932130164892134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302485 (A256386 (n + 1)).toNat

end

end A294676.P3641932130164892134

/-!
# A294679: Numbers k such that 9*10^k + 67 is prime.

The programs for A294679, there is no canonical definition to state claims against.
-/

/-! ## A294679.P3945788844847603498

`∑[A171561(A300068(n)!)]`
-/

namespace A294679.P3945788844847603498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171561 (Nat.factorial (A300068 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294679.P3945788844847603498

/-! ## A294679.P18441920087788753371

`lt[lcm(8, n)/8, dr(lcm(2, n))]`
-/

namespace A294679.P18441920087788753371
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 n : ℚ) / 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Nat.lcm 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A294679.P18441920087788753371

/-! ## A294679.P18354130710413242585

`lt[and(n^(n+2), n!), 2*n]`
-/

namespace A294679.P18354130710413242585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n ^ (n + 2)) (Nat.factorial n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A294679.P18354130710413242585

/-! ## A294679.P13589922335961282165

`record[∏{e}[A023431(n), #+1]]`
-/

namespace A294679.P13589922335961282165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023431 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294679.P13589922335961282165

/-! ## A294679.P10252668145508007864

`∪[2^n, record[A264969(3*n)]]`
-/

namespace A294679.P10252668145508007864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264969 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A294679.P10252668145508007864

/-!
# A294682: Numbers n such that A294386(n) = 2^(k-1)*(2^k - 2*n - 1) for some k such that 2^k - 2*n - 1 is prime.

The programs for A294682, there is no canonical definition to state claims against.
-/

/-! ## A294682.P10552328447484313038

`eq[A001222(A294386(n)), A096502(n)]`
-/

namespace A294682.P10552328447484313038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A294386 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A294682.P10552328447484313038

/-!
# A294683: Growth of the Lamplighter group: number of elements in the Lamplighter group L_2 = Z/2Z wr Z of length up to n with respect to the standard generating set {a,t}.

The programs for A294683, there is no canonical definition to state claims against.
-/

/-! ## A294683.P1485999316248167566

`∑[A288348(n)]`
-/

namespace A294683.P1485999316248167566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294683.P1485999316248167566

/-! ## A294683.P18250566884116196626

`A288348(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A294683.P18250566884116196626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288348 n + a (A023443 n).toNat

end

end A294683.P18250566884116196626

/-! ## A294683.P17025108764835507160

`A288348(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A294683.P17025108764835507160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288348 n + a (A028310 n - 1).toNat

end

end A294683.P17025108764835507160

/-! ## A294683.P9505424997767236524

`A288348(n)+a(A065033(2*n)-1)` with `a(0)=1`
-/

namespace A294683.P9505424997767236524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288348 n + a (A065033 (2 * n) - 1).toNat

end

end A294683.P9505424997767236524

/-! ## A294683.P4874971440714809737

`A288348(n)+a(A249674(n)-A248572(n))` with `a(0)=1`
-/

namespace A294683.P4874971440714809737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288348 n + a (A249674 n - A248572 n).toNat

end

end A294683.P4874971440714809737

/-!
# A294684: Triangle read by rows: T(n,k) is the number of non-isomorphic colorings of a toroidal n X k grid using exactly two colors under translational symmetry, 1 <= k <= n.

The programs for A294684, there is no canonical definition to state claims against.
-/

/-! ## A294684.P3143584131427207378

`A184271(A286146(n+1))-2`
-/

namespace A294684.P3143584131427207378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184271 (A286146 (n + 1)).toNat - 2

end

end A294684.P3143584131427207378

/-!
# A294686: Triangle read by rows: T(n,k) is the number of non-isomorphic colorings of a toroidal n X k grid using exactly four colors under translational symmetry, 1 <= k <= n.

The programs for A294686, there is no canonical definition to state claims against.
-/

/-! ## A294686.P16068106116531433780

`A056284(xor(A014377(n), A245300(n)))`
-/

namespace A294686.P16068106116531433780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056284 (Int.xor (A014377 n) (A245300 n)).toNat

end

end A294686.P16068106116531433780

/-! ## A294686.P17580845303810179884

`A056289(xor(A014377(n), A245300(n)))`
-/

namespace A294686.P17580845303810179884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056289 (Int.xor (A014377 n) (A245300 n)).toNat

end

end A294686.P17580845303810179884

/-!
# A294687: Triangle read by rows: T(n,k) is the number of non-isomorphic colorings of a toroidal n X k grid using exactly five colors under translational symmetry, 1 <= k <= n.

The programs for A294687, there is no canonical definition to state claims against.
-/

/-! ## A294687.P8683803096688523588

`A254040(∑{d}[n+1, #²]^floor(n/3))`
-/

namespace A294687.P8683803096688523588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254040 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d ^ 2 : ℕ) : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ))).toNat

end

end A294687.P8683803096688523588

/-! ## A294687.P11192860917894940653

`A056285(A242768(n^n+1))`
-/

namespace A294687.P11192860917894940653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056285 (A242768 (n ^ n + 1)).toNat

end

end A294687.P11192860917894940653

/-!
# A294688: Palindromes in Narayana's cows sequence (A000930).

The programs for A294688, there is no canonical definition to state claims against.
-/

/-! ## A294688.P13161914451761489530

`record[A047813(A000930(n))]`
-/

namespace A294688.P13161914451761489530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A000930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294688.P13161914451761489530

/-! ## A294688.P5323847658906757177

`record[A047813(A068921(n))]`
-/

namespace A294688.P5323847658906757177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A068921 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294688.P5323847658906757177

/-! ## A294688.P5145273156757297833

`record[A047813(A078012(n))]`
-/

namespace A294688.P5145273156757297833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A078012 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294688.P5145273156757297833

/-! ## A294688.P6521780327178231749

`record[A047813(A108104(n))]`
-/

namespace A294688.P6521780327178231749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A108104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A294688.P6521780327178231749

/-!
# A294692: Expansion of Product_{k>=1} 1 / (1 - x^k)^(k*(3*k + 2)).

The programs for A294692, there is no canonical definition to state claims against.
-/

/-! ## A294692.P10709299270568304687

`A255052(n)+A195310(A117158(n))`
-/

namespace A294692.P10709299270568304687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255052 n + A195310 (A117158 n).toNat

end

end A294692.P10709299270568304687

/-!
# A294693: Number of permutations of [n] avoiding {1243, 2314, 3412}.

The programs for A294693, there is no canonical definition to state claims against.
-/

/-! ## A294693.P10437012723454540170

`A294798(A004891(n+1))+char[7]`
-/

namespace A294693.P10437012723454540170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294798 (A004891 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A294693.P10437012723454540170

/-! ## A294693.P2615232772938724211

`A294798(A004902(n+1))+char[7]`
-/

namespace A294693.P2615232772938724211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294798 (A004902 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A294693.P2615232772938724211

/-! ## A294693.P4581779770505446364

`A294798(A004913(n+1))+char[7]`
-/

namespace A294693.P4581779770505446364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294798 (A004913 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A294693.P4581779770505446364

/-! ## A294693.P11675208501768635827

`A294798(n)+A185284(A104449(n))`
-/

namespace A294693.P11675208501768635827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294798 n + A185284 (A104449 n).toNat

end

end A294693.P11675208501768635827

/-!
# A294694: Number of permutations of [n] avoiding {3412, 4132, 1324}.

The programs for A294694, there is no canonical definition to state claims against.
-/

/-! ## A294694.P15329803478306415648

`∏{e}[A000420(n), A116740(#)]`
-/

namespace A294694.P15329803478306415648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A116740 (Nat.factorization (f1 n).natAbs p)

end

end A294694.P15329803478306415648

/-! ## A294694.P16953678394600259946

`A294762(n)+A018843(A311150(n))`
-/

namespace A294694.P16953678394600259946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294762 n + A018843 (A311150 n).toNat

end

end A294694.P16953678394600259946

/-! ## A294694.P14578637947271097821

`A294802(n)-A102679(A157051(n))²`
-/

namespace A294694.P14578637947271097821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294802 n - A102679 (A157051 n).toNat ^ 2

end

end A294694.P14578637947271097821

/-! ## A294694.P18019980388190944610

`A294801(n)-A256974(A025274(n+1))`
-/

namespace A294694.P18019980388190944610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294801 n - A256974 (A025274 (n + 1)).toNat

end

end A294694.P18019980388190944610

/-!
# A294695: Number of permutations of [n] avoiding {1243, 2431, 3412}.

The programs for A294695, there is no canonical definition to state claims against.
-/

/-! ## A294695.P9593400721655016529

`A294802(n)+A184955(2*n+1)`
-/

namespace A294695.P9593400721655016529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294802 n + A184955 (2 * n + 1)

end

end A294695.P9593400721655016529

/-! ## A294695.P14806437993358366981

`A294802(n)+A025444(A076875(n)+1)`
-/

namespace A294695.P14806437993358366981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294802 n + A025444 (A076875 n + 1).toNat

end

end A294695.P14806437993358366981

/-! ## A294695.P2438264812472945975

`xor(A184955(A081605(n+1)), A294802(n))`
-/

namespace A294695.P2438264812472945975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A184955 (A081605 (n + 1)).toNat) (A294802 n)

end

end A294695.P2438264812472945975

/-!
# A294696: Number of permutations of [n] avoiding {1423, 2341, 3124}.

The programs for A294696, there is no canonical definition to state claims against.
-/

/-! ## A294696.P13450889830814731802

`or(A165521(n), A245203(A003422(n)))`
-/

namespace A294696.P13450889830814731802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165521 n) (A245203 (A003422 n).toNat)

end

end A294696.P13450889830814731802

/-! ## A294696.P5401815850712529428

`or(A165521(n), A171874(A171880(n)))`
-/

namespace A294696.P5401815850712529428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165521 n) (A171874 (A171880 n).toNat)

end

end A294696.P5401815850712529428

/-! ## A294696.P3371998942878124457

`or(A165521(n), A171880(A171880(n)+1))`
-/

namespace A294696.P3371998942878124457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165521 n) (A171880 (A171880 n + 1).toNat)

end

end A294696.P3371998942878124457

/-!
# A294697: Number of permutations of [n] avoiding {1342, 2143, 3412}.

The programs for A294697, there is no canonical definition to state claims against.
-/

/-! ## A294697.P6363745156209362669

`A294696(A024646(n))+∑[A335514(n)]`
-/

namespace A294697.P6363745156209362669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294696 (A024646 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294697.P6363745156209362669

/-! ## A294697.P1476614941822770133

`A294696(A024647(n))+∑[A335514(n)]`
-/

namespace A294697.P1476614941822770133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294696 (A024647 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294697.P1476614941822770133

/-! ## A294697.P91752602936602831

`A294696(A024648(n))+∑[A335514(n)]`
-/

namespace A294697.P91752602936602831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294696 (A024648 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A294697.P91752602936602831

/-!
# A294698: Number of permutations of [n] avoiding {1423, 1234, 3412}.

The programs for A294698, there is no canonical definition to state claims against.
-/

/-! ## A294698.P13241522799069866471

`A294766(n)%p?[∑[(-2)^n]]`
-/

namespace A294698.P13241522799069866471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294766 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A294698.P13241522799069866471

/-! ## A294698.P2899808012779470155

`A115060(A294766(n))`
-/

namespace A294698.P2899808012779470155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A294766 n).toNat

end

end A294698.P2899808012779470155

/-! ## A294698.P5072749133691330764

`A294766(A004890(n+1))`
-/

namespace A294698.P5072749133691330764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294766 (A004890 (n + 1)).toNat

end

end A294698.P5072749133691330764

/-!
# A294699: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of Product_{j>=1} (1-j^(k*j)*x^j)^j(k*j) in powers of x.

The programs for A294699, there is no canonical definition to state claims against.
-/

/-! ## A294699.P12002600427212957680

`A119269(A294756(n))*A283675(n)`
-/

namespace A294699.P12002600427212957680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (A294756 n).toNat * A283675 n

end

end A294699.P12002600427212957680

/-! ## A294699.P17916944077868664660

`A119269(A294756(n))*A294583(n)`
-/

namespace A294699.P17916944077868664660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (A294756 n).toNat * A294583 n

end

end A294699.P17916944077868664660

/-! ## A294699.P13542687745372219682

`A119269(A294756(n))*A294653(n)`
-/

namespace A294699.P13542687745372219682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119269 (A294756 n).toNat * A294653 n

end

end A294699.P13542687745372219682

/-! ## A294699.P12439042020263551585

`A283675(n)*A294932(A147704(n))`
-/

namespace A294699.P12439042020263551585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283675 n * A294932 (A147704 n).toNat

end

end A294699.P12439042020263551585

/-! ## A294699.P5644929853728501390

`A054527(n+1)*A113401(A266183(n+1))`
-/

namespace A294699.P5644929853728501390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054527 (n + 1) * A113401 (A266183 (n + 1)).toNat

end

end A294699.P5644929853728501390

