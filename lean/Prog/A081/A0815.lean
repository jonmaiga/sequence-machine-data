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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A081500: In a triangle the n-th row begins with n and contains n-1 smallest numbers coprime to n and greater than n. Sequence gives the leading diagonal.

The programs for A081500, there is no canonical definition to state claims against.
-/

/-! ## A081500.P9943822713622961887

`a(floor(C(n, n²)/2))+A126356(n)+n` with `a(0)=1`
-/

namespace A081500.P9943822713622961887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(Nat.choose n (n ^ 2) : ℚ) / 2⌋.toNat + (A126356 n + (n : ℤ))

end

end A081500.P9943822713622961887

/-! ## A081500.P13390858098333967807

`ceil(sin(n)²)+A126356(A028310(n))+n`
-/

namespace A081500.P13390858098333967807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ + (A126356 (A028310 n).toNat + (n : ℤ))

end

end A081500.P13390858098333967807

/-! ## A081500.P4293394501304638241

`A126356(A028310(n))+A057427(n)+n`
-/

namespace A081500.P4293394501304638241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126356 (A028310 n).toNat + (A057427 n + (n : ℤ))

end

end A081500.P4293394501304638241

/-! ## A081500.P11431480567631828036

`A126356(A028310(n))+A178334(n)+n`
-/

namespace A081500.P11431480567631828036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126356 (A028310 n).toNat + (A178334 n + (n : ℤ))

end

end A081500.P11431480567631828036

/-! ## A081500.P17769363242253189332

`1-(A000007(n)-A126356(A028310(n)))+n`
-/

namespace A081500.P17769363242253189332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000007 n - A126356 (A028310 n).toNat) + (n : ℤ)

end

end A081500.P17769363242253189332

/-! ## A081500.P2475107313151310573

`A126356(A028310(n))%A315237(n)+1+n`
-/

namespace A081500.P2475107313151310573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126356 (A028310 n).toNat) (A315237 n) + 1 + (n : ℤ)

end

end A081500.P2475107313151310573

/-! ## A081500.P7703951202220439686

`A126356(A028310(n))+(n+1)%A000203(n+1)`
-/

namespace A081500.P7703951202220439686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126356 (A028310 n).toNat + Int.tmod (n + 1 : ℤ) (A000203 (n + 1))

end

end A081500.P7703951202220439686

/-! ## A081500.P5634258020826382132

`A000040(n+1)%2+A126356(A028310(n))+n`
-/

namespace A081500.P5634258020826382132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 + (A126356 (A028310 n).toNat + (n : ℤ))

end

end A081500.P5634258020826382132

/-! ## A081500.P11836135596630460865

`(A126356(A028310(n))+n)%∑[A000032(n+1)]+1`
-/

namespace A081500.P11836135596630460865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126356 (A028310 n).toNat + (n : ℤ)) (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A081500.P11836135596630460865

/-!
# A081501: a(n) = row sum of triangle whose n-th row begins with n and contains n-1 smallest numbers coprime to n and greater than n.

The programs for A081501, there is no canonical definition to state claims against.
-/

/-! ## A081501.P8710452144556977488

`A077666(n+1)-A069213(n+1)`
-/

namespace A081501.P8710452144556977488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077666 (n + 1) - A069213 (n + 1)

end

end A081501.P8710452144556977488

/-! ## A081501.P6029793636887691379

`A077666(n+1)+n+1-A077665(n+1)`
-/

namespace A081501.P6029793636887691379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077666 (n + 1) + ((n + 1 : ℤ) - A077665 (n + 1))

end

end A081501.P6029793636887691379

/-! ## A081501.P10265379013049626350

`n+2+A077666(n+1)-A077148(n+1)`
-/

namespace A081501.P10265379013049626350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + (A077666 (n + 1) - A077148 (n + 1))

end

end A081501.P10265379013049626350

/-! ## A081501.P3449131291093292648

`A077666(n+1)-A126571(∑[n+1])`
-/

namespace A081501.P3449131291093292648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077666 (n + 1) - A126571 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081501.P3449131291093292648

/-! ## A081501.P7163431495034716272

`A077666(n+1)-A077581(∑[n+1])`
-/

namespace A081501.P7163431495034716272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077666 (n + 1) - A077581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081501.P7163431495034716272

/-!
# A081502: Let n = 10x + y where 0 <= y <= 9, x >= 0. Then a(n) = 3x+y.

The programs for A081502, the canonical program `A081502.P9246117090769244022` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081502 has offset 0).

The definition of A081502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081502.P9246117090769244022

`n-7*floor(n/10)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081502

/-- `n-7*floor(n/10)` -/
def P9246117090769244022.Spec : Prop :=
  ∀ n, P9246117090769244022.a n = A081502 n

theorem P9246117090769244022.correct : P9246117090769244022.Spec := by
  intro n
  simp only [A081502]

end A081502

/-! ## A081502.P9708029596786793605

`(n-A076309(n))/3`
-/

namespace A081502.P9708029596786793605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A076309 n : ℚ) / 3

end

end A081502.P9708029596786793605

namespace A081502

/-- `(n-A076309(n))/3` -/
def P9708029596786793605.Spec : Prop :=
  ∀ n, P9708029596786793605.a n = (A081502 n : ℚ)

end A081502

/-! ## A081502.P9179615700718764763

`abs(A059995(n)-A081595(n))`
-/

namespace A081502.P9179615700718764763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A059995 n - A081595 n|

end

end A081502.P9179615700718764763

namespace A081502

/-- `abs(A059995(n)-A081595(n))` -/
def P9179615700718764763.Spec : Prop :=
  ∀ n, P9179615700718764763.a n = A081502 n

end A081502

/-! ## A081502.P2973871316559862715

`A004771(n)%comp[A008593(n)]`
-/

namespace A081502.P2973871316559862715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004771 n) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A081502.P2973871316559862715

namespace A081502

/-- `A004771(n)%comp[A008593(n)]` -/
def P2973871316559862715.Spec : Prop :=
  ∀ n, P2973871316559862715.a n = A081502 n

end A081502

/-! ## A081502.P3766786058016861000

`A006370(A076314(n)+(n%10+n)/2)`
-/

namespace A081502.P3766786058016861000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.roundAway ((A076314 n : ℚ) + ((n % 10 + n : ℕ) : ℚ) / 2)).toNat

end

end A081502.P3766786058016861000

namespace A081502

/-- `A006370(A076314(n)+(n%10+n)/2)` -/
def P3766786058016861000.Spec : Prop :=
  ∀ n, P3766786058016861000.a n = A081502 n

end A081502

/-! ## A081502.P2855924863401358696

`A175126(A081598(n)-A076313(n))`
-/

namespace A081502.P2855924863401358696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A081598 n - A076313 n).toNat

end

end A081502.P2855924863401358696

namespace A081502

/-- `A175126(A081598(n)-A076313(n))` -/
def P2855924863401358696.Spec : Prop :=
  ∀ n, P2855924863401358696.a n = A081502 n

end A081502

/-! ## A081502.P5414860171449209998

`A194518(3*(n+7))`
-/

namespace A081502.P5414860171449209998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194518 (3 * (n + 7))

end

end A081502.P5414860171449209998

namespace A081502

/-- `A194518(3*(n+7))` -/
def P5414860171449209998.Spec : Prop :=
  ∀ n, P5414860171449209998.a n = A081502 n

end A081502

/-! ## A081502.P1163723422004398446

`A076313(A008602(A076314(n))+n)`
-/

namespace A081502.P1163723422004398446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A008602 (A076314 n).toNat + (n : ℤ)).toNat

end

end A081502.P1163723422004398446

namespace A081502

/-- `A076313(A008602(A076314(n))+n)` -/
def P1163723422004398446.Spec : Prop :=
  ∀ n, P1163723422004398446.a n = A081502 n

end A081502

/-! ## A081502.P306236383318490107

`val(A051535(n), 2)`
-/

namespace A081502.P306236383318490107
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A051535 n).toNat 2

end

end A081502.P306236383318490107

namespace A081502

/-- `val(A051535(n), 2)` -/
def P306236383318490107.Spec : Prop :=
  ∀ n, (P306236383318490107.a n : ℤ) = A081502 n

end A081502

/-!
# A081503: Number of steps to reach a single digit when map in A081502 is iterated.

The programs for A081503, there is no canonical definition to state claims against.
-/

/-! ## A081503.P178119779709433044

`∑{e}[A261809(floor(n/log2(10))+1), #]`
-/

namespace A081503.P178119779709433044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261809 (⌊(n : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A081503.P178119779709433044

/-! ## A081503.P15709028495221585687

`floor((∑[or(1, n)]-n)/A132207(2*(n+1)))`
-/

namespace A081503.P15709028495221585687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℚ) / (A132207 (2 * (n + 1)) : ℚ)⌋

end

end A081503.P15709028495221585687

/-! ## A081503.P15864577550787113002

`A196563(3^A327440(n))`
-/

namespace A081503.P15864577550787113002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A327440 n : ℤ))).toNat

end

end A081503.P15864577550787113002

/-! ## A081503.P16480875804110874168

`∑[A011642(2*n+1)*A168201(n+1)]`
-/

namespace A081503.P16480875804110874168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011642 (2 * n + 1) * A168201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081503.P16480875804110874168

/-!
# A081504: Numbers n such that there are no primes of the form 2^n+2^i+1 for 0

The programs for A081504, there is no canonical definition to state claims against.
-/

/-! ## A081504.P11257209992904453901

`eq[0, A179760(n+1)]+1`
-/

namespace A081504.P11257209992904453901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179760 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A081504.P11257209992904453901

/-! ## A081504.P1810655597003830285

`eq[0, A133830(n+2)]+2`
-/

namespace A081504.P1810655597003830285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133830 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A081504.P1810655597003830285

/-! ## A081504.P2175965168373248532

`eq[0, A179760(A028310(n))]`
-/

namespace A081504.P2175965168373248532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179760 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081504.P2175965168373248532

/-! ## A081504.P4636749484068163428

`eq[0, A179760(A060000(n+1))]`
-/

namespace A081504.P4636749484068163428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179760 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A081504.P4636749484068163428

/-! ## A081504.P16158244094648967365

`eq[A000007(n), A095056(A060000(n+1))]`
-/

namespace A081504.P16158244094648967365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095056 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081504.P16158244094648967365

/-! ## A081504.P15913524514486043528

`eq[A000038(n), A095056(A060000(n+1))]`
-/

namespace A081504.P15913524514486043528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095056 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081504.P15913524514486043528

/-! ## A081504.P17097409160579675121

`∪[A001547(n), A092100(n+1)]`
-/

namespace A081504.P17097409160579675121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001547 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081504.P17097409160579675121

/-! ## A081504.P15969517049285780707

`∪[A016935(n), A092100(n+1)]`
-/

namespace A081504.P15969517049285780707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016935 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081504.P15969517049285780707

/-! ## A081504.P15474093858643905641

`∪[A017007(n), A092100(n+1)]`
-/

namespace A081504.P15474093858643905641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081504.P15474093858643905641

/-! ## A081504.P8559212789289590682

`∪[A017091(n), A092100(n+1)]`
-/

namespace A081504.P8559212789289590682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081504.P8559212789289590682

/-!
# A081506: Primes of the form 2^k + 3^k + 4^k.

The programs for A081506, there is no canonical definition to state claims against.
-/

/-! ## A081506.P14869414589434158709

`A074526(A081507(n+1))`
-/

namespace A081506.P14869414589434158709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074526 (A081507 (n + 1)).toNat

end

end A081506.P14869414589434158709

/-!
# A081507: Numbers k for which 2^k + 3^k + 4^k is prime.

The programs for A081507, there is no canonical definition to state claims against.
-/

/-! ## A081507.P6475113616856107845

`2*eq[A311742(n), A311754(n)]`
-/

namespace A081507.P6475113616856107845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311742 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081507.P6475113616856107845

/-! ## A081507.P4143200536434555046

`record[and(A056525(n+1), A178924(n))]`
-/

namespace A081507.P4143200536434555046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056525 (n + 1)) (A178924 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081507.P4143200536434555046

/-! ## A081507.P12724245831132135736

`A160716(A160672(n))*A160719(n)`
-/

namespace A081507.P12724245831132135736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160716 (A160672 n).toNat * A160719 n

end

end A081507.P12724245831132135736

/-!
# A081508: 

The programs for A081508, there is no canonical definition to state claims against.
-/

/-! ## A081508.P13764281270814403408

`A074507(A076515(n+1))`
-/

namespace A081508.P13764281270814403408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074507 (A076515 (n + 1)).toNat

end

end A081508.P13764281270814403408

/-!
# A081510: Numbers k such that 1 + 2^k + 4^k + 6^k is prime.

The programs for A081510, there is no canonical definition to state claims against.
-/

/-! ## A081510.P2599964434086509339

`A141226(A049978(n+1))`
-/

namespace A081510.P2599964434086509339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141226 (A049978 (n + 1)).toNat

end

end A081510.P2599964434086509339

/-!
# A081512: a(n) = smallest number which can be expressed as the sum of n of its distinct divisors, or 0 if no such number exists.

The programs for A081512, there is no canonical definition to state claims against.
-/

/-! ## A081512.P3199580483043032058

`A081513(n+1)*A324818(A141769(n+1))`
-/

namespace A081512.P3199580483043032058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081513 (n + 1) * A324818 (A141769 (n + 1)).toNat

end

end A081512.P3199580483043032058

/-! ## A081512.P10909467150722674702

`A081514(∑[n+1])*A324818(A141769(n+1))`
-/

namespace A081512.P10909467150722674702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081514 (∑ j ∈ Finset.range (n + 1), f1 j) * A324818 (A141769 (n + 1)).toNat

end

end A081512.P10909467150722674702

/-!
# A081513: a(2)=0; for n != 2, let m = A081512(n), then a(n) = value of d_n in the lexicographically earliest set of n distinct divisors d_1, ..., d_n of m with d_1 + ... + d_n = m.

The programs for A081513, there is no canonical definition to state claims against.
-/

/-! ## A081513.P10148577648144681364

`A081514(∑[n+1])`
-/

namespace A081513.P10148577648144681364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081514 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081513.P10148577648144681364

/-! ## A081513.P1472927701202407974

`A081514(A000217(n+1))+A000007(n+1)`
-/

namespace A081513.P1472927701202407974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081514 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A081513.P1472927701202407974

/-! ## A081513.P6176274783824727374

`A081514(A000217(n+1))+round(A240465(n)/5)`
-/

namespace A081513.P6176274783824727374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081514 (A000217 (n + 1)).toNat + SequenceMachineLib.roundAway ((A240465 n : ℚ) / 5)

end

end A081513.P6176274783824727374

/-! ## A081513.P229768122890605610

`A081514(A000217(n+1))+round(A159782(2*n+1)/5)`
-/

namespace A081513.P229768122890605610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081514 (A000217 (n + 1)).toNat + SequenceMachineLib.roundAway ((A159782 (2 * n + 1) : ℚ) / 5)

end

end A081513.P229768122890605610

/-! ## A081513.P6334855119241759060

`A081514(A000217(n+1))+A010051(A013929(n+1))`
-/

namespace A081513.P6334855119241759060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081514 (A000217 (n + 1)).toNat + A010051 (A013929 (n + 1)).toNat

end

end A081513.P6334855119241759060

/-! ## A081513.P1126868183962939231

`A216579(A270037(n+3))+A081514(A000217(n+1))`
-/

namespace A081513.P1126868183962939231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216579 (A270037 (n + 3)).toNat + A081514 (A000217 (n + 1)).toNat

end

end A081513.P1126868183962939231

/-! ## A081513.P17966776771667465277

`A081514(A000217(n+1))-A083915(A270037(n+6))`
-/

namespace A081513.P17966776771667465277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081514 (A000217 (n + 1)).toNat - A083915 (A270037 (n + 6)).toNat

end

end A081513.P17966776771667465277

/-! ## A081513.P8390975611363265179

`A081514(A000217(n+1))%A068374(n+1)`
-/

namespace A081513.P8390975611363265179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081514 (A000217 (n + 1)).toNat) (A068374 (n + 1))

end

end A081513.P8390975611363265179

/-! ## A081513.P1827250809984422261

`A216579(A130321(n))+A081514(A000217(n+1))`
-/

namespace A081513.P1827250809984422261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216579 (A130321 n).toNat + A081514 (A000217 (n + 1)).toNat

end

end A081513.P1827250809984422261

/-!
# A081514: Triangle read by rows: row n = lexicographically earliest choice for n distinct divisors of A081512(n) = m whose sum is m.

The programs for A081514, there is no canonical definition to state claims against.
-/

/-! ## A081514.P17470048136890698873

`A060777(A002260(n+1))%A000010(xor(1, 2^n+1))`
-/

namespace A081514.P17470048136890698873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060777 (A002260 (n + 1)).toNat) (A000010 (Nat.xor 1 (2 ^ n + 1)))

end

end A081514.P17470048136890698873

/-! ## A081514.P6367498509589026108

`A060777(A002260(n+1))-A037213(A001891(n))`
-/

namespace A081514.P6367498509589026108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060777 (A002260 (n + 1)).toNat - A037213 (A001891 n).toNat

end

end A081514.P6367498509589026108

/-!
# A081515: Sum of terms in n-th row of A081517.

The programs for A081515, there is no canonical definition to state claims against.
-/

/-! ## A081515.P7050830332750677532

`A081516(n+1)+∑[n]`
-/

namespace A081515.P7050830332750677532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081516 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081515.P7050830332750677532

/-! ## A081515.P9915137108524396208

`lcm(2, A065383(n+1))/2`
-/

namespace A081515.P9915137108524396208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A065383 (n + 1)) : ℚ) / 2

end

end A081515.P9915137108524396208

/-! ## A081515.P14037749685939746825

`or(1, A151800(∑[n]+n)-1)`
-/

namespace A081515.P14037749685939746825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A151800 (∑ j ∈ Finset.range (n + 1), f1 j + n) - 1)

end

end A081515.P14037749685939746825

/-! ## A081515.P4774206910809787401

`record[A007918(C(n, 2))-C(2, n)]`
-/

namespace A081515.P4774206910809787401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Nat.choose n 2) - (Nat.choose 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081515.P4774206910809787401

/-! ## A081515.P12739096323469699766

`Δ[A065383(n)]+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A081515.P12739096323469699766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065383 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A081515.P12739096323469699766

/-! ## A081515.P7320034120536758776

`A075402(n+1)+∑[char[1]+n]+n`
-/

namespace A081515.P7320034120536758776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075402 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ)

end

end A081515.P7320034120536758776

/-! ## A081515.P13681856791308874430

`∑[n]+A013632(∑[1-char[1]+n])+n`
-/

namespace A081515.P13681856791308874430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A013632 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + (n : ℤ))

end

end A081515.P13681856791308874430

/-! ## A081515.P9224935459226430265

`A066169(A084265(n))`
-/

namespace A081515.P9224935459226430265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A084265 n).toNat

end

end A081515.P9224935459226430265

/-! ## A081515.P15892880429562990354

`A000265(A065383(n+1))`
-/

namespace A081515.P15892880429562990354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A065383 (n + 1)).toNat

end

end A081515.P15892880429562990354

/-! ## A081515.P12495408184959787733

`A066169(A054254(n+1))`
-/

namespace A081515.P12495408184959787733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066169 (A054254 (n + 1)).toNat

end

end A081515.P12495408184959787733

/-!
# A081516: Final term in n-th row of A081517.

The programs for A081516, there is no canonical definition to state claims against.
-/

/-! ## A081516.P3191741326809632785

`A081517(∑[n+1])`
-/

namespace A081516.P3191741326809632785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081517 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081516.P3191741326809632785

/-! ## A081516.P8251407326524398643

`A013632(∑[1-char[1]+n])+n`
-/

namespace A081516.P8251407326524398643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A081516.P8251407326524398643

/-! ## A081516.P6936809808981854559

`A075402(n+1)+ceil(sqrt(∑[2*n]))`
-/

namespace A081516.P6936809808981854559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075402 (n + 1) + ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉

end

end A081516.P6936809808981854559

/-! ## A081516.P3168286417110312076

`record[A007918(C(n, 2))-C(2, n)]-∑[n]`
-/

namespace A081516.P3168286417110312076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Nat.choose n 2) - (Nat.choose 2 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A081516.P3168286417110312076

/-! ## A081516.P6122641570665064560

`A013632(∑[n+1])%(n+1)+n+1`
-/

namespace A081516.P6122641570665064560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013632 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ) + (n + 1 : ℤ)

end

end A081516.P6122641570665064560

/-! ## A081516.P16570590914290874167

`A065383(n+1)-A028310(∑[n])`
-/

namespace A081516.P16570590914290874167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065383 (n + 1) - A028310 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081516.P16570590914290874167

/-! ## A081516.P5286920931488818795

`A087156(n+1)+A075402(n+1)`
-/

namespace A081516.P5286920931488818795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A075402 (n + 1)

end

end A081516.P5286920931488818795

/-! ## A081516.P2413998776136838457

`A006530(A139693(∑[n]+n))-∑[n]`
-/

namespace A081516.P2413998776136838457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139693 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A081516.P2413998776136838457

/-! ## A081516.P1305111452988006813

`A065475(n+1)+A075402(n+1)-1`
-/

namespace A081516.P1305111452988006813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + (A075402 (n + 1) - 1)

end

end A081516.P1305111452988006813

/-!
# A081517: Consider the smallest number m which can be expressed as the sum of n distinct numbers coprime to m. Sequence gives triangle (read by rows) of the set of coprime numbers pertaining to m. When there is a choice, use the lexicographically earliest solution.

The programs for A081517, there is no canonical definition to state claims against.
-/

/-! ## A081517.P7540030408478087088

`A055980(A004275(A141539(n))²)`
-/

namespace A081517.P7540030408478087088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 (A004275 (A141539 n).toNat ^ 2).toNat

end

end A081517.P7540030408478087088

/-! ## A081517.P15287272654871284877

`A110591(A141539(n)^3)`
-/

namespace A081517.P15287272654871284877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A141539 n ^ 3).toNat

end

end A081517.P15287272654871284877

/-! ## A081517.P6815424281222386073

`A129139(A141539(n)^3)`
-/

namespace A081517.P6815424281222386073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129139 (A141539 n ^ 3).toNat

end

end A081517.P6815424281222386073

/-! ## A081517.P3049868411238542086

`A110591(A141539(n)²*A141539(n))`
-/

namespace A081517.P3049868411238542086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A141539 n ^ 2 * A141539 n).toNat

end

end A081517.P3049868411238542086

/-! ## A081517.P10294066511170579068

`A110730(A314173(n+1))`
-/

namespace A081517.P10294066511170579068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110730 (A314173 (n + 1)).toNat

end

end A081517.P10294066511170579068

/-!
# A081518: Final term in row n of A081520.

The programs for A081518, there is no canonical definition to state claims against.
-/

/-! ## A081518.P9922901727141424772

`A077584(n+1)-A087156(n+1)`
-/

namespace A081518.P9922901727141424772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077584 (n + 1) - A087156 (n + 1)

end

end A081518.P9922901727141424772

/-! ## A081518.P8331196354985767968

`A077661(A212342(n+1))`
-/

namespace A081518.P8331196354985767968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077661 (A212342 (n + 1)).toNat

end

end A081518.P8331196354985767968

/-! ## A081518.P4598081944150389028

`A077661(A028310(n)+A000217(n))`
-/

namespace A081518.P4598081944150389028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077661 (A028310 n + A000217 n).toNat

end

end A081518.P4598081944150389028

/-! ## A081518.P1412228379923657787

`A077661(A065033(2*n)+A000217(n))`
-/

namespace A081518.P1412228379923657787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077661 (A065033 (2 * n) + A000217 n).toNat

end

end A081518.P1412228379923657787

/-! ## A081518.P6638269568659904463

`A077583(A000217(n)+A000010(n+1))`
-/

namespace A081518.P6638269568659904463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077583 (A000217 n + A000010 (n + 1)).toNat

end

end A081518.P6638269568659904463

/-! ## A081518.P5137348654018323026

`A081520(∑[n+1])`
-/

namespace A081518.P5137348654018323026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081520 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081518.P5137348654018323026

/-! ## A081518.P12201872040006644032

`or(char[9], A081520(A000217(n+1)))`
-/

namespace A081518.P12201872040006644032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A081520 (A000217 (n + 1)).toNat)

end

end A081518.P12201872040006644032

/-! ## A081518.P9862740643714815600

`∑{d}[A081520(A000217(n+1)), A000010(#)]`
-/

namespace A081518.P9862740643714815600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081520 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A081518.P9862740643714815600

/-! ## A081518.P14615058804324539485

`char[A061579(n)]*A081520(A000217(n+1))`
-/

namespace A081518.P14615058804324539485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A081520 (A000217 (n + 1)).toNat

end

end A081518.P14615058804324539485

/-! ## A081518.P5751726728670054560

`char[A282028(n)]*A081520(A000217(n+1))`
-/

namespace A081518.P5751726728670054560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282028 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A081520 (A000217 (n + 1)).toNat

end

end A081518.P5751726728670054560

/-! ## A081518.P11886574988852076305

`A081520(A000217(n+1))%A242343(n+1)`
-/

namespace A081518.P11886574988852076305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081520 (A000217 (n + 1)).toNat) (A242343 (n + 1))

end

end A081518.P11886574988852076305

/-! ## A081518.P1989916088354949514

`lcm(A014963(n+1), A081520(A000217(n+1)))`
-/

namespace A081518.P1989916088354949514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (n + 1)) (A081520 (A000217 (n + 1)).toNat)

end

end A081518.P1989916088354949514

/-! ## A081518.P10079130024925512331

`A007318(C(2, n))*A081520(A000217(n+1))`
-/

namespace A081518.P10079130024925512331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A081520 (A000217 (n + 1)).toNat

end

end A081518.P10079130024925512331

/-! ## A081518.P10343477783246920259

`A007318(and(1, -n))*A081520(A000217(n+1))`
-/

namespace A081518.P10343477783246920259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A081520 (A000217 (n + 1)).toNat

end

end A081518.P10343477783246920259

/-! ## A081518.P13227553181920449009

`A006519(2*n+1)*A081520(A000217(n+1))`
-/

namespace A081518.P13227553181920449009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A081520 (A000217 (n + 1)).toNat

end

end A081518.P13227553181920449009

/-! ## A081518.P2004346752020826856

`A000032(((-1)^n)²)*A081520(A000217(n+1))`
-/

namespace A081518.P2004346752020826856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (((-1) ^ n) ^ 2).toNat * A081520 (A000217 (n + 1)).toNat

end

end A081518.P2004346752020826856

/-! ## A081518.P5231099000541341881

`A008480(A000961(n+1))*A081520(A000217(n+1))`
-/

namespace A081518.P5231099000541341881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A000961 (n + 1)).toNat * A081520 (A000217 (n + 1)).toNat

end

end A081518.P5231099000541341881

/-! ## A081518.P12827381584748251028

`A008480(A006519(n+1))*A081520(A000217(n+1))`
-/

namespace A081518.P12827381584748251028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A006519 (n + 1)).toNat * A081520 (A000217 (n + 1)).toNat

end

end A081518.P12827381584748251028

/-! ## A081518.P7909945434998461565

`∏{d}[A081520(A000217(n+1)), A014963(#)]`
-/

namespace A081518.P7909945434998461565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081520 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A081518.P7909945434998461565

/-!
# A081519: Sum of terms in row n of A081520.

The programs for A081519, there is no canonical definition to state claims against.
-/

/-! ## A081519.P13000953412054298997

`A077660(n+1)-n*(n+2)`
-/

namespace A081519.P13000953412054298997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077660 (n + 1) - (n * (n + 2) : ℤ)

end

end A081519.P13000953412054298997

/-! ## A081519.P5413494319493876992

`A077663(n+1)+1-A077662(n+1)`
-/

namespace A081519.P5413494319493876992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077663 (n + 1) + (1 - A077662 (n + 1))

end

end A081519.P5413494319493876992

/-! ## A081519.P2504819081264957030

`A077663(n+1)-A077149(n+1)+n+3`
-/

namespace A081519.P2504819081264957030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077663 (n + 1) - A077149 (n + 1) + (n + 3 : ℤ)

end

end A081519.P2504819081264957030

/-! ## A081519.P17029964351826259020

`A077663(n+1)+A024000(A077662(n+1))`
-/

namespace A081519.P17029964351826259020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077663 (n + 1) + A024000 (A077662 (n + 1)).toNat

end

end A081519.P17029964351826259020

/-! ## A081519.P17310194852711772535

`A077663(n+1)-A023443(A077661(∑[n+1]))`
-/

namespace A081519.P17310194852711772535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077663 (n + 1) - A023443 (A077661 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A081519.P17310194852711772535

/-!
# A081520: Triangle read by rows in which row n consists of 1 and the n-1 smallest positive numbers having common factors with n.

The programs for A081520, there is no canonical definition to state claims against.
-/

/-! ## A081520.P4229528668455751010

`A077583(n+1)-round(sqrt(2*n))`
-/

namespace A081520.P4229528668455751010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077583 (n + 1) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

end

end A081520.P4229528668455751010

/-! ## A081520.P16693059843904792124

`A077661(gcd(n, A198954(n)))`
-/

namespace A081520.P16693059843904792124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077661 (Int.gcd (n : ℤ) (A198954 n))

end

end A081520.P16693059843904792124

/-! ## A081520.P14267655690197156729

`abs(A077583(n+1)-A123578(n))`
-/

namespace A081520.P14267655690197156729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077583 (n + 1) - A123578 n|

end

end A081520.P14267655690197156729

/-! ## A081520.P18114278565459208466

`A000027(A077583(n+1)-A123578(n))`
-/

namespace A081520.P18114278565459208466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A077583 (n + 1) - A123578 n).toNat

end

end A081520.P18114278565459208466

/-! ## A081520.P12712064386587693830

`or(A077583(n+1)-A123578(n), A000007(n))`
-/

namespace A081520.P12712064386587693830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077583 (n + 1) - A123578 n) (A000007 n)

end

end A081520.P12712064386587693830

/-! ## A081520.P17170091077457223409

`and(A077583(n+1)-A123578(n), A057428(n+1))`
-/

namespace A081520.P17170091077457223409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077583 (n + 1) - A123578 n) (A057428 (n + 1))

end

end A081520.P17170091077457223409

/-! ## A081520.P8078459283810895245

`A028310(A077583(n+1)-A123578(n))`
-/

namespace A081520.P8078459283810895245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A077583 (n + 1) - A123578 n).toNat

end

end A081520.P8078459283810895245

/-! ## A081520.P5727559429431742388

`A065033(2*(A077583(n+1)-A123578(n)))`
-/

namespace A081520.P5727559429431742388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * (A077583 (n + 1) - A123578 n)).toNat

end

end A081520.P5727559429431742388

/-! ## A081520.P16537527163537521703

`(A077583(n+1)-A123578(n))%A114011(n+4)`
-/

namespace A081520.P16537527163537521703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077583 (n + 1) - A123578 n) (A114011 (n + 4))

end

end A081520.P16537527163537521703

/-!
# A081522: Last term in row n of A081521.

The programs for A081522, there is no canonical definition to state claims against.
-/

/-! ## A081522.P6625155872002836452

`A081521(∑[n+1])`
-/

namespace A081522.P6625155872002836452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081521 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081522.P6625155872002836452

/-!
# A081523: Sum of terms in row n of A081521.

The programs for A081523, there is no canonical definition to state claims against.
-/

/-! ## A081523.P17245233268381288244

`(n+1)*A081524(n+1)`
-/

namespace A081523.P17245233268381288244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A081524 (n + 1)

end

end A081523.P17245233268381288244

/-!
# A081524: a(n) = A081523(n)/n.

The programs for A081524, there is no canonical definition to state claims against.
-/

/-! ## A081524.P17909416457522174851

`A081523(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A081524.P17909416457522174851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081523 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A081524.P17909416457522174851

/-!
# A081528: a(n) = n*lcm{1,2,...,n}.

The programs for A081528, the canonical program `A081528.P13309980270208809465` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081528 has offset 1).

The definition of A081528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081528.P13309980270208809465

`A003418(n+1)*(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081528

/-- `A003418(n+1)*(n+1)` -/
def P13309980270208809465.Spec : Prop :=
  ∀ n, P13309980270208809465.a n = A081528 (n + 1)

theorem P13309980270208809465.correct : P13309980270208809465.Spec := by
  intro n
  simp only [A081528, Nat.add_sub_cancel]

end A081528

/-! ## A081528.P789429279436799213

`(n+1)*lcm(n+1, a(n-1)/n)` with `a(0)=1`
-/

namespace A081528.P789429279436799213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ)))

end

end A081528.P789429279436799213

namespace A081528

/-- `(n+1)*lcm(n+1, a(n-1)/n)` -/
def P789429279436799213.Spec : Prop :=
  ∀ n, (P789429279436799213.a n : ℤ) = A081528 (n + 1)

end A081528

/-! ## A081528.P3904108430579300972

`lcm(a(n-1)+a(n-1)/n, (n+1)²)` with `a(0)=1`
-/

namespace A081528.P3904108430579300972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (a (n - 1) : ℚ) / (n : ℚ))) ((n + 1) ^ 2 : ℤ)

end

end A081528.P3904108430579300972

namespace A081528

/-- `lcm(a(n-1)+a(n-1)/n, (n+1)²)` -/
def P3904108430579300972.Spec : Prop :=
  ∀ n, (P3904108430579300972.a n : ℤ) = A081528 (n + 1)

end A081528

/-! ## A081528.P13469690004484143408

`(n+1)*∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]`
-/

namespace A081528.P13469690004484143408
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A081528.P13469690004484143408

namespace A081528

/-- `(n+1)*∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]` -/
def P13469690004484143408.Spec : Prop :=
  ∀ n, P13469690004484143408.a n = A081528 (n + 1)

end A081528

/-! ## A081528.P3819468805406526151

`(n+1)*Δ[A173185(n)]`
-/

namespace A081528.P3819468805406526151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A081528.P3819468805406526151

namespace A081528

/-- `(n+1)*Δ[A173185(n)]` -/
def P3819468805406526151.Spec : Prop :=
  ∀ n, P3819468805406526151.a n = A081528 (n + 1)

end A081528

/-! ## A081528.P8963997215318554118

`(n+1)*Δ[A236856(n)]`
-/

namespace A081528.P8963997215318554118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A081528.P8963997215318554118

namespace A081528

/-- `(n+1)*Δ[A236856(n)]` -/
def P8963997215318554118.Spec : Prop :=
  ∀ n, P8963997215318554118.a n = A081528 (n + 1)

end A081528

/-! ## A081528.P10592068982191913622

`∑[abs(Δ[n*A003418(n)])]`
-/

namespace A081528.P10592068982191913622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A003418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081528.P10592068982191913622

namespace A081528

/-- `∑[abs(Δ[n*A003418(n)])]` -/
def P10592068982191913622.Spec : Prop :=
  ∀ n, P10592068982191913622.a n = A081528 (n + 1)

end A081528

/-! ## A081528.P4587903336385288872

`(n+1)*(A070198(n)+1)`
-/

namespace A081528.P4587903336385288872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A070198 n + 1)

end

end A081528.P4587903336385288872

namespace A081528

/-- `(n+1)*(A070198(n)+1)` -/
def P4587903336385288872.Spec : Prop :=
  ∀ n, P4587903336385288872.a n = A081528 (n + 1)

theorem P4587903336385288872.correct : P4587903336385288872.Spec := by
  intro n
  simp only [A081528, Nat.add_sub_cancel, A081528.P4587903336385288872.a, A081528.P13309980270208809465.a, A003418, A003418.P6976248655893080794.a, A070198, A070198.P18115024891889206898.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081528

/-! ## A081528.P11467597254433778631

`(n+1)²*A002944(n+1)`
-/

namespace A081528.P11467597254433778631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A002944 (n + 1)

end

end A081528.P11467597254433778631

namespace A081528

/-- `(n+1)²*A002944(n+1)` -/
def P11467597254433778631.Spec : Prop :=
  ∀ n, P11467597254433778631.a n = A081528 (n + 1)

end A081528

/-! ## A081528.P8958583710500773349

`lcm((n+1)², A169900(n+1))`
-/

namespace A081528.P8958583710500773349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n + 1) ^ 2 : ℤ) (A169900 (n + 1))

end

end A081528.P8958583710500773349

namespace A081528

/-- `lcm((n+1)², A169900(n+1))` -/
def P8958583710500773349.Spec : Prop :=
  ∀ n, (P8958583710500773349.a n : ℤ) = A081528 (n + 1)

end A081528

/-! ## A081528.P12567183018055146362

`A075062(n+1)-∑[n+1]`
-/

namespace A081528.P12567183018055146362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075062 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081528.P12567183018055146362

namespace A081528

/-- `A075062(n+1)-∑[n+1]` -/
def P12567183018055146362.Spec : Prop :=
  ∀ n, P12567183018055146362.a n = A081528 (n + 1)

end A081528

/-! ## A081528.P5790927148535841513

`(n+1)*∏[A014963(n+1)]`
-/

namespace A081528.P5790927148535841513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A081528.P5790927148535841513

namespace A081528

/-- `(n+1)*∏[A014963(n+1)]` -/
def P5790927148535841513.Spec : Prop :=
  ∀ n, P5790927148535841513.a n = A081528 (n + 1)

end A081528

/-! ## A081528.P11114991590826391132

`(n+1)*(A075059(n+1)-1)`
-/

namespace A081528.P11114991590826391132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A075059 (n + 1) - 1)

end

end A081528.P11114991590826391132

namespace A081528

/-- `(n+1)*(A075059(n+1)-1)` -/
def P11114991590826391132.Spec : Prop :=
  ∀ n, P11114991590826391132.a n = A081528 (n + 1)

theorem P11114991590826391132.correct : P11114991590826391132.Spec := by
  intro n
  simp only [A081528, Nat.add_sub_cancel, A081528.P11114991590826391132.a, A081528.P13309980270208809465.a, A003418, A003418.P6976248655893080794.a, A075059, A075059.P13005941669399506084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081528

/-! ## A081528.P17969780932309531106

`(n+1)*A139550(2*(n+1))`
-/

namespace A081528.P17969780932309531106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A139550 (2 * (n + 1))

end

end A081528.P17969780932309531106

namespace A081528

/-- `(n+1)*A139550(2*(n+1))` -/
def P17969780932309531106.Spec : Prop :=
  ∀ n, P17969780932309531106.a n = A081528 (n + 1)

end A081528

/-! ## A081528.P16045656415970715224

`(n+1)/2*A051426(n+1)`
-/

namespace A081528.P16045656415970715224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A051426 (n + 1) : ℚ)

end

end A081528.P16045656415970715224

namespace A081528

/-- `(n+1)/2*A051426(n+1)` -/
def P16045656415970715224.Spec : Prop :=
  ∀ n, P16045656415970715224.a n = (A081528 (n + 1) : ℚ)

end A081528

/-! ## A081528.P8266617862815870659

`(n+1)*(A065500(n+1)-n)`
-/

namespace A081528.P8266617862815870659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A065500 (n + 1) - (n : ℤ))

end

end A081528.P8266617862815870659

namespace A081528

/-- `(n+1)*(A065500(n+1)-n)` -/
def P8266617862815870659.Spec : Prop :=
  ∀ n, P8266617862815870659.a n = A081528 (n + 1)

end A081528

/-! ## A081528.P7967604132711997692

`(n+1)*(A060401(n+1)-(n+1))`
-/

namespace A081528.P7967604132711997692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A060401 (n + 1) - (n + 1 : ℤ))

end

end A081528.P7967604132711997692

namespace A081528

/-- `(n+1)*(A060401(n+1)-(n+1))` -/
def P7967604132711997692.Spec : Prop :=
  ∀ n, P7967604132711997692.a n = A081528 (n + 1)

theorem P7967604132711997692.correct : P7967604132711997692.Spec := by
  intro n
  simp only [A081528, Nat.add_sub_cancel, A081528.P7967604132711997692.a, A081528.P13309980270208809465.a, A003418, A003418.P6976248655893080794.a, A060401, A060401.P17035692861748186501.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081528

/-! ## A081528.P3652889277752613249

`(n+1)*(A195507(n+2)-(n+2))`
-/

namespace A081528.P3652889277752613249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A195507 (n + 2) - (n + 2 : ℤ))

end

end A081528.P3652889277752613249

namespace A081528

/-- `(n+1)*(A195507(n+2)-(n+2))` -/
def P3652889277752613249.Spec : Prop :=
  ∀ n, P3652889277752613249.a n = A081528 (n + 1)

theorem P3652889277752613249.correct : P3652889277752613249.Spec := by
  intro n
  simp only [A081528, Nat.add_sub_cancel, A081528.P3652889277752613249.a, A081528.P13309980270208809465.a, A003418, A003418.P6976248655893080794.a, A195507, A195507.P13812271573965113829.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081528

/-! ## A081528.P8733840880594495636

`(n+1)*∏[A166260(∏{p}[n+1, #])+1]`
-/

namespace A081528.P8733840880594495636
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166260 (∏ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A081528.P8733840880594495636

namespace A081528

/-- `(n+1)*∏[A166260(∏{p}[n+1, #])+1]` -/
def P8733840880594495636.Spec : Prop :=
  ∀ n, P8733840880594495636.a n = A081528 (n + 1)

end A081528

/-! ## A081528.P8736580475368403950

`lcm(A003418(n), A025558(n+1))`
-/

namespace A081528.P8736580475368403950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003418 n) (A025558 (n + 1))

end

end A081528.P8736580475368403950

namespace A081528

/-- `lcm(A003418(n), A025558(n+1))` -/
def P8736580475368403950.Spec : Prop :=
  ∀ n, (P8736580475368403950.a n : ℤ) = A081528 (n + 1)

end A081528

/-!
# A081530: a(n) = running sum of the first n harmonic numbers, multiplied by the LCM of 1..n.

The programs for A081530, the canonical program `A081530.P13171352182732697047` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081530 has offset 1).

The definition of A081530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081530.P13171352182732697047

`A001705(n+1)/A025527(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A081530

/-- `A001705(n+1)/A025527(n+1)` -/
def P13171352182732697047.Spec : Prop :=
  ∀ n, P13171352182732697047.a n = (A081530 (n + 1) : ℚ)

end A081530

/-! ## A081530.P9107829028782400611

`∑[∑[1/(n+1)]]*A003418(n+1)`
-/

namespace A081530.P9107829028782400611
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A003418 (n + 1) : ℚ)

end

end A081530.P9107829028782400611

namespace A081530

/-- `∑[∑[1/(n+1)]]*A003418(n+1)` -/
def P9107829028782400611.Spec : Prop :=
  ∀ n, P9107829028782400611.a n = (A081530 (n + 1) : ℚ)

end A081530

/-! ## A081530.P16704119050644518638

`A025529(n+1)+(n+1)*A027457(n+1)`
-/

namespace A081530.P16704119050644518638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) + (n + 1 : ℤ) * A027457 (n + 1)

end

end A081530.P16704119050644518638

namespace A081530

/-- `A025529(n+1)+(n+1)*A027457(n+1)` -/
def P16704119050644518638.Spec : Prop :=
  ∀ n, P16704119050644518638.a n = A081530 (n + 1)

end A081530

/-! ## A081530.P17956519090247938037

`A003418(n+1)/A027611(n+2)*A027612(n+1)`
-/

namespace A081530.P17956519090247938037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A027611 (n + 2) : ℚ) * (A027612 (n + 1) : ℚ)

end

end A081530.P17956519090247938037

namespace A081530

/-- `A003418(n+1)/A027611(n+2)*A027612(n+1)` -/
def P17956519090247938037.Spec : Prop :=
  ∀ n, P17956519090247938037.a n = (A081530 (n + 1) : ℚ)

end A081530

/-! ## A081530.P11166308612876540224

`A003418(n+1)/A002944(n+2)*A027457(n+2)`
-/

namespace A081530.P11166308612876540224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A002944 (n + 2) : ℚ) * (A027457 (n + 2) : ℚ)

end

end A081530.P11166308612876540224

namespace A081530

/-- `A003418(n+1)/A002944(n+2)*A027457(n+2)` -/
def P11166308612876540224.Spec : Prop :=
  ∀ n, P11166308612876540224.a n = (A081530 (n + 1) : ℚ)

end A081530

/-! ## A081530.P3309042494689463864

`A027457(n+1)+(A027457(n+1)+A002944(n+1))*(n+1)`
-/

namespace A081530.P3309042494689463864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027457 (n + 1) + (A027457 (n + 1) + A002944 (n + 1)) * (n + 1 : ℤ)

end

end A081530.P3309042494689463864

namespace A081530

/-- `A027457(n+1)+(A027457(n+1)+A002944(n+1))*(n+1)` -/
def P3309042494689463864.Spec : Prop :=
  ∀ n, P3309042494689463864.a n = A081530 (n + 1)

end A081530

/-!
# A081531: Primes p such that (r-p)/log(p) > 2, where r is the next prime after p.

The programs for A081531, the canonical program `A081531.P7633572976891130999` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081531 has offset 1).

The definition of A081531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1033 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081531.P7633572976891130999

`A045344(lt[1, A082886(n+1)])`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A081531

/-- `A045344(lt[1, A082886(n+1)])` -/
def P7633572976891130999.Spec : Prop :=
  ∀ n, P7633572976891130999.a n = A081531 (n + 1)

theorem P7633572976891130999.correct : P7633572976891130999.Spec := by
  intro n
  simp only [A081531, Nat.add_sub_cancel]

end A081531

/-! ## A081531.P9907484426614193532

`A065091(lt[1, A082886(n+1)])`
-/

namespace A081531.P9907484426614193532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A081531.P9907484426614193532

namespace A081531

/-- `A065091(lt[1, A082886(n+1)])` -/
def P9907484426614193532.Spec : Prop :=
  ∀ n, P9907484426614193532.a n = A081531 (n + 1)

end A081531

/-! ## A081531.P10267604034603666751

`filter[A340889(n+1), A193496(#)]`
-/

namespace A081531.P10267604034603666751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A193496 (f1 j).toNat = 1) n)

end

end A081531.P10267604034603666751

namespace A081531

/-- `filter[A340889(n+1), A193496(#)]` -/
def P10267604034603666751.Spec : Prop :=
  ∀ n, P10267604034603666751.a n = A081531 (n + 1)

end A081531

/-!
# A081532: Triangle read by rows: let m be smallest number with n divisors, then row n gives divisors of m.

The programs for A081532, there is no canonical definition to state claims against.
-/

/-! ## A081532.P14670130735294158258

`A003960(A119265(n+1))`
-/

namespace A081532.P14670130735294158258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003960 (A119265 (n + 1)).toNat

end

end A081532.P14670130735294158258

/-! ## A081532.P11456154273729017637

`A003963(or(1, A119265(n+1)))`
-/

namespace A081532.P11456154273729017637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A119265 (n + 1))).toNat

end

end A081532.P11456154273729017637

/-! ## A081532.P7760307367692735173

`A228731(or(1, A119265(n+1)))`
-/

namespace A081532.P7760307367692735173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (Int.lor 1 (A119265 (n + 1))).toNat

end

end A081532.P7760307367692735173

/-! ## A081532.P6477323015021208702

`A290323(or(1, A119265(n+1)))`
-/

namespace A081532.P6477323015021208702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290323 (Int.lor 1 (A119265 (n + 1))).toNat

end

end A081532.P6477323015021208702

/-! ## A081532.P5393613182677787212

`A003963(gcd(2, n)*A119265(n+1))`
-/

namespace A081532.P5393613182677787212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 ((Nat.gcd 2 n : ℤ) * A119265 (n + 1)).toNat

end

end A081532.P5393613182677787212

/-! ## A081532.P6989797100693062512

`A003963((char[∑[n+4]]+1)*A119265(n+1))`
-/

namespace A081532.P6989797100693062512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 ((((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A119265 (n + 1)).toNat

end

end A081532.P6989797100693062512

/-! ## A081532.P9294947540668223611

`A003963(A119265(n+1))%A000040(n+1)`
-/

namespace A081532.P9294947540668223611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003963 (A119265 (n + 1)).toNat) (A000040 (n + 1))

end

end A081532.P9294947540668223611

/-! ## A081532.P10794099155654803650

`A290323(2*A119265(n+1)-A119265(n+1))`
-/

namespace A081532.P10794099155654803650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290323 (2 * A119265 (n + 1) - A119265 (n + 1)).toNat

end

end A081532.P10794099155654803650

/-! ## A081532.P15736388665569689335

`A228731(2*A119265(n+1))`
-/

namespace A081532.P15736388665569689335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228731 (2 * A119265 (n + 1)).toNat

end

end A081532.P15736388665569689335

/-! ## A081532.P763228067017102339

`A290323(2*A119265(n+1))/2`
-/

namespace A081532.P763228067017102339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290323 (2 * A119265 (n + 1)).toNat : ℚ) / 2

end

end A081532.P763228067017102339

/-!
# A081533: Sum of terms in row n of A081532.

The programs for A081533, there is no canonical definition to state claims against.
-/

/-! ## A081533.P3501326303180831131

`A256259(A064787(n+1))`
-/

namespace A081533.P3501326303180831131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256259 (A064787 (n + 1)).toNat

end

end A081533.P3501326303180831131

/-! ## A081533.P7076130046735382020

`∑{d}[A005179(n+1), #]`
-/

namespace A081533.P7076130046735382020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A081533.P7076130046735382020

/-! ## A081533.P8954321480756156682

`∑{d}[sqrt(A130279(n+1)), #]`
-/

namespace A081533.P8954321480756156682
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A130279 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A081533.P8954321480756156682

/-! ## A081533.P12386641472391483007

`∑{d}[A081532(∑[n+1]), #]`
-/

namespace A081533.P12386641472391483007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A081533.P12386641472391483007

/-! ## A081533.P14610185895725608273

`∑{d}[A187941(n+1)/2, #]`
-/

namespace A081533.P14610185895725608273
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187941 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A081533.P14610185895725608273

/-!
# A081534: Numbers k such that 1 + 2 ... + k divides lcm(1,2,...,k), or, in other words, lcm(1,2,...,k) is a multiple of the k-th triangular number.

The programs for A081534, the canonical program `A081534.P18284178302565562629` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081534 has offset 1).

The definition of A081534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081534.P10023010775905245050

`comp[A061345(n)-1]`
-/

namespace A081534.P10023010775905245050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A081534.P10023010775905245050

namespace A081534

/-- `comp[A061345(n)-1]` -/
def P10023010775905245050.Spec : Prop :=
  ∀ n, (P10023010775905245050.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P890304082615643339

`lt[0, A132952(n+1)]`
-/

namespace A081534.P890304082615643339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081534.P890304082615643339

namespace A081534

/-- `lt[0, A132952(n+1)]` -/
def P890304082615643339.Spec : Prop :=
  ∀ n, (P890304082615643339.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P12645289744940462263

`∪[2*n+1, A080765(n+1)]`
-/

namespace A081534.P12645289744940462263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081534.P12645289744940462263

namespace A081534

/-- `∪[2*n+1, A080765(n+1)]` -/
def P12645289744940462263.Spec : Prop :=
  ∀ n, (P12645289744940462263.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P18284178302565562629

`eq[A036987(n), A069513(n+1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A081534

/-- `eq[A036987(n), A069513(n+1)]` -/
def P18284178302565562629.Spec : Prop :=
  ∀ n, (P18284178302565562629.a n : ℤ) = A081534 (n + 1)

theorem P18284178302565562629.correct : P18284178302565562629.Spec := by
  intro n
  simp only [A081534, Nat.add_sub_cancel]

end A081534

/-! ## A081534.P17118872387546795754

`eq[A036987(n), A297109(n+1)]`
-/

namespace A081534.P17118872387546795754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081534.P17118872387546795754

namespace A081534

/-- `eq[A036987(n), A297109(n+1)]` -/
def P17118872387546795754.Spec : Prop :=
  ∀ n, (P17118872387546795754.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P11546612236118086999

`∪[A080765(n+1), A092899(n)]`
-/

namespace A081534.P11546612236118086999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092899 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081534.P11546612236118086999

namespace A081534

/-- `∪[A080765(n+1), A092899(n)]` -/
def P11546612236118086999.Spec : Prop :=
  ∀ n, (P11546612236118086999.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P13487841037653689309

`∪[A080765(n+1), A126646(n)]`
-/

namespace A081534.P13487841037653689309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081534.P13487841037653689309

namespace A081534

/-- `∪[A080765(n+1), A126646(n)]` -/
def P13487841037653689309.Spec : Prop :=
  ∀ n, (P13487841037653689309.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P18184776420632236903

`∪[A080765(n+1), A178207(n)]`
-/

namespace A081534.P18184776420632236903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178207 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081534.P18184776420632236903

namespace A081534

/-- `∪[A080765(n+1), A178207(n)]` -/
def P18184776420632236903.Spec : Prop :=
  ∀ n, (P18184776420632236903.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P17213365397061332443

`∪[A080765(n+1), A209492(n)]`
-/

namespace A081534.P17213365397061332443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209492 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081534.P17213365397061332443

namespace A081534

/-- `∪[A080765(n+1), A209492(n)]` -/
def P17213365397061332443.Spec : Prop :=
  ∀ n, (P17213365397061332443.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P17237836443451698404

`∪[A080765(n+1), A276283(n)]`
-/

namespace A081534.P17237836443451698404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A081534.P17237836443451698404

namespace A081534

/-- `∪[A080765(n+1), A276283(n)]` -/
def P17237836443451698404.Spec : Prop :=
  ∀ n, (P17237836443451698404.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P13853271065746495144

`eq[A000038(n), A174275(n+1)]`
-/

namespace A081534.P13853271065746495144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081534.P13853271065746495144

namespace A081534

/-- `eq[A000038(n), A174275(n+1)]` -/
def P13853271065746495144.Spec : Prop :=
  ∀ n, (P13853271065746495144.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P8650687891301976995

`lt[∑{p}[n+1, #-(n+3)], -n]`
-/

namespace A081534.P8650687891301976995
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - (n + 3 : ℤ))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A081534.P8650687891301976995

namespace A081534

/-- `lt[∑{p}[n+1, #-(n+3)], -n]` -/
def P8650687891301976995.Spec : Prop :=
  ∀ n, (P8650687891301976995.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P6296202003672160343

`lt[2, A304182(n+1)]`
-/

namespace A081534.P6296202003672160343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304182 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081534.P6296202003672160343

namespace A081534

/-- `lt[2, A304182(n+1)]` -/
def P6296202003672160343.Spec : Prop :=
  ∀ n, (P6296202003672160343.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P5348549152464237215

`eq[A000007(n), A174275(n+1)]`
-/

namespace A081534.P5348549152464237215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081534.P5348549152464237215

namespace A081534

/-- `eq[A000007(n), A174275(n+1)]` -/
def P5348549152464237215.Spec : Prop :=
  ∀ n, (P5348549152464237215.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P11255113984378433982

`eq[A048671(n+1), A153152(n)]`
-/

namespace A081534.P11255113984378433982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081534.P11255113984378433982

namespace A081534

/-- `eq[A048671(n+1), A153152(n)]` -/
def P11255113984378433982.Spec : Prop :=
  ∀ n, (P11255113984378433982.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P12597393584504744887

`eq[A036987(n), A307742(n+1)]`
-/

namespace A081534.P12597393584504744887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081534.P12597393584504744887

namespace A081534

/-- `eq[A036987(n), A307742(n+1)]` -/
def P12597393584504744887.Spec : Prop :=
  ∀ n, (P12597393584504744887.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P8304554789169791546

`eq[A143731(n+1), A267442(n)]`
-/

namespace A081534.P8304554789169791546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081534.P8304554789169791546

namespace A081534

/-- `eq[A143731(n+1), A267442(n)]` -/
def P8304554789169791546.Spec : Prop :=
  ∀ n, (P8304554789169791546.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P14301089819775703711

`eq[A036987(n), A297108(n+1)]`
-/

namespace A081534.P14301089819775703711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297108 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A081534.P14301089819775703711

namespace A081534

/-- `eq[A036987(n), A297108(n+1)]` -/
def P14301089819775703711.Spec : Prop :=
  ∀ n, (P14301089819775703711.a n : ℤ) = A081534 (n + 1)

end A081534

/-! ## A081534.P8750571822790097224

`lt[1, A316553(n+1)]`
-/

namespace A081534.P8750571822790097224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316553 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A081534.P8750571822790097224

namespace A081534

/-- `lt[1, A316553(n+1)]` -/
def P8750571822790097224.Spec : Prop :=
  ∀ n, (P8750571822790097224.a n : ℤ) = A081534 (n + 1)

end A081534

/-!
# A081535: Sum of row n of triangle in A081536.

The programs for A081535, there is no canonical definition to state claims against.
-/

/-! ## A081535.P11779657093700481615

`A081537(n+1)/A081538(n+1)`
-/

namespace A081535.P11779657093700481615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081537 (n + 1) : ℚ) / (A081538 (n + 1) : ℚ)

end

end A081535.P11779657093700481615

/-!
# A081536: Let f(n) be smallest number k which is a sum of n distinct numbers whose LCM is a multiple of k. Sequence gives triangle read by rows in which n-th row consists of those n numbers (row 2 is 0, 0 by convention).

The programs for A081536, there is no canonical definition to state claims against.
-/

/-! ## A081536.P16955596450576755618

`A131879(n+1)%A014682(2^n)`
-/

namespace A081536.P16955596450576755618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131879 (n + 1)) (A014682 (2 ^ n))

end

end A081536.P16955596450576755618

/-! ## A081536.P11375196341095943825

`A131879(n+1)%A294860(A002865(n))`
-/

namespace A081536.P11375196341095943825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131879 (n + 1)) (A294860 (A002865 n).toNat)

end

end A081536.P11375196341095943825

/-! ## A081536.P16831157130926606785

`and(A005187(A034008(n)), A131879(n+1))`
-/

namespace A081536.P16831157130926606785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005187 (A034008 n).toNat) (A131879 (n + 1))

end

end A081536.P16831157130926606785

/-! ## A081536.P10516059318568871622

`A131879(n+1)-A037213(A001891(n))`
-/

namespace A081536.P10516059318568871622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131879 (n + 1) - A037213 (A001891 n).toNat

end

end A081536.P10516059318568871622

/-!
# A081537: LCM of row n of triangle in A081536.

The programs for A081537, there is no canonical definition to state claims against.
-/

/-! ## A081537.P12447755102340291165

`A081535(n+1)*A081538(n+1)`
-/

namespace A081537.P12447755102340291165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081535 (n + 1) * A081538 (n + 1)

end

end A081537.P12447755102340291165

/-!
# A081538: a(n) = A081537(n)/A081535(n), with a(2) = 1 by convention.

The programs for A081538, there is no canonical definition to state claims against.
-/

/-! ## A081538.P293137816483283614

`A171414(A260795(n+3)+n)`
-/

namespace A081538.P293137816483283614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171414 (A260795 (n + 3) + (n : ℤ)).toNat

end

end A081538.P293137816483283614

/-! ## A081538.P17246611772078175648

`and(A002061(n), A342778(A324407(n+1)))`
-/

namespace A081538.P17246611772078175648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002061 n) (A342778 (A324407 (n + 1)).toNat)

end

end A081538.P17246611772078175648

/-! ## A081538.P8287164500824390392

`gcd(A292273(n+1), A342778(A324407(n+1)))`
-/

namespace A081538.P8287164500824390392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292273 (n + 1)) (A342778 (A324407 (n + 1)).toNat)

end

end A081538.P8287164500824390392

/-!
# A081539: Triangle read by rows in which the n-th row contains the n numbers in increasing order formed by the concatenation of first n-1 numbers. (The digits of the numbers with 2 or more digits are taken as one entity.) First row is taken to be 0.

The programs for A081539, there is no canonical definition to state claims against.
-/

/-! ## A081539.P8385833447357404202

`A048794(A089633(n))`
-/

namespace A081539.P8385833447357404202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (A089633 n).toNat

end

end A081539.P8385833447357404202

/-! ## A081539.P18389187407806728394

`record[n%2*A086068(n+1)]`
-/

namespace A081539.P18389187407806728394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A086068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081539.P18389187407806728394

/-! ## A081539.P17963217504646989194

`A086068(A087136(n))`
-/

namespace A081539.P17963217504646989194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A087136 n).toNat

end

end A081539.P17963217504646989194

/-! ## A081539.P7843131700999280301

`A086068(A086070(n+2)-1)`
-/

namespace A081539.P7843131700999280301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086068 (A086070 (n + 2) - 1).toNat

end

end A081539.P7843131700999280301

/-! ## A081539.P9360152530524237234

`A004086(A071761(n))`
-/

namespace A081539.P9360152530524237234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A071761 n).toNat

end

end A081539.P9360152530524237234

/-!
# A081540: Sum of terms in row n of A081539.

The programs for A081540, there is no canonical definition to state claims against.
-/

/-! ## A081540.P16351261283576301946

`∑[(10^n-1)/9]*A053475(3^n)`
-/

namespace A081540.P16351261283576301946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 1 : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A053475 (3 ^ n) : ℚ)

end

end A081540.P16351261283576301946

/-! ## A081540.P14559526634763402323

`A014824(n)*A325134(3^n)`
-/

namespace A081540.P14559526634763402323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n * A325134 (3 ^ n)

end

end A081540.P14559526634763402323

/-! ## A081540.P16844316001755736208

`A057137(n)*A166469(Δ[3^n])`
-/

namespace A081540.P16844316001755736208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057137 n * A166469 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081540.P16844316001755736208

/-! ## A081540.P5370469802349973297

`(n+2)*A014824(A004892(n+1))`
-/

namespace A081540.P5370469802349973297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A014824 (A004892 (n + 1)).toNat

end

end A081540.P5370469802349973297

/-! ## A081540.P2053755683163817966

`∑[floor(10^n/9)]*A325678(A056115(n))`
-/

namespace A081540.P2053755683163817966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A325678 (A056115 n).toNat

end

end A081540.P2053755683163817966

/-!
# A081541: Triangle read by rows: the n-th row contains n numbers sorted in decreasing value, each build by dropping a different number from the sequence [n,n-1,n-2,....,1] and concatenating the n-1 others. By definition the first row contains 0.

The programs for A081541, there is no canonical definition to state claims against.
-/

/-! ## A081541.P17956921234285580084

`A071761(∑[2*n]%comp[∑[n]])`
-/

namespace A081541.P17956921234285580084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071761 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A081541.P17956921234285580084

/-! ## A081541.P4109313999865261368

`A071761(∑[char[∑[n]]]²-n-1)`
-/

namespace A081541.P4109313999865261368
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071761 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A081541.P4109313999865261368

/-! ## A081541.P16419741213695113877

`lcm((-1)^n, A071761(A061579(n)))`
-/

namespace A081541.P16419741213695113877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A071761 (A061579 n).toNat)

end

end A081541.P16419741213695113877

/-! ## A081541.P1657165299838053264

`A057427(n)*A071761(A061579(n))`
-/

namespace A081541.P1657165299838053264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A071761 (A061579 n).toNat

end

end A081541.P1657165299838053264

/-! ## A081541.P3688189272758553115

`A071761(A061579(n))*A178334(n)`
-/

namespace A081541.P3688189272758553115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071761 (A061579 n).toNat * A178334 n

end

end A081541.P3688189272758553115

/-!
# A081542: Row sums of A081541.

The programs for A081542, there is no canonical definition to state claims against.
-/

/-! ## A081542.P1281557823630491187

`(n+2)*A262557(A095121(n))`
-/

namespace A081542.P1281557823630491187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A262557 (A095121 n).toNat

end

end A081542.P1281557823630491187

/-! ## A081542.P18345520217229864049

`(n+2)*A057138(A023052(n+1))`
-/

namespace A081542.P18345520217229864049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A057138 (A023052 (n + 1)).toNat

end

end A081542.P18345520217229864049

/-! ## A081542.P9264681772627470525

`(n+2)*A057138(A030147(n+1))`
-/

namespace A081542.P9264681772627470525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A057138 (A030147 (n + 1)).toNat

end

end A081542.P9264681772627470525

/-! ## A081542.P11600529552081412670

`(n+2)*A057138(A004881(n+1))`
-/

namespace A081542.P11600529552081412670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A057138 (A004881 (n + 1)).toNat

end

end A081542.P11600529552081412670

/-! ## A081542.P14425577622351528387

`(n+2)*A057138(A004903(n+1))`
-/

namespace A081542.P14425577622351528387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A057138 (A004903 (n + 1)).toNat

end

end A081542.P14425577622351528387

/-!
# A081543: G.f.: Sum_{k >= 1} x^k/(1-x^k)^(k+1).

The programs for A081543, the canonical program `A081543.P12998011516934401787` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081543 has offset 1).

The definition of A081543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081543.P12998011516934401787

`∑{d}[n+1, C(#+(n+1)/#-1, #)]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081543

/-- `∑{d}[n+1, C(#+(n+1)/#-1, #)]` -/
def P12998011516934401787.Spec : Prop :=
  ∀ n, (P12998011516934401787.a n : ℤ) = A081543 (n + 1)

theorem P12998011516934401787.correct : P12998011516934401787.Spec := by
  intro n
  simp only [A081543, Nat.add_sub_cancel]

end A081543

/-! ## A081543.P6070743299968049898

`A366974(n+1)+A157019(n+1)`
-/

namespace A081543.P6070743299968049898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366974 (n + 1) + A157019 (n + 1)

end

end A081543.P6070743299968049898

namespace A081543

/-- `A366974(n+1)+A157019(n+1)` -/
def P6070743299968049898.Spec : Prop :=
  ∀ n, P6070743299968049898.a n = A081543 (n + 1)

end A081543

/-! ## A081543.P3526212708623958018

`2*A340626(n+1)-A338682(n+1)`
-/

namespace A081543.P3526212708623958018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340626 (n + 1) - A338682 (n + 1)

end

end A081543.P3526212708623958018

namespace A081543

/-- `2*A340626(n+1)-A338682(n+1)` -/
def P3526212708623958018.Spec : Prop :=
  ∀ n, P3526212708623958018.a n = A081543 (n + 1)

end A081543

/-! ## A081543.P7444551149567856566

`A004277(A340626(n+1))-A338682(n+1)`
-/

namespace A081543.P7444551149567856566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A340626 (n + 1)).toNat - A338682 (n + 1)

end

end A081543.P7444551149567856566

namespace A081543

/-- `A004277(A340626(n+1))-A338682(n+1)` -/
def P7444551149567856566.Spec : Prop :=
  ∀ n, P7444551149567856566.a n = A081543 (n + 1)

end A081543

/-! ## A081543.P13283205861091864950

`(A005843(A340626(n+1))-A338682(n+1))%A167499(n)²`
-/

namespace A081543.P13283205861091864950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A340626 (n + 1)).toNat - A338682 (n + 1)) (A167499 n ^ 2)

end

end A081543.P13283205861091864950

namespace A081543

/-- `(A005843(A340626(n+1))-A338682(n+1))%A167499(n)²` -/
def P13283205861091864950.Spec : Prop :=
  ∀ n, P13283205861091864950.a n = A081543 (n + 1)

end A081543

/-!
# A081544: Decimal expansion of Sum_(1/(2^q-1)) with the summation extending over all pairs of integers gcd(p,q) = 1, 0 < p/q < phi, where phi is the Golden ratio.

The programs for A081544, there is no canonical definition to state claims against.
-/

/-! ## A081544.P9974175406045674421

`A028310(n)+A073115(n)-n`
-/

namespace A081544.P9974175406045674421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (A073115 (n + 1) - (n : ℤ))

end

end A081544.P9974175406045674421

/-! ## A081544.P6984587398964562541

`A073115(n)+char[A333979(A161680(n))]`
-/

namespace A081544.P6984587398964562541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333979 (A161680 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073115 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A081544.P6984587398964562541

/-! ## A081544.P12705102786948687087

`A073115(n)+char[A135481(A001682(2*n+1))]`
-/

namespace A081544.P12705102786948687087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A001682 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073115 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A081544.P12705102786948687087

/-! ## A081544.P17458915882828815376

`A073115(n)+char[A135481(A325782(2*(n+2)))]`
-/

namespace A081544.P17458915882828815376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A325782 (2 * (n + 2))).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073115 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A081544.P17458915882828815376

/-! ## A081544.P11272657168712579125

`A073115(n)+char[A135481(A358541(2*n+3))]`
-/

namespace A081544.P11272657168712579125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A358541 (2 * n + 3)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073115 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A081544.P11272657168712579125

/-!
# A081545: Smallest prime which is 1 more than the product of n distinct composite numbers.

The programs for A081545, there is no canonical definition to state claims against.
-/

/-! ## A081545.P16931367560647976317

`A062401(1+n*6^n)+1`
-/

namespace A081545.P16931367560647976317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (1 + n * 6 ^ n) + 1

end

end A081545.P16931367560647976317

/-!
# A081546: Smallest prime which is 1 more than the product of n (not necessarily distinct) composite numbers.

The programs for A081546, there is no canonical definition to state claims against.
-/

/-! ## A081546.P4594344090450628005

`A028310(A073919(2*n))`
-/

namespace A081546.P4594344090450628005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A073919 (2 * n)).toNat

end

end A081546.P4594344090450628005

/-! ## A081546.P9735444807328423843

`A073919(A001222(9^n))`
-/

namespace A081546.P9735444807328423843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073919 (A001222 (9 ^ n)).toNat

end

end A081546.P9735444807328423843

/-!
# A081547: Smallest composite number which is 1 more than the product of n (not necessarily distinct) prime numbers.

The programs for A081547, there is no canonical definition to state claims against.
-/

/-! ## A081547.P11586452766259003451

`A115060(A128686(n+1)+1)`
-/

namespace A081547.P11586452766259003451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A128686 (n + 1) + 1).toNat

end

end A081547.P11586452766259003451

/-! ## A081547.P10330618327785119645

`A128686(A004891(n+2))+1`
-/

namespace A081547.P10330618327785119645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128686 (A004891 (n + 2)).toNat + 1

end

end A081547.P10330618327785119645

/-! ## A081547.P7244268901846615699

`A026834(6*A128686(n+1))`
-/

namespace A081547.P7244268901846615699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (6 * A128686 (n + 1)).toNat

end

end A081547.P7244268901846615699

/-!
# A081551: Triangle, read by rows, in which the n-th row contains n smallest n-digit numbers.

The programs for A081551, the canonical program `A081551.P7080515350163513496` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081551 has offset 1).

The definition of A081551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5051 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081551.P7080515350163513496

`A011557(A003056(n))+A002262(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A081551

/-- `A011557(A003056(n))+A002262(n)` -/
def P7080515350163513496.Spec : Prop :=
  ∀ n, P7080515350163513496.a n = A081551 (n + 1)

theorem P7080515350163513496.correct : P7080515350163513496.Spec := by
  intro n
  simp only [A081551, Nat.add_sub_cancel]

end A081551

/-! ## A081551.P10393487504777993018

`A002283(A003056(n))+A002260(n+1)`
-/

namespace A081551.P10393487504777993018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (A003056 n).toNat + A002260 (n + 1)

end

end A081551.P10393487504777993018

namespace A081551

/-- `A002283(A003056(n))+A002260(n+1)` -/
def P10393487504777993018.Spec : Prop :=
  ∀ n, P10393487504777993018.a n = A081551 (n + 1)

theorem P10393487504777993018.correct : P10393487504777993018.Spec := by
  intro n
  simp only [A081551, Nat.add_sub_cancel, A081551.P10393487504777993018.a, A081551.P7080515350163513496.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A002283, A002283.P2252111154706607536.a, A003056, A003056.P5318256527314048597.a, A011557, A011557.P11220211478167790856.a, A057944, A057944.P16851463738746886639.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A081551

/-! ## A081551.P1540562953500134661

`A309761(1-A002262(n)+n)+A002262(n)`
-/

namespace A081551.P1540562953500134661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (1 - A002262 n + (n : ℤ)).toNat + A002262 n

end

end A081551.P1540562953500134661

namespace A081551

/-- `A309761(1-A002262(n)+n)+A002262(n)` -/
def P1540562953500134661.Spec : Prop :=
  ∀ n, P1540562953500134661.a n = A081551 (n + 1)

end A081551

/-! ## A081551.P10135526095126007919

`A011557(A002262(A025581(n)+n))+A002262(n)`
-/

namespace A081551.P10135526095126007919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (A002262 (A025581 n + (n : ℤ)).toNat).toNat + A002262 n

end

end A081551.P10135526095126007919

namespace A081551

/-- `A011557(A002262(A025581(n)+n))+A002262(n)` -/
def P10135526095126007919.Spec : Prop :=
  ∀ n, P10135526095126007919.a n = A081551 (n + 1)

end A081551

/-! ## A081551.P397270926668561836

`A038303(n-A002262(n))+A002262(n)`
-/

namespace A081551.P397270926668561836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038303 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A081551.P397270926668561836

namespace A081551

/-- `A038303(n-A002262(n))+A002262(n)` -/
def P397270926668561836.Spec : Prop :=
  ∀ n, P397270926668561836.a n = A081551 (n + 1)

end A081551

/-! ## A081551.P5545474171597932218

`A038305(A057944(n))+A002262(n)`
-/

namespace A081551.P5545474171597932218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038305 (A057944 n).toNat + A002262 n

end

end A081551.P5545474171597932218

namespace A081551

/-- `A038305(A057944(n))+A002262(n)` -/
def P5545474171597932218.Spec : Prop :=
  ∀ n, P5545474171597932218.a n = A081551 (n + 1)

end A081551

/-! ## A081551.P2856866564679234311

`A038305(n-A002262(n))+A002262(n)`
-/

namespace A081551.P2856866564679234311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038305 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A081551.P2856866564679234311

namespace A081551

/-- `A038305(n-A002262(n))+A002262(n)` -/
def P2856866564679234311.Spec : Prop :=
  ∀ n, P2856866564679234311.a n = A081551 (n + 1)

end A081551

/-! ## A081551.P13106271989706392517

`A038308(n-A002262(n))+A002262(n)`
-/

namespace A081551.P13106271989706392517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038308 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A081551.P13106271989706392517

namespace A081551

/-- `A038308(n-A002262(n))+A002262(n)` -/
def P13106271989706392517.Spec : Prop :=
  ∀ n, P13106271989706392517.a n = A081551 (n + 1)

end A081551

/-! ## A081551.P3508326285091620547

`A038314(n-A002262(n))+A002262(n)`
-/

namespace A081551.P3508326285091620547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038314 ((n : ℤ) - A002262 n).toNat + A002262 n

end

end A081551.P3508326285091620547

namespace A081551

/-- `A038314(n-A002262(n))+A002262(n)` -/
def P3508326285091620547.Spec : Prop :=
  ∀ n, P3508326285091620547.a n = A081551 (n + 1)

end A081551

/-! ## A081551.P9680012167560444976

`A007088(A137688(n))+A002262(n)`
-/

namespace A081551.P9680012167560444976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A137688 n).toNat + A002262 n

end

end A081551.P9680012167560444976

namespace A081551

/-- `A007088(A137688(n))+A002262(n)` -/
def P9680012167560444976.Spec : Prop :=
  ∀ n, P9680012167560444976.a n = A081551 (n + 1)

end A081551

/-!
# A081552: Leading terms of rows in A081551.

The programs for A081552, the canonical program `A081552.P13670071742111004512` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081552 has offset 1).

The definition of A081552 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081552.P13670071742111004512

`10^n+n+1-1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081552

/-- `10^n+n+1-1` -/
def P13670071742111004512.Spec : Prop :=
  ∀ n, P13670071742111004512.a n = A081552 (n + 1)

theorem P13670071742111004512.correct : P13670071742111004512.Spec := by
  intro n
  simp only [A081552, Nat.add_sub_cancel]

end A081552

/-! ## A081552.P6055917357087782979

`∑[∑[ogf((-1+x+9x^2)/(-1+10x))]]`
-/

namespace A081552.P6055917357087782979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -9] [1, -10] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081552.P6055917357087782979

namespace A081552

/-- `∑[∑[ogf((-1+x+9x^2)/(-1+10x))]]` -/
def P6055917357087782979.Spec : Prop :=
  ∀ n, P6055917357087782979.a n = A081552 (n + 1)

end A081552

/-! ## A081552.P1250454511807056997

`A081551(∑[n+1])`
-/

namespace A081552.P1250454511807056997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081551 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081552.P1250454511807056997

namespace A081552

/-- `A081551(∑[n+1])` -/
def P1250454511807056997.Spec : Prop :=
  ∀ n, P1250454511807056997.a n = A081552 (n + 1)

end A081552

/-! ## A081552.P10395562408733618833

`or(n, sqrt(10^(2*n)))`
-/

namespace A081552.P10395562408733618833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (10 ^ (2 * n) : ℝ)))

end

end A081552.P10395562408733618833

namespace A081552

/-- `or(n, sqrt(10^(2*n)))` -/
def P10395562408733618833.Spec : Prop :=
  ∀ n, P10395562408733618833.a n = A081552 (n + 1)

end A081552

/-! ## A081552.P2992356560150509367

`xor(n, sqrt(10^(2*n)))`
-/

namespace A081552.P2992356560150509367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (10 ^ (2 * n) : ℝ)))

end

end A081552.P2992356560150509367

namespace A081552

/-- `xor(n, sqrt(10^(2*n)))` -/
def P2992356560150509367.Spec : Prop :=
  ∀ n, P2992356560150509367.a n = A081552 (n + 1)

end A081552

/-!
# A081553: Sum of n-th row of A081551.

The programs for A081553, the canonical program `A081553.P1785966243489399975` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081553 has offset 1).

The definition of A081553 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081553.P1785966243489399975

`(n+1)*10^n+C(n+1, 2)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081553

/-- `(n+1)*10^n+C(n+1, 2)` -/
def P1785966243489399975.Spec : Prop :=
  ∀ n, (P1785966243489399975.a n : ℤ) = A081553 (n + 1)

theorem P1785966243489399975.correct : P1785966243489399975.Spec := by
  intro n
  simp only [A081553, Nat.add_sub_cancel]

end A081553

/-! ## A081553.P6213805200299609293

`(n+1)*10^n+(n+1)*n/2`
-/

namespace A081553.P6213805200299609293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 10 ^ n : ℚ) + ((n + 1) * n : ℚ) / 2

end

end A081553.P6213805200299609293

namespace A081553

/-- `(n+1)*10^n+(n+1)*n/2` -/
def P6213805200299609293.Spec : Prop :=
  ∀ n, P6213805200299609293.a n = (A081553 (n + 1) : ℚ)

theorem P6213805200299609293.correct : P6213805200299609293.Spec := by
  intro n
  simp only [A081553, Nat.add_sub_cancel, A081553.P6213805200299609293.a, A081553.P1785966243489399975.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081553

/-! ## A081553.P9407633984071714466

`∑[A081045(n)+n]`
-/

namespace A081553.P9407633984071714466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081553.P9407633984071714466

namespace A081553

/-- `∑[A081045(n)+n]` -/
def P9407633984071714466.Spec : Prop :=
  ∀ n, P9407633984071714466.a n = A081553 (n + 1)

end A081553

/-! ## A081553.P8132352713354123354

`∑[∑[A255381(n)]+n]`
-/

namespace A081553.P8132352713354123354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255381 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081553.P8132352713354123354

namespace A081553

/-- `∑[∑[A255381(n)]+n]` -/
def P8132352713354123354.Spec : Prop :=
  ∀ n, P8132352713354123354.a n = A081553 (n + 1)

end A081553

/-! ## A081553.P18356916484794577881

`∑[Δ[A094797(n)]+n]`
-/

namespace A081553.P18356916484794577881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094797 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081553.P18356916484794577881

namespace A081553

/-- `∑[Δ[A094797(n)]+n]` -/
def P18356916484794577881.Spec : Prop :=
  ∀ n, P18356916484794577881.a n = A081553 (n + 1)

end A081553

/-! ## A081553.P11738876142536014141

`or(∑[n], A053541(n+1))`
-/

namespace A081553.P11738876142536014141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A053541 (n + 1))

end

end A081553.P11738876142536014141

namespace A081553

/-- `or(∑[n], A053541(n+1))` -/
def P11738876142536014141.Spec : Prop :=
  ∀ n, P11738876142536014141.a n = A081553 (n + 1)

end A081553

/-! ## A081553.P17057448563421644453

`or((n+1)*A011557(n), ∑[n])`
-/

namespace A081553.P17057448563421644453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n + 1 : ℤ) * A011557 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081553.P17057448563421644453

namespace A081553

/-- `or((n+1)*A011557(n), ∑[n])` -/
def P17057448563421644453.Spec : Prop :=
  ∀ n, P17057448563421644453.a n = A081553 (n + 1)

end A081553

/-! ## A081553.P6203294143854804081

`or(∑[A081045(n)], A000217(n))`
-/

namespace A081553.P6203294143854804081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000217 n)

end

end A081553.P6203294143854804081

namespace A081553

/-- `or(∑[A081045(n)], A000217(n))` -/
def P6203294143854804081.Spec : Prop :=
  ∀ n, P6203294143854804081.a n = A081553 (n + 1)

end A081553

/-!
# A081554: a(n) = sqrt(2)*( (3+2*sqrt(2))^n - (3-2*sqrt(2))^n ).

The programs for A081554, the canonical program `A081554.P7660695786809032518` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081554 has offset 0).

The definition of A081554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081554.P7660695786809032518

`6*a(n-1)-a(n-2)` with `a(0)=0, a(1)=8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081554

/-- `6*a(n-1)-a(n-2)` -/
def P7660695786809032518.Spec : Prop :=
  ∀ n, P7660695786809032518.a n = A081554 n

theorem P7660695786809032518.correct : P7660695786809032518.Spec := by
  intro n
  simp only [A081554]

end A081554

/-! ## A081554.P2911270320194964264

`8*A001109(n)`
-/

namespace A081554.P2911270320194964264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A001109 n

end

end A081554.P2911270320194964264

namespace A081554

/-- `8*A001109(n)` -/
def P2911270320194964264.Spec : Prop :=
  ∀ n, P2911270320194964264.a n = A081554 n

end A081554

/-! ## A081554.P796776800723162375

`4*A000129(2*n)`
-/

namespace A081554.P796776800723162375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000129 (2 * n)

end

end A081554.P796776800723162375

namespace A081554

/-- `4*A000129(2*n)` -/
def P796776800723162375.Spec : Prop :=
  ∀ n, P796776800723162375.a n = A081554 n

end A081554

/-! ## A081554.P3595664889954383861

`ogf(8x/(1-6x+x^2))`
-/

namespace A081554.P3595664889954383861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -6, 1] n

end

end A081554.P3595664889954383861

namespace A081554

/-- `ogf(8x/(1-6x+x^2))` -/
def P3595664889954383861.Spec : Prop :=
  ∀ n, P3595664889954383861.a n = A081554 n

end A081554

/-! ## A081554.P18294282045535614525

`Δ[floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=2, a(1)=2, a(2)=10`
-/

namespace A081554.P18294282045535614525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 10] fun n f1 =>
  ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081554.P18294282045535614525

namespace A081554

/-- `Δ[floor(a(n-1)/(3-sqrt(8)))]` -/
def P18294282045535614525.Spec : Prop :=
  ∀ n, P18294282045535614525.a n = A081554 n

end A081554

/-! ## A081554.P15764348168220616251

`Δ[A350921(n)]`
-/

namespace A081554.P15764348168220616251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081554.P15764348168220616251

namespace A081554

/-- `Δ[A350921(n)]` -/
def P15764348168220616251.Spec : Prop :=
  ∀ n, P15764348168220616251.a n = A081554 n

end A081554

/-! ## A081554.P11252311371723123643

`A114040(n)-1`
-/

namespace A081554.P11252311371723123643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114040 n - 1

end

end A081554.P11252311371723123643

namespace A081554

/-- `A114040(n)-1` -/
def P11252311371723123643.Spec : Prop :=
  ∀ n, P11252311371723123643.a n = A081554 n

end A081554

/-! ## A081554.P17469539006557771663

`2*A005319(n)`
-/

namespace A081554.P17469539006557771663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005319 n

end

end A081554.P17469539006557771663

namespace A081554

/-- `2*A005319(n)` -/
def P17469539006557771663.Spec : Prop :=
  ∀ n, P17469539006557771663.a n = A081554 n

end A081554

/-! ## A081554.P2738368888487643915

`4*A001542(n)`
-/

namespace A081554.P2738368888487643915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001542 n

end

end A081554.P2738368888487643915

namespace A081554

/-- `4*A001542(n)` -/
def P2738368888487643915.Spec : Prop :=
  ∀ n, P2738368888487643915.a n = A081554 n

end A081554

/-! ## A081554.P16524163072665631321

`Δ[A137199(2*n)]`
-/

namespace A081554.P16524163072665631321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137199 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081554.P16524163072665631321

namespace A081554

/-- `Δ[A137199(2*n)]` -/
def P16524163072665631321.Spec : Prop :=
  ∀ n, P16524163072665631321.a n = A081554 n

end A081554

/-! ## A081554.P16155329697770649539

`2*A089499(2*n)`
-/

namespace A081554.P16155329697770649539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089499 (2 * n)

end

end A081554.P16155329697770649539

namespace A081554

/-- `2*A089499(2*n)` -/
def P16155329697770649539.Spec : Prop :=
  ∀ n, P16155329697770649539.a n = A081554 n

end A081554

/-! ## A081554.P2813507721775413753

`2*A143608(2*n)`
-/

namespace A081554.P2813507721775413753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A143608 (2 * n)

end

end A081554.P2813507721775413753

namespace A081554

/-- `2*A143608(2*n)` -/
def P2813507721775413753.Spec : Prop :=
  ∀ n, P2813507721775413753.a n = A081554 n

end A081554

/-! ## A081554.P7691723490057164684

`4*(1-A182188(n))`
-/

namespace A081554.P7691723490057164684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (1 - A182188 n)

end

end A081554.P7691723490057164684

namespace A081554

/-- `4*(1-A182188(n))` -/
def P7691723490057164684.Spec : Prop :=
  ∀ n, P7691723490057164684.a n = A081554 n

end A081554

/-! ## A081554.P4465326706268472964

`4*(A182189(n)-1)`
-/

namespace A081554.P4465326706268472964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A182189 n - 1)

end

end A081554.P4465326706268472964

namespace A081554

/-- `4*(A182189(n)-1)` -/
def P4465326706268472964.Spec : Prop :=
  ∀ n, P4465326706268472964.a n = A081554 n

end A081554

/-! ## A081554.P7057736678785533685

`4/3*A075848(n)`
-/

namespace A081554.P7057736678785533685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A075848 n : ℚ)

end

end A081554.P7057736678785533685

namespace A081554

/-- `4/3*A075848(n)` -/
def P7057736678785533685.Spec : Prop :=
  ∀ n, P7057736678785533685.a n = (A081554 n : ℚ)

end A081554

/-! ## A081554.P4793939504549211070

`2*A163271(Δ[n²])`
-/

namespace A081554.P4793939504549211070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163271 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081554.P4793939504549211070

namespace A081554

/-- `2*A163271(Δ[n²])` -/
def P4793939504549211070.Spec : Prop :=
  ∀ n, P4793939504549211070.a n = A081554 n

end A081554

/-! ## A081554.P4498210445325279211

`Δ[lcm(2, A176981(2*n))]`
-/

namespace A081554.P4498210445325279211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A176981 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081554.P4498210445325279211

namespace A081554

/-- `Δ[lcm(2, A176981(2*n))]` -/
def P4498210445325279211.Spec : Prop :=
  ∀ n, P4498210445325279211.a n = A081554 n

end A081554

/-! ## A081554.P116617553458760819

`4*A126354(2*(n+1))`
-/

namespace A081554.P116617553458760819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A126354 (2 * (n + 1))

end

end A081554.P116617553458760819

namespace A081554

/-- `4*A126354(2*(n+1))` -/
def P116617553458760819.Spec : Prop :=
  ∀ n, P116617553458760819.a n = A081554 n

end A081554

/-! ## A081554.P8727515649631731248

`record[Δ[2*A116558(n+1)]]`
-/

namespace A081554.P8727515649631731248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116558 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081554.P8727515649631731248

namespace A081554

/-- `record[Δ[2*A116558(n+1)]]` -/
def P8727515649631731248.Spec : Prop :=
  ∀ n, P8727515649631731248.a n = A081554 n

end A081554

/-! ## A081554.P402553345462403983

`Δ[2*A215936(2*n+1)]`
-/

namespace A081554.P402553345462403983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215936 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081554.P402553345462403983

namespace A081554

/-- `Δ[2*A215936(2*n+1)]` -/
def P402553345462403983.Spec : Prop :=
  ∀ n, P402553345462403983.a n = A081554 n

end A081554

/-!
# A081555: a(n) = 6*a(n-1) - a(n-2) - 4, a(0)=3, a(1)=7.

The programs for A081555, the canonical program `A081555.P12286667004095670904` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081555 has offset 0).

The definition of A081555 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)-4` (program `A081555.P12286667004095670904`, by `A081555.P12286667004095670904.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A081555.P12286667004095670904

`6*a(n-1)-a(n-2)-4` with `a(0)=3, a(1)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081555

/-- `6*a(n-1)-a(n-2)-4` -/
def P12286667004095670904.Spec : Prop :=
  ∀ n, P12286667004095670904.a n = A081555 n

theorem P12286667004095670904.correct : P12286667004095670904.Spec := by
  intro n
  simp only [A081555]

end A081555

/-! ## A081555.P14376171404752470543

`A003499(n)+1`
-/

namespace A081555.P14376171404752470543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 n + 1

end

end A081555.P14376171404752470543

namespace A081555

/-- `A003499(n)+1` -/
def P14376171404752470543.Spec : Prop :=
  ∀ n, P14376171404752470543.a n = A081555 n

end A081555

/-! ## A081555.P8027523190355311787

`A051927(2*n)`
-/

namespace A081555.P8027523190355311787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051927 (2 * n)

end

end A081555.P8027523190355311787

namespace A081555

/-- `A051927(2*n)` -/
def P8027523190355311787.Spec : Prop :=
  ∀ n, P8027523190355311787.a n = A081555 n

end A081555

/-! ## A081555.P11480756578884966791

`∑[ogf((4x+4x^2)/(1-6x+x^2))]+3`
-/

namespace A081555.P11480756578884966791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 4] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A081555.P11480756578884966791

namespace A081555

/-- `∑[ogf((4x+4x^2)/(1-6x+x^2))]+3` -/
def P11480756578884966791.Spec : Prop :=
  ∀ n, P11480756578884966791.a n = A081555 n

end A081555

/-! ## A081555.P12501780349729748863

`record[(-1)^n*lcm(2, round((sqrt(2)+1)^n))+1]`
-/

namespace A081555.P12501780349729748863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Int.lcm 2 (SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n)) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081555.P12501780349729748863

namespace A081555

/-- `record[(-1)^n*lcm(2, round((sqrt(2)+1)^n))+1]` -/
def P12501780349729748863.Spec : Prop :=
  ∀ n, P12501780349729748863.a n = A081555 n

end A081555

/-! ## A081555.P6641898882566578113

`(3+2*sqrt(2))^n+(3-2*sqrt(2))^n+1`
-/

namespace A081555.P6641898882566578113
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 + 2 * Real.sqrt (2 : ℝ)) ^ n + (3 - 2 * Real.sqrt (2 : ℝ)) ^ n + 1

end

end A081555.P6641898882566578113

namespace A081555

/-- `(3+2*sqrt(2))^n+(3-2*sqrt(2))^n+1` -/
def P6641898882566578113.Spec : Prop :=
  ∀ n, P6641898882566578113.a n = (A081555 n : ℝ)

theorem P6641898882566578113.correct : P6641898882566578113.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081555, Nat.add_sub_cancel, A081555.P6641898882566578113.a, A081555.P12286667004095670904.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081555, Nat.add_sub_cancel, A081555.P6641898882566578113.a, A081555.P12286667004095670904.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A081555

/-! ## A081555.P5009889495776704857

`or(2, A383720(n))`
-/

namespace A081555.P5009889495776704857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A383720 n)

end

end A081555.P5009889495776704857

namespace A081555

/-- `or(2, A383720(n))` -/
def P5009889495776704857.Spec : Prop :=
  ∀ n, P5009889495776704857.a n = A081555 n

end A081555

/-! ## A081555.P6069191712961329020

`xor(1, 2*A001541(n))`
-/

namespace A081555.P6069191712961329020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * A001541 n)

end

end A081555.P6069191712961329020

namespace A081555

/-- `xor(1, 2*A001541(n))` -/
def P6069191712961329020.Spec : Prop :=
  ∀ n, P6069191712961329020.a n = A081555 n

end A081555

/-! ## A081555.P2733873225940295493

`xor(A002203(2*n), 1)`
-/

namespace A081555.P2733873225940295493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002203 (2 * n)) 1

end

end A081555.P2733873225940295493

namespace A081555

/-- `xor(A002203(2*n), 1)` -/
def P2733873225940295493.Spec : Prop :=
  ∀ n, P2733873225940295493.a n = A081555 n

end A081555

/-! ## A081555.P18359669122000708903

`or(2, A124696(2*n))`
-/

namespace A081555.P18359669122000708903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A124696 (2 * n))

end

end A081555.P18359669122000708903

namespace A081555

/-- `or(2, A124696(2*n))` -/
def P18359669122000708903.Spec : Prop :=
  ∀ n, P18359669122000708903.a n = A081555 n

end A081555

/-! ## A081555.P4093767702537215125

`xor(2, A080039(2*n))`
-/

namespace A081555.P4093767702537215125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A080039 (2 * n))

end

end A081555.P4093767702537215125

namespace A081555

/-- `xor(2, A080039(2*n))` -/
def P4093767702537215125.Spec : Prop :=
  ∀ n, P4093767702537215125.a n = A081555 n

end A081555

/-! ## A081555.P11390674052572395248

`or(3, A099425(2*n))`
-/

namespace A081555.P11390674052572395248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A099425 (2 * n))

end

end A081555.P11390674052572395248

namespace A081555

/-- `or(3, A099425(2*n))` -/
def P11390674052572395248.Spec : Prop :=
  ∀ n, P11390674052572395248.a n = A081555 n

end A081555

/-! ## A081555.P6440806214630124542

`record[2*A123335(n)+1]`
-/

namespace A081555.P6440806214630124542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123335 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081555.P6440806214630124542

namespace A081555

/-- `record[2*A123335(n)+1]` -/
def P6440806214630124542.Spec : Prop :=
  ∀ n, P6440806214630124542.a n = A081555 n

end A081555

/-! ## A081555.P15078250650796604909

`record[2*A126354(n+1)+1]`
-/

namespace A081555.P15078250650796604909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126354 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081555.P15078250650796604909

namespace A081555

/-- `record[2*A126354(n+1)+1]` -/
def P15078250650796604909.Spec : Prop :=
  ∀ n, P15078250650796604909.a n = A081555 n

end A081555

/-! ## A081555.P14667211521716936233

`A124696(A004277(n))`
-/

namespace A081555.P14667211521716936233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124696 (A004277 n).toNat

end

end A081555.P14667211521716936233

namespace A081555

/-- `A124696(A004277(n))` -/
def P14667211521716936233.Spec : Prop :=
  ∀ n, P14667211521716936233.a n = A081555 n

end A081555

/-! ## A081555.P3656448808405268978

`A124696(A004275(n+1))`
-/

namespace A081555.P3656448808405268978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124696 (A004275 (n + 1)).toNat

end

end A081555.P3656448808405268978

namespace A081555

/-- `A124696(A004275(n+1))` -/
def P3656448808405268978.Spec : Prop :=
  ∀ n, P3656448808405268978.a n = A081555 n

end A081555

/-! ## A081555.P8869749635486634286

`xor(1, A002203(A005843(n)))`
-/

namespace A081555.P8869749635486634286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A002203 (A005843 n).toNat)

end

end A081555.P8869749635486634286

namespace A081555

/-- `xor(1, A002203(A005843(n)))` -/
def P8869749635486634286.Spec : Prop :=
  ∀ n, P8869749635486634286.a n = A081555 n

end A081555

/-!
# A081556: Next-to-last term in n-th row of A080504.

The programs for A081556, there is no canonical definition to state claims against.
-/

/-! ## A081556.P7677163458189644027

`A187012(n+2)-A298902(A081579(n))`
-/

namespace A081556.P7677163458189644027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187012 (n + 2) - A298902 (A081579 n).toNat

end

end A081556.P7677163458189644027

/-! ## A081556.P161466674011928320

`A048766(n^3+1)+∑[n]%(n+2)`
-/

namespace A081556.P161466674011928320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (n ^ 3 + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) : ℕ) : ℤ)

end

end A081556.P161466674011928320

/-! ## A081556.P17797624240435686512

`or(n²%(or(1, n)+n)+1, A000007(n^3))`
-/

namespace A081556.P17797624240435686512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n ^ 2 % (Nat.lor 1 n + n) + 1 : ℕ) : ℤ) (A000007 (n ^ 3))

end

end A081556.P17797624240435686512

/-! ## A081556.P6769649687045976197

`A187012(n+2)%A054646(n+2)`
-/

namespace A081556.P6769649687045976197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187012 (n + 2)) (A054646 (n + 2))

end

end A081556.P6769649687045976197

/-!
# A081557: Binomial transform of expansion of exp(cosh(x)), A005046.

The programs for A081557, there is no canonical definition to state claims against.
-/

/-! ## A081557.P8766145687579008732

`A081561(n)/A000079(n)`
-/

namespace A081557.P8766145687579008732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081561 n : ℚ) / (A000079 n : ℚ)

end

end A081557.P8766145687579008732

/-! ## A081557.P3736241980696924724

`A081561(n)/∑[A011782(n)]`
-/

namespace A081557.P3736241980696924724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081561 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A081557.P3736241980696924724

/-! ## A081557.P8431784998031335563

`A081561(n)/Δ[A000051(n)]`
-/

namespace A081557.P8431784998031335563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081561 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A081557.P8431784998031335563

/-! ## A081557.P322136604960709797

`A081561(n)/Δ[A000225(n)]`
-/

namespace A081557.P322136604960709797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081561 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A081557.P322136604960709797

/-! ## A081557.P876176543737534220

`A081561(n)/record[A059268(n)]`
-/

namespace A081557.P876176543737534220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081561 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A081557.P876176543737534220

/-! ## A081557.P17988060215838077742

`A081561(n)/A011782(n+1)`
-/

namespace A081557.P17988060215838077742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081561 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A081557.P17988060215838077742

/-!
# A081558: Exponential generating function: exp(cosh(x)+2*x-1).

The programs for A081558, there is no canonical definition to state claims against.
-/

/-! ## A081558.P659995196488575133

`round(sqrt(∑[A163948(n+1)]))`
-/

namespace A081558.P659995196488575133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A081558.P659995196488575133

/-! ## A081558.P3939238988989015787

`∑[A157271(A150003(n))]`
-/

namespace A081558.P3939238988989015787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A150003 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081558.P3939238988989015787

/-! ## A081558.P14090679209340655190

`∑[A100196(A249474(n+1))]`
-/

namespace A081558.P14090679209340655190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A249474 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081558.P14090679209340655190

/-!
# A081559: Expansion of e.g.f.: exp(cosh(2*x)-1), even powers only.

The programs for A081559, there is no canonical definition to state claims against.
-/

/-! ## A081559.P9614262442090287204

`4^n*A005046(n)`
-/

namespace A081559.P9614262442090287204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A005046 n

end

end A081559.P9614262442090287204

/-! ## A081559.P17322260692904763103

`A005046(n)*A051049(2*n)`
-/

namespace A081559.P17322260692904763103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005046 n * A051049 (2 * n)

end

end A081559.P17322260692904763103

/-! ## A081559.P10823483483566414346

`A005046(n)*A011782(n+1)²`
-/

namespace A081559.P10823483483566414346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005046 n * A011782 (n + 1) ^ 2

end

end A081559.P10823483483566414346

/-! ## A081559.P12576231263635099887

`A005046(n)*A011782(2*n+1)`
-/

namespace A081559.P12576231263635099887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005046 n * A011782 (2 * n + 1)

end

end A081559.P12576231263635099887

/-! ## A081559.P434503862199633183

`A000079(n)*A005046(n)*A000079(n)`
-/

namespace A081559.P434503862199633183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A005046 n * A000079 n

end

end A081559.P434503862199633183

/-!
# A081560: Binomial transform of expansion of exp(cosh(2*x)).

The programs for A081560, there is no canonical definition to state claims against.
-/

/-! ## A081560.P9672489570874708709

`A389835(A149108(n))`
-/

namespace A081560.P9672489570874708709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389835 (A149108 n).toNat

end

end A081560.P9672489570874708709

/-! ## A081560.P13195998401699589448

`A139642(A372373(n+1))`
-/

namespace A081560.P13195998401699589448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139642 (A372373 (n + 1)).toNat

end

end A081560.P13195998401699589448

/-!
# A081561: Second binomial transform of expansion of exp(cosh(2*x)).

The programs for A081561, there is no canonical definition to state claims against.
-/

/-! ## A081561.P15021278154109455353

`2^n*A081557(n)`
-/

namespace A081561.P15021278154109455353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081557 n

end

end A081561.P15021278154109455353

/-! ## A081561.P8566215008813761874

`A081557(n)*A137688(∑[n])`
-/

namespace A081561.P8566215008813761874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081557 n * A137688 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081561.P8566215008813761874

/-! ## A081561.P7768735500973606589

`abs(Δ[A168614(n)]*A081557(n))`
-/

namespace A081561.P7768735500973606589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A081557 n|

end

end A081561.P7768735500973606589

/-! ## A081561.P18163095886853373320

`A081557(n)/A081567(n)*A090041(n)`
-/

namespace A081561.P18163095886853373320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081557 n : ℚ) / (A081567 n : ℚ) * (A090041 n : ℚ)

end

end A081561.P18163095886853373320

/-! ## A081561.P8096913030064229117

`A081557(n)*A299682(A000124(n))`
-/

namespace A081561.P8096913030064229117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081557 n * A299682 (A000124 n).toNat

end

end A081561.P8096913030064229117

/-!
# A081562: Binomial transform of expansion of exp(2cosh(x)), A000807.

The programs for A081562, there is no canonical definition to state claims against.
-/

/-! ## A081562.P15271191997652510424

`A216174(n)-and(16, A327353(3*n+2))`
-/

namespace A081562.P15271191997652510424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216174 n - Int.land 16 (A327353 (3 * n + 2))

end

end A081562.P15271191997652510424

/-! ## A081562.P9177064274086004824

`A004525(A095121(n)+A052605(n))`
-/

namespace A081562.P9177064274086004824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A095121 n + A052605 n).toNat

end

end A081562.P9177064274086004824

/-! ## A081562.P13556234687027539307

`A034586(A095121(n)+A052605(n))`
-/

namespace A081562.P13556234687027539307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034586 (A095121 n + A052605 n).toNat

end

end A081562.P13556234687027539307

/-!
# A081563: Second binomial transform of expansion of exp(2*cosh(x)).

The programs for A081563, there is no canonical definition to state claims against.
-/

/-! ## A081563.P4723561775074268589

`A129603(2^n)-(3^n-∑[2^n])`
-/

namespace A081563.P4723561775074268589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129603 (2 ^ n) - ((3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A081563.P4723561775074268589

/-! ## A081563.P7377178804537297018

`record[(n+1)²/∏{p}[n+1, #]-A325102(n)]`
-/

namespace A081563.P7377178804537297018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) - (A325102 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081563.P7377178804537297018

/-!
# A081565: Binomial transform of expansion of exp(3cosh(x)).

The programs for A081565, there is no canonical definition to state claims against.
-/

/-! ## A081565.P12154509045280647337

`round(sqrt(∏{p}[(A018252(n+1)-2)^n+n+1, #]))`
-/

namespace A081565.P12154509045280647337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) - 2) ^ n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℝ))

end

end A081565.P12154509045280647337

/-! ## A081565.P5473344590262513443

`A051162(A112243(n))`
-/

namespace A081565.P5473344590262513443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A112243 n).toNat

end

end A081565.P5473344590262513443

/-!
# A081566: Second binomial transform of expansion of exp(3cosh(x)).

The programs for A081566, there is no canonical definition to state claims against.
-/

/-! ## A081566.P15761763399264452805

`A110658(A226511(n))+A000225(n)`
-/

namespace A081566.P15761763399264452805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (A226511 n).toNat + A000225 n

end

end A081566.P15761763399264452805

/-! ## A081566.P12036984257654902585

`∑[A268686(A349289(n)+A000351(n))]+1`
-/

namespace A081566.P12036984257654902585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268686 (A349289 n + A000351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A081566.P12036984257654902585

/-!
# A081567: Second binomial transform of F(n+1).

The programs for A081567, the canonical program `A081567.P17864537435507841872` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081567 has offset 0).

The definition of A081567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081567.P17864537435507841872

`5*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081567

/-- `5*a(n-1)-5*a(n-2)` -/
def P17864537435507841872.Spec : Prop :=
  ∀ n, P17864537435507841872.a n = A081567 n

theorem P17864537435507841872.correct : P17864537435507841872.Spec := by
  intro n
  simp only [A081567]

end A081567

/-! ## A081567.P591894330158800380

`A189315(n+1)/10`
-/

namespace A081567.P591894330158800380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189315 (n + 1) : ℚ) / 10

end

end A081567.P591894330158800380

namespace A081567

/-- `A189315(n+1)/10` -/
def P591894330158800380.Spec : Prop :=
  ∀ n, P591894330158800380.a n = (A081567 n : ℚ)

end A081567

/-! ## A081567.P8905205328826733778

`A090041(n)/2^n`
-/

namespace A081567.P8905205328826733778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090041 n : ℚ) / (2 ^ n : ℚ)

end

end A081567.P8905205328826733778

namespace A081567

/-- `A090041(n)/2^n` -/
def P8905205328826733778.Spec : Prop :=
  ∀ n, P8905205328826733778.a n = (A081567 n : ℚ)

end A081567

/-! ## A081567.P389671802388898279

`ogf((1-2x)/(1-5x+5x^2))`
-/

namespace A081567.P389671802388898279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -5, 5] n

end

end A081567.P389671802388898279

namespace A081567

/-- `ogf((1-2x)/(1-5x+5x^2))` -/
def P389671802388898279.Spec : Prop :=
  ∀ n, P389671802388898279.a n = A081567 n

end A081567

/-! ## A081567.P15475742766585058528

`5*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A081567.P15475742766585058528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  5 * (a (n - 1) - a (n - 2))

end

end A081567.P15475742766585058528

namespace A081567

/-- `5*(a(n-1)-a(n-2))` -/
def P15475742766585058528.Spec : Prop :=
  ∀ n, P15475742766585058528.a n = A081567 n

theorem P15475742766585058528.correct : P15475742766585058528.Spec := by
  intro n
  simp only [A081567, Nat.add_sub_cancel, A081567.P15475742766585058528.a, A081567.P17864537435507841872.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A081567

/-! ## A081567.P14422771528690213485

`∑[A052936(n)]`
-/

namespace A081567.P14422771528690213485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081567.P14422771528690213485

namespace A081567

/-- `∑[A052936(n)]` -/
def P14422771528690213485.Spec : Prop :=
  ∀ n, P14422771528690213485.a n = A081567 n

end A081567

/-! ## A081567.P16602379034254773805

`Δ[A093129(n)]`
-/

namespace A081567.P16602379034254773805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081567.P16602379034254773805

namespace A081567

/-- `Δ[A093129(n)]` -/
def P16602379034254773805.Spec : Prop :=
  ∀ n, P16602379034254773805.a n = A081567 n

end A081567

/-! ## A081567.P7665743293716614012

`A178381(Δ[n²])`
-/

namespace A081567.P7665743293716614012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A081567.P7665743293716614012

namespace A081567

/-- `A178381(Δ[n²])` -/
def P7665743293716614012.Spec : Prop :=
  ∀ n, P7665743293716614012.a n = A081567 n

end A081567

/-! ## A081567.P13247762067641543551

`record[A178381(xor(1, n+1))]`
-/

namespace A081567.P13247762067641543551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081567.P13247762067641543551

namespace A081567

/-- `record[A178381(xor(1, n+1))]` -/
def P13247762067641543551.Spec : Prop :=
  ∀ n, P13247762067641543551.a n = A081567 n

end A081567

/-! ## A081567.P280013357101741108

`2*a(n-1)+A039717(n)` with `a(0)=1`
-/

namespace A081567.P280013357101741108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A039717 n

end

end A081567.P280013357101741108

namespace A081567

/-- `2*a(n-1)+A039717(n)` -/
def P280013357101741108.Spec : Prop :=
  ∀ n, P280013357101741108.a n = A081567 n

end A081567

/-! ## A081567.P2087605918747124190

`record[A178381(A006257(n))]`
-/

namespace A081567.P2087605918747124190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081567.P2087605918747124190

namespace A081567

/-- `record[A178381(A006257(n))]` -/
def P2087605918747124190.Spec : Prop :=
  ∀ n, P2087605918747124190.a n = A081567 n

end A081567

/-! ## A081567.P4747213816892805117

`record[A178381(A026741(n))]`
-/

namespace A081567.P4747213816892805117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081567.P4747213816892805117

namespace A081567

/-- `record[A178381(A026741(n))]` -/
def P4747213816892805117.Spec : Prop :=
  ∀ n, P4747213816892805117.a n = A081567 n

end A081567

/-! ## A081567.P2499449111824033061

`A093131(n)+A093129(n)`
-/

namespace A081567.P2499449111824033061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093131 n + A093129 n

end

end A081567.P2499449111824033061

namespace A081567

/-- `A093131(n)+A093129(n)` -/
def P2499449111824033061.Spec : Prop :=
  ∀ n, P2499449111824033061.a n = A081567 n

end A081567

/-! ## A081567.P8867081759185822728

`A217778(n)+A094865(n)`
-/

namespace A081567.P8867081759185822728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217778 n + A094865 n

end

end A081567.P8867081759185822728

namespace A081567

/-- `A217778(n)+A094865(n)` -/
def P8867081759185822728.Spec : Prop :=
  ∀ n, P8867081759185822728.a n = A081567 n

end A081567

/-! ## A081567.P4978930251968243379

`A020876(n)-A093129(n)`
-/

namespace A081567.P4978930251968243379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020876 n - A093129 n

end

end A081567.P4978930251968243379

namespace A081567

/-- `A020876(n)-A093129(n)` -/
def P4978930251968243379.Spec : Prop :=
  ∀ n, P4978930251968243379.a n = A081567 n

end A081567

/-! ## A081567.P4267705732719252228

`record[A178381(A014681(n)+1)]`
-/

namespace A081567.P4267705732719252228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081567.P4267705732719252228

namespace A081567

/-- `record[A178381(A014681(n)+1)]` -/
def P4267705732719252228.Spec : Prop :=
  ∀ n, P4267705732719252228.a n = A081567 n

end A081567

/-! ## A081567.P5324288072844348298

`record[A178381(A237420(n)+1)]`
-/

namespace A081567.P5324288072844348298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 (A237420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081567.P5324288072844348298

namespace A081567

/-- `record[A178381(A237420(n)+1)]` -/
def P5324288072844348298.Spec : Prop :=
  ∀ n, P5324288072844348298.a n = A081567 n

end A081567

/-! ## A081567.P17544169842525387343

`record[A178381(n-A237420(n))]`
-/

namespace A081567.P17544169842525387343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178381 ((n : ℤ) - A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081567.P17544169842525387343

namespace A081567

/-- `record[A178381(n-A237420(n))]` -/
def P17544169842525387343.Spec : Prop :=
  ∀ n, P17544169842525387343.a n = A081567 n

end A081567

/-! ## A081567.P12140802585795641124

`A081666(n)-A027471(n+1)`
-/

namespace A081567.P12140802585795641124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081666 n - A027471 (n + 1)

end

end A081567.P12140802585795641124

namespace A081567

/-- `A081666(n)-A027471(n+1)` -/
def P12140802585795641124.Spec : Prop :=
  ∀ n, P12140802585795641124.a n = A081567 n

end A081567

/-! ## A081567.P17483341765705835660

`A093129(n+1)-A093129(n)`
-/

namespace A081567.P17483341765705835660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093129 (n + 1) - A093129 n

end

end A081567.P17483341765705835660

namespace A081567

/-- `A093129(n+1)-A093129(n)` -/
def P17483341765705835660.Spec : Prop :=
  ∀ n, P17483341765705835660.a n = A081567 n

end A081567

/-!
# A081568: Third binomial transform of Fibonacci(n+1).

The programs for A081568, the canonical program `A081568.P2914410208513421680` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081568 has offset 0).

The definition of A081568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081568.P2914410208513421680

`7*a(n-1)-11*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081568

/-- `7*a(n-1)-11*a(n-2)` -/
def P2914410208513421680.Spec : Prop :=
  ∀ n, P2914410208513421680.a n = A081568 n

theorem P2914410208513421680.correct : P2914410208513421680.Spec := by
  intro n
  simp only [A081568]

end A081568

/-! ## A081568.P14142519720797656613

`ogf((1-3x)/(1-7x+11x^2))`
-/

namespace A081568.P14142519720797656613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -7, 11] n

end

end A081568.P14142519720797656613

namespace A081568

/-- `ogf((1-3x)/(1-7x+11x^2))` -/
def P14142519720797656613.Spec : Prop :=
  ∀ n, P14142519720797656613.a n = A081568 n

end A081568

/-! ## A081568.P15153765317418751548

`A192240(n+1)-A192240(n)-A192240(n)`
-/

namespace A081568.P15153765317418751548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192240 (n + 1) - A192240 n - A192240 n

end

end A081568.P15153765317418751548

namespace A081568

/-- `A192240(n+1)-A192240(n)-A192240(n)` -/
def P15153765317418751548.Spec : Prop :=
  ∀ n, P15153765317418751548.a n = A081568 n

end A081568

/-! ## A081568.P15381502422150128312

`A163307(n)/2^n`
-/

namespace A081568.P15381502422150128312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163307 n : ℚ) / (2 ^ n : ℚ)

end

end A081568.P15381502422150128312

namespace A081568

/-- `A163307(n)/2^n` -/
def P15381502422150128312.Spec : Prop :=
  ∀ n, P15381502422150128312.a n = (A081568 n : ℚ)

end A081568

/-! ## A081568.P6958891152708088266

`A106198(A167614(n+2))`
-/

namespace A081568.P6958891152708088266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (A167614 (n + 2)).toNat

end

end A081568.P6958891152708088266

namespace A081568

/-- `A106198(A167614(n+2))` -/
def P6958891152708088266.Spec : Prop :=
  ∀ n, P6958891152708088266.a n = A081568 n

end A081568

/-! ## A081568.P6808221421216510746

`A106198(eq[3, A002262(n)])`
-/

namespace A081568.P6808221421216510746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081568.P6808221421216510746

namespace A081568

/-- `A106198(eq[3, A002262(n)])` -/
def P6808221421216510746.Spec : Prop :=
  ∀ n, P6808221421216510746.a n = A081568 n

end A081568

/-!
# A081569: Fourth binomial transform of F(n+1).

The programs for A081569, the canonical program `A081569.P5658041598739749958` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081569 has offset 0).

The definition of A081569 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081569.P5658041598739749958

`9*a(n-1)-19*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081569

/-- `9*a(n-1)-19*a(n-2)` -/
def P5658041598739749958.Spec : Prop :=
  ∀ n, P5658041598739749958.a n = A081569 n

theorem P5658041598739749958.correct : P5658041598739749958.Spec := by
  intro n
  simp only [A081569]

end A081569

/-! ## A081569.P4903287606316360276

`ogf((1-4x)/(1-9x+19x^2))`
-/

namespace A081569.P4903287606316360276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -9, 19] n

end

end A081569.P4903287606316360276

namespace A081569

/-- `ogf((1-4x)/(1-9x+19x^2))` -/
def P4903287606316360276.Spec : Prop :=
  ∀ n, P4903287606316360276.a n = A081569 n

end A081569

/-! ## A081569.P17068656106818197954

`A163309(n)/2^n`
-/

namespace A081569.P17068656106818197954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163309 n : ℚ) / (2 ^ n : ℚ)

end

end A081569.P17068656106818197954

namespace A081569

/-- `A163309(n)/2^n` -/
def P17068656106818197954.Spec : Prop :=
  ∀ n, P17068656106818197954.a n = (A081569 n : ℚ)

end A081569

/-! ## A081569.P12800587622793295892

`floor(A163309(n)/A011782(n+1))`
-/

namespace A081569.P12800587622793295892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163309 n : ℚ) / (A011782 (n + 1) : ℚ)⌋

end

end A081569.P12800587622793295892

namespace A081569

/-- `floor(A163309(n)/A011782(n+1))` -/
def P12800587622793295892.Spec : Prop :=
  ∀ n, P12800587622793295892.a n = A081569 n

end A081569

/-! ## A081569.P10072842336688631204

`A106198(eq[4, A002262(n)])`
-/

namespace A081569.P10072842336688631204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081569.P10072842336688631204

namespace A081569

/-- `A106198(eq[4, A002262(n)])` -/
def P10072842336688631204.Spec : Prop :=
  ∀ n, P10072842336688631204.a n = A081569 n

end A081569

/-!
# A081570: Fifth binomial transform of F(n+1).

The programs for A081570, the canonical program `A081570.P9260372378212104995` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081570 has offset 0).

The definition of A081570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081570.P9260372378212104995

`11*a(n-1)-29*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081570

/-- `11*a(n-1)-29*a(n-2)` -/
def P9260372378212104995.Spec : Prop :=
  ∀ n, P9260372378212104995.a n = A081570 n

theorem P9260372378212104995.correct : P9260372378212104995.Spec := by
  intro n
  simp only [A081570]

end A081570

/-! ## A081570.P4672416427259805999

`A106198(A167499(n+4))`
-/

namespace A081570.P4672416427259805999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (A167499 (n + 4)).toNat

end

end A081570.P4672416427259805999

namespace A081570

/-- `A106198(A167499(n+4))` -/
def P4672416427259805999.Spec : Prop :=
  ∀ n, P4672416427259805999.a n = A081570 n

end A081570

/-! ## A081570.P748610831905450437

`A106198(eq[5, A002262(n)])`
-/

namespace A081570.P748610831905450437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081570.P748610831905450437

namespace A081570

/-- `A106198(eq[5, A002262(n)])` -/
def P748610831905450437.Spec : Prop :=
  ∀ n, P748610831905450437.a n = A081570 n

end A081570

/-! ## A081570.P11810082537719466654

`A081572(A052905(n+3)-1)`
-/

namespace A081570.P11810082537719466654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A052905 (n + 3) - 1).toNat

end

end A081570.P11810082537719466654

namespace A081570

/-- `A081572(A052905(n+3)-1)` -/
def P11810082537719466654.Spec : Prop :=
  ∀ n, P11810082537719466654.a n = A081570 n

end A081570

/-! ## A081570.P16688928466265241711

`A081572(A000217(n+6)-6)`
-/

namespace A081570.P16688928466265241711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A000217 (n + 6) - 6).toNat

end

end A081570.P16688928466265241711

namespace A081570

/-- `A081572(A000217(n+6)-6)` -/
def P16688928466265241711.Spec : Prop :=
  ∀ n, P16688928466265241711.a n = A081570 n

end A081570

/-!
# A081571: Sixth binomial transform of F(n+1).

The programs for A081571, the canonical program `A081571.P16012229066133794010` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081571 has offset 0).

The definition of A081571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081571.P16012229066133794010

`13*a(n-1)-41*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081571

/-- `13*a(n-1)-41*a(n-2)` -/
def P16012229066133794010.Spec : Prop :=
  ∀ n, P16012229066133794010.a n = A081571 n

theorem P16012229066133794010.correct : P16012229066133794010.Spec := by
  intro n
  simp only [A081571]

end A081571

/-! ## A081571.P5167539182746610299

`A106198(eq[6, A002262(n)])`
-/

namespace A081571.P5167539182746610299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081571.P5167539182746610299

namespace A081571

/-- `A106198(eq[6, A002262(n)])` -/
def P5167539182746610299.Spec : Prop :=
  ∀ n, P5167539182746610299.a n = A081571 n

end A081571

/-! ## A081571.P15138979104264384496

`A106198(A238531(n+7)+4)`
-/

namespace A081571.P15138979104264384496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (A238531 (n + 7) + 4).toNat

end

end A081571.P15138979104264384496

namespace A081571

/-- `A106198(A238531(n+7)+4)` -/
def P15138979104264384496.Spec : Prop :=
  ∀ n, P15138979104264384496.a n = A081571 n

end A081571

/-! ## A081571.P3663087655771437325

`A081572(A000217(n+7)-7)`
-/

namespace A081571.P3663087655771437325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A000217 (n + 7) - 7).toNat

end

end A081571.P3663087655771437325

namespace A081571

/-- `A081572(A000217(n+7)-7)` -/
def P3663087655771437325.Spec : Prop :=
  ∀ n, P3663087655771437325.a n = A081571 n

end A081571

/-! ## A081571.P6015281335074560093

`A081572(A000124(n+7)-8)`
-/

namespace A081571.P6015281335074560093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081572 (A000124 (n + 7) - 8).toNat

end

end A081571.P6015281335074560093

namespace A081571

/-- `A081572(A000124(n+7)-8)` -/
def P6015281335074560093.Spec : Prop :=
  ∀ n, P6015281335074560093.a n = A081571 n

end A081571

/-!
# A081572: Square array of binomial transforms of Fibonacci numbers, read by ascending antidiagonals.

The programs for A081572, there is no canonical definition to state claims against.
-/

/-! ## A081572.P15723360211135203836

`A106198(A002378(n)%A080036(n))`
-/

namespace A081572.P15723360211135203836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A081572.P15723360211135203836

/-! ## A081572.P12032985472843559063

`A106198(A061579(n))`
-/

namespace A081572.P12032985472843559063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (A061579 n).toNat

end

end A081572.P12032985472843559063

/-! ## A081572.P11444612889469275491

`A106198(A114327(n)+n)`
-/

namespace A081572.P11444612889469275491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (A114327 n + (n : ℤ)).toNat

end

end A081572.P11444612889469275491

/-! ## A081572.P14592097896043345589

`A106198(A038722(n+1)-1)`
-/

namespace A081572.P14592097896043345589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (A038722 (n + 1) - 1).toNat

end

end A081572.P14592097896043345589

/-! ## A081572.P7302000637850081073

`A106198(A057944(n)+A025581(n))`
-/

namespace A081572.P7302000637850081073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106198 (A057944 n + A025581 n).toNat

end

end A081572.P7302000637850081073

/-!
# A081574: Fourth binomial transform of Fibonacci numbers F(n).

The programs for A081574, the canonical program `A081574.P12493783812217785417` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081574 has offset 0).

The definition of A081574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081574.P12493783812217785417

`9*a(n-1)-19*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081574

/-- `9*a(n-1)-19*a(n-2)` -/
def P12493783812217785417.Spec : Prop :=
  ∀ n, P12493783812217785417.a n = A081574 n

theorem P12493783812217785417.correct : P12493783812217785417.Spec := by
  intro n
  simp only [A081574]

end A081574

/-! ## A081574.P6518567773321068823

`((sqrt(5)/2+9/2)^n-(9/2-sqrt(5)/2)^n)/sqrt(5)`
-/

namespace A081574.P6518567773321068823
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (5 : ℝ) / 2 + ((9 : ℚ) / 2 : ℝ)) ^ n - (((9 : ℚ) / 2 : ℝ) - Real.sqrt (5 : ℝ) / 2) ^ n) / Real.sqrt (5 : ℝ)

end

end A081574.P6518567773321068823

namespace A081574

/-- `((sqrt(5)/2+9/2)^n-(9/2-sqrt(5)/2)^n)/sqrt(5)` -/
def P6518567773321068823.Spec : Prop :=
  ∀ n, P6518567773321068823.a n = (A081574 n : ℝ)

theorem P6518567773321068823.correct : P6518567773321068823.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081574, Nat.add_sub_cancel, A081574.P6518567773321068823.a, A081574.P12493783812217785417.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081574, Nat.add_sub_cancel, A081574.P6518567773321068823.a, A081574.P12493783812217785417.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A081574

/-! ## A081574.P8707612461345640658

`ogf(x/(1-9x+19x^2))`
-/

namespace A081574.P8707612461345640658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 19] n

end

end A081574.P8707612461345640658

namespace A081574

/-- `ogf(x/(1-9x+19x^2))` -/
def P8707612461345640658.Spec : Prop :=
  ∀ n, P8707612461345640658.a n = A081574 n

end A081574

/-! ## A081574.P10930961614372361695

`Δ[A081569(n)]%A081569(n)`
-/

namespace A081574.P10930961614372361695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A081569 n)

end

end A081574.P10930961614372361695

namespace A081574

/-- `Δ[A081569(n)]%A081569(n)` -/
def P10930961614372361695.Spec : Prop :=
  ∀ n, P10930961614372361695.a n = A081574 n

end A081574

/-! ## A081574.P11328178781912669250

`A081569(n+1)%A081569(n)`
-/

namespace A081574.P11328178781912669250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081569 (n + 1)) (A081569 n)

end

end A081574.P11328178781912669250

namespace A081574

/-- `A081569(n+1)%A081569(n)` -/
def P11328178781912669250.Spec : Prop :=
  ∀ n, P11328178781912669250.a n = A081574 n

end A081574

/-! ## A081574.P3371149332874962566

`A081576(A052905(n+2))`
-/

namespace A081574.P3371149332874962566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081576 (A052905 (n + 2)).toNat

end

end A081574.P3371149332874962566

namespace A081574

/-- `A081576(A052905(n+2))` -/
def P3371149332874962566.Spec : Prop :=
  ∀ n, P3371149332874962566.a n = A081574 n

end A081574

/-!
# A081575: Fifth binomial transform of Fibonacci numbers F(n).

The programs for A081575, the canonical program `A081575.P12240724886581447646` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081575 has offset 0).

The definition of A081575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081575.P12240724886581447646

`11*a(n-1)-29*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081575

/-- `11*a(n-1)-29*a(n-2)` -/
def P12240724886581447646.Spec : Prop :=
  ∀ n, P12240724886581447646.a n = A081575 n

theorem P12240724886581447646.correct : P12240724886581447646.Spec := by
  intro n
  simp only [A081575]

end A081575

/-! ## A081575.P18210129490816568890

`((sqrt(5)/2+11/2)^n-(11/2-sqrt(5)/2)^n)/sqrt(5)`
-/

namespace A081575.P18210129490816568890
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (5 : ℝ) / 2 + ((11 : ℚ) / 2 : ℝ)) ^ n - (((11 : ℚ) / 2 : ℝ) - Real.sqrt (5 : ℝ) / 2) ^ n) / Real.sqrt (5 : ℝ)

end

end A081575.P18210129490816568890

namespace A081575

/-- `((sqrt(5)/2+11/2)^n-(11/2-sqrt(5)/2)^n)/sqrt(5)` -/
def P18210129490816568890.Spec : Prop :=
  ∀ n, P18210129490816568890.a n = (A081575 n : ℝ)

theorem P18210129490816568890.correct : P18210129490816568890.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A081575, Nat.add_sub_cancel, A081575.P18210129490816568890.a, A081575.P12240724886581447646.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A081575, Nat.add_sub_cancel, A081575.P18210129490816568890.a, A081575.P12240724886581447646.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A081575

/-! ## A081575.P776274859720349481

`Δ[A081570(n)]%A081570(n)`
-/

namespace A081575.P776274859720349481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A081570 n)

end

end A081575.P776274859720349481

namespace A081575

/-- `Δ[A081570(n)]%A081570(n)` -/
def P776274859720349481.Spec : Prop :=
  ∀ n, P776274859720349481.a n = A081575 n

end A081575

/-! ## A081575.P12657464062253445483

`A081570(n+1)%A081570(n)`
-/

namespace A081575.P12657464062253445483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081570 (n + 1)) (A081570 n)

end

end A081575.P12657464062253445483

namespace A081575

/-- `A081570(n+1)%A081570(n)` -/
def P12657464062253445483.Spec : Prop :=
  ∀ n, P12657464062253445483.a n = A081575 n

end A081575

/-! ## A081575.P4888355248819620645

`A081576(A056119(n)+15)`
-/

namespace A081575.P4888355248819620645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081576 (A056119 n + 15).toNat

end

end A081575.P4888355248819620645

namespace A081575

/-- `A081576(A056119(n)+15)` -/
def P4888355248819620645.Spec : Prop :=
  ∀ n, P4888355248819620645.a n = A081575 n

end A081575

/-! ## A081575.P8271696486639085631

`A081576(eq[5, A025581(n)])`
-/

namespace A081575.P8271696486639085631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081575.P8271696486639085631

namespace A081575

/-- `A081576(eq[5, A025581(n)])` -/
def P8271696486639085631.Spec : Prop :=
  ∀ n, P8271696486639085631.a n = A081575 n

end A081575

/-!
# A081576: Square array of binomial transforms of Fibonacci numbers, read by antidiagonals.

The programs for A081576, there is no canonical definition to state claims against.
-/

/-! ## A081576.P15598220824471177403

`A007305(A140531(n)^A077028(n))`
-/

namespace A081576.P15598220824471177403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (SequenceMachineLib.roundAway ((A140531 n : ℚ) ^ (A077028 n : ℤ))).toNat

end

end A081576.P15598220824471177403

/-! ## A081576.P7998247826699872701

`A319695(A059268(n)^A097805(n))`
-/

namespace A081576.P7998247826699872701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A081576.P7998247826699872701

/-! ## A081576.P15173966485618166177

`A319695(A059268(n)^A135225(n))`
-/

namespace A081576.P15173966485618166177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A135225 n : ℤ))).toNat

end

end A081576.P15173966485618166177

/-! ## A081576.P6768408512944129000

`A319695(A059268(n)^A177767(n))`
-/

namespace A081576.P6768408512944129000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319695 (SequenceMachineLib.roundAway ((A059268 n : ℚ) ^ (A177767 n : ℤ))).toNat

end

end A081576.P6768408512944129000

/-! ## A081576.P12325566199254053172

`A005206(A352687(n)%A353594(3*n+4)*A002262(n))`
-/

namespace A081576.P12325566199254053172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod (A352687 n) (A353594 (3 * n + 4)) * A002262 n).toNat

end

end A081576.P12325566199254053172

/-!
# A081577: Pascal-(1,2,1) array read by antidiagonals.

The programs for A081577, there is no canonical definition to state claims against.
-/

/-! ## A081577.P15368237506602647149

`A338934(n)+A118759(A101164(n))`
-/

namespace A081577.P15368237506602647149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338934 n + A118759 (A101164 n).toNat

end

end A081577.P15368237506602647149

/-! ## A081577.P5603650618603603735

`A118759(A047671(n+1)-A057893(n))+A101164(n)`
-/

namespace A081577.P5603650618603603735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A047671 (n + 1) - A057893 n).toNat + A101164 n

end

end A081577.P5603650618603603735

/-! ## A081577.P9169253594104832212

`A101164(n)+A000188((A047671(n+1)-A057893(n))²)`
-/

namespace A081577.P9169253594104832212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101164 n + A000188 ((A047671 (n + 1) - A057893 n) ^ 2).toNat

end

end A081577.P9169253594104832212

/-! ## A081577.P10259772020111730038

`A101164(n)+A003059((A047671(n+1)-A057893(n))²)`
-/

namespace A081577.P10259772020111730038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101164 n + A003059 ((A047671 (n + 1) - A057893 n) ^ 2).toNat

end

end A081577.P10259772020111730038

/-! ## A081577.P8070289286849383119

`A328168(A202756(n+1))-2`
-/

namespace A081577.P8070289286849383119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328168 (A202756 (n + 1)).toNat - 2

end

end A081577.P8070289286849383119

/-!
# A081578: Pascal-(1,3,1) array.

The programs for A081578, there is no canonical definition to state claims against.
-/

/-! ## A081578.P5331364035644022863

`A004741(A004273(A099597(n))²)`
-/

namespace A081578.P5331364035644022863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A004273 (A099597 n).toNat ^ 2).toNat

end

end A081578.P5331364035644022863

/-! ## A081578.P13809848897865050028

`A004195(A081577(n))`
-/

namespace A081578.P13809848897865050028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004195 (A081577 n).toNat

end

end A081578.P13809848897865050028

/-! ## A081578.P7830441587341803313

`A072820(A081580(n)+1)`
-/

namespace A081578.P7830441587341803313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072820 (A081580 n + 1).toNat

end

end A081578.P7830441587341803313

/-! ## A081578.P8822262282606705406

`A131646(A008288(n))+A008288(n)`
-/

namespace A081578.P8822262282606705406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131646 (A008288 n).toNat + A008288 n

end

end A081578.P8822262282606705406

/-! ## A081578.P1322186366872048795

`A183450(lt[A005418(n+1), A066058(3*n)])`
-/

namespace A081578.P1322186366872048795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066058 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A081578.P1322186366872048795

/-!
# A081579: Pascal-(1,4,1) array.

The programs for A081579, there is no canonical definition to state claims against.
-/

/-! ## A081579.P13275112578363986537

`abs(A123218(∑[A238303(n)]))`
-/

namespace A081579.P13275112578363986537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123218 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A081579.P13275112578363986537

/-! ## A081579.P12418270258440932418

`abs(A123218(A001614(n+1)))`
-/

namespace A081579.P12418270258440932418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123218 (A001614 (n + 1)).toNat|

end

end A081579.P12418270258440932418

/-! ## A081579.P10881455487170931883

`gcd(A000038(n), A123218(A001614(n+1)))`
-/

namespace A081579.P10881455487170931883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A123218 (A001614 (n + 1)).toNat)

end

end A081579.P10881455487170931883

/-! ## A081579.P10921286187214487923

`lcm(A033999(n), A123218(A001614(n+1)))`
-/

namespace A081579.P10921286187214487923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A123218 (A001614 (n + 1)).toNat)

end

end A081579.P10921286187214487923

/-! ## A081579.P17719768096776211892

`A081578(n)+A060810(A099597(n))`
-/

namespace A081579.P17719768096776211892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 n + A060810 (A099597 n).toNat

end

end A081579.P17719768096776211892

/-!
# A081580: Pascal-(1,5,1) array.

The programs for A081580, there is no canonical definition to state claims against.
-/

/-! ## A081580.P5506934279643076052

`A084563(A081577(n))-1`
-/

namespace A081580.P5506934279643076052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084563 (A081577 n).toNat - 1

end

end A081580.P5506934279643076052

/-! ## A081580.P11541779382804647131

`A331425(A059922(A015161(n)+n))`
-/

namespace A081580.P11541779382804647131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331425 (A059922 (A015161 n + (n : ℤ)).toNat).toNat

end

end A081580.P11541779382804647131

/-! ## A081580.P1395727599142937089

`A331425(lcm(A059922(n), A077028(n)))`
-/

namespace A081580.P1395727599142937089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331425 (Int.lcm (A059922 n) (A077028 n))

end

end A081580.P1395727599142937089

/-! ## A081580.P4261811108584206788

`or(A085735(A008459(n)), A287326(n))`
-/

namespace A081580.P4261811108584206788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085735 (A008459 n).toNat) (A287326 n)

end

end A081580.P4261811108584206788

/-! ## A081580.P10461091921697524765

`or(A287326(n), A343666(A320606(n+2)))`
-/

namespace A081580.P10461091921697524765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A287326 n) (A343666 (A320606 (n + 2)).toNat)

end

end A081580.P10461091921697524765

/-!
# A081581: Pascal-(1,6,1) array.

The programs for A081581, there is no canonical definition to state claims against.
-/

/-! ## A081581.P4098737629701902353

`A118759(A037466(A081579(n)))`
-/

namespace A081581.P4098737629701902353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A037466 (A081579 n).toNat).toNat

end

end A081581.P4098737629701902353

/-! ## A081581.P3461968542724056757

`A000265(2^n)*A037466(A081579(n))`
-/

namespace A081581.P3461968542724056757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 ^ n) * A037466 (A081579 n).toNat

end

end A081581.P3461968542724056757

/-! ## A081581.P7714912535570197399

`A037466(A081579(n)%A014895(n+1))`
-/

namespace A081581.P7714912535570197399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (Int.tmod (A081579 n) (A014895 (n + 1))).toNat

end

end A081581.P7714912535570197399

/-! ## A081581.P5719543961972841828

`A037466(A081579(n))%A257630(n+1)`
-/

namespace A081581.P5719543961972841828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037466 (A081579 n).toNat) (A257630 (n + 1))

end

end A081581.P5719543961972841828

/-!
# A081583: Third row of Pascal-(1,2,1) array A081577.

The programs for A081583, the canonical program `A081583.P16382699088048866659` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081583 has offset 0).

The definition of A081583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081583.P16382699088048866659

`(2+9*n+9*n^3)/2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081583

/-- `(2+9*n+9*n^3)/2` -/
def P16382699088048866659.Spec : Prop :=
  ∀ n, P16382699088048866659.a n = (A081583 n : ℚ)

end A081583

/-! ## A081583.P3551408695468655160

`∑[∑[a(n-1)+27]]` with `a(0)=1, a(1)=8, a(2)=27`
-/

namespace A081583.P3551408695468655160
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 27] fun n f2 =>
  f2 (n - 1) + 27

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081583.P3551408695468655160

namespace A081583

/-- `∑[∑[a(n-1)+27]]` -/
def P3551408695468655160.Spec : Prop :=
  ∀ n, (P3551408695468655160.a n : ℤ) = A081583 n

end A081583

/-! ## A081583.P14834290198560562332

`C(3*n, 3)+∑[9*n]+1-n`
-/

namespace A081583.P14834290198560562332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (3 * n) 3 + (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ) - (n : ℤ)

end

end A081583.P14834290198560562332

namespace A081583

/-- `C(3*n, 3)+∑[9*n]+1-n` -/
def P14834290198560562332.Spec : Prop :=
  ∀ n, P14834290198560562332.a n = A081583 n

end A081583

/-! ## A081583.P11414693308712026546

`A061804(n)+A006001(n)`
-/

namespace A081583.P11414693308712026546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + A006001 n

end

end A081583.P11414693308712026546

namespace A081583

/-- `A061804(n)+A006001(n)` -/
def P11414693308712026546.Spec : Prop :=
  ∀ n, P11414693308712026546.a n = A081583 n

end A081583

/-! ## A081583.P3222340911555734039

`A071230(n)+A005920(n)`
-/

namespace A081583.P3222340911555734039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071230 n + A005920 n

end

end A081583.P3222340911555734039

namespace A081583

/-- `A071230(n)+A005920(n)` -/
def P3222340911555734039.Spec : Prop :=
  ∀ n, P3222340911555734039.a n = A081583 n

end A081583

/-! ## A081583.P12961270417455817914

`A081267(n)+A006566(n)`
-/

namespace A081583.P12961270417455817914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n + A006566 n

end

end A081583.P12961270417455817914

namespace A081583

/-- `A081267(n)+A006566(n)` -/
def P12961270417455817914.Spec : Prop :=
  ∀ n, P12961270417455817914.a n = A081583 n

end A081583

/-! ## A081583.P6926590764567096259

`A289721(n)+A057427(n)`
-/

namespace A081583.P6926590764567096259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289721 n + A057427 n

end

end A081583.P6926590764567096259

namespace A081583

/-- `A289721(n)+A057427(n)` -/
def P6926590764567096259.Spec : Prop :=
  ∀ n, P6926590764567096259.a n = A081583 n

end A081583

/-! ## A081583.P7624326243314927034

`A289721(n)-A057428(n)`
-/

namespace A081583.P7624326243314927034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289721 n - A057428 n

end

end A081583.P7624326243314927034

namespace A081583

/-- `A289721(n)-A057428(n)` -/
def P7624326243314927034.Spec : Prop :=
  ∀ n, P7624326243314927034.a n = A081583 n

end A081583

/-! ## A081583.P1532880516501886205

`A329530(n)+A002414(n+1)`
-/

namespace A081583.P1532880516501886205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329530 n + A002414 (n + 1)

end

end A081583.P1532880516501886205

namespace A081583

/-- `A329530(n)+A002414(n+1)` -/
def P1532880516501886205.Spec : Prop :=
  ∀ n, P1532880516501886205.a n = A081583 n

end A081583

/-! ## A081583.P2478997097304510985

`A211545(n)+A132127(n+1)`
-/

namespace A081583.P2478997097304510985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211545 n + A132127 (n + 1)

end

end A081583.P2478997097304510985

namespace A081583

/-- `A211545(n)+A132127(n+1)` -/
def P2478997097304510985.Spec : Prop :=
  ∀ n, P2478997097304510985.a n = A081583 n

end A081583

/-! ## A081583.P682611866960718050

`A127876(n+1)-A062741(n)`
-/

namespace A081583.P682611866960718050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127876 (n + 1) - A062741 n

end

end A081583.P682611866960718050

namespace A081583

/-- `A127876(n+1)-A062741(n)` -/
def P682611866960718050.Spec : Prop :=
  ∀ n, P682611866960718050.a n = A081583 n

end A081583

/-! ## A081583.P463444108639899366

`A081267(n)+A054776(n)/6`
-/

namespace A081583.P463444108639899366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081267 n : ℚ) + (A054776 n : ℚ) / 6

end

end A081583.P463444108639899366

namespace A081583

/-- `A081267(n)+A054776(n)/6` -/
def P463444108639899366.Spec : Prop :=
  ∀ n, P463444108639899366.a n = (A081583 n : ℚ)

end A081583

/-! ## A081583.P6875039441717250362

`A180415(3*n+1)-n`
-/

namespace A081583.P6875039441717250362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (3 * n + 1) - (n : ℤ)

end

end A081583.P6875039441717250362

namespace A081583

/-- `A180415(3*n+1)-n` -/
def P6875039441717250362.Spec : Prop :=
  ∀ n, P6875039441717250362.a n = A081583 n

end A081583

/-! ## A081583.P2494394004947283459

`Δ[A000217(A016777(C(n, 2)))+n]`
-/

namespace A081583.P2494394004947283459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A016777 (Nat.choose n 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A081583.P2494394004947283459

namespace A081583

/-- `Δ[A000217(A016777(C(n, 2)))+n]` -/
def P2494394004947283459.Spec : Prop :=
  ∀ n, P2494394004947283459.a n = A081583 n

end A081583

/-! ## A081583.P8661755418691141155

`A081577(A167614(n+2))`
-/

namespace A081583.P8661755418691141155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A167614 (n + 2)).toNat

end

end A081583.P8661755418691141155

namespace A081583

/-- `A081577(A167614(n+2))` -/
def P8661755418691141155.Spec : Prop :=
  ∀ n, P8661755418691141155.a n = A081583 n

end A081583

/-! ## A081583.P1975943291879678867

`A081577(eq[3, A002262(n)])`
-/

namespace A081583.P1975943291879678867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081583.P1975943291879678867

namespace A081583

/-- `A081577(eq[3, A002262(n)])` -/
def P1975943291879678867.Spec : Prop :=
  ∀ n, P1975943291879678867.a n = A081583 n

end A081583

/-! ## A081583.P6810909878534973337

`A081577(eq[3, A025581(n)])`
-/

namespace A081583.P6810909878534973337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081583.P6810909878534973337

namespace A081583

/-- `A081577(eq[3, A025581(n)])` -/
def P6810909878534973337.Spec : Prop :=
  ∀ n, P6810909878534973337.a n = A081583 n

end A081583

/-! ## A081583.P14130179509339359829

`A081577(2*(n+2)+A000096(n+1))`
-/

namespace A081583.P14130179509339359829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 ((2 * (n + 2) : ℤ) + A000096 (n + 1)).toNat

end

end A081583.P14130179509339359829

namespace A081583

/-- `A081577(2*(n+2)+A000096(n+1))` -/
def P14130179509339359829.Spec : Prop :=
  ∀ n, P14130179509339359829.a n = A081583 n

end A081583

/-!
# A081584: Fourth row of Pascal-(1,2,1) array A081577.

The programs for A081584, the canonical program `A081584.P10306447923401771061` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081584 has offset 0).

The definition of A081584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081584.P10306447923401771061

`(8+6*n+81*n²-18*n^3+27*n^4)/8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081584

/-- `(8+6*n+81*n²-18*n^3+27*n^4)/8` -/
def P10306447923401771061.Spec : Prop :=
  ∀ n, P10306447923401771061.a n = (A081584 n : ℚ)

end A081584

/-! ## A081584.P15962137810399284643

`A000127(3*n+1)+8*n²-A000217(2*n)`
-/

namespace A081584.P15962137810399284643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (3 * n + 1) + ((8 * n ^ 2 : ℤ) - A000217 (2 * n))

end

end A081584.P15962137810399284643

namespace A081584

/-- `A000127(3*n+1)+8*n²-A000217(2*n)` -/
def P15962137810399284643.Spec : Prop :=
  ∀ n, P15962137810399284643.a n = A081584 n

end A081584

/-! ## A081584.P4046141408376291049

`A139267(n)+A055417(A008585(n))`
-/

namespace A081584.P4046141408376291049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139267 n + A055417 (A008585 n).toNat

end

end A081584.P4046141408376291049

namespace A081584

/-- `A139267(n)+A055417(A008585(n))` -/
def P4046141408376291049.Spec : Prop :=
  ∀ n, P4046141408376291049.a n = A081584 n

end A081584

/-! ## A081584.P3205233600971133328

`A000127(3*n+1)+A000217(4*n)-A000096(2*n)`
-/

namespace A081584.P3205233600971133328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (3 * n + 1) + (A000217 (4 * n) - A000096 (2 * n))

end

end A081584.P3205233600971133328

namespace A081584

/-- `A000127(3*n+1)+A000217(4*n)-A000096(2*n)` -/
def P3205233600971133328.Spec : Prop :=
  ∀ n, P3205233600971133328.a n = A081584 n

end A081584

/-! ## A081584.P10533669347962945417

`A000326(2*n)+A000332(3*n+1)+A000124(3*n)`
-/

namespace A081584.P10533669347962945417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (2 * n) + (A000332 (3 * n + 1) + A000124 (3 * n))

end

end A081584.P10533669347962945417

namespace A081584

/-- `A000326(2*n)+A000332(3*n+1)+A000124(3*n)` -/
def P10533669347962945417.Spec : Prop :=
  ∀ n, P10533669347962945417.a n = A081584 n

end A081584

/-! ## A081584.P1074038173958899372

`A081577(eq[4, A002262(n)])`
-/

namespace A081584.P1074038173958899372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A081584.P1074038173958899372

namespace A081584

/-- `A081577(eq[4, A002262(n)])` -/
def P1074038173958899372.Spec : Prop :=
  ∀ n, P1074038173958899372.a n = A081584 n

end A081584

/-! ## A081584.P8728554629679614298

`A081577(∑[n+5]+5)`
-/

namespace A081584.P8728554629679614298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A081584.P8728554629679614298

namespace A081584

/-- `A081577(∑[n+5]+5)` -/
def P8728554629679614298.Spec : Prop :=
  ∀ n, P8728554629679614298.a n = A081584 n

end A081584

/-! ## A081584.P13979810892331695695

`A140091(A000326(n))+A003215(n)`
-/

namespace A081584.P13979810892331695695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 (A000326 n).toNat + A003215 n

end

end A081584.P13979810892331695695

namespace A081584

/-- `A140091(A000326(n))+A003215(n)` -/
def P13979810892331695695.Spec : Prop :=
  ∀ n, P13979810892331695695.a n = A081584 n

end A081584

/-! ## A081584.P2256267122504582876

`A143689(A143689(n)-1)+A022279(n)`
-/

namespace A081584.P2256267122504582876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143689 (A143689 n - 1).toNat + A022279 n

end

end A081584.P2256267122504582876

namespace A081584

/-- `A143689(A143689(n)-1)+A022279(n)` -/
def P2256267122504582876.Spec : Prop :=
  ∀ n, P2256267122504582876.a n = A081584 n

end A081584

/-!
# A081585: Third row of Pascal-(1,3,1) array A081578.

The programs for A081585, the canonical program `A081585.P16109978161650450954` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081585 has offset 0).

The definition of A081585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081585.P16109978161650450954

`1+8*n²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081585

/-- `1+8*n²` -/
def P16109978161650450954.Spec : Prop :=
  ∀ n, (P16109978161650450954.a n : ℤ) = A081585 n

theorem P16109978161650450954.correct : P16109978161650450954.Spec := by
  intro n
  simp only [A081585]

end A081585

/-! ## A081585.P67640226793980959

`or(1, 8*n²)`
-/

namespace A081585.P67640226793980959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (8 * n ^ 2)

end

end A081585.P67640226793980959

namespace A081585

/-- `or(1, 8*n²)` -/
def P67640226793980959.Spec : Prop :=
  ∀ n, (P67640226793980959.a n : ℤ) = A081585 n

end A081585

/-! ## A081585.P2173001304740907754

`xor(1, 8*n²)`
-/

namespace A081585.P2173001304740907754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (8 * n ^ 2)

end

end A081585.P2173001304740907754

namespace A081585

/-- `xor(1, 8*n²)` -/
def P2173001304740907754.Spec : Prop :=
  ∀ n, (P2173001304740907754.a n : ℤ) = A081585 n

end A081585

/-! ## A081585.P10998941405957808309

`round(2/acot(2*n)²)`
-/

namespace A081585.P10998941405957808309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (2 * n : ℝ) ^ 2)

end

end A081585.P10998941405957808309

namespace A081585

/-- `round(2/acot(2*n)²)` -/
def P10998941405957808309.Spec : Prop :=
  ∀ n, P10998941405957808309.a n = A081585 n

end A081585

/-! ## A081585.P16912615454860664678

`∑[a(n-1)+16]` with `a(0)=1, a(1)=8`
-/

namespace A081585.P16912615454860664678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081585.P16912615454860664678

namespace A081585

/-- `∑[a(n-1)+16]` -/
def P16912615454860664678.Spec : Prop :=
  ∀ n, (P16912615454860664678.a n : ℤ) = A081585 n

end A081585

/-! ## A081585.P2583837965344029016

`∑[ogf((1+6x+9x^2)/(1-2x+x^2))]`
-/

namespace A081585.P2583837965344029016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081585.P2583837965344029016

namespace A081585

/-- `∑[ogf((1+6x+9x^2)/(1-2x+x^2))]` -/
def P2583837965344029016.Spec : Prop :=
  ∀ n, P2583837965344029016.a n = A081585 n

end A081585

/-! ## A081585.P7131704033265085950

`ogf((1+6x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A081585.P7131704033265085950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 9] [1, -3, 3, -1] n

end

end A081585.P7131704033265085950

namespace A081585

/-- `ogf((1+6x+9x^2)/(1-3x+3x^2-x^3))` -/
def P7131704033265085950.Spec : Prop :=
  ∀ n, P7131704033265085950.a n = A081585 n

end A081585

/-! ## A081585.P15599186065297495654

`Δ[2*C(2*n, 3)+n]`
-/

namespace A081585.P15599186065297495654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A081585.P15599186065297495654

namespace A081585

/-- `Δ[2*C(2*n, 3)+n]` -/
def P15599186065297495654.Spec : Prop :=
  ∀ n, P15599186065297495654.a n = A081585 n

theorem P15599186065297495654.correct : P15599186065297495654.Spec := by
  intro n
  simp only [A081585, Nat.add_sub_cancel, A081585.P15599186065297495654.f1, A081585.P15599186065297495654.a, A081585.P16109978161650450954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A081585

/-! ## A081585.P107982030809413924

`floor(a(n-1)+4*(4*n-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A081585.P107982030809413924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 4 * ((4 * n : ℤ) - 2)

end

end A081585.P107982030809413924

namespace A081585

/-- `floor(a(n-1)+4*(4*n-2))` -/
def P107982030809413924.Spec : Prop :=
  ∀ n, P107982030809413924.a n = A081585 n

theorem P107982030809413924.correct : P107982030809413924.Spec := by
  intro n
  induction n with
  | zero => simp [A081585, A081585.P107982030809413924.a, A081585.P16109978161650450954.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A081585, Nat.add_sub_cancel, A081585.P107982030809413924.a, A081585.P16109978161650450954.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A081585

/-! ## A081585.P1299938253116389462

`record[lcm(n+1, 2*n)+1-2*n]`
-/

namespace A081585.P1299938253116389462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * n) : ℤ) + (1 - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081585.P1299938253116389462

namespace A081585

/-- `record[lcm(n+1, 2*n)+1-2*n]` -/
def P1299938253116389462.Spec : Prop :=
  ∀ n, P1299938253116389462.a n = A081585 n

end A081585

/-! ## A081585.P8448104689990308001

`record[(2*n+1)*xor(1, n-2)+n+2]`
-/

namespace A081585.P8448104689990308001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * Int.xor 1 ((n : ℤ) - 2) + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081585.P8448104689990308001

namespace A081585

/-- `record[(2*n+1)*xor(1, n-2)+n+2]` -/
def P8448104689990308001.Spec : Prop :=
  ∀ n, P8448104689990308001.a n = A081585 n

end A081585

/-! ## A081585.P5056119980958358671

`A275543(2*n)`
-/

namespace A081585.P5056119980958358671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (2 * n)

end

end A081585.P5056119980958358671

namespace A081585

/-- `A275543(2*n)` -/
def P5056119980958358671.Spec : Prop :=
  ∀ n, P5056119980958358671.a n = A081585 n

end A081585

/-! ## A081585.P18055729589671916999

`ceil(A010006(n)/2)`
-/

namespace A081585.P18055729589671916999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010006 n : ℚ) / 2⌉

end

end A081585.P18055729589671916999

namespace A081585

/-- `ceil(A010006(n)/2)` -/
def P18055729589671916999.Spec : Prop :=
  ∀ n, P18055729589671916999.a n = A081585 n

end A081585

/-! ## A081585.P2559864719771448167

`ceil(A010014(n)/3)`
-/

namespace A081585.P2559864719771448167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010014 n : ℚ) / 3⌉

end

end A081585.P2559864719771448167

namespace A081585

/-- `ceil(A010014(n)/3)` -/
def P2559864719771448167.Spec : Prop :=
  ∀ n, P2559864719771448167.a n = A081585 n

end A081585

/-! ## A081585.P9771529741932187709

`ceil(A158547(n)/3)`
-/

namespace A081585.P9771529741932187709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A158547 n : ℚ) / 3⌉

end

end A081585.P9771529741932187709

namespace A081585

/-- `ceil(A158547(n)/3)` -/
def P9771529741932187709.Spec : Prop :=
  ∀ n, P9771529741932187709.a n = A081585 n

end A081585

/-! ## A081585.P13121585436123289866

`A260955(n)%A003185(n)`
-/

namespace A081585.P13121585436123289866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260955 n) (A003185 n)

end

end A081585.P13121585436123289866

namespace A081585

/-- `A260955(n)%A003185(n)` -/
def P13121585436123289866.Spec : Prop :=
  ∀ n, P13121585436123289866.a n = A081585 n

end A081585

/-! ## A081585.P17800210247743875851

`ceil(A005897(2*n)/3)`
-/

namespace A081585.P17800210247743875851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005897 (2 * n) : ℚ) / 3⌉

end

end A081585.P17800210247743875851

namespace A081585

/-- `ceil(A005897(2*n)/3)` -/
def P17800210247743875851.Spec : Prop :=
  ∀ n, P17800210247743875851.a n = A081585 n

end A081585

/-! ## A081585.P13653777207471669601

`A058331(2*n)`
-/

namespace A081585.P13653777207471669601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 (2 * n)

end

end A081585.P13653777207471669601

namespace A081585

/-- `A058331(2*n)` -/
def P13653777207471669601.Spec : Prop :=
  ∀ n, P13653777207471669601.a n = A081585 n

theorem P13653777207471669601.correct : P13653777207471669601.Spec := by
  intro n
  simp only [A081585, Nat.add_sub_cancel, A081585.P13653777207471669601.a, A081585.P16109978161650450954.a, A058331, A058331.P11448505833250118096.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081585

/-! ## A081585.P12139223444947833459

`A097803(2*n)/3`
-/

namespace A081585.P12139223444947833459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097803 (2 * n) : ℚ) / 3

end

end A081585.P12139223444947833459

namespace A081585

/-- `A097803(2*n)/3` -/
def P12139223444947833459.Spec : Prop :=
  ∀ n, P12139223444947833459.a n = (A081585 n : ℚ)

theorem P12139223444947833459.correct : P12139223444947833459.Spec := by
  intro n
  simp only [A081585, Nat.add_sub_cancel, A081585.P12139223444947833459.a, A081585.P16109978161650450954.a, A097803, A097803.P14601754456533614847.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081585

/-!
# A081586: Fourth row of Pascal-(1,3,1) array A081578.

The programs for A081586, the canonical program `A081586.P17660896422262168395` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081586 has offset 0).

The definition of A081586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081586.P1586723629355412000

`(3+28*n-24*n²+32*n^3)/3`
-/

namespace A081586.P1586723629355412000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 + 28 * n : ℤ) - (24 * n ^ 2 : ℤ) + (32 * n ^ 3 : ℤ) : ℚ) / 3

end

end A081586.P1586723629355412000

namespace A081586

/-- `(3+28*n-24*n²+32*n^3)/3` -/
def P1586723629355412000.Spec : Prop :=
  ∀ n, P1586723629355412000.a n = (A081586 n : ℚ)

theorem P1586723629355412000.correct : P1586723629355412000.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A081586, Nat.add_sub_cancel, A081586.P1586723629355412000.a, A081586.P17660896422262168395.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A081586, Nat.add_sub_cancel, A081586.P1586723629355412000.a, A081586.P17660896422262168395.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081586

/-! ## A081586.P17660896422262168395

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=13, a(2)=73, a(3)=245`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081586

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17660896422262168395.Spec : Prop :=
  ∀ n, P17660896422262168395.a n = A081586 n

theorem P17660896422262168395.correct : P17660896422262168395.Spec := by
  intro n
  simp only [A081586]

end A081586

/-! ## A081586.P15480383910294604152

`C(4*n, 3)+8*n+1`
-/

namespace A081586.P15480383910294604152
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n) 3 + (8 * n + 1)

end

end A081586.P15480383910294604152

namespace A081586

/-- `C(4*n, 3)+8*n+1` -/
def P15480383910294604152.Spec : Prop :=
  ∀ n, (P15480383910294604152.a n : ℤ) = A081586 n

end A081586

/-! ## A081586.P13885633684786983156

`A161712(2*n)+4*n`
-/

namespace A081586.P13885633684786983156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161712 (2 * n) + (4 * n : ℤ)

end

end A081586.P13885633684786983156

namespace A081586

/-- `A161712(2*n)+4*n` -/
def P13885633684786983156.Spec : Prop :=
  ∀ n, P13885633684786983156.a n = A081586 n

end A081586

/-! ## A081586.P1459574158447015889

`A166464(comp[2*(n+1)])+A008590(n)`
-/

namespace A081586.P1459574158447015889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166464 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A008590 n

end

end A081586.P1459574158447015889

namespace A081586

/-- `A166464(comp[2*(n+1)])+A008590(n)` -/
def P1459574158447015889.Spec : Prop :=
  ∀ n, P1459574158447015889.a n = A081586 n

end A081586

/-! ## A081586.P12023473559099757233

`A321124(2*n)`
-/

namespace A081586.P12023473559099757233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321124 (2 * n)

end

end A081586.P12023473559099757233

namespace A081586

/-- `A321124(2*n)` -/
def P12023473559099757233.Spec : Prop :=
  ∀ n, P12023473559099757233.a n = A081586 n

end A081586

/-! ## A081586.P11677339089842322670

`A322597(2*n)-4*n`
-/

namespace A081586.P11677339089842322670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322597 (2 * n) - (4 * n : ℤ)

end

end A081586.P11677339089842322670

namespace A081586

/-- `A322597(2*n)-4*n` -/
def P11677339089842322670.Spec : Prop :=
  ∀ n, P11677339089842322670.a n = A081586 n

end A081586

/-! ## A081586.P14828281926731224188

`A161703(2*n)+8*n²`
-/

namespace A081586.P14828281926731224188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161703 (2 * n) + (8 * n ^ 2 : ℤ)

end

end A081586.P14828281926731224188

namespace A081586

/-- `A161703(2*n)+8*n²` -/
def P14828281926731224188.Spec : Prop :=
  ∀ n, P14828281926731224188.a n = A081586 n

end A081586

/-! ## A081586.P4181842492248901604

`A161707(2*n)+A002378(2*n)`
-/

namespace A081586.P4181842492248901604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161707 (2 * n) + A002378 (2 * n)

end

end A081586.P4181842492248901604

namespace A081586

/-- `A161707(2*n)+A002378(2*n)` -/
def P4181842492248901604.Spec : Prop :=
  ∀ n, P4181842492248901604.a n = A081586 n

end A081586

/-! ## A081586.P16595705770603929211

`A242659(2*n)+A064999(2*n)`
-/

namespace A081586.P16595705770603929211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242659 (2 * n) + A064999 (2 * n)

end

end A081586.P16595705770603929211

namespace A081586

/-- `A242659(2*n)+A064999(2*n)` -/
def P16595705770603929211.Spec : Prop :=
  ∀ n, P16595705770603929211.a n = A081586 n

end A081586

/-! ## A081586.P4402103267501803355

`A275876(2*n)+A059993(2*n)`
-/

namespace A081586.P4402103267501803355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275876 (2 * n) + A059993 (2 * n)

end

end A081586.P4402103267501803355

namespace A081586

/-- `A275876(2*n)+A059993(2*n)` -/
def P4402103267501803355.Spec : Prop :=
  ∀ n, P4402103267501803355.a n = A081586 n

end A081586

/-! ## A081586.P9933030174864493170

`A001845(2*n)-A002939(2*n)`
-/

namespace A081586.P9933030174864493170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 (2 * n) - A002939 (2 * n)

end

end A081586.P9933030174864493170

namespace A081586

/-- `A001845(2*n)-A002939(2*n)` -/
def P9933030174864493170.Spec : Prop :=
  ∀ n, P9933030174864493170.a n = A081586 n

end A081586

/-! ## A081586.P18445337459975548325

`A100503(2*n)-A014107(2*n)`
-/

namespace A081586.P18445337459975548325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100503 (2 * n) - A014107 (2 * n)

end

end A081586.P18445337459975548325

namespace A081586

/-- `A100503(2*n)-A014107(2*n)` -/
def P18445337459975548325.Spec : Prop :=
  ∀ n, P18445337459975548325.a n = A081586 n

end A081586

/-! ## A081586.P1874821654312653202

`A098931(2*n)-A135706(2*n)`
-/

namespace A081586.P1874821654312653202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098931 (2 * n) - A135706 (2 * n)

end

end A081586.P1874821654312653202

namespace A081586

/-- `A098931(2*n)-A135706(2*n)` -/
def P1874821654312653202.Spec : Prop :=
  ∀ n, P1874821654312653202.a n = A081586 n

end A081586

/-! ## A081586.P2850196615574132210

`A273316(2*n)-A033579(2*n)`
-/

namespace A081586.P2850196615574132210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273316 (2 * n) - A033579 (2 * n)

end

end A081586.P2850196615574132210

namespace A081586

/-- `A273316(2*n)-A033579(2*n)` -/
def P2850196615574132210.Spec : Prop :=
  ∀ n, P2850196615574132210.a n = A081586 n

end A081586

/-! ## A081586.P626188625188419917

`A273408(2*n)-A051866(2*n)`
-/

namespace A081586.P626188625188419917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273408 (2 * n) - A051866 (2 * n)

end

end A081586.P626188625188419917

namespace A081586

/-- `A273408(2*n)-A051866(2*n)` -/
def P626188625188419917.Spec : Prop :=
  ∀ n, P626188625188419917.a n = A081586 n

end A081586

/-! ## A081586.P467374258840148028

`A270109(2*n)-A161702(2*n)`
-/

namespace A081586.P467374258840148028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270109 (2 * n) - A161702 (2 * n)

end

end A081586.P467374258840148028

namespace A081586

/-- `A270109(2*n)-A161702(2*n)` -/
def P467374258840148028.Spec : Prop :=
  ∀ n, P467374258840148028.a n = A081586 n

end A081586

/-! ## A081586.P15162084725737162834

`A145069(2*n)+A034324(2*n+1)`
-/

namespace A081586.P15162084725737162834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145069 (2 * n) + A034324 (2 * n + 1)

end

end A081586.P15162084725737162834

namespace A081586

/-- `A145069(2*n)+A034324(2*n+1)` -/
def P15162084725737162834.Spec : Prop :=
  ∀ n, P15162084725737162834.a n = A081586 n

end A081586

/-! ## A081586.P8178437778500978092

`A100504(2*n)-A054554(2*n+1)`
-/

namespace A081586.P8178437778500978092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100504 (2 * n) - A054554 (2 * n + 1)

end

end A081586.P8178437778500978092

namespace A081586

/-- `A100504(2*n)-A054554(2*n+1)` -/
def P8178437778500978092.Spec : Prop :=
  ∀ n, P8178437778500978092.a n = A081586 n

end A081586

/-!
# A081587: Third row of Pascal-(1,4,1) array A081579.

The programs for A081587, the canonical program `A081587.P7703468419085696748` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081587 has offset 0).

The definition of A081587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081587.P1727868997736555884

`((10*n-1)²+7)/8`
-/

namespace A081587.P1727868997736555884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((10 * n : ℤ) - 1) ^ 2 + 7 : ℚ) / 8

end

end A081587.P1727868997736555884

namespace A081587

/-- `((10*n-1)²+7)/8` -/
def P1727868997736555884.Spec : Prop :=
  ∀ n, P1727868997736555884.a n = (A081587 n : ℚ)

theorem P1727868997736555884.correct : P1727868997736555884.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A081587, Nat.add_sub_cancel, A081587.P1727868997736555884.a, A081587.P7703468419085696748.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A081587, Nat.add_sub_cancel, A081587.P1727868997736555884.a, A081587.P7703468419085696748.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081587

/-! ## A081587.P7703468419085696748

`a(n-1)+25*n-15` with `a(0)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081587

/-- `a(n-1)+25*n-15` -/
def P7703468419085696748.Spec : Prop :=
  ∀ n, P7703468419085696748.a n = A081587 n

theorem P7703468419085696748.correct : P7703468419085696748.Spec := by
  intro n
  simp only [A081587]

end A081587

/-! ## A081587.P5876310698269648664

`C(5*n, 2)+1`
-/

namespace A081587.P5876310698269648664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (5 * n) 2 + 1

end

end A081587.P5876310698269648664

namespace A081587

/-- `C(5*n, 2)+1` -/
def P5876310698269648664.Spec : Prop :=
  ∀ n, (P5876310698269648664.a n : ℤ) = A081587 n

end A081587

/-! ## A081587.P13454765678761685157

`∑[a(n-1)+25]` with `a(0)=1, a(1)=10`
-/

namespace A081587.P13454765678761685157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 25

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081587.P13454765678761685157

namespace A081587

/-- `∑[a(n-1)+25]` -/
def P13454765678761685157.Spec : Prop :=
  ∀ n, (P13454765678761685157.a n : ℤ) = A081587 n

end A081587

/-! ## A081587.P828902166364518932

`5*A005476(n)+1`
-/

namespace A081587.P828902166364518932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005476 n + 1

end

end A081587.P828902166364518932

namespace A081587

/-- `5*A005476(n)+1` -/
def P828902166364518932.Spec : Prop :=
  ∀ n, P828902166364518932.a n = A081587 n

end A081587

/-! ## A081587.P11408779466526453689

`A383465(n)+3*n`
-/

namespace A081587.P11408779466526453689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383465 n + (3 * n : ℤ)

end

end A081587.P11408779466526453689

namespace A081587

/-- `A383465(n)+3*n` -/
def P11408779466526453689.Spec : Prop :=
  ∀ n, P11408779466526453689.a n = A081587 n

end A081587

/-! ## A081587.P17941984197253699252

`A080857(n)+5*n`
-/

namespace A081587.P17941984197253699252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080857 n + (5 * n : ℤ)

end

end A081587.P17941984197253699252

namespace A081587

/-- `A080857(n)+5*n` -/
def P17941984197253699252.Spec : Prop :=
  ∀ n, P17941984197253699252.a n = A081587 n

end A081587

/-! ## A081587.P7812583390203409571

`A014642(n)+∑[n+1]`
-/

namespace A081587.P7812583390203409571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081587.P7812583390203409571

namespace A081587

/-- `A014642(n)+∑[n+1]` -/
def P7812583390203409571.Spec : Prop :=
  ∀ n, P7812583390203409571.a n = A081587 n

end A081587

/-! ## A081587.P12084059172373127958

`A244802(n+1)+∑[n]`
-/

namespace A081587.P12084059172373127958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244802 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081587.P12084059172373127958

namespace A081587

/-- `A244802(n+1)+∑[n]` -/
def P12084059172373127958.Spec : Prop :=
  ∀ n, P12084059172373127958.a n = A081587 n

end A081587

/-! ## A081587.P11727885962913844052

`5*A140066(n+1)-4`
-/

namespace A081587.P11727885962913844052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A140066 (n + 1) - 4

end

end A081587.P11727885962913844052

namespace A081587

/-- `5*A140066(n+1)-4` -/
def P11727885962913844052.Spec : Prop :=
  ∀ n, P11727885962913844052.a n = A081587 n

end A081587

/-! ## A081587.P10178647876864760496

`A062783(n)+A000124(n)`
-/

namespace A081587.P10178647876864760496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n + A000124 n

end

end A081587.P10178647876864760496

namespace A081587

/-- `A062783(n)+A000124(n)` -/
def P10178647876864760496.Spec : Prop :=
  ∀ n, P10178647876864760496.a n = A081587 n

end A081587

/-! ## A081587.P12657685996148927291

`A054552(n)+A022275(n)`
-/

namespace A081587.P12657685996148927291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054552 n + A022275 n

end

end A081587.P12657685996148927291

namespace A081587

/-- `A054552(n)+A022275(n)` -/
def P12657685996148927291.Spec : Prop :=
  ∀ n, P12657685996148927291.a n = A081587 n

end A081587

/-! ## A081587.P630719705367109137

`A056105(n)+A022276(n)`
-/

namespace A081587.P630719705367109137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056105 n + A022276 n

end

end A081587.P630719705367109137

namespace A081587

/-- `A056105(n)+A022276(n)` -/
def P630719705367109137.Spec : Prop :=
  ∀ n, P630719705367109137.a n = A081587 n

end A081587

/-! ## A081587.P10911497715755386011

`A056000(n)+A033578(n)`
-/

namespace A081587.P10911497715755386011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056000 n + A033578 n

end

end A081587.P10911497715755386011

namespace A081587

/-- `A056000(n)+A033578(n)` -/
def P10911497715755386011.Spec : Prop :=
  ∀ n, P10911497715755386011.a n = A081587 n

end A081587

/-! ## A081587.P9380231241899617212

`A062728(n)+A033567(n)`
-/

namespace A081587.P9380231241899617212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n + A033567 n

end

end A081587.P9380231241899617212

namespace A081587

/-- `A062728(n)+A033567(n)` -/
def P9380231241899617212.Spec : Prop :=
  ∀ n, P9380231241899617212.a n = A081587 n

end A081587

/-! ## A081587.P7850615364248270718

`A085250(n)+A038764(n)`
-/

namespace A081587.P7850615364248270718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 n + A038764 n

end

end A081587.P7850615364248270718

namespace A081587

/-- `A085250(n)+A038764(n)` -/
def P7850615364248270718.Spec : Prop :=
  ∀ n, P7850615364248270718.a n = A081587 n

end A081587

/-! ## A081587.P17984160109383628836

`A085473(n)+A051867(n)`
-/

namespace A081587.P17984160109383628836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085473 n + A051867 n

end

end A081587.P17984160109383628836

namespace A081587

/-- `A085473(n)+A051867(n)` -/
def P17984160109383628836.Spec : Prop :=
  ∀ n, P17984160109383628836.a n = A081587 n

end A081587

/-! ## A081587.P9923707368608421290

`A081585(n)+A062708(n)`
-/

namespace A081587.P9923707368608421290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n + A062708 n

end

end A081587.P9923707368608421290

namespace A081587

/-- `A081585(n)+A062708(n)` -/
def P9923707368608421290.Spec : Prop :=
  ∀ n, P9923707368608421290.a n = A081587 n

end A081587

/-! ## A081587.P7949012438156430986

`A139273(n)+A006137(n)`
-/

namespace A081587.P7949012438156430986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139273 n + A006137 n

end

end A081587.P7949012438156430986

namespace A081587

/-- `A139273(n)+A006137(n)` -/
def P7949012438156430986.Spec : Prop :=
  ∀ n, P7949012438156430986.a n = A081587 n

end A081587

/-! ## A081587.P10678281078075742814

`A125201(n)+A027468(n)`
-/

namespace A081587.P10678281078075742814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125201 n + A027468 n

end

end A081587.P10678281078075742814

namespace A081587

/-- `A125201(n)+A027468(n)` -/
def P10678281078075742814.Spec : Prop :=
  ∀ n, P10678281078075742814.a n = A081587 n

end A081587

/-!
# A081588: Fourth row of the Pascal-(1,4,1) array A081579.

The programs for A081588, the canonical program `A081588.P12905588332319321535` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081588 has offset 0).

The definition of A081588 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081588.P14207005066602690892

`(6+115*n-150*n²+125*n^3)/6`
-/

namespace A081588.P14207005066602690892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 + 115 * n : ℤ) - (150 * n ^ 2 : ℤ) + (125 * n ^ 3 : ℤ) : ℚ) / 6

end

end A081588.P14207005066602690892

namespace A081588

/-- `(6+115*n-150*n²+125*n^3)/6` -/
def P14207005066602690892.Spec : Prop :=
  ∀ n, P14207005066602690892.a n = (A081588 n : ℚ)

theorem P14207005066602690892.correct : P14207005066602690892.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A081588, Nat.add_sub_cancel, A081588.P14207005066602690892.a, A081588.P12905588332319321535.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A081588, Nat.add_sub_cancel, A081588.P14207005066602690892.a, A081588.P12905588332319321535.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081588

/-! ## A081588.P12905588332319321535

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=16, a(2)=106, a(3)=396`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081588

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12905588332319321535.Spec : Prop :=
  ∀ n, P12905588332319321535.a n = A081588 n

theorem P12905588332319321535.correct : P12905588332319321535.Spec := by
  intro n
  simp only [A081588]

end A081588

/-! ## A081588.P3453880929393583306

`A050407(5*n)+10*n+1`
-/

namespace A081588.P3453880929393583306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050407 (5 * n) + (10 * n + 1 : ℤ)

end

end A081588.P3453880929393583306

namespace A081588

/-- `A050407(5*n)+10*n+1` -/
def P3453880929393583306.Spec : Prop :=
  ∀ n, P3453880929393583306.a n = A081588 n

end A081588

/-! ## A081588.P2906832940731502442

`A081579(∑[n+3]+6)`
-/

namespace A081588.P2906832940731502442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081579 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A081588.P2906832940731502442

namespace A081588

/-- `A081579(∑[n+3]+6)` -/
def P2906832940731502442.Spec : Prop :=
  ∀ n, P2906832940731502442.a n = A081588 n

end A081588

/-! ## A081588.P17983681114559537755

`A081579(A167614(n+2))%A057850(n+1)`
-/

namespace A081588.P17983681114559537755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081579 (A167614 (n + 2)).toNat) (A057850 (n + 1))

end

end A081588.P17983681114559537755

namespace A081588

/-- `A081579(A167614(n+2))%A057850(n+1)` -/
def P17983681114559537755.Spec : Prop :=
  ∀ n, P17983681114559537755.a n = A081588 n

end A081588

/-! ## A081588.P9959477625324764751

`A081579(A000217(n+3)+3)%A265827(n+1)`
-/

namespace A081588.P9959477625324764751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081579 (A000217 (n + 3) + 3).toNat) (A265827 (n + 1))

end

end A081588.P9959477625324764751

namespace A081588

/-- `A081579(A000217(n+3)+3)%A265827(n+1)` -/
def P9959477625324764751.Spec : Prop :=
  ∀ n, P9959477625324764751.a n = A081588 n

end A081588

/-!
# A081589: Third row of Pascal-(1,5,1) array A081580.

The programs for A081589, the canonical program `A081589.P14858353134158145363` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081589 has offset 0).

The definition of A081589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081589.P14858353134158145363

`1-6*n+18*n²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081589

/-- `1-6*n+18*n²` -/
def P14858353134158145363.Spec : Prop :=
  ∀ n, P14858353134158145363.a n = A081589 n

theorem P14858353134158145363.correct : P14858353134158145363.Spec := by
  intro n
  simp only [A081589]

end A081589

/-! ## A081589.P436521344929138326

`or(1, 4*C(3*n, 2))`
-/

namespace A081589.P436521344929138326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * Nat.choose (3 * n) 2)

end

end A081589.P436521344929138326

namespace A081589

/-- `or(1, 4*C(3*n, 2))` -/
def P436521344929138326.Spec : Prop :=
  ∀ n, (P436521344929138326.a n : ℤ) = A081589 n

end A081589

/-! ## A081589.P1616329825783705528

`xor(1, 4*C(3*n, 2))`
-/

namespace A081589.P1616329825783705528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * Nat.choose (3 * n) 2)

end

end A081589.P1616329825783705528

namespace A081589

/-- `xor(1, 4*C(3*n, 2))` -/
def P1616329825783705528.Spec : Prop :=
  ∀ n, (P1616329825783705528.a n : ℤ) = A081589 n

end A081589

/-! ## A081589.P4764221987480860457

`∑[a(n-1)+36]` with `a(0)=1, a(1)=12`
-/

namespace A081589.P4764221987480860457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n f1 =>
  f1 (n - 1) + 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081589.P4764221987480860457

namespace A081589

/-- `∑[a(n-1)+36]` -/
def P4764221987480860457.Spec : Prop :=
  ∀ n, (P4764221987480860457.a n : ℤ) = A081589 n

end A081589

/-! ## A081589.P8875189025416721041

`(A174371(n)+1)/2`
-/

namespace A081589.P8875189025416721041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174371 n + 1 : ℚ) / 2

end

end A081589.P8875189025416721041

namespace A081589

/-- `(A174371(n)+1)/2` -/
def P8875189025416721041.Spec : Prop :=
  ∀ n, P8875189025416721041.a n = (A081589 n : ℚ)

theorem P8875189025416721041.correct : P8875189025416721041.Spec := by
  intro n
  simp only [A081589, Nat.add_sub_cancel, A081589.P8875189025416721041.a, A081589.P14858353134158145363.a, A174371, A174371.P17431519558292009846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081589

/-! ## A081589.P8456073142343648507

`round(A101328(n+2)²/2)`
-/

namespace A081589.P8456073142343648507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A101328 (n + 2) ^ 2 : ℚ) / 2)

end

end A081589.P8456073142343648507

namespace A081589

/-- `round(A101328(n+2)²/2)` -/
def P8456073142343648507.Spec : Prop :=
  ∀ n, P8456073142343648507.a n = A081589 n

end A081589

/-! ## A081589.P11059968458527607145

`A298037(A004273(n))`
-/

namespace A081589.P11059968458527607145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 (A004273 n).toNat

end

end A081589.P11059968458527607145

namespace A081589

/-- `A298037(A004273(n))` -/
def P11059968458527607145.Spec : Prop :=
  ∀ n, P11059968458527607145.a n = A081589 n

end A081589

/-! ## A081589.P17949674160453082902

`A298037(A008486(n)-(n+1))`
-/

namespace A081589.P17949674160453082902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 (A008486 n - (n + 1 : ℤ)).toNat

end

end A081589.P17949674160453082902

namespace A081589

/-- `A298037(A008486(n)-(n+1))` -/
def P17949674160453082902.Spec : Prop :=
  ∀ n, P17949674160453082902.a n = A081589 n

end A081589

/-! ## A081589.P2305393095920115835

`A001844(A008574(n)-(n+1))`
-/

namespace A081589.P2305393095920115835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 (A008574 n - (n + 1 : ℤ)).toNat

end

end A081589.P2305393095920115835

namespace A081589

/-- `A001844(A008574(n)-(n+1))` -/
def P2305393095920115835.Spec : Prop :=
  ∀ n, P2305393095920115835.a n = A081589 n

end A081589

/-! ## A081589.P9696238289897575380

`A099392(A008458(n))`
-/

namespace A081589.P9696238289897575380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (A008458 n).toNat

end

end A081589.P9696238289897575380

namespace A081589

/-- `A099392(A008458(n))` -/
def P9696238289897575380.Spec : Prop :=
  ∀ n, P9696238289897575380.a n = A081589 n

end A081589

/-! ## A081589.P17434241078307135939

`A370980(6*n)`
-/

namespace A081589.P17434241078307135939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370980 (6 * n)

end

end A081589.P17434241078307135939

namespace A081589

/-- `A370980(6*n)` -/
def P17434241078307135939.Spec : Prop :=
  ∀ n, P17434241078307135939.a n = A081589 n

end A081589

/-! ## A081589.P18018109200223805285

`A000982(A101328(n+2))`
-/

namespace A081589.P18018109200223805285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (A101328 (n + 2)).toNat

end

end A081589.P18018109200223805285

namespace A081589

/-- `A000982(A101328(n+2))` -/
def P18018109200223805285.Spec : Prop :=
  ∀ n, P18018109200223805285.a n = A081589 n

end A081589

/-! ## A081589.P10816223281907022989

`A228564(A143051(6*n))`
-/

namespace A081589.P10816223281907022989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 (A143051 (6 * n)).toNat

end

end A081589.P10816223281907022989

namespace A081589

/-- `A228564(A143051(6*n))` -/
def P10816223281907022989.Spec : Prop :=
  ∀ n, P10816223281907022989.a n = A081589 n

end A081589

/-! ## A081589.P13047546075813202863

`A104563(A004275(2*n)+2*n+1)`
-/

namespace A081589.P13047546075813202863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104563 (A004275 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A081589.P13047546075813202863

namespace A081589

/-- `A104563(A004275(2*n)+2*n+1)` -/
def P13047546075813202863.Spec : Prop :=
  ∀ n, P13047546075813202863.a n = A081589 n

end A081589

/-! ## A081589.P8709946556416009311

`A081580(∑[n+3])`
-/

namespace A081589.P8709946556416009311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A081589.P8709946556416009311

namespace A081589

/-- `A081580(∑[n+3])` -/
def P8709946556416009311.Spec : Prop :=
  ∀ n, P8709946556416009311.a n = A081589 n

end A081589

/-!
# A081590: Fourth row of Pascal-(1,5,1) array A081580.

The programs for A081590, the canonical program `A081590.P2429899503089122033` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081590 has offset 0).

The definition of A081590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081590.P2429899503089122033

`1+36*n-54*n²+36*n^3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081590

/-- `1+36*n-54*n²+36*n^3` -/
def P2429899503089122033.Spec : Prop :=
  ∀ n, P2429899503089122033.a n = A081590 n

theorem P2429899503089122033.correct : P2429899503089122033.Spec := by
  intro n
  simp only [A081590]

end A081590

/-! ## A081590.P17046281854963470218

`or(9*A060354(2*n), 1)`
-/

namespace A081590.P17046281854963470218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (9 * A060354 (2 * n)) 1

end

end A081590.P17046281854963470218

namespace A081590

/-- `or(9*A060354(2*n), 1)` -/
def P17046281854963470218.Spec : Prop :=
  ∀ n, P17046281854963470218.a n = A081590 n

end A081590

/-! ## A081590.P12026589819748180446

`gcd(9*A060354(2*n)+1, A263013(n+2))`
-/

namespace A081590.P12026589819748180446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (9 * A060354 (2 * n) + 1) (A263013 (n + 2))

end

end A081590.P12026589819748180446

namespace A081590

/-- `gcd(9*A060354(2*n)+1, A263013(n+2))` -/
def P12026589819748180446.Spec : Prop :=
  ∀ n, (P12026589819748180446.a n : ℤ) = A081590 n

end A081590

/-! ## A081590.P8547750095783500365

`(9*A060354(2*n)+1)*A000034(2*n)²`
-/

namespace A081590.P8547750095783500365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * A060354 (2 * n) + 1) * A000034 (2 * n) ^ 2

end

end A081590.P8547750095783500365

namespace A081590

/-- `(9*A060354(2*n)+1)*A000034(2*n)²` -/
def P8547750095783500365.Spec : Prop :=
  ∀ n, P8547750095783500365.a n = A081590 n

end A081590

/-! ## A081590.P8406051256794007765

`(9*A060354(2*n)+1)*A000040(A018252(n+1)+1)%2`
-/

namespace A081590.P8406051256794007765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * A060354 (2 * n) + 1) * Int.tmod (A000040 (A018252 (n + 1) + 1).toNat) 2

end

end A081590.P8406051256794007765

namespace A081590

/-- `(9*A060354(2*n)+1)*A000040(A018252(n+1)+1)%2` -/
def P8406051256794007765.Spec : Prop :=
  ∀ n, P8406051256794007765.a n = A081590 n

end A081590

/-! ## A081590.P2490976361672148002

`A081580(∑[n+3]+6)`
-/

namespace A081590.P2490976361672148002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081580 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A081590.P2490976361672148002

namespace A081590

/-- `A081580(∑[n+3]+6)` -/
def P2490976361672148002.Spec : Prop :=
  ∀ n, P2490976361672148002.a n = A081590 n

end A081590

/-! ## A081590.P15529034270587237244

`or(1, A081580(A167614(n+2)))`
-/

namespace A081590.P15529034270587237244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081580 (A167614 (n + 2)).toNat)

end

end A081590.P15529034270587237244

namespace A081590

/-- `or(1, A081580(A167614(n+2)))` -/
def P15529034270587237244.Spec : Prop :=
  ∀ n, P15529034270587237244.a n = A081590 n

end A081590

/-! ## A081590.P8128833604378830913

`gcd(A000038(n), A081580(A167614(n+2)))`
-/

namespace A081590.P8128833604378830913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A081580 (A167614 (n + 2)).toNat)

end

end A081590.P8128833604378830913

namespace A081590

/-- `gcd(A000038(n), A081580(A167614(n+2)))` -/
def P8128833604378830913.Spec : Prop :=
  ∀ n, (P8128833604378830913.a n : ℤ) = A081590 n

end A081590

/-! ## A081590.P5740199692308973925

`A081580(A167614(n+2))^(1-A000007(n))`
-/

namespace A081590.P5740199692308973925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081580 (A167614 (n + 2)).toNat : ℚ) ^ (1 - A000007 n : ℤ)

end

end A081590.P5740199692308973925

namespace A081590

/-- `A081580(A167614(n+2))^(1-A000007(n))` -/
def P5740199692308973925.Spec : Prop :=
  ∀ n, P5740199692308973925.a n = (A081590 n : ℚ)

end A081590

/-! ## A081590.P16347212569514513180

`lcm(A008836(n+1), A081580(A167614(n+2)))`
-/

namespace A081590.P16347212569514513180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A081580 (A167614 (n + 2)).toNat)

end

end A081590.P16347212569514513180

namespace A081590

/-- `lcm(A008836(n+1), A081580(A167614(n+2)))` -/
def P16347212569514513180.Spec : Prop :=
  ∀ n, (P16347212569514513180.a n : ℤ) = A081590 n

end A081590

/-! ## A081590.P10318649543580040852

`A081580(A167614(n+2))%A250504(n+1)`
-/

namespace A081590.P10318649543580040852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081580 (A167614 (n + 2)).toNat) (A250504 (n + 1))

end

end A081590.P10318649543580040852

namespace A081590

/-- `A081580(A167614(n+2))%A250504(n+1)` -/
def P10318649543580040852.Spec : Prop :=
  ∀ n, P10318649543580040852.a n = A081590 n

end A081590

/-!
# A081591: Third row of Pascal-(1,6,1) array A081581.

The programs for A081591, the canonical program `A081591.P13389481019212014063` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081591 has offset 0).

The definition of A081591 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081591.P6387223495085965147

`(2-21*n+49*n²)/2`
-/

namespace A081591.P6387223495085965147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (21 * n : ℤ) + (49 * n ^ 2 : ℤ) : ℚ) / 2

end

end A081591.P6387223495085965147

namespace A081591

/-- `(2-21*n+49*n²)/2` -/
def P6387223495085965147.Spec : Prop :=
  ∀ n, P6387223495085965147.a n = (A081591 n : ℚ)

theorem P6387223495085965147.correct : P6387223495085965147.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A081591, Nat.add_sub_cancel, A081591.P6387223495085965147.a, A081591.P13389481019212014063.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A081591, Nat.add_sub_cancel, A081591.P6387223495085965147.a, A081591.P13389481019212014063.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A081591

/-! ## A081591.P13389481019212014063

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=15, a(2)=78`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081591

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P13389481019212014063.Spec : Prop :=
  ∀ n, P13389481019212014063.a n = A081591 n

theorem P13389481019212014063.correct : P13389481019212014063.Spec := by
  intro n
  simp only [A081591]

end A081591

/-! ## A081591.P16653662247876460657

`∑[a(n-1)+49]` with `a(0)=1, a(1)=14`
-/

namespace A081591.P16653662247876460657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081591.P16653662247876460657

namespace A081591

/-- `∑[a(n-1)+49]` -/
def P16653662247876460657.Spec : Prop :=
  ∀ n, (P16653662247876460657.a n : ℤ) = A081591 n

end A081591

/-! ## A081591.P13981052876098160867

`A143698(n)+∑[n+1]`
-/

namespace A081591.P13981052876098160867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143698 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A081591.P13981052876098160867

namespace A081591

/-- `A143698(n)+∑[n+1]` -/
def P13981052876098160867.Spec : Prop :=
  ∀ n, P13981052876098160867.a n = A081591 n

end A081591

/-! ## A081591.P9974811007628201622

`C(3*A004273(n)+n+2, 2)`
-/

namespace A081591.P9974811007628201622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * A004273 n + (n + 2 : ℤ)).toNat 2

end

end A081591.P9974811007628201622

namespace A081591

/-- `C(3*A004273(n)+n+2, 2)` -/
def P9974811007628201622.Spec : Prop :=
  ∀ n, (P9974811007628201622.a n : ℤ) = A081591 n

end A081591

/-! ## A081591.P10988691399840408793

`A080857(n)+A062783(n)`
-/

namespace A081591.P10988691399840408793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080857 n + A062783 n

end

end A081591.P10988691399840408793

namespace A081591

/-- `A080857(n)+A062783(n)` -/
def P10988691399840408793.Spec : Prop :=
  ∀ n, P10988691399840408793.a n = A081591 n

end A081591

/-! ## A081591.P17317445028342060568

`A153794(n)+A081587(n)`
-/

namespace A081591.P17317445028342060568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 n + A081587 n

end

end A081591.P17317445028342060568

namespace A081591

/-- `A153794(n)+A081587(n)` -/
def P17317445028342060568.Spec : Prop :=
  ∀ n, P17317445028342060568.a n = A081591 n

end A081591

/-! ## A081591.P3799062494859619989

`A154617(n)+A116668(n)`
-/

namespace A081591.P3799062494859619989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154617 n + A116668 n

end

end A081591.P3799062494859619989

namespace A081591

/-- `A154617(n)+A116668(n)` -/
def P3799062494859619989.Spec : Prop :=
  ∀ n, P3799062494859619989.a n = A081591 n

end A081591

/-! ## A081591.P12237002961356839591

`A226488(n)+A081589(n)`
-/

namespace A081591.P12237002961356839591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226488 n + A081589 n

end

end A081591.P12237002961356839591

namespace A081591

/-- `A226488(n)+A081589(n)` -/
def P12237002961356839591.Spec : Prop :=
  ∀ n, P12237002961356839591.a n = A081591 n

end A081591

/-! ## A081591.P16372692596851477536

`A193872(n)+A140064(n)`
-/

namespace A081591.P16372692596851477536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193872 n + A140064 n

end

end A081591.P16372692596851477536

namespace A081591

/-- `A193872(n)+A140064(n)` -/
def P16372692596851477536.Spec : Prop :=
  ∀ n, P16372692596851477536.a n = A081591 n

end A081591

/-! ## A081591.P797981325550588245

`A190816(n)+A153793(n)`
-/

namespace A081591.P797981325550588245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190816 n + A153793 n

end

end A081591.P797981325550588245

namespace A081591

/-- `A190816(n)+A153793(n)` -/
def P797981325550588245.Spec : Prop :=
  ∀ n, P797981325550588245.a n = A081591 n

end A081591

/-! ## A081591.P13434464964024876776

`A236267(n)+A153875(n)`
-/

namespace A081591.P13434464964024876776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 n + A153875 n

end

end A081591.P13434464964024876776

namespace A081591

/-- `A236267(n)+A153875(n)` -/
def P13434464964024876776.Spec : Prop :=
  ∀ n, P13434464964024876776.a n = A081591 n

end A081591

/-! ## A081591.P14476541936493802517

`A247541(n)+A152777(n)`
-/

namespace A081591.P14476541936493802517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247541 n + A152777 n

end

end A081591.P14476541936493802517

namespace A081591

/-- `A247541(n)+A152777(n)` -/
def P14476541936493802517.Spec : Prop :=
  ∀ n, P14476541936493802517.a n = A081591 n

end A081591

/-! ## A081591.P17918830880251857918

`A276819(n)+A144560(n)`
-/

namespace A081591.P17918830880251857918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276819 n + A144560 n

end

end A081591.P17918830880251857918

namespace A081591

/-- `A276819(n)+A144560(n)` -/
def P17918830880251857918.Spec : Prop :=
  ∀ n, P17918830880251857918.a n = A081591 n

end A081591

/-! ## A081591.P11782207531407383484

`A383464(n)+A153449(n)`
-/

namespace A081591.P11782207531407383484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383464 n + A153449 n

end

end A081591.P11782207531407383484

namespace A081591

/-- `A383464(n)+A153449(n)` -/
def P11782207531407383484.Spec : Prop :=
  ∀ n, P11782207531407383484.a n = A081591 n

end A081591

/-! ## A081591.P13594007777907945681

`A396291(n)+A383465(n)`
-/

namespace A081591.P13594007777907945681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396291 n + A383465 n

end

end A081591.P13594007777907945681

namespace A081591

/-- `A396291(n)+A383465(n)` -/
def P13594007777907945681.Spec : Prop :=
  ∀ n, P13594007777907945681.a n = A081591 n

end A081591

/-! ## A081591.P16376307184646242464

`A016994(n)-A162942(n)`
-/

namespace A081591.P16376307184646242464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016994 n - A162942 n

end

end A081591.P16376307184646242464

namespace A081591

/-- `A016994(n)-A162942(n)` -/
def P16376307184646242464.Spec : Prop :=
  ∀ n, P16376307184646242464.a n = A081591 n

end A081591

/-! ## A081591.P16915184526731711297

`A081593(n)-A226489(n)`
-/

namespace A081591.P16915184526731711297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081593 n - A226489 n

end

end A081591.P16915184526731711297

namespace A081591

/-- `A081593(n)-A226489(n)` -/
def P16915184526731711297.Spec : Prop :=
  ∀ n, P16915184526731711297.a n = A081591 n

end A081591

/-! ## A081591.P17236041594438152575

`A158549(n)-A151542(n)`
-/

namespace A081591.P17236041594438152575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158549 n - A151542 n

end

end A081591.P17236041594438152575

namespace A081591

/-- `A158549(n)-A151542(n)` -/
def P17236041594438152575.Spec : Prop :=
  ∀ n, P17236041594438152575.a n = A081591 n

end A081591

/-! ## A081591.P7320880641909854566

`A143861(n+1)+A051871(n)`
-/

namespace A081591.P7320880641909854566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143861 (n + 1) + A051871 n

end

end A081591.P7320880641909854566

namespace A081591

/-- `A143861(n+1)+A051871(n)` -/
def P7320880641909854566.Spec : Prop :=
  ∀ n, P7320880641909854566.a n = A081591 n

end A081591

/-!
# A081592: A self generating sequence: "there are n a(n)'s in the sequence". Start with 1,2 and use the rule : "a(n)=k implies there are n following k's (k is 1 or 2)".

The programs for A081592, the canonical program `A081592.P2838915121691567395` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081592 has offset 1).

The definition of A081592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A081592.P2838915121691567395

`a(comp[C(n+3, 2)]-n)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081592

/-- `a(comp[C(n+3, 2)]-n)` -/
def P2838915121691567395.Spec : Prop :=
  ∀ n, (P2838915121691567395.a n : ℤ) = A081592 (n + 1)

theorem P2838915121691567395.correct : P2838915121691567395.Spec := by
  intro n
  simp only [A081592, Nat.add_sub_cancel]

end A081592

/-!
# A081593: Third row of Pascal-(1,7,1) array A081582.

The programs for A081593, the canonical program `A081593.P2694235575521233725` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081593 has offset 0).

The definition of A081593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081593.P2694235575521233725

`1-16*n+32*n²`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081593

/-- `1-16*n+32*n²` -/
def P2694235575521233725.Spec : Prop :=
  ∀ n, P2694235575521233725.a n = A081593 n

theorem P2694235575521233725.correct : P2694235575521233725.Spec := by
  intro n
  simp only [A081593]

end A081593

/-! ## A081593.P5534544781055072716

`∑[a(n-1)+64]` with `a(0)=1, a(1)=16`
-/

namespace A081593.P5534544781055072716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f1 =>
  f1 (n - 1) + 64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A081593.P5534544781055072716

namespace A081593

/-- `∑[a(n-1)+64]` -/
def P5534544781055072716.Spec : Prop :=
  ∀ n, (P5534544781055072716.a n : ℤ) = A081593 n

end A081593

/-! ## A081593.P2388174158100300562

`xor(1, 4*A085250(n))`
-/

namespace A081593.P2388174158100300562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (4 * A085250 n)

end

end A081593.P2388174158100300562

namespace A081593

/-- `xor(1, 4*A085250(n))` -/
def P2388174158100300562.Spec : Prop :=
  ∀ n, P2388174158100300562.a n = A081593 n

end A081593

/-! ## A081593.P7310161503001839614

`or(1, 8*A002939(n))`
-/

namespace A081593.P7310161503001839614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (8 * A002939 n)

end

end A081593.P7310161503001839614

namespace A081593

/-- `or(1, 8*A002939(n))` -/
def P7310161503001839614.Spec : Prop :=
  ∀ n, P7310161503001839614.a n = A081593 n

end A081593

/-! ## A081593.P2254627361541413012

`or(1, 16*A000384(n))`
-/

namespace A081593.P2254627361541413012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (16 * A000384 n)

end

end A081593.P2254627361541413012

namespace A081593

/-- `or(1, 16*A000384(n))` -/
def P2254627361541413012.Spec : Prop :=
  ∀ n, P2254627361541413012.a n = A081593 n

end A081593

/-! ## A081593.P15912288687291418371

`A275543(A008574(n)-1)`
-/

namespace A081593.P15912288687291418371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (A008574 n - 1).toNat

end

end A081593.P15912288687291418371

namespace A081593

/-- `A275543(A008574(n)-1)` -/
def P15912288687291418371.Spec : Prop :=
  ∀ n, P15912288687291418371.a n = A081593 n

end A081593

/-! ## A081593.P15392520111653574905

`record[xor(16*C(n, 2), A033999(n))]`
-/

namespace A081593.P15392520111653574905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (16 * Nat.choose n 2 : ℤ) (A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081593.P15392520111653574905

namespace A081593

/-- `record[xor(16*C(n, 2), A033999(n))]` -/
def P15392520111653574905.Spec : Prop :=
  ∀ n, P15392520111653574905.a n = A081593 n

end A081593

/-! ## A081593.P2544940260593476072

`record[A176895(n)²*∑[n]+1]`
-/

namespace A081593.P2544940260593476072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 n ^ 2 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081593.P2544940260593476072

namespace A081593

/-- `record[A176895(n)²*∑[n]+1]` -/
def P2544940260593476072.Spec : Prop :=
  ∀ n, P2544940260593476072.a n = A081593 n

end A081593

/-! ## A081593.P14836085552584778344

`record[2*(n+1)*A188134(n)+1]`
-/

namespace A081593.P14836085552584778344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A188134 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081593.P14836085552584778344

namespace A081593

/-- `record[2*(n+1)*A188134(n)+1]` -/
def P14836085552584778344.Spec : Prop :=
  ∀ n, P14836085552584778344.a n = A081593 n

end A081593

/-! ## A081593.P13050183224735128578

`record[4*(n+1)*A064680(n)+1]`
-/

namespace A081593.P13050183224735128578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A064680 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081593.P13050183224735128578

namespace A081593

/-- `record[4*(n+1)*A064680(n)+1]` -/
def P13050183224735128578.Spec : Prop :=
  ∀ n, P13050183224735128578.a n = A081593 n

end A081593

/-! ## A081593.P1745754625000847549

`A069129(A004277(n))`
-/

namespace A081593.P1745754625000847549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A004277 n).toNat

end

end A081593.P1745754625000847549

namespace A081593

/-- `A069129(A004277(n))` -/
def P1745754625000847549.Spec : Prop :=
  ∀ n, P1745754625000847549.a n = A081593 n

end A081593

/-! ## A081593.P17421496222202430591

`A069129(A004275(n+1))`
-/

namespace A081593.P17421496222202430591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A004275 (n + 1)).toNat

end

end A081593.P17421496222202430591

namespace A081593

/-- `A069129(A004275(n+1))` -/
def P17421496222202430591.Spec : Prop :=
  ∀ n, P17421496222202430591.a n = A081593 n

end A081593

/-! ## A081593.P5501553493379311449

`A069129(A028310(2*n))`
-/

namespace A081593.P5501553493379311449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A028310 (2 * n)).toNat

end

end A081593.P5501553493379311449

namespace A081593

/-- `A069129(A028310(2*n))` -/
def P5501553493379311449.Spec : Prop :=
  ∀ n, P5501553493379311449.a n = A081593 n

end A081593

/-! ## A081593.P2755709791443966355

`or(1, A035008(A004273(n)))`
-/

namespace A081593.P2755709791443966355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A035008 (A004273 n).toNat)

end

end A081593.P2755709791443966355

namespace A081593

/-- `or(1, A035008(A004273(n)))` -/
def P2755709791443966355.Spec : Prop :=
  ∀ n, P2755709791443966355.a n = A081593 n

end A081593

/-! ## A081593.P16933371893154891808

`A069129(A028310(n)+n)`
-/

namespace A081593.P16933371893154891808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A028310 n + (n : ℤ)).toNat

end

end A081593.P16933371893154891808

namespace A081593

/-- `A069129(A028310(n)+n)` -/
def P16933371893154891808.Spec : Prop :=
  ∀ n, P16933371893154891808.a n = A081593 n

end A081593

/-! ## A081593.P6499720537273430962

`record[and(4, A004767(n))*A046092(n)+1]`
-/

namespace A081593.P6499720537273430962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A004767 n) * A046092 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081593.P6499720537273430962

namespace A081593

/-- `record[and(4, A004767(n))*A046092(n)+1]` -/
def P6499720537273430962.Spec : Prop :=
  ∀ n, P6499720537273430962.a n = A081593 n

end A081593

/-! ## A081593.P6274706748032617415

`(A016814(2*n)-A183010(2*n))/2`
-/

namespace A081593.P6274706748032617415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016814 (2 * n) - A183010 (2 * n) : ℚ) / 2

end

end A081593.P6274706748032617415

namespace A081593

/-- `(A016814(2*n)-A183010(2*n))/2` -/
def P6274706748032617415.Spec : Prop :=
  ∀ n, P6274706748032617415.a n = (A081593 n : ℚ)

theorem P6274706748032617415.correct : P6274706748032617415.Spec := by
  intro n
  simp only [A081593, Nat.add_sub_cancel, A081593.P6274706748032617415.a, A081593.P2694235575521233725.a, A016814, A016814.P5668709183610020667.a, A183010, A183010.P1615208601139071033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081593

/-! ## A081593.P5903445623298274852

`record[n*A141134(n)+1]`
-/

namespace A081593.P5903445623298274852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A141134 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A081593.P5903445623298274852

namespace A081593

/-- `record[n*A141134(n)+1]` -/
def P5903445623298274852.Spec : Prop :=
  ∀ n, P5903445623298274852.a n = A081593 n

end A081593

/-! ## A081593.P17288839655690195801

`A056220(A131098(n+1))`
-/

namespace A081593.P17288839655690195801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A131098 (n + 1)).toNat

end

end A081593.P17288839655690195801

namespace A081593

/-- `A056220(A131098(n+1))` -/
def P17288839655690195801.Spec : Prop :=
  ∀ n, P17288839655690195801.a n = A081593 n

end A081593

/-! ## A081593.P16322137119954079450

`A249356(A111284(n+1))`
-/

namespace A081593.P16322137119954079450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (A111284 (n + 1)).toNat

end

end A081593.P16322137119954079450

namespace A081593

/-- `A249356(A111284(n+1))` -/
def P16322137119954079450.Spec : Prop :=
  ∀ n, P16322137119954079450.a n = A081593 n

end A081593

/-!
# A081594: Let n = 10x + y where 0 <= y <= 9, x >= 0. Then a(n) = 2x+y.

The programs for A081594, the canonical program `A081594.P5732649395736885180` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081594 has offset 0).

The definition of A081594 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081594.P5732649395736885180

`n-8*floor(n/10)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081594

/-- `n-8*floor(n/10)` -/
def P5732649395736885180.Spec : Prop :=
  ∀ n, P5732649395736885180.a n = A081594 n

theorem P5732649395736885180.correct : P5732649395736885180.Spec := by
  intro n
  simp only [A081594]

end A081594

/-! ## A081594.P16021904297803218064

`(n*∑[char[10*n]])%(n+8)`
-/

namespace A081594.P16021904297803218064
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 8)

end

end A081594.P16021904297803218064

namespace A081594

/-- `(n*∑[char[10*n]])%(n+8)` -/
def P16021904297803218064.Spec : Prop :=
  ∀ n, (P16021904297803218064.a n : ℤ) = A081594 n

end A081594

/-! ## A081594.P10686730636543247622

`floor(A076314(n)+n/10)`
-/

namespace A081594.P10686730636543247622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076314 n : ℚ) + (n : ℚ) / 10⌋

end

end A081594.P10686730636543247622

namespace A081594

/-- `floor(A076314(n)+n/10)` -/
def P10686730636543247622.Spec : Prop :=
  ∀ n, P10686730636543247622.a n = A081594 n

end A081594

/-! ## A081594.P13472567171425434660

`abs(A076313(n)+A076312(n))`
-/

namespace A081594.P13472567171425434660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076313 n + A076312 n|

end

end A081594.P13472567171425434660

namespace A081594

/-- `abs(A076313(n)+A076312(n))` -/
def P13472567171425434660.Spec : Prop :=
  ∀ n, P13472567171425434660.a n = A081594 n

end A081594

/-! ## A081594.P6292850453840309249

`A006370((n%10+n)/2-A076313(n))`
-/

namespace A081594.P6292850453840309249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.roundAway (((n % 10 + n : ℕ) : ℚ) / 2 - (A076313 n : ℚ))).toNat

end

end A081594.P6292850453840309249

namespace A081594

/-- `A006370((n%10+n)/2-A076313(n))` -/
def P6292850453840309249.Spec : Prop :=
  ∀ n, P6292850453840309249.a n = A081594 n

end A081594

/-! ## A081594.P12641510030187117772

`A006370(floor((A010889(n)+n)/2)-A076313(n))`
-/

namespace A081594.P12641510030187117772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (⌊(A010889 n + (n : ℤ) : ℚ) / 2⌋ - A076313 n).toNat

end

end A081594.P12641510030187117772

namespace A081594

/-- `A006370(floor((A010889(n)+n)/2)-A076313(n))` -/
def P12641510030187117772.Spec : Prop :=
  ∀ n, P12641510030187117772.a n = A081594 n

end A081594

/-! ## A081594.P2651666570849326809

`A076314(2*n-A010879(n))`
-/

namespace A081594.P2651666570849326809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 ((2 * n : ℤ) - A010879 n).toNat

end

end A081594.P2651666570849326809

namespace A081594

/-- `A076314(2*n-A010879(n))` -/
def P2651666570849326809.Spec : Prop :=
  ∀ n, P2651666570849326809.a n = A081594 n

end A081594

/-! ## A081594.P16469473359384826780

`lcm(A028897(n), A244158(n))`
-/

namespace A081594.P16469473359384826780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028897 n) (A244158 n)

end

end A081594.P16469473359384826780

namespace A081594

/-- `lcm(A028897(n), A244158(n))` -/
def P16469473359384826780.Spec : Prop :=
  ∀ n, (P16469473359384826780.a n : ℤ) = A081594 n

end A081594

/-!
# A081595: Let n = 10x + y where 0 <= y <= 9, x >= 0. Then a(n) = 4x+y.

The programs for A081595, the canonical program `A081595.P15366526779689166752` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081595 has offset 0).

The definition of A081595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081595.P15366526779689166752

`n-6*floor(n/10)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081595

/-- `n-6*floor(n/10)` -/
def P15366526779689166752.Spec : Prop :=
  ∀ n, P15366526779689166752.a n = A081595 n

theorem P15366526779689166752.correct : P15366526779689166752.Spec := by
  intro n
  simp only [A081595]

end A081595

/-! ## A081595.P2668809485045865033

`(6*n*floor(n/10)+n)%(n+1)`
-/

namespace A081595.P2668809485045865033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((6 * n : ℤ) * ⌊(n : ℚ) / 10⌋ + (n : ℤ)) (n + 1 : ℤ)

end

end A081595.P2668809485045865033

namespace A081595

/-- `(6*n*floor(n/10)+n)%(n+1)` -/
def P2668809485045865033.Spec : Prop :=
  ∀ n, P2668809485045865033.a n = A081595 n

end A081595

/-! ## A081595.P2933189999879979251

`(A081598(n)+A076314(n))/2`
-/

namespace A081595.P2933189999879979251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081598 n + A076314 n : ℚ) / 2

end

end A081595.P2933189999879979251

namespace A081595

/-- `(A081598(n)+A076314(n))/2` -/
def P2933189999879979251.Spec : Prop :=
  ∀ n, P2933189999879979251.a n = (A081595 n : ℚ)

theorem P2933189999879979251.correct : P2933189999879979251.Spec := by
  intro n
  simp only [A081595, Nat.add_sub_cancel, A081595.P2933189999879979251.a, A081595.P15366526779689166752.a, A076314, A076314.P16087139924310494247.a, A081598, A081598.P6494840942839841737.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081595

/-! ## A081595.P10477952813893709668

`(A081600(n)-A076313(n))/2`
-/

namespace A081595.P10477952813893709668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081600 n - A076313 n : ℚ) / 2

end

end A081595.P10477952813893709668

namespace A081595

/-- `(A081600(n)-A076313(n))/2` -/
def P10477952813893709668.Spec : Prop :=
  ∀ n, P10477952813893709668.a n = (A081595 n : ℚ)

theorem P10477952813893709668.correct : P10477952813893709668.Spec := by
  intro n
  simp only [A081595, Nat.add_sub_cancel, A081595.P10477952813893709668.a, A081595.P15366526779689166752.a, A076313, A076313.P12295764101806133535.a, A081600, A081600.P18279744681221534616.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081595

/-! ## A081595.P13419974365851026819

`A006370((n%10+n)/2+(n-A076309(n))/3)`
-/

namespace A081595.P13419974365851026819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.roundAway (((n % 10 + n : ℕ) : ℚ) / 2 + ((n : ℤ) - A076309 n : ℚ) / 3)).toNat

end

end A081595.P13419974365851026819

namespace A081595

/-- `A006370((n%10+n)/2+(n-A076309(n))/3)` -/
def P13419974365851026819.Spec : Prop :=
  ∀ n, P13419974365851026819.a n = A081595 n

end A081595

/-! ## A081595.P15036249427746828801

`A004526(n-(A076314(n)+A076309(n)))`
-/

namespace A081595.P15036249427746828801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - (A076314 n + A076309 n)).toNat

end

end A081595.P15036249427746828801

namespace A081595

/-- `A004526(n-(A076314(n)+A076309(n)))` -/
def P15036249427746828801.Spec : Prop :=
  ∀ n, P15036249427746828801.a n = A081595 n

end A081595

/-! ## A081595.P4970385265942017508

`A004526(n-A076309(n)-A076314(n))`
-/

namespace A081595.P4970385265942017508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - A076309 n - A076314 n).toNat

end

end A081595.P4970385265942017508

namespace A081595

/-- `A004526(n-A076309(n)-A076314(n))` -/
def P4970385265942017508.Spec : Prop :=
  ∀ n, P4970385265942017508.a n = A081595 n

end A081595

/-! ## A081595.P15462328347593795390

`A081594(A005843(n)-A010879(n))`
-/

namespace A081595.P15462328347593795390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 (A005843 n - A010879 n).toNat

end

end A081595.P15462328347593795390

namespace A081595

/-- `A081594(A005843(n)-A010879(n))` -/
def P15462328347593795390.Spec : Prop :=
  ∀ n, P15462328347593795390.a n = A081595 n

end A081595

/-!
# A081596: Let n = 10x + y where 0 <= y <= 9, x >= 0. Then a(n) = 5x+y.

The programs for A081596, the canonical program `A081596.P9671227950668524431` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081596 has offset 0).

The definition of A081596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081596.P9671227950668524431

`n-5*floor(n/10)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081596

/-- `n-5*floor(n/10)` -/
def P9671227950668524431.Spec : Prop :=
  ∀ n, P9671227950668524431.a n = A081596 n

theorem P9671227950668524431.correct : P9671227950668524431.Spec := by
  intro n
  simp only [A081596]

end A081596

/-! ## A081596.P7057251272275953632

`(n%10+n)/2`
-/

namespace A081596.P7057251272275953632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 10 + n : ℕ) : ℚ) / 2

end

end A081596.P7057251272275953632

namespace A081596

/-- `(n%10+n)/2` -/
def P7057251272275953632.Spec : Prop :=
  ∀ n, P7057251272275953632.a n = (A081596 n : ℚ)

end A081596

/-! ## A081596.P1391767772063663815

`(n--n%10)/2`
-/

namespace A081596.P1391767772063663815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.tmod (-(n : ℤ)) 10 : ℚ) / 2

end

end A081596.P1391767772063663815

namespace A081596

/-- `(n--n%10)/2` -/
def P1391767772063663815.Spec : Prop :=
  ∀ n, P1391767772063663815.a n = (A081596 n : ℚ)

end A081596

/-! ## A081596.P2972207961174292943

`(A010879(n)+n)/2`
-/

namespace A081596.P2972207961174292943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010879 n + (n : ℤ) : ℚ) / 2

end

end A081596.P2972207961174292943

namespace A081596

/-- `(A010879(n)+n)/2` -/
def P2972207961174292943.Spec : Prop :=
  ∀ n, P2972207961174292943.a n = (A081596 n : ℚ)

end A081596

/-! ## A081596.P6937530481062800353

`floor((A010889(n)+n)/2)`
-/

namespace A081596.P6937530481062800353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010889 n + (n : ℤ) : ℚ) / 2⌋

end

end A081596.P6937530481062800353

namespace A081596

/-- `floor((A010889(n)+n)/2)` -/
def P6937530481062800353.Spec : Prop :=
  ∀ n, P6937530481062800353.a n = A081596 n

end A081596

/-! ## A081596.P6149467844633296649

`(A007376(A065650(n))+n)/2`
-/

namespace A081596.P6149467844633296649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A065650 n).toNat + (n : ℤ) : ℚ) / 2

end

end A081596.P6149467844633296649

namespace A081596

/-- `(A007376(A065650(n))+n)/2` -/
def P6149467844633296649.Spec : Prop :=
  ∀ n, P6149467844633296649.a n = (A081596 n : ℚ)

end A081596

/-! ## A081596.P9389434817123404994

`(A081600(n)+A076314(n))/2`
-/

namespace A081596.P9389434817123404994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081600 n + A076314 n : ℚ) / 2

end

end A081596.P9389434817123404994

namespace A081596

/-- `(A081600(n)+A076314(n))/2` -/
def P9389434817123404994.Spec : Prop :=
  ∀ n, P9389434817123404994.a n = (A081596 n : ℚ)

theorem P9389434817123404994.correct : P9389434817123404994.Spec := by
  intro n
  simp only [A081596, Nat.add_sub_cancel, A081596.P9389434817123404994.a, A081596.P9671227950668524431.a, A076314, A076314.P16087139924310494247.a, A081600, A081600.P18279744681221534616.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081596

/-! ## A081596.P17559414020211818181

`(A033307(A261334(n))+n)/2`
-/

namespace A081596.P17559414020211818181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033307 (A261334 n).toNat + (n : ℤ) : ℚ) / 2

end

end A081596.P17559414020211818181

namespace A081596

/-- `(A033307(A261334(n))+n)/2` -/
def P17559414020211818181.Spec : Prop :=
  ∀ n, P17559414020211818181.a n = (A081596 n : ℚ)

end A081596

/-! ## A081596.P11344115391265604731

`A084964(n+3-A257145(n+3))`
-/

namespace A081596.P11344115391265604731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 ((n + 3 : ℤ) - A257145 (n + 3)).toNat

end

end A081596.P11344115391265604731

namespace A081596

/-- `A084964(n+3-A257145(n+3))` -/
def P11344115391265604731.Spec : Prop :=
  ∀ n, P11344115391265604731.a n = A081596 n

end A081596

/-! ## A081596.P2363647986132834077

`A026741(n%10+n)`
-/

namespace A081596.P2363647986132834077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n % 10 + n)

end

end A081596.P2363647986132834077

namespace A081596

/-- `A026741(n%10+n)` -/
def P2363647986132834077.Spec : Prop :=
  ∀ n, P2363647986132834077.a n = A081596 n

end A081596

/-! ## A081596.P14399045138847018133

`A026741(A010879(n)+n)`
-/

namespace A081596.P14399045138847018133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A010879 n + (n : ℤ)).toNat

end

end A081596.P14399045138847018133

namespace A081596

/-- `A026741(A010879(n)+n)` -/
def P14399045138847018133.Spec : Prop :=
  ∀ n, P14399045138847018133.a n = A081596 n

end A081596

/-! ## A081596.P472397712220583565

`A004526(A010879(n)+n)`
-/

namespace A081596.P472397712220583565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A010879 n + (n : ℤ)).toNat

end

end A081596.P472397712220583565

namespace A081596

/-- `A004526(A010879(n)+n)` -/
def P472397712220583565.Spec : Prop :=
  ∀ n, P472397712220583565.a n = A081596 n

end A081596

/-! ## A081596.P9001044243319952085

`A004526(A010889(n)+n)`
-/

namespace A081596.P9001044243319952085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A010889 n + (n : ℤ)).toNat

end

end A081596.P9001044243319952085

namespace A081596

/-- `A004526(A010889(n)+n)` -/
def P9001044243319952085.Spec : Prop :=
  ∀ n, P9001044243319952085.a n = A081596 n

end A081596

/-! ## A081596.P1704853944977008411

`A004526(n-(1-A010889(n)))`
-/

namespace A081596.P1704853944977008411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((n : ℤ) - (1 - A010889 n)).toNat

end

end A081596.P1704853944977008411

namespace A081596

/-- `A004526(n-(1-A010889(n)))` -/
def P1704853944977008411.Spec : Prop :=
  ∀ n, P1704853944977008411.a n = A081596 n

end A081596

/-! ## A081596.P11152293392275993095

`A004526(A141518(A004526(n))+n)`
-/

namespace A081596.P11152293392275993095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A141518 (A004526 n).toNat + (n : ℤ)).toNat

end

end A081596.P11152293392275993095

namespace A081596

/-- `A004526(A141518(A004526(n))+n)` -/
def P11152293392275993095.Spec : Prop :=
  ∀ n, P11152293392275993095.a n = A081596 n

end A081596

/-! ## A081596.P14126266508049718254

`A076314(A008554(2*n+1)/2)`
-/

namespace A081596.P14126266508049718254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (SequenceMachineLib.roundAway ((A008554 (2 * n + 1) : ℚ) / 2)).toNat

end

end A081596.P14126266508049718254

namespace A081596

/-- `A076314(A008554(2*n+1)/2)` -/
def P14126266508049718254.Spec : Prop :=
  ∀ n, P14126266508049718254.a n = A081596 n

end A081596

/-! ## A081596.P10686262244351847605

`A106621(A008592(A010879(n)+n))`
-/

namespace A081596.P10686262244351847605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A008592 (A010879 n + (n : ℤ)).toNat).toNat

end

end A081596.P10686262244351847605

namespace A081596

/-- `A106621(A008592(A010879(n)+n))` -/
def P10686262244351847605.Spec : Prop :=
  ∀ n, P10686262244351847605.a n = A081596 n

end A081596

/-!
# A081597: Let n = 10*x + y where 0 <= y <= 9, x >= 0. Then a(n) = 6*x + y.

The programs for A081597, the canonical program `A081597.P17692367477237151114` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081597 has offset 0).

The definition of A081597 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081597.P17692367477237151114

`n-4*floor(n/10)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081597

/-- `n-4*floor(n/10)` -/
def P17692367477237151114.Spec : Prop :=
  ∀ n, P17692367477237151114.a n = A081597 n

theorem P17692367477237151114.correct : P17692367477237151114.Spec := by
  intro n
  simp only [A081597]

end A081597

/-! ## A081597.P15510527129077790996

`(5*n+4)%comp[11*n]`
-/

namespace A081597.P15510527129077790996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 * n + 4) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A081597.P15510527129077790996

namespace A081597

/-- `(5*n+4)%comp[11*n]` -/
def P15510527129077790996.Spec : Prop :=
  ∀ n, (P15510527129077790996.a n : ℤ) = A081597 n

end A081597

/-! ## A081597.P10666880808378772044

`(A081594(n)+n)/2`
-/

namespace A081597.P10666880808378772044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081594 n + (n : ℤ) : ℚ) / 2

end

end A081597.P10666880808378772044

namespace A081597

/-- `(A081594(n)+n)/2` -/
def P10666880808378772044.Spec : Prop :=
  ∀ n, P10666880808378772044.a n = (A081597 n : ℚ)

theorem P10666880808378772044.correct : P10666880808378772044.Spec := by
  intro n
  simp only [A081597, Nat.add_sub_cancel, A081597.P10666880808378772044.a, A081597.P17692367477237151114.a, A081594, A081594.P5732649395736885180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081597

/-! ## A081597.P13691489373036996998

`A038572(A081594(n)+n)`
-/

namespace A081597.P13691489373036996998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A081594 n + (n : ℤ)).toNat

end

end A081597.P13691489373036996998

namespace A081597

/-- `A038572(A081594(n)+n)` -/
def P13691489373036996998.Spec : Prop :=
  ∀ n, P13691489373036996998.a n = A081597 n

end A081597

/-! ## A081597.P16823943815282554574

`A025480(A081594(n)+n)`
-/

namespace A081597.P16823943815282554574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A081594 n + (n : ℤ)).toNat

end

end A081597.P16823943815282554574

namespace A081597

/-- `A025480(A081594(n)+n)` -/
def P16823943815282554574.Spec : Prop :=
  ∀ n, P16823943815282554574.a n = A081597 n

end A081597

/-! ## A081597.P5169652832116332398

`A029578(A081594(n)+n)`
-/

namespace A081597.P5169652832116332398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A081594 n + (n : ℤ)).toNat

end

end A081597.P5169652832116332398

namespace A081597

/-- `A029578(A081594(n)+n)` -/
def P5169652832116332398.Spec : Prop :=
  ∀ n, P5169652832116332398.a n = A081597 n

end A081597

/-! ## A081597.P12779945427982442734

`A001281(A081594(n)+n)`
-/

namespace A081597.P12779945427982442734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A081594 n + (n : ℤ)).toNat

end

end A081597.P12779945427982442734

namespace A081597

/-- `A001281(A081594(n)+n)` -/
def P12779945427982442734.Spec : Prop :=
  ∀ n, P12779945427982442734.a n = A081597 n

end A081597

/-! ## A081597.P13927218320685651741

`A004526(A081594(n)+n)`
-/

namespace A081597.P13927218320685651741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A081594 n + (n : ℤ)).toNat

end

end A081597.P13927218320685651741

namespace A081597

/-- `A004526(A081594(n)+n)` -/
def P13927218320685651741.Spec : Prop :=
  ∀ n, P13927218320685651741.a n = A081597 n

end A081597

/-! ## A081597.P2649976704600249546

`A081502(2*n-A010879(n))`
-/

namespace A081597.P2649976704600249546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081502 ((2 * n : ℤ) - A010879 n).toNat

end

end A081597.P2649976704600249546

namespace A081597

/-- `A081502(2*n-A010879(n))` -/
def P2649976704600249546.Spec : Prop :=
  ∀ n, P2649976704600249546.a n = A081597 n

end A081597

/-! ## A081597.P8858941498455229532

`A081502(n-A010879(n)+n)`
-/

namespace A081597.P8858941498455229532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081502 ((n : ℤ) - A010879 n + (n : ℤ)).toNat

end

end A081597.P8858941498455229532

namespace A081597

/-- `A081502(n-A010879(n)+n)` -/
def P8858941498455229532.Spec : Prop :=
  ∀ n, P8858941498455229532.a n = A081597 n

end A081597

/-! ## A081597.P8164211373255692750

`A081502(n-(A010879(n)-n))`
-/

namespace A081597.P8164211373255692750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081502 ((n : ℤ) - (A010879 n - (n : ℤ))).toNat

end

end A081597.P8164211373255692750

namespace A081597

/-- `A081502(n-(A010879(n)-n))` -/
def P8164211373255692750.Spec : Prop :=
  ∀ n, P8164211373255692750.a n = A081597 n

end A081597

/-! ## A081597.P10673051664204750786

`A131508(2*(A081594(n)+n))`
-/

namespace A081597.P10673051664204750786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (2 * (A081594 n + (n : ℤ))).toNat

end

end A081597.P10673051664204750786

namespace A081597

/-- `A131508(2*(A081594(n)+n))` -/
def P10673051664204750786.Spec : Prop :=
  ∀ n, P10673051664204750786.a n = A081597 n

end A081597

/-! ## A081597.P3875799291699026167

`A358012(A047264(n+1))`
-/

namespace A081597.P3875799291699026167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358012 (A047264 (n + 1)).toNat

end

end A081597.P3875799291699026167

namespace A081597

/-- `A358012(A047264(n+1))` -/
def P3875799291699026167.Spec : Prop :=
  ∀ n, P3875799291699026167.a n = A081597 n

end A081597

/-!
# A081598: Let n = 10x + y where 0 <= y <= 9, x >= 0. Then a(n) = 7x+y.

The programs for A081598, the canonical program `A081598.P6494840942839841737` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081598 has offset 0).

The definition of A081598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081598.P6494840942839841737

`n-3*floor(n/10)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081598

/-- `n-3*floor(n/10)` -/
def P6494840942839841737.Spec : Prop :=
  ∀ n, P6494840942839841737.a n = A081598 n

theorem P6494840942839841737.correct : P6494840942839841737.Spec := by
  intro n
  simp only [A081598]

end A081598

/-! ## A081598.P1216336238439549172

`record[xor(3, n)]%comp[11*n]`
-/

namespace A081598.P1216336238439549172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A081598.P1216336238439549172

namespace A081598

/-- `record[xor(3, n)]%comp[11*n]` -/
def P1216336238439549172.Spec : Prop :=
  ∀ n, (P1216336238439549172.a n : ℤ) = A081598 n

end A081598

/-! ## A081598.P17001809644109183151

`(n*ceil((n+1)/10))%(n+3)`
-/

namespace A081598.P17001809644109183151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * ⌈(n + 1 : ℚ) / 10⌉) (n + 3 : ℤ)

end

end A081598.P17001809644109183151

namespace A081598

/-- `(n*ceil((n+1)/10))%(n+3)` -/
def P17001809644109183151.Spec : Prop :=
  ∀ n, P17001809644109183151.a n = A081598 n

end A081598

/-! ## A081598.P11794891360540360913

`(A081595(n)+n)/2`
-/

namespace A081598.P11794891360540360913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081595 n + (n : ℤ) : ℚ) / 2

end

end A081598.P11794891360540360913

namespace A081598

/-- `(A081595(n)+n)/2` -/
def P11794891360540360913.Spec : Prop :=
  ∀ n, P11794891360540360913.a n = (A081598 n : ℚ)

theorem P11794891360540360913.correct : P11794891360540360913.Spec := by
  intro n
  simp only [A081598, Nat.add_sub_cancel, A081598.P11794891360540360913.a, A081598.P6494840942839841737.a, A081595, A081595.P15366526779689166752.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081598

/-! ## A081598.P9640775436658244392

`abs(3*A059995(n)-n)`
-/

namespace A081598.P9640775436658244392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * A059995 n - (n : ℤ)|

end

end A081598.P9640775436658244392

namespace A081598

/-- `abs(3*A059995(n)-n)` -/
def P9640775436658244392.Spec : Prop :=
  ∀ n, P9640775436658244392.a n = A081598 n

end A081598

/-! ## A081598.P7333062955851509825

`(A076314(n)+2*n)/3`
-/

namespace A081598.P7333062955851509825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076314 n + (2 * n : ℤ) : ℚ) / 3

end

end A081598.P7333062955851509825

namespace A081598

/-- `(A076314(n)+2*n)/3` -/
def P7333062955851509825.Spec : Prop :=
  ∀ n, P7333062955851509825.a n = (A081598 n : ℚ)

theorem P7333062955851509825.correct : P7333062955851509825.Spec := by
  intro n
  simp only [A081598, Nat.add_sub_cancel, A081598.P7333062955851509825.a, A081598.P6494840942839841737.a, A076314, A076314.P16087139924310494247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081598

/-! ## A081598.P11264809640742591831

`A004526(A081595(n)+n)`
-/

namespace A081598.P11264809640742591831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A081595 n + (n : ℤ)).toNat

end

end A081598.P11264809640742591831

namespace A081598

/-- `A004526(A081595(n)+n)` -/
def P11264809640742591831.Spec : Prop :=
  ∀ n, P11264809640742591831.a n = A081598 n

end A081598

/-! ## A081598.P18068840637483339319

`A002264(A076314(n)+2*n)`
-/

namespace A081598.P18068840637483339319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A076314 n + (2 * n : ℤ)).toNat

end

end A081598.P18068840637483339319

namespace A081598

/-- `A002264(A076314(n)+2*n)` -/
def P18068840637483339319.Spec : Prop :=
  ∀ n, P18068840637483339319.a n = A081598 n

end A081598

/-! ## A081598.P10335433064168761171

`A008611(A076314(n)+2*n+1)`
-/

namespace A081598.P10335433064168761171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A076314 n + (2 * n + 1 : ℤ)).toNat

end

end A081598.P10335433064168761171

namespace A081598

/-- `A008611(A076314(n)+2*n+1)` -/
def P10335433064168761171.Spec : Prop :=
  ∀ n, P10335433064168761171.a n = A081598 n

end A081598

/-! ## A081598.P17054492258251107747

`A194508(A047288(n+2))`
-/

namespace A081598.P17054492258251107747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194508 (A047288 (n + 2)).toNat

end

end A081598.P17054492258251107747

namespace A081598

/-- `A194508(A047288(n+2))` -/
def P17054492258251107747.Spec : Prop :=
  ∀ n, P17054492258251107747.a n = A081598 n

end A081598

/-! ## A081598.P8031704347769388964

`A076314(3*7*n)/3`
-/

namespace A081598.P8031704347769388964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076314 (3 * (7 * n)) : ℚ) / 3

end

end A081598.P8031704347769388964

namespace A081598

/-- `A076314(3*7*n)/3` -/
def P8031704347769388964.Spec : Prop :=
  ∀ n, P8031704347769388964.a n = (A081598 n : ℚ)

end A081598

/-! ## A081598.P16650543475908083515

`A002264(A076314(3*7*n))`
-/

namespace A081598.P16650543475908083515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A076314 (3 * (7 * n))).toNat

end

end A081598.P16650543475908083515

namespace A081598

/-- `A002264(A076314(3*7*n))` -/
def P16650543475908083515.Spec : Prop :=
  ∀ n, P16650543475908083515.a n = A081598 n

end A081598

/-!
# A081599: Let n = 10x + y where 0 <= y <= 9, x >= 0. Then a(n) = 8x+y.

The programs for A081599, the canonical program `A081599.P12036139868710074620` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A081599 has offset 0).

The definition of A081599 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A081599.P12036139868710074620

`n-2*floor(n/10)`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A081599

/-- `n-2*floor(n/10)` -/
def P12036139868710074620.Spec : Prop :=
  ∀ n, P12036139868710074620.a n = A081599 n

theorem P12036139868710074620.correct : P12036139868710074620.Spec := by
  intro n
  simp only [A081599]

end A081599

/-! ## A081599.P708287634813215061

`(n%10+4*n)/5`
-/

namespace A081599.P708287634813215061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n % 10 + 4 * n : ℕ) : ℚ) / 5

end

end A081599.P708287634813215061

namespace A081599

/-- `(n%10+4*n)/5` -/
def P708287634813215061.Spec : Prop :=
  ∀ n, P708287634813215061.a n = (A081599 n : ℚ)

end A081599

/-! ## A081599.P459664237225773396

`(n*∑[char[10*n]])%(n+2)`
-/

namespace A081599.P459664237225773396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2)

end

end A081599.P459664237225773396

namespace A081599

/-- `(n*∑[char[10*n]])%(n+2)` -/
def P459664237225773396.Spec : Prop :=
  ∀ n, (P459664237225773396.a n : ℤ) = A081599 n

end A081599

/-! ## A081599.P8013641225799200383

`(A081597(n)+n)/2`
-/

namespace A081599.P8013641225799200383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081597 n + (n : ℤ) : ℚ) / 2

end

end A081599.P8013641225799200383

namespace A081599

/-- `(A081597(n)+n)/2` -/
def P8013641225799200383.Spec : Prop :=
  ∀ n, P8013641225799200383.a n = (A081599 n : ℚ)

theorem P8013641225799200383.correct : P8013641225799200383.Spec := by
  intro n
  simp only [A081599, Nat.add_sub_cancel, A081599.P8013641225799200383.a, A081599.P12036139868710074620.a, A081597, A081597.P17692367477237151114.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A081599

/-! ## A081599.P2330139216402806416

`(A010879(n)+4*n)/5`
-/

namespace A081599.P2330139216402806416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010879 n + (4 * n : ℤ) : ℚ) / 5

end

end A081599.P2330139216402806416

namespace A081599

/-- `(A010879(n)+4*n)/5` -/
def P2330139216402806416.Spec : Prop :=
  ∀ n, P2330139216402806416.a n = (A081599 n : ℚ)

end A081599

/-! ## A081599.P15988416253991496019

`abs(A005408(floor(n/10))-n-1)`
-/

namespace A081599.P15988416253991496019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005408 ⌊(n : ℚ) / 10⌋.toNat - (n : ℤ) - 1|

end

end A081599.P15988416253991496019

namespace A081599

/-- `abs(A005408(floor(n/10))-n-1)` -/
def P15988416253991496019.Spec : Prop :=
  ∀ n, P15988416253991496019.a n = A081599 n

end A081599

/-! ## A081599.P10780275955169231441

`A194509(A047461(n+2))`
-/

namespace A081599.P10780275955169231441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A047461 (n + 2)).toNat

end

end A081599.P10780275955169231441

namespace A081599

/-- `A194509(A047461(n+2))` -/
def P10780275955169231441.Spec : Prop :=
  ∀ n, P10780275955169231441.a n = A081599 n

end A081599

